#----------------------------------------------------------------------------- 
    # vadc.S
    #-----------------------------------------------------------------------------
    #
    # Test vadc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vadc)
    
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
  TEST_ADC_VV_OP( 1,  vadc.vvm, rd_data_vv+0, rs2_data+0, rs1_data+0)
  TEST_ADC_VV_OP( 2,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP( 3,  vadc.vvm, rd_data_vv+256, rs2_data+256, rs1_data+256)
  TEST_ADC_VV_OP( 4,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP( 5,  vadc.vvm, rd_data_vv+512, rs2_data+512, rs1_data+512)
  TEST_ADC_VV_OP( 6,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP( 7,  vadc.vvm, rd_data_vv+768, rs2_data+768, rs1_data+768)
  TEST_ADC_VV_OP( 8,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP( 9,  vadc.vvm, rd_data_vv+1024, rs2_data+1024, rs1_data+1024)
  TEST_ADC_VV_OP( 10,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP( 11,  vadc.vvm, rd_data_vv+1280, rs2_data+1280, rs1_data+1280)
  TEST_ADC_VV_OP( 12,  vadc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP( 13,  vadc.vvm, rd_data_vv+1536, rs2_data+1536, rs1_data+1536)
  TEST_ADC_VV_OP( 14,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP( 15,  vadc.vvm, rd_data_vv+1792, rs2_data+1792, rs1_data+1792)
  TEST_ADC_VV_OP( 16,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP( 17,  vadc.vvm, rd_data_vv+2048, rs2_data+2048, rs1_data+2048)
  TEST_ADC_VV_OP( 18,  vadc.vvm, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_ADC_VV_OP( 19,  vadc.vvm, rd_data_vv+2304, rs2_data+2304, rs1_data+2304)
  TEST_ADC_VV_OP( 20,  vadc.vvm, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_ADC_VV_OP( 21,  vadc.vvm, rd_data_vv+2560, rs2_data+2560, rs1_data+2560)
  TEST_ADC_VV_OP( 22,  vadc.vvm, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_ADC_VV_OP( 23,  vadc.vvm, rd_data_vv+2816, rs2_data+2816, rs1_data+2816)
  TEST_ADC_VV_OP( 24,  vadc.vvm, rd_data_vv+2944, rs2_data+2944, rs1_data+2944)
  TEST_ADC_VV_OP( 25,  vadc.vvm, rd_data_vv+3072, rs2_data+3072, rs1_data+3072)
  TEST_ADC_VV_OP( 26,  vadc.vvm, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_ADC_VV_OP( 27,  vadc.vvm, rd_data_vv+3328, rs2_data+3328, rs1_data+3328)
  TEST_ADC_VV_OP( 28,  vadc.vvm, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_ADC_VV_OP( 29,  vadc.vvm, rd_data_vv+3584, rs2_data+3584, rs1_data+3584)
  TEST_ADC_VV_OP( 30,  vadc.vvm, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  TEST_ADC_VV_OP( 31,  vadc.vvm, rd_data_vv+3840, rs2_data+3840, rs1_data+3840)
  TEST_ADC_VV_OP( 32,  vadc.vvm, rd_data_vv+3968, rs2_data+3968, rs1_data+3968)
  TEST_ADC_VV_OP( 33,  vadc.vvm, rd_data_vv+4096, rs2_data+4096, rs1_data+4096)
  TEST_ADC_VV_OP( 34,  vadc.vvm, rd_data_vv+4224, rs2_data+4224, rs1_data+4224)
  TEST_ADC_VV_OP( 35,  vadc.vvm, rd_data_vv+4352, rs2_data+4352, rs1_data+4352)
  TEST_ADC_VV_OP( 36,  vadc.vvm, rd_data_vv+4480, rs2_data+4480, rs1_data+4480)
  TEST_ADC_VV_OP( 37,  vadc.vvm, rd_data_vv+4608, rs2_data+4608, rs1_data+4608)
  TEST_ADC_VV_OP( 38,  vadc.vvm, rd_data_vv+4736, rs2_data+4736, rs1_data+4736)
  TEST_ADC_VV_OP_rd2( 39,  vadc.vvm, rd_data_vv+128, rs2_data+128, rs1_data+128)
  TEST_ADC_VV_OP_rd4( 40,  vadc.vvm, rd_data_vv+384, rs2_data+384, rs1_data+384)
  TEST_ADC_VV_OP_rd6( 41,  vadc.vvm, rd_data_vv+640, rs2_data+640, rs1_data+640)
  TEST_ADC_VV_OP_rd8( 42,  vadc.vvm, rd_data_vv+896, rs2_data+896, rs1_data+896)
  TEST_ADC_VV_OP_rd10( 43,  vadc.vvm, rd_data_vv+1152, rs2_data+1152, rs1_data+1152)
  TEST_ADC_VV_OP_rd12( 44,  vadc.vvm, rd_data_vv+1408, rs2_data+1408, rs1_data+1408)
  TEST_ADC_VV_OP_rd14( 45,  vadc.vvm, rd_data_vv+1664, rs2_data+1664, rs1_data+1664)
  TEST_ADC_VV_OP_rd16( 46,  vadc.vvm, rd_data_vv+1920, rs2_data+1920, rs1_data+1920)
  TEST_ADC_VV_OP_rd18( 47,  vadc.vvm, rd_data_vv+2176, rs2_data+2176, rs1_data+2176)
  TEST_ADC_VV_OP_rd20( 48,  vadc.vvm, rd_data_vv+2432, rs2_data+2432, rs1_data+2432)
  TEST_ADC_VV_OP_rd22( 49,  vadc.vvm, rd_data_vv+2688, rs2_data+2688, rs1_data+2688)
  TEST_ADC_VV_OP_rd26( 50,  vadc.vvm, rd_data_vv+3200, rs2_data+3200, rs1_data+3200)
  TEST_ADC_VV_OP_rd28( 51,  vadc.vvm, rd_data_vv+3456, rs2_data+3456, rs1_data+3456)
  TEST_ADC_VV_OP_rd30( 52,  vadc.vvm, rd_data_vv+3712, rs2_data+3712, rs1_data+3712)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_ADC_VX_OP( 53,  vadc.vxm, rd_data_vx+0, rs2_data+0, 0xfffffffffffffffe)
  TEST_ADC_VX_OP( 54,  vadc.vxm, rd_data_vx+128, rs2_data+128, 0xfffffffffffffffd)
  TEST_ADC_VX_OP( 55,  vadc.vxm, rd_data_vx+256, rs2_data+256, 0xfffffffffffffffb)
  TEST_ADC_VX_OP( 56,  vadc.vxm, rd_data_vx+384, rs2_data+384, 0xfffffffffffffff7)
  TEST_ADC_VX_OP( 57,  vadc.vxm, rd_data_vx+512, rs2_data+512, 0xffffffffffffffef)
  TEST_ADC_VX_OP( 58,  vadc.vxm, rd_data_vx+640, rs2_data+640, 0xffffffffffffffdf)
  TEST_ADC_VX_OP( 59,  vadc.vxm, rd_data_vx+768, rs2_data+768, 0xffffffffffffffbf)
  TEST_ADC_VX_OP( 60,  vadc.vxm, rd_data_vx+896, rs2_data+896, 0xffffffffffffff7f)
  TEST_ADC_VX_OP( 61,  vadc.vxm, rd_data_vx+1024, rs2_data+1024, 0xfffffffffffffeff)
  TEST_ADC_VX_OP( 62,  vadc.vxm, rd_data_vx+1152, rs2_data+1152, 0xfffffffffffffdff)
  TEST_ADC_VX_OP( 63,  vadc.vxm, rd_data_vx+1280, rs2_data+1280, 0xfffffffffffffbff)
  TEST_ADC_VX_OP( 64,  vadc.vxm, rd_data_vx+1408, rs2_data+1408, 0xfffffffffffff7ff)
  TEST_ADC_VX_OP( 65,  vadc.vxm, rd_data_vx+1536, rs2_data+1536, 0xffffffffffffefff)
  TEST_ADC_VX_OP( 66,  vadc.vxm, rd_data_vx+1664, rs2_data+1664, 0xffffffffffffdfff)
  TEST_ADC_VX_OP( 67,  vadc.vxm, rd_data_vx+1792, rs2_data+1792, 0xffffffffffffbfff)
  TEST_ADC_VX_OP( 68,  vadc.vxm, rd_data_vx+1920, rs2_data+1920, 0xffffffffffff7fff)
  TEST_ADC_VX_OP( 69,  vadc.vxm, rd_data_vx+2048, rs2_data+2048, 0xfffffffffffeffff)
  TEST_ADC_VX_OP( 70,  vadc.vxm, rd_data_vx+2176, rs2_data+2176, 0xfffffffffffdffff)
  TEST_ADC_VX_OP( 71,  vadc.vxm, rd_data_vx+2304, rs2_data+2304, 0xfffffffffffbffff)
  TEST_ADC_VX_OP( 72,  vadc.vxm, rd_data_vx+2432, rs2_data+2432, 0xfffffffffff7ffff)
  TEST_ADC_VX_OP( 73,  vadc.vxm, rd_data_vx+2560, rs2_data+2560, 0xffffffffffefffff)
  TEST_ADC_VX_OP( 74,  vadc.vxm, rd_data_vx+2688, rs2_data+2688, 0xffffffffffdfffff)
  TEST_ADC_VX_OP( 75,  vadc.vxm, rd_data_vx+2816, rs2_data+2816, 0xffffffffffbfffff)
  TEST_ADC_VX_OP( 76,  vadc.vxm, rd_data_vx+2944, rs2_data+2944, 0xffffffffff7fffff)
  TEST_ADC_VX_OP( 77,  vadc.vxm, rd_data_vx+3072, rs2_data+3072, 0xfffffffffeffffff)
  TEST_ADC_VX_OP( 78,  vadc.vxm, rd_data_vx+3200, rs2_data+3200, 0xfffffffffdffffff)
  TEST_ADC_VX_OP( 79,  vadc.vxm, rd_data_vx+3328, rs2_data+3328, 0xfffffffffbffffff)
  TEST_ADC_VX_OP( 80,  vadc.vxm, rd_data_vx+3456, rs2_data+3456, 0xfffffffff7ffffff)
  TEST_ADC_VX_OP( 81,  vadc.vxm, rd_data_vx+3584, rs2_data+3584, 0xffffffffefffffff)
  TEST_ADC_VX_OP( 82,  vadc.vxm, rd_data_vx+3712, rs2_data+3712, 0xffffffffdfffffff)
  TEST_ADC_VX_OP( 83,  vadc.vxm, rd_data_vx+3840, rs2_data+3840, 0xffffffffbfffffff)
  TEST_ADC_VX_OP( 84,  vadc.vxm, rd_data_vx+3968, rs2_data+3968, 0xffffffff7fffffff)
  TEST_ADC_VX_OP( 85,  vadc.vxm, rd_data_vx+4096, rs2_data+4096, 0xfffffffeffffffff)
  TEST_ADC_VX_OP( 86,  vadc.vxm, rd_data_vx+4224, rs2_data+4224, 0xfffffffdffffffff)
  TEST_ADC_VX_OP( 87,  vadc.vxm, rd_data_vx+4352, rs2_data+4352, 0xfffffffbffffffff)
  TEST_ADC_VX_OP( 88,  vadc.vxm, rd_data_vx+4480, rs2_data+4480, 0xfffffff7ffffffff)
  TEST_ADC_VX_OP( 89,  vadc.vxm, rd_data_vx+4608, rs2_data+4608, 0xffffffefffffffff)
  TEST_ADC_VX_OP( 90,  vadc.vxm, rd_data_vx+4736, rs2_data+4736, 0xffffffdfffffffff)
  #-------------------------------------------------------------
  # VI Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_ADC_VI_OP( 91,  vadc.vim, rd_data_vi+0, rs2_data+0, 14)
  TEST_ADC_VI_OP( 92,  vadc.vim, rd_data_vi+128, rs2_data+128, 14)
  TEST_ADC_VI_OP( 93,  vadc.vim, rd_data_vi+256, rs2_data+256, 14)
  TEST_ADC_VI_OP( 94,  vadc.vim, rd_data_vi+384, rs2_data+384, 14)
  TEST_ADC_VI_OP( 95,  vadc.vim, rd_data_vi+512, rs2_data+512, 14)
  TEST_ADC_VI_OP( 96,  vadc.vim, rd_data_vi+640, rs2_data+640, 14)
  TEST_ADC_VI_OP( 97,  vadc.vim, rd_data_vi+768, rs2_data+768, 14)
  TEST_ADC_VI_OP( 98,  vadc.vim, rd_data_vi+896, rs2_data+896, 14)
  TEST_ADC_VI_OP( 99,  vadc.vim, rd_data_vi+1024, rs2_data+1024, 14)
  TEST_ADC_VI_OP( 100,  vadc.vim, rd_data_vi+1152, rs2_data+1152, 14)
  TEST_ADC_VI_OP( 101,  vadc.vim, rd_data_vi+1280, rs2_data+1280, 14)
  TEST_ADC_VI_OP( 102,  vadc.vim, rd_data_vi+1408, rs2_data+1408, 14)
  TEST_ADC_VI_OP( 103,  vadc.vim, rd_data_vi+1536, rs2_data+1536, 14)
  TEST_ADC_VI_OP( 104,  vadc.vim, rd_data_vi+1664, rs2_data+1664, 14)
  TEST_ADC_VI_OP( 105,  vadc.vim, rd_data_vi+1792, rs2_data+1792, 14)
  TEST_ADC_VI_OP( 106,  vadc.vim, rd_data_vi+1920, rs2_data+1920, 14)
  TEST_ADC_VI_OP( 107,  vadc.vim, rd_data_vi+2048, rs2_data+2048, 14)
  TEST_ADC_VI_OP( 108,  vadc.vim, rd_data_vi+2176, rs2_data+2176, 14)
  TEST_ADC_VI_OP( 109,  vadc.vim, rd_data_vi+2304, rs2_data+2304, 14)
  TEST_ADC_VI_OP( 110,  vadc.vim, rd_data_vi+2432, rs2_data+2432, 14)
  TEST_ADC_VI_OP( 111,  vadc.vim, rd_data_vi+2560, rs2_data+2560, 14)
  TEST_ADC_VI_OP( 112,  vadc.vim, rd_data_vi+2688, rs2_data+2688, 14)
  TEST_ADC_VI_OP( 113,  vadc.vim, rd_data_vi+2816, rs2_data+2816, 14)
  TEST_ADC_VI_OP( 114,  vadc.vim, rd_data_vi+2944, rs2_data+2944, 14)
  TEST_ADC_VI_OP( 115,  vadc.vim, rd_data_vi+3072, rs2_data+3072, 14)
  TEST_ADC_VI_OP( 116,  vadc.vim, rd_data_vi+3200, rs2_data+3200, 14)
  TEST_ADC_VI_OP( 117,  vadc.vim, rd_data_vi+3328, rs2_data+3328, 14)
  TEST_ADC_VI_OP( 118,  vadc.vim, rd_data_vi+3456, rs2_data+3456, 14)
  TEST_ADC_VI_OP( 119,  vadc.vim, rd_data_vi+3584, rs2_data+3584, 14)
  TEST_ADC_VI_OP( 120,  vadc.vim, rd_data_vi+3712, rs2_data+3712, 14)
  TEST_ADC_VI_OP( 121,  vadc.vim, rd_data_vi+3840, rs2_data+3840, 14)
  TEST_ADC_VI_OP( 122,  vadc.vim, rd_data_vi+3968, rs2_data+3968, 14)
  TEST_ADC_VI_OP( 123,  vadc.vim, rd_data_vi+4096, rs2_data+4096, 14)
  TEST_ADC_VI_OP( 124,  vadc.vim, rd_data_vi+4224, rs2_data+4224, 14)
  TEST_ADC_VI_OP( 125,  vadc.vim, rd_data_vi+4352, rs2_data+4352, 14)
  TEST_ADC_VI_OP( 126,  vadc.vim, rd_data_vi+4480, rs2_data+4480, 14)
  TEST_ADC_VI_OP( 127,  vadc.vim, rd_data_vi+4608, rs2_data+4608, 14)
  TEST_ADC_VI_OP( 128,  vadc.vim, rd_data_vi+4736, rs2_data+4736, 14)
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
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffa
.dword	0xfffffffffffffff6
.dword	0xffffffffffffffee
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbe
.dword	0xffffffffffffff7e
.dword	0xfffffffffffffefe
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbfe
.dword	0xfffffffffffff7fe
.dword	0xffffffffffffeffe
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbffe
.dword	0xffffffffffff7ffe
.dword	0xfffffffffffefffe
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbfffe
.dword	0xfffffffffff7fffe
.dword	0xffffffffffeffffe
.dword	0xffffffffffdfffff
.dword	0xffffffffffbffffe
.dword	0xffffffffff7ffffe
.dword	0xfffffffffefffffe
.dword	0xfffffffffdffffff
.dword	0xfffffffffbfffffe
.dword	0xfffffffff7fffffe
.dword	0xffffffffeffffffe
.dword	0xffffffffdfffffff
.dword	0xffffffffbffffffe
.dword	0xffffffff7ffffffe
.dword	0xfffffffefffffffe
.dword	0xfffffffdffffffff
.dword	0xfffffffbfffffffe
.dword	0xfffffff7fffffffe
.dword	0xffffffeffffffffe
.dword	0xffffffdfffffffff
.dword	0xffffffbffffffffe
.dword	0xffffff7ffffffffe
.dword	0xfffffefffffffffe
.dword	0xfffffdffffffffff
.dword	0xfffffbfffffffffe
.dword	0xfffff7fffffffffe
.dword	0xffffeffffffffffe
.dword	0xffffdfffffffffff
.dword	0xffffbffffffffffe
.dword	0xffff7ffffffffffe
.dword	0xfffefffffffffffe
.dword	0xfffdffffffffffff
.dword	0xfffbfffffffffffe
.dword	0xfff7fffffffffffe
.dword	0xffeffffffffffffe
.dword	0xffdfffffffffffff
.dword	0xffbffffffffffffe
.dword	0xff7ffffffffffffe
.dword	0xfefffffffffffffe
.dword	0xfdffffffffffffff
.dword	0xfbfffffffffffffe
.dword	0xf7fffffffffffffe
.dword	0xeffffffffffffffe
.dword	0xdfffffffffffffff
.dword	0xbffffffffffffffe
.dword	0x7ffffffffffffffe
.dword	0xfffffffffffffffe
.dword	0x0000000000000003
.dword	0x0000000000000004
.dword	0x0000000000000008
.dword	0x0000000000000010
.dword	0x0000000000000021
.dword	0x0000000000000040
.dword	0x0000000000000080
.dword	0x0000000000000100
.dword	0x0000000000000201
.dword	0x0000000000000400
.dword	0x0000000000000800
.dword	0x0000000000001000
.dword	0x0000000000002001
.dword	0x0000000000004000
.dword	0x0000000000008000
.dword	0x0000000000010000
.dword	0x0000000000020001
.dword	0x0000000000040000
.dword	0x0000000000080000
.dword	0x0000000000100000
.dword	0x0000000000200001
.dword	0x0000000000400000
.dword	0x0000000000800000
.dword	0x0000000001000000
.dword	0x0000000002000001
.dword	0x0000000004000000
.dword	0x0000000008000000
.dword	0x0000000010000000
.dword	0x0000000020000001
.dword	0x0000000040000000
.dword	0x0000000080000000
.dword	0x0000000100000000
.dword	0x0000000200000001
.dword	0x0000000400000000
.dword	0x0000000800000000
.dword	0x0000001000000000
.dword	0x0000002000000001
.dword	0x0000004000000000
.dword	0x0000008000000000
.dword	0x0000010000000000
.dword	0x0000020000000001
.dword	0x0000040000000000
.dword	0x0000080000000000
.dword	0x0000100000000000
.dword	0x0000200000000001
.dword	0x0000400000000000
.dword	0x0000800000000000
.dword	0x0001000000000000
.dword	0x0002000000000001
.dword	0x0004000000000000
.dword	0x0008000000000000
.dword	0x0010000000000000
.dword	0x0020000000000001
.dword	0x0040000000000000
.dword	0x0080000000000000
.dword	0x0100000000000000
.dword	0x0200000000000001
.dword	0x0400000000000000
.dword	0x0800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000001
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000007
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000008
.dword	0x3333333333333337
.dword	0x6666666666666669
.dword	0xffffffff4afb0cd0
.dword	0x5555555555555558
.dword	0x00000000b504f337
.dword	0x0000000000000005
.dword	0x5555555555555557
.dword	0x0000000000000003
.dword	0x0000000000000008
.dword	0x3333333333333335
.dword	0xbbbbbbbbbbbbbbba
.dword	0xaaaaaaaaaaaaaaad
.dword	0xaaaaaaab5faf9ddd
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000009
.dword	0x3333333333333338
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f334
.dword	0x0000000000000007
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaa9
.dword	0x5555555555555555
.dword	0x5555555555555559
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbba
.dword	0x555555560a5a4887
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000001
.dword	0x555555555555555b
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506224
.dword	0x555555560a5a4889
.dword	0x5555555555555558
.dword	0xffffffffffffffff
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddd
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddd
.dword	0xaaaaaaaaaaaaaaac
.dword	0xfffffffffffffffe
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaae
.dword	0xdddddddddddddddc
.dword	0x111111111111110f
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaab5faf9ddc
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab1
.dword	0xddddddddddddddde
.dword	0x1111111111111111
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddf
.dword	0x0000000000000008
.dword	0x555555555555555a
.dword	0xaaaaaaaaaaaaaaaf
.dword	0x000000000000000b
.dword	0x3333333333333338
.dword	0x666666666666666b
.dword	0xffffffff4afb0cd2
.dword	0x00000000b504f339
.dword	0x0000000000000007
.dword	0x5555555555555559
.dword	0x0000000000000005
.dword	0x000000000000000a
.dword	0x3333333333333337
.dword	0x666666666666666a
.dword	0x00000000b504f337
.dword	0x555555555555555c
.dword	0xaaaaaaaaaaaaaab0
.dword	0x000000000000000b
.dword	0x3333333333333339
.dword	0x666666666666666d
.dword	0xffffffff4afb0cd3
.dword	0x00000000b504f339
.dword	0x3333333333333336
.dword	0x8888888888888889
.dword	0xdddddddddddddddd
.dword	0x3333333333333338
.dword	0x6666666666666666
.dword	0x999999999999999a
.dword	0x333333327e2e4000
.dword	0x33333333e8382666
.dword	0x3333333333333335
.dword	0x8888888888888888
.dword	0x3333333333333333
.dword	0x3333333333333337
.dword	0x6666666666666665
.dword	0x9999999999999999
.dword	0x33333333e8382665
.dword	0x8888888888888889
.dword	0xddddddddddddddde
.dword	0x333333333333333a
.dword	0x6666666666666667
.dword	0x999999999999999a
.dword	0x333333327e2e4001
.dword	0x33333333e8382668
.dword	0x6666666666666669
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x1111111111111110
.dword	0x666666666666666c
.dword	0x9999999999999999
.dword	0xcccccccccccccccc
.dword	0x66666665b1617333
.dword	0x666666671b6b599a
.dword	0x6666666666666668
.dword	0xbbbbbbbbbbbbbbba
.dword	0x6666666666666666
.dword	0x666666666666666b
.dword	0x9999999999999998
.dword	0xcccccccccccccccb
.dword	0x666666671b6b5998
.dword	0xbbbbbbbbbbbbbbbd
.dword	0x1111111111111111
.dword	0x666666666666666c
.dword	0x999999999999999a
.dword	0xccccccccccccccce
.dword	0x66666665b1617334
.dword	0x666666671b6b599a
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506223
.dword	0xaaaaaaa9f5a5b777
.dword	0xffffffff4afb0cd2
.dword	0x333333327e2e4000
.dword	0x66666665b1617334
.dword	0xfffffffe95f6199a
.dword	0x0000000000000000
.dword	0xffffffff4afb0ccf
.dword	0x55555554a0506222
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0cd1
.dword	0x333333327e2e3fff
.dword	0x66666665b1617333
.dword	0xffffffffffffffff
.dword	0x55555554a0506223
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd4
.dword	0x333333327e2e4001
.dword	0x66666665b1617334
.dword	0xfffffffe95f6199b
.dword	0x0000000000000002
.dword	0x00000000b504f336
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f339
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x0000000000000000
.dword	0x000000016a09e667
.dword	0x00000000b504f335
.dword	0x555555560a5a4887
.dword	0x00000000b504f333
.dword	0x00000000b504f338
.dword	0x33333333e8382665
.dword	0x666666671b6b5998
.dword	0x000000016a09e665
.dword	0x555555560a5a488a
.dword	0xaaaaaaab5faf9dde
.dword	0x00000000b504f339
.dword	0x33333333e8382667
.dword	0x666666671b6b599b
.dword	0x0000000000000001
.dword	0x000000016a09e667
.dword	0x0000000000000005
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaac
.dword	0x0000000000000007
.dword	0x3333333333333335
.dword	0x6666666666666669
.dword	0xffffffff4afb0ccf
.dword	0x00000000b504f335
.dword	0x0000000000000004
.dword	0x5555555555555557
.dword	0x0000000000000002
.dword	0x0000000000000006
.dword	0x3333333333333334
.dword	0x6666666666666668
.dword	0x00000000b504f334
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000009
.dword	0x3333333333333336
.dword	0x6666666666666669
.dword	0xffffffff4afb0cd0
.dword	0x00000000b504f337
.dword	0x5555555555555557
.dword	0xaaaaaaaaaaaaaaa9
.dword	0xfffffffffffffffe
.dword	0x555555555555555a
.dword	0x8888888888888887
.dword	0xbbbbbbbbbbbbbbba
.dword	0x55555554a0506221
.dword	0x555555560a5a4888
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x5555555555555554
.dword	0x5555555555555559
.dword	0x8888888888888886
.dword	0xbbbbbbbbbbbbbbb9
.dword	0x555555560a5a4886
.dword	0xaaaaaaaaaaaaaaab
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x0000000000000003
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x0000000000000005
.dword	0x3333333333333333
.dword	0x6666666666666667
.dword	0xffffffff4afb0ccd
.dword	0x00000000b504f333
.dword	0x0000000000000002
.dword	0x5555555555555555
.dword	0x0000000000000000
.dword	0x0000000000000004
.dword	0x3333333333333332
.dword	0x6666666666666666
.dword	0x00000000b504f332
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000007
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x00000000b504f335
.dword	0x0000000000000007
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaae
.dword	0x000000000000000a
.dword	0x3333333333333337
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f338
.dword	0x0000000000000006
.dword	0x5555555555555558
.dword	0x0000000000000004
.dword	0x0000000000000009
.dword	0x3333333333333336
.dword	0x6666666666666669
.dword	0x00000000b504f336
.dword	0x555555555555555b
.dword	0xaaaaaaaaaaaaaaaf
.dword	0x000000000000000a
.dword	0x3333333333333338
.dword	0x666666666666666c
.dword	0xffffffff4afb0cd2
.dword	0x00000000b504f338
.dword	0x3333333333333335
.dword	0x8888888888888888
.dword	0xdddddddddddddddc
.dword	0x3333333333333337
.dword	0x6666666666666665
.dword	0x9999999999999999
.dword	0x333333327e2e3fff
.dword	0x33333333e8382665
.dword	0x3333333333333334
.dword	0x8888888888888887
.dword	0x3333333333333332
.dword	0x3333333333333336
.dword	0x6666666666666664
.dword	0x9999999999999998
.dword	0x33333333e8382664
.dword	0x8888888888888888
.dword	0xdddddddddddddddd
.dword	0x3333333333333339
.dword	0x6666666666666666
.dword	0x9999999999999999
.dword	0x333333327e2e4000
.dword	0x33333333e8382667
.dword	0x6666666666666668
.dword	0xbbbbbbbbbbbbbbba
.dword	0x111111111111110f
.dword	0x666666666666666b
.dword	0x9999999999999998
.dword	0xcccccccccccccccb
.dword	0x66666665b1617332
.dword	0x666666671b6b5999
.dword	0x6666666666666667
.dword	0xbbbbbbbbbbbbbbb9
.dword	0x6666666666666665
.dword	0x666666666666666a
.dword	0x9999999999999997
.dword	0xccccccccccccccca
.dword	0x666666671b6b5997
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x1111111111111110
.dword	0x666666666666666b
.dword	0x9999999999999999
.dword	0xcccccccccccccccd
.dword	0x66666665b1617333
.dword	0x666666671b6b5999
.dword	0x00000000b504f335
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddc
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5999
.dword	0xffffffffffffffff
.dword	0x000000016a09e665
.dword	0x00000000b504f334
.dword	0x555555560a5a4887
.dword	0x00000000b504f332
.dword	0x00000000b504f336
.dword	0x33333333e8382664
.dword	0x666666671b6b5998
.dword	0x000000016a09e664
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddd
.dword	0x00000000b504f339
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x0000000000000000
.dword	0x000000016a09e667
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaab
.dword	0x0000000000000000
.dword	0x555555555555555c
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506223
.dword	0x555555560a5a488a
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x5555555555555556
.dword	0x555555555555555b
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x555555560a5a4888
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000001
.dword	0x555555555555555c
.dword	0x888888888888888a
.dword	0xbbbbbbbbbbbbbbbe
.dword	0x55555554a0506224
.dword	0x555555560a5a488a
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000001
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaab0
.dword	0xddddddddddddddde
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9dde
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000000
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddd
.dword	0x1111111111111111
.dword	0xaaaaaaab5faf9ddd
.dword	0x0000000000000001
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaab2
.dword	0xdddddddddddddddf
.dword	0x1111111111111112
.dword	0xaaaaaaa9f5a5b779
.dword	0xaaaaaaab5faf9de0
.dword	0x0000000000000009
.dword	0x555555555555555b
.dword	0xaaaaaaaaaaaaaab0
.dword	0x000000000000000c
.dword	0x3333333333333339
.dword	0x666666666666666c
.dword	0xffffffff4afb0cd3
.dword	0x00000000b504f33a
.dword	0x0000000000000008
.dword	0x555555555555555a
.dword	0x0000000000000006
.dword	0x000000000000000b
.dword	0x3333333333333338
.dword	0x666666666666666b
.dword	0x00000000b504f338
.dword	0x555555555555555d
.dword	0xaaaaaaaaaaaaaab1
.dword	0x000000000000000c
.dword	0x333333333333333a
.dword	0x666666666666666e
.dword	0xffffffff4afb0cd4
.dword	0x00000000b504f33a
.dword	0x3333333333333337
.dword	0x888888888888888a
.dword	0xddddddddddddddde
.dword	0x3333333333333339
.dword	0x6666666666666667
.dword	0x999999999999999b
.dword	0x333333327e2e4001
.dword	0x33333333e8382667
.dword	0x3333333333333336
.dword	0x8888888888888889
.dword	0x3333333333333334
.dword	0x3333333333333338
.dword	0x6666666666666666
.dword	0x999999999999999a
.dword	0x33333333e8382666
.dword	0x888888888888888a
.dword	0xdddddddddddddddf
.dword	0x333333333333333b
.dword	0x6666666666666668
.dword	0x999999999999999b
.dword	0x333333327e2e4002
.dword	0x33333333e8382669
.dword	0x666666666666666a
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x1111111111111111
.dword	0x666666666666666d
.dword	0x999999999999999a
.dword	0xcccccccccccccccd
.dword	0x66666665b1617334
.dword	0x666666671b6b599b
.dword	0x6666666666666669
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x6666666666666667
.dword	0x666666666666666c
.dword	0x9999999999999999
.dword	0xcccccccccccccccc
.dword	0x666666671b6b5999
.dword	0xbbbbbbbbbbbbbbbe
.dword	0x1111111111111112
.dword	0x666666666666666d
.dword	0x999999999999999b
.dword	0xcccccccccccccccf
.dword	0x66666665b1617335
.dword	0x666666671b6b599b
.dword	0xffffffff4afb0cd1
.dword	0x55555554a0506224
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd3
.dword	0x333333327e2e4001
.dword	0x66666665b1617335
.dword	0xfffffffe95f6199b
.dword	0x0000000000000001
.dword	0xffffffff4afb0cd0
.dword	0x55555554a0506223
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cd2
.dword	0x333333327e2e4000
.dword	0x66666665b1617334
.dword	0x0000000000000000
.dword	0x55555554a0506224
.dword	0xaaaaaaa9f5a5b779
.dword	0xffffffff4afb0cd5
.dword	0x333333327e2e4002
.dword	0x66666665b1617335
.dword	0xfffffffe95f6199c
.dword	0x0000000000000003
.dword	0x00000000b504f337
.dword	0x555555560a5a4889
.dword	0xaaaaaaab5faf9dde
.dword	0x00000000b504f33a
.dword	0x33333333e8382667
.dword	0x666666671b6b599a
.dword	0x0000000000000001
.dword	0x000000016a09e668
.dword	0x00000000b504f336
.dword	0x555555560a5a4888
.dword	0x00000000b504f334
.dword	0x00000000b504f339
.dword	0x33333333e8382666
.dword	0x666666671b6b5999
.dword	0x000000016a09e666
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbfffe
.dword	0xfffffffffff7fffe
.dword	0xffffffffffeffffe
.dword	0xffffffffffdfffff
.dword	0xffffffffffbffffe
.dword	0xffffffffff7ffffe
.dword	0xfffffffffefffffe
.dword	0xfffffffffdffffff
.dword	0xfffffffffbfffffe
.dword	0xfffffffff7fffffe
.dword	0xffffffffeffffffe
.dword	0xffffffffdfffffff
.dword	0xffffffffbffffffe
.dword	0xffffffff7ffffffe
.dword	0xfffffffefffffffe
.dword	0xfffdffffffffffff
.dword	0xfffbfffffffffffe
.dword	0xfff7fffffffffffe
.dword	0xffeffffffffffffe
.dword	0xffdfffffffffffff
.dword	0xffbffffffffffffe
.dword	0xff7ffffffffffffe
.dword	0xfefffffffffffffe
.dword	0xfdffffffffffffff
.dword	0xfbfffffffffffffe
.dword	0xf7fffffffffffffe
.dword	0xeffffffffffffffe
.dword	0xdfffffffffffffff
.dword	0xbffffffffffffffe
.dword	0x7ffffffffffffffe
.dword	0xfffffffffffffffe
.dword	0x0000000000020001
.dword	0x0000000000040000
.dword	0x0000000000080000
.dword	0x0000000000100000
.dword	0x0000000000200001
.dword	0x0000000000400000
.dword	0x0000000000800000
.dword	0x0000000001000000
.dword	0x0000000002000001
.dword	0x0000000004000000
.dword	0x0000000008000000
.dword	0x0000000010000000
.dword	0x0000000020000001
.dword	0x0000000040000000
.dword	0x0000000080000000
.dword	0x0000000100000000
.dword	0x0002000000000001
.dword	0x0004000000000000
.dword	0x0008000000000000
.dword	0x0010000000000000
.dword	0x0020000000000001
.dword	0x0040000000000000
.dword	0x0080000000000000
.dword	0x0100000000000000
.dword	0x0200000000000001
.dword	0x0400000000000000
.dword	0x0800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000001
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000000
.dword	0xaaaaaaab5faf9ddd
.dword	0x5555555555555559
.dword	0xaaaaaaaaaaaaaaae
.dword	0x0000000000000009
.dword	0x3333333333333338
.dword	0x666666666666666a
.dword	0xffffffff4afb0cd1
.dword	0x00000000b504f334
.dword	0x0000000000000007
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaf
.dword	0xdddddddddddddddd
.dword	0x1111111111111110
.dword	0xaaaaaaa9f5a5b778
.dword	0xaaaaaaab5faf9ddd
.dword	0xaaaaaaaaaaaaaaac
.dword	0xfffffffffffffffe
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaae
.dword	0xdddddddddddddddc
.dword	0x111111111111110f
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaab5faf9ddc
.dword	0x0000000000000000
.dword	0x5555555555555555
.dword	0x000000000000000a
.dword	0x3333333333333337
.dword	0x666666666666666a
.dword	0x00000000b504f337
.dword	0x555555555555555c
.dword	0xaaaaaaaaaaaaaab0
.dword	0x000000000000000b
.dword	0x3333333333333339
.dword	0x666666666666666d
.dword	0xffffffff4afb0cd3
.dword	0x00000000b504f339
.dword	0x3333333333333336
.dword	0x8888888888888889
.dword	0xdddddddddddddddd
.dword	0x3333333333333338
.dword	0x6666666666666666
.dword	0x33333333e8382668
.dword	0x6666666666666669
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x1111111111111110
.dword	0x666666666666666c
.dword	0x9999999999999999
.dword	0xcccccccccccccccc
.dword	0x66666665b1617333
.dword	0x666666671b6b599a
.dword	0x6666666666666668
.dword	0xbbbbbbbbbbbbbbba
.dword	0x6666666666666666
.dword	0x666666666666666b
.dword	0x9999999999999998
.dword	0xcccccccccccccccb
.dword	0x666666671b6b5998
.dword	0x55555554a0506222
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0cd1
.dword	0x333333327e2e3fff
.dword	0x66666665b1617333
.dword	0xffffffffffffffff
.dword	0x55555554a0506223
.dword	0xaaaaaaa9f5a5b778
.dword	0xffffffff4afb0cd4
.dword	0x333333327e2e4001
.dword	0x66666665b1617334
.dword	0xfffffffe95f6199b
.dword	0x0000000000000002
.dword	0x00000000b504f336
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddd
.dword	0x666666671b6b599b
.dword	0x0000000000000001
.dword	0x000000016a09e667
.dword	0x0000000000000005
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaac
.dword	0x0000000000000007
.dword	0x3333333333333335
.dword	0x6666666666666669
.dword	0xffffffff4afb0ccf
.dword	0x00000000b504f335
.dword	0x0000000000000004
.dword	0x5555555555555557
.dword	0x0000000000000002
.dword	0x0000000000000006
.dword	0x3333333333333334
.dword	0x555555560a5a4888
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaa8
.dword	0x5555555555555554
.dword	0x5555555555555559
.dword	0x8888888888888886
.dword	0xbbbbbbbbbbbbbbb9
.dword	0x555555560a5a4886
.dword	0xaaaaaaaaaaaaaaab
.dword	0xffffffffffffffff
.dword	0x555555555555555a
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506222
.dword	0x555555560a5a4888
.dword	0x0000000000000003
.dword	0x9999999999999999
.dword	0x333333327e2e3fff
.dword	0x33333333e8382665
.dword	0x3333333333333334
.dword	0x8888888888888887
.dword	0x3333333333333332
.dword	0x3333333333333336
.dword	0x6666666666666664
.dword	0x9999999999999998
.dword	0x33333333e8382664
.dword	0x8888888888888888
.dword	0xdddddddddddddddd
.dword	0x3333333333333339
.dword	0x6666666666666666
.dword	0x9999999999999999
.dword	0x333333327e2e4000
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x1111111111111110
.dword	0x666666666666666b
.dword	0x9999999999999999
.dword	0xcccccccccccccccd
.dword	0x66666665b1617333
.dword	0x666666671b6b5999
.dword	0x00000000b504f335
.dword	0x555555560a5a4888
.dword	0xaaaaaaab5faf9ddc
.dword	0x00000000b504f337
.dword	0x33333333e8382665
.dword	0x666666671b6b5999
.dword	0xffffffffffffffff
.dword	0x000000016a09e665
.dword	0x00000000b504f334
.dword	0x555555555555555c
.dword	0x8888888888888889
.dword	0xbbbbbbbbbbbbbbbc
.dword	0x55555554a0506223
.dword	0x555555560a5a488a
.dword	0x5555555555555558
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x5555555555555556
.dword	0x555555555555555b
.dword	0x8888888888888888
.dword	0xbbbbbbbbbbbbbbbb
.dword	0x555555560a5a4888
.dword	0xaaaaaaaaaaaaaaad
.dword	0x0000000000000001
.dword	0x555555555555555c
.dword	0x888888888888888a

rd_data_vx:
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffff9
.dword	0xfffffffffffffff5
.dword	0xffffffffffffffee
.dword	0xffffffffffffffdd
.dword	0xffffffffffffffbd
.dword	0xffffffffffffff7d
.dword	0xfffffffffffffefe
.dword	0xfffffffffffffdfd
.dword	0xfffffffffffffbfd
.dword	0xfffffffffffff7fd
.dword	0xffffffffffffeffe
.dword	0xffffffffffffdffd
.dword	0xffffffffffffbffd
.dword	0xffffffffffff7ffd
.dword	0xfffffffffffefffd
.dword	0xfffffffffffdfffc
.dword	0xfffffffffffbfffc
.dword	0xfffffffffff7fffc
.dword	0xffffffffffeffffd
.dword	0xffffffffffdffffc
.dword	0xffffffffffbffffc
.dword	0xffffffffff7ffffc
.dword	0xfffffffffefffffd
.dword	0xfffffffffdfffffc
.dword	0xfffffffffbfffffc
.dword	0xfffffffff7fffffc
.dword	0xffffffffeffffffd
.dword	0xffffffffdffffffc
.dword	0xffffffffbffffffc
.dword	0xffffffff7ffffffc
.dword	0xfffffffefffffffb
.dword	0xfffffffdfffffffa
.dword	0xfffffffbfffffffa
.dword	0xfffffff7fffffffa
.dword	0xffffffeffffffffb
.dword	0xffffffdffffffffa
.dword	0xffffffbffffffffa
.dword	0xffffff7ffffffffa
.dword	0xfffffefffffffffb
.dword	0xfffffdfffffffffa
.dword	0xfffffbfffffffffa
.dword	0xfffff7fffffffffa
.dword	0xffffeffffffffffb
.dword	0xffffdffffffffffa
.dword	0xffffbffffffffffa
.dword	0xffff7ffffffffffa
.dword	0xfffefffffffffff7
.dword	0xfffdfffffffffff6
.dword	0xfffbfffffffffff6
.dword	0xfff7fffffffffff6
.dword	0xffeffffffffffff7
.dword	0xffdffffffffffff6
.dword	0xffbffffffffffff6
.dword	0xff7ffffffffffff6
.dword	0xfefffffffffffff7
.dword	0xfdfffffffffffff6
.dword	0xfbfffffffffffff6
.dword	0xf7fffffffffffff6
.dword	0xeffffffffffffff7
.dword	0xdffffffffffffff6
.dword	0xbffffffffffffff6
.dword	0x7ffffffffffffff6
.dword	0xfffffffffffffff1
.dword	0xfffffffffffffff1
.dword	0xfffffffffffffff3
.dword	0xfffffffffffffff7
.dword	0x0000000000000000
.dword	0x000000000000000f
.dword	0x000000000000002f
.dword	0x000000000000006f
.dword	0x00000000000000f0
.dword	0x00000000000001ef
.dword	0x00000000000003ef
.dword	0x00000000000007ef
.dword	0x0000000000000ff0
.dword	0x0000000000001fef
.dword	0x0000000000003fef
.dword	0x0000000000007fef
.dword	0x000000000000ffe0
.dword	0x000000000001ffdf
.dword	0x000000000003ffdf
.dword	0x000000000007ffdf
.dword	0x00000000000fffe0
.dword	0x00000000001fffdf
.dword	0x00000000003fffdf
.dword	0x00000000007fffdf
.dword	0x0000000000ffffe0
.dword	0x0000000001ffffdf
.dword	0x0000000003ffffdf
.dword	0x0000000007ffffdf
.dword	0x000000000fffffe0
.dword	0x000000001fffffdf
.dword	0x000000003fffffdf
.dword	0x000000007fffffdf
.dword	0x00000000ffffffc0
.dword	0x00000001ffffffbf
.dword	0x00000003ffffffbf
.dword	0x00000007ffffffbf
.dword	0x0000000fffffffc0
.dword	0x0000001fffffffbf
.dword	0x0000003fffffffbf
.dword	0x0000007fffffffbf
.dword	0x000000ffffffffc0
.dword	0x000001ffffffffbf
.dword	0x000003ffffffffbf
.dword	0x000007ffffffffbf
.dword	0x00000fffffffffc0
.dword	0x00001fffffffffbf
.dword	0x00003fffffffffbf
.dword	0x00007fffffffffbf
.dword	0x0000ffffffffff80
.dword	0x0001ffffffffff7f
.dword	0x0003ffffffffff7f
.dword	0x0007ffffffffff7f
.dword	0x000fffffffffff80
.dword	0x001fffffffffff7f
.dword	0x003fffffffffff7f
.dword	0x007fffffffffff7f
.dword	0x00ffffffffffff80
.dword	0x01ffffffffffff7f
.dword	0x03ffffffffffff7f
.dword	0x07ffffffffffff7f
.dword	0x0fffffffffffff80
.dword	0x1fffffffffffff7f
.dword	0x3fffffffffffff7f
.dword	0x7fffffffffffff7f
.dword	0xffffffffffffff03
.dword	0x5555555555555454
.dword	0xaaaaaaaaaaaaa9a9
.dword	0xffffffffffffff04
.dword	0x3333333333333233
.dword	0x6666666666666565
.dword	0xffffffff4afb0bcc
.dword	0x5555555555555454
.dword	0x00000000b504f233
.dword	0xffffffffffffff01
.dword	0x5555555555555453
.dword	0xfffffffffffffeff
.dword	0xffffffffffffff04
.dword	0x3333333333333231
.dword	0x6666666666666564
.dword	0xaaaaaaaaaaaaa9a9
.dword	0x00000000b504f132
.dword	0x5555555555555355
.dword	0xaaaaaaaaaaaaa8aa
.dword	0xfffffffffffffe05
.dword	0x3333333333333134
.dword	0x6666666666666466
.dword	0xffffffff4afb0acd
.dword	0x00000000b504f133
.dword	0xfffffffffffffe03
.dword	0x5555555555555354
.dword	0xaaaaaaaaaaaaa8a9
.dword	0xfffffffffffffe04
.dword	0x3333333333333133
.dword	0x6666666666666465
.dword	0xffffffff4afb0acc
.dword	0x00000000b504f132
.dword	0xfffffffffffffc02
.dword	0x5555555555555153
.dword	0xfffffffffffffbff
.dword	0xfffffffffffffc03
.dword	0x3333333333332f32
.dword	0x6666666666666264
.dword	0x00000000b504ef31
.dword	0x5555555555555155
.dword	0xaaaaaaaaaaaaa6ab
.dword	0xfffffffffffffc05
.dword	0x3333333333332f33
.dword	0x6666666666666266
.dword	0xffffffff4afb08ce
.dword	0x00000000b504ef33
.dword	0xfffffffffffffc02
.dword	0x5555555555555154
.dword	0xaaaaaaaaaaaaa2aa
.dword	0xfffffffffffff804
.dword	0x3333333333332b32
.dword	0x6666666666665e65
.dword	0xffffffff4afb04cd
.dword	0x00000000b504eb32
.dword	0xfffffffffffff801
.dword	0x5555555555554d53
.dword	0xfffffffffffff800
.dword	0xfffffffffffff803
.dword	0x3333333333332b31
.dword	0x6666666666665e64
.dword	0xfffffffffffff800
.dword	0x00000000b504eb31
.dword	0x5555555555554d55
.dword	0xaaaaaaaaaaaaa2aa
.dword	0xfffffffffffff006
.dword	0x3333333333332333
.dword	0x6666666666665666
.dword	0xffffffff4afafccd
.dword	0x00000000b504e334
.dword	0xfffffffffffff002
.dword	0x5555555555554554
.dword	0xaaaaaaaaaaaa9aa9
.dword	0xfffffffffffff005
.dword	0x3333333333332332
.dword	0x6666666666665665
.dword	0xffffffff4afafccc
.dword	0x00000000b504e333
.dword	0xfffffffffffff001
.dword	0x5555555555554553
.dword	0xffffffffffffefff
.dword	0xffffffffffffe004
.dword	0x3333333333331331
.dword	0x6666666666664664
.dword	0x00000000b504d331
.dword	0x5555555555553556
.dword	0xaaaaaaaaaaaa8aaa
.dword	0xffffffffffffe005
.dword	0x3333333333331333
.dword	0x6666666666664667
.dword	0xffffffff4afaeccd
.dword	0x00000000b504d333
.dword	0xffffffffffffe002
.dword	0x5555555555553555
.dword	0xaaaaaaaaaaaa8aa9
.dword	0xffffffffffffe004
.dword	0x3333333333331332
.dword	0x6666666666662666
.dword	0xffffffff4afacccc
.dword	0x00000000b504b332
.dword	0xffffffffffffc001
.dword	0x5555555555551554
.dword	0xffffffffffffbfff
.dword	0xffffffffffffc003
.dword	0x333333333332f331
.dword	0x6666666666662665
.dword	0x00000000b504b331
.dword	0x5555555555551555
.dword	0xaaaaaaaaaaaa6aaa
.dword	0xffffffffffffc006
.dword	0x333333333332f333
.dword	0x6666666666662666
.dword	0xffffffff4afacccd
.dword	0x00000000b5047334
.dword	0xffffffffffff8002
.dword	0x555555555554d554
.dword	0xaaaaaaaaaaaa2aa9
.dword	0xffffffffffff8005
.dword	0x333333333332b332
.dword	0x666666666665e665
.dword	0xffffffff4afa8ccc
.dword	0x00000000b5047333
.dword	0xffffffffffff8001
.dword	0x555555555554d553
.dword	0xffffffffffff7fff
.dword	0xffffffffffff8004
.dword	0x333333333332b331
.dword	0x666666666665e664
.dword	0x00000000b5047331
.dword	0x5555555555545556
.dword	0xaaaaaaaaaaa9aaaa
.dword	0xffffffffffff0005
.dword	0x3333333333323333
.dword	0x6666666666656667
.dword	0xffffffff4afa0ccd
.dword	0x00000000b503f333
.dword	0xffffffffffff0002
.dword	0x5555555555545555
.dword	0xaaaaaaaaaaa9aaa9
.dword	0xffffffffffff0004
.dword	0x3333333333323332
.dword	0x6666666666656666
.dword	0xffffffff4afa0ccc
.dword	0x00000000b503f332
.dword	0xffffffffffff0001
.dword	0x5555555555535554
.dword	0xfffffffffffdffff
.dword	0xfffffffffffe0003
.dword	0x3333333333313331
.dword	0x6666666666646665
.dword	0x00000000b502f331
.dword	0x5555555555535555
.dword	0xaaaaaaaaaaa8aaaa
.dword	0xfffffffffffe0006
.dword	0x3333333333313333
.dword	0x6666666666646666
.dword	0xffffffff4af90ccd
.dword	0x00000000b502f334
.dword	0xfffffffffffe0002
.dword	0x5555555555535554
.dword	0xaaaaaaaaaaa8aaa9
.dword	0xfffffffffffc0005
.dword	0x33333333332f3332
.dword	0x6666666666626665
.dword	0xffffffff4af70ccc
.dword	0x00000000b500f333
.dword	0xfffffffffffc0001
.dword	0x5555555555515553
.dword	0xfffffffffffbffff
.dword	0xfffffffffffc0004
.dword	0x33333333332f3331
.dword	0x6666666666626664
.dword	0x00000000b500f331
.dword	0x5555555555515556
.dword	0xaaaaaaaaaaa6aaaa
.dword	0xfffffffffffc0005
.dword	0x33333333332f3333
.dword	0x66666666665e6667
.dword	0xffffffff4af30ccd
.dword	0x00000000b4fcf333
.dword	0xfffffffffff80002
.dword	0x55555555554d5555
.dword	0xaaaaaaaaaaa2aaa9
.dword	0xfffffffffff80004
.dword	0x33333333332b3332
.dword	0x66666666665e6666
.dword	0xffffffff4af30ccc
.dword	0x00000000b4fcf332
.dword	0xfffffffffff80001
.dword	0x55555555554d5554
.dword	0xfffffffffff7ffff
.dword	0xfffffffffff80003
.dword	0x33333333332b3331
.dword	0x6666666666566665
.dword	0x00000000b4f4f331
.dword	0x5555555555455555
.dword	0xaaaaaaaaaa9aaaaa
.dword	0xfffffffffff00006
.dword	0x3333333333233333
.dword	0x6666666666566666
.dword	0xffffffff4aeb0ccd
.dword	0x00000000b4f4f334
.dword	0xfffffffffff00002
.dword	0x5555555555455554
.dword	0xaaaaaaaaaa9aaaa9
.dword	0xfffffffffff00005
.dword	0x3333333333233332
.dword	0x6666666666566665
.dword	0xffffffff4aeb0ccc
.dword	0x00000000b4e4f333
.dword	0xffffffffffe00001
.dword	0x5555555555355553
.dword	0xffffffffffdfffff
.dword	0xffffffffffe00004
.dword	0x3333333333133331
.dword	0x6666666666466664
.dword	0x00000000b4e4f331
.dword	0x5555555555355556
.dword	0xaaaaaaaaaa8aaaaa
.dword	0xffffffffffe00005
.dword	0x3333333333133333
.dword	0x6666666666466667
.dword	0xffffffff4adb0ccd
.dword	0x00000000b4e4f333
.dword	0xffffffffffe00002
.dword	0x5555555555155555
.dword	0xaaaaaaaaaa6aaaa9
.dword	0xffffffffffc00004
.dword	0x3333333332f33332
.dword	0x6666666666266666
.dword	0xffffffff4abb0ccc
.dword	0x00000000b4c4f332
.dword	0xffffffffffc00001
.dword	0x5555555555155554
.dword	0xffffffffffbfffff
.dword	0xffffffffffc00003
.dword	0x3333333332f33331
.dword	0x6666666666266665
.dword	0x00000000b4c4f331
.dword	0x5555555555155555
.dword	0xaaaaaaaaaa6aaaaa
.dword	0xffffffffff800006
.dword	0x3333333332b33333
.dword	0x6666666665e66666
.dword	0xffffffff4a7b0ccd
.dword	0x00000000b484f334
.dword	0xffffffffff800002
.dword	0x5555555554d55554
.dword	0xaaaaaaaaaa2aaaa9
.dword	0xffffffffff800005
.dword	0x3333333332b33332
.dword	0x6666666665e66665
.dword	0xffffffff4a7b0ccc
.dword	0x00000000b484f333
.dword	0xffffffffff800001
.dword	0x5555555554d55553
.dword	0xffffffffff7fffff
.dword	0xffffffffff000004
.dword	0x3333333332333331
.dword	0x6666666665666664
.dword	0x00000000b404f331
.dword	0x5555555554555556
.dword	0xaaaaaaaaa9aaaaaa
.dword	0xffffffffff000005
.dword	0x3333333332333333
.dword	0x6666666665666667
.dword	0xffffffff49fb0ccd
.dword	0x00000000b404f333
.dword	0xffffffffff000002
.dword	0x5555555554555555
.dword	0xaaaaaaaaa9aaaaa9
.dword	0xffffffffff000004
.dword	0x3333333332333332
.dword	0x6666666664666666
.dword	0xffffffff48fb0ccc
.dword	0x00000000b304f332
.dword	0xfffffffffe000001
.dword	0x5555555553555554
.dword	0xfffffffffdffffff
.dword	0xfffffffffe000003
.dword	0x3333333331333331
.dword	0x6666666664666665
.dword	0x00000000b304f331
.dword	0x5555555553555555
.dword	0xaaaaaaaaa8aaaaaa
.dword	0xfffffffffe000006
.dword	0x3333333331333333
.dword	0x6666666664666666
.dword	0xffffffff48fb0ccd
.dword	0x00000000b104f334
.dword	0xfffffffffc000002
.dword	0x5555555551555554
.dword	0xaaaaaaaaa6aaaaa9
.dword	0xfffffffffc000005
.dword	0x333333332f333332
.dword	0x6666666662666665
.dword	0xffffffff46fb0ccc
.dword	0x00000000b104f333
.dword	0xfffffffffc000001
.dword	0x5555555551555553
.dword	0xfffffffffbffffff
.dword	0xfffffffffc000004
.dword	0x333333332f333331
.dword	0x6666666662666664
.dword	0x00000000b104f331
.dword	0x555555554d555556
.dword	0xaaaaaaaaa2aaaaaa
.dword	0xfffffffff8000005
.dword	0x333333332b333333
.dword	0x666666665e666667
.dword	0xffffffff42fb0ccd
.dword	0x00000000ad04f333
.dword	0xfffffffff8000002
.dword	0x555555554d555555
.dword	0xaaaaaaaaa2aaaaa9
.dword	0xfffffffff8000004
.dword	0x333333332b333332
.dword	0x666666665e666666
.dword	0xffffffff42fb0ccc
.dword	0x00000000ad04f332
.dword	0xfffffffff8000001
.dword	0x5555555545555554
.dword	0xffffffffefffffff
.dword	0xfffffffff0000003
.dword	0x3333333323333331
.dword	0x6666666656666665
.dword	0x00000000a504f331
.dword	0x5555555545555555
.dword	0xaaaaaaaa9aaaaaaa
.dword	0xfffffffff0000006
.dword	0x3333333323333333
.dword	0x6666666656666666
.dword	0xffffffff3afb0ccd
.dword	0x00000000a504f334
.dword	0xfffffffff0000002
.dword	0x5555555545555554
.dword	0xaaaaaaaa9aaaaaa9
.dword	0xffffffffe0000005
.dword	0x3333333313333332
.dword	0x6666666646666665
.dword	0xffffffff2afb0ccc
.dword	0x000000009504f333
.dword	0xffffffffe0000001
.dword	0x5555555535555553
.dword	0xffffffffdfffffff
.dword	0xffffffffe0000004
.dword	0x3333333313333331
.dword	0x6666666646666664
.dword	0x000000009504f331
.dword	0x5555555535555556
.dword	0xaaaaaaaa8aaaaaaa
.dword	0xffffffffe0000005
.dword	0x3333333313333333
.dword	0x6666666626666667
.dword	0xffffffff0afb0ccd
.dword	0x000000007504f333
.dword	0xffffffffc0000002
.dword	0x5555555515555555
.dword	0xaaaaaaaa6aaaaaa9
.dword	0xffffffffc0000004
.dword	0x33333332f3333332
.dword	0x6666666626666666
.dword	0xffffffff0afb0ccc
.dword	0x000000007504f332
.dword	0xffffffffc0000001
.dword	0x5555555515555554
.dword	0xffffffffbfffffff
.dword	0xffffffffc0000003
.dword	0x33333332f3333331
.dword	0x66666665e6666665
.dword	0x000000003504f331
.dword	0x55555554d5555555
.dword	0xaaaaaaaa2aaaaaaa
.dword	0xffffffff80000006
.dword	0x33333332b3333333
.dword	0x66666665e6666666
.dword	0xfffffffecafb0ccd
.dword	0x000000003504f334
.dword	0xffffffff80000002
.dword	0x55555554d5555554
.dword	0xaaaaaaaa2aaaaaa9
.dword	0xffffffff80000005
.dword	0x33333332b3333332
.dword	0x66666665e6666665
.dword	0xfffffffecafb0ccc
.dword	0xffffffffb504f333
.dword	0xffffffff00000001
.dword	0x5555555455555553
.dword	0xfffffffeffffffff
.dword	0xffffffff00000004
.dword	0x3333333233333331
.dword	0x6666666566666664
.dword	0xffffffffb504f331
.dword	0x5555555455555556
.dword	0xaaaaaaa9aaaaaaaa
.dword	0xffffffff00000005
.dword	0x3333333233333333
.dword	0x6666666566666667
.dword	0xfffffffe4afb0ccd
.dword	0xffffffffb504f333
.dword	0xffffffff00000002
.dword	0x5555555355555555
.dword	0xaaaaaaa8aaaaaaa9
.dword	0xfffffffe00000004
.dword	0x3333333133333332
.dword	0x6666666466666666
.dword	0xfffffffd4afb0ccc
.dword	0xfffffffeb504f332
.dword	0xfffffffe00000001
.dword	0x5555555355555554
.dword	0xfffffffdffffffff
.dword	0xfffffffe00000003
.dword	0x3333333133333331
.dword	0x6666666466666665
.dword	0xfffffffeb504f331
.dword	0x5555555355555555
.dword	0xaaaaaaa8aaaaaaaa
.dword	0xfffffffc00000006
.dword	0x3333332f33333333
.dword	0x6666666266666666
.dword	0xfffffffb4afb0ccd
.dword	0xfffffffcb504f334
.dword	0xfffffffc00000002
.dword	0x5555555155555554
.dword	0xaaaaaaa6aaaaaaa9
.dword	0xfffffffc00000005
.dword	0x3333332f33333332
.dword	0x6666666266666665
.dword	0xfffffffb4afb0ccc
.dword	0xfffffffcb504f333
.dword	0xfffffffc00000001
.dword	0x5555555155555553
.dword	0xfffffffbffffffff
.dword	0xfffffff800000004
.dword	0x3333332b33333331
.dword	0x6666665e66666664
.dword	0xfffffff8b504f331
.dword	0x5555554d55555556
.dword	0xaaaaaaa2aaaaaaaa
.dword	0xfffffff800000005
.dword	0x3333332b33333333
.dword	0x6666665e66666667
.dword	0xfffffff74afb0ccd
.dword	0xfffffff8b504f333
.dword	0xfffffff800000002
.dword	0x5555554d55555555
.dword	0xaaaaaaa2aaaaaaa9
.dword	0xfffffff800000004
.dword	0x3333332b33333332
.dword	0x6666665666666666
.dword	0xffffffef4afb0ccc
.dword	0xfffffff0b504f332
.dword	0xfffffff000000001
.dword	0x5555554555555554
.dword	0xffffffefffffffff
.dword	0xfffffff000000003
.dword	0x3333332333333331
.dword	0x6666665666666665
.dword	0xfffffff0b504f331
.dword	0x5555554555555555
.dword	0xaaaaaa9aaaaaaaaa
.dword	0xfffffff000000006
.dword	0x3333332333333333
.dword	0x6666665666666666
.dword	0xffffffef4afb0ccd
.dword	0xffffffe0b504f334
.dword	0xffffffe000000002
.dword	0x5555553555555554
.dword	0xaaaaaa8aaaaaaaa9
.dword	0xffffffe000000005
.dword	0x3333331333333332
.dword	0x6666664666666665
.dword	0xffffffdf4afb0ccc
.dword	0xffffffe0b504f333
.dword	0xffffffe000000001
.dword	0x5555553555555553
.dword	0xffffffdfffffffff
.dword	0xffffffe000000004
.dword	0x3333331333333331
.dword	0x6666664666666664
.dword	0xffffffe0b504f331

rd_data_vi:
.dword	0x000000000000000d
.dword	0x000000000000000b
.dword	0x0000000000000009
.dword	0x0000000000000005
.dword	0xfffffffffffffffe
.dword	0xffffffffffffffed
.dword	0xffffffffffffffcd
.dword	0xffffffffffffff8d
.dword	0xffffffffffffff0e
.dword	0xfffffffffffffe0d
.dword	0xfffffffffffffc0d
.dword	0xfffffffffffff80d
.dword	0xfffffffffffff00e
.dword	0xffffffffffffe00d
.dword	0xffffffffffffc00d
.dword	0xffffffffffff800d
.dword	0xffffffffffff000e
.dword	0xfffffffffffe000d
.dword	0xfffffffffffc000d
.dword	0xfffffffffff8000d
.dword	0xfffffffffff0000e
.dword	0xffffffffffe0000d
.dword	0xffffffffffc0000d
.dword	0xffffffffff80000d
.dword	0xffffffffff00000e
.dword	0xfffffffffe00000d
.dword	0xfffffffffc00000d
.dword	0xfffffffff800000d
.dword	0xfffffffff000000e
.dword	0xffffffffe000000d
.dword	0xffffffffc000000d
.dword	0xffffffff8000000d
.dword	0xffffffff0000000e
.dword	0xfffffffe0000000d
.dword	0xfffffffc0000000d
.dword	0xfffffff80000000d
.dword	0xfffffff00000000e
.dword	0xffffffe00000000d
.dword	0xffffffc00000000d
.dword	0xffffff800000000d
.dword	0xffffff000000000e
.dword	0xfffffe000000000d
.dword	0xfffffc000000000d
.dword	0xfffff8000000000d
.dword	0xfffff0000000000e
.dword	0xffffe0000000000d
.dword	0xffffc0000000000d
.dword	0xffff80000000000d
.dword	0xffff00000000000e
.dword	0xfffe00000000000d
.dword	0xfffc00000000000d
.dword	0xfff800000000000d
.dword	0xfff000000000000e
.dword	0xffe000000000000d
.dword	0xffc000000000000d
.dword	0xff8000000000000d
.dword	0xff0000000000000e
.dword	0xfe0000000000000d
.dword	0xfc0000000000000d
.dword	0xf80000000000000d
.dword	0xf00000000000000e
.dword	0xe00000000000000d
.dword	0xc00000000000000d
.dword	0x800000000000000d
.dword	0x0000000000000010
.dword	0x0000000000000010
.dword	0x0000000000000012
.dword	0x0000000000000016
.dword	0x000000000000001f
.dword	0x000000000000002e
.dword	0x000000000000004e
.dword	0x000000000000008e
.dword	0x000000000000010f
.dword	0x000000000000020e
.dword	0x000000000000040e
.dword	0x000000000000080e
.dword	0x000000000000100f
.dword	0x000000000000200e
.dword	0x000000000000400e
.dword	0x000000000000800e
.dword	0x000000000001000f
.dword	0x000000000002000e
.dword	0x000000000004000e
.dword	0x000000000008000e
.dword	0x000000000010000f
.dword	0x000000000020000e
.dword	0x000000000040000e
.dword	0x000000000080000e
.dword	0x000000000100000f
.dword	0x000000000200000e
.dword	0x000000000400000e
.dword	0x000000000800000e
.dword	0x000000001000000f
.dword	0x000000002000000e
.dword	0x000000004000000e
.dword	0x000000008000000e
.dword	0x000000010000000f
.dword	0x000000020000000e
.dword	0x000000040000000e
.dword	0x000000080000000e
.dword	0x000000100000000f
.dword	0x000000200000000e
.dword	0x000000400000000e
.dword	0x000000800000000e
.dword	0x000001000000000f
.dword	0x000002000000000e
.dword	0x000004000000000e
.dword	0x000008000000000e
.dword	0x000010000000000f
.dword	0x000020000000000e
.dword	0x000040000000000e
.dword	0x000080000000000e
.dword	0x000100000000000f
.dword	0x000200000000000e
.dword	0x000400000000000e
.dword	0x000800000000000e
.dword	0x001000000000000f
.dword	0x002000000000000e
.dword	0x004000000000000e
.dword	0x008000000000000e
.dword	0x010000000000000f
.dword	0x020000000000000e
.dword	0x040000000000000e
.dword	0x080000000000000e
.dword	0x100000000000000f
.dword	0x200000000000000e
.dword	0x400000000000000e
.dword	0x800000000000000e
.dword	0x0000000000000012
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333342
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x5555555555555563
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0xaaaaaaaaaaaaaab8
.dword	0x00000000b504f341
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333343
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000012
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333342
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000011
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333341
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaaba
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdd
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000f
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x000000000000000f
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5555555555555565
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000014
.dword	0x3333333333333342
.dword	0x6666666666666676
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f342
.dword	0x0000000000000011
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000013
.dword	0x3333333333333341
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f341
.dword	0x0000000000000010
.dword	0x5555555555555563
.dword	0x000000000000000e
.dword	0x0000000000000012
.dword	0x3333333333333340
.dword	0x6666666666666674
.dword	0x00000000b504f340
.dword	0x5555555555555564
.dword	0xaaaaaaaaaaaaaab9
.dword	0x0000000000000015
.dword	0x3333333333333342
.dword	0x6666666666666675
.dword	0xffffffff4afb0cdc
.dword	0x00000000b504f343
.dword	0x0000000000000011
.dword	0x5555555555555563
.dword	0xaaaaaaaaaaaaaab8
.dword	0x0000000000000014
.dword	0x3333333333333341
.dword	0x6666666666666674
.dword	0xffffffff4afb0cdb
.dword	0x00000000b504f342
.dword	0x0000000000000010
.dword	0x5555555555555562
.dword	0x000000000000000e
.dword	0x0000000000000013
.dword	0x3333333333333340
.dword	0x6666666666666673
.dword	0x00000000b504f340
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314

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
    

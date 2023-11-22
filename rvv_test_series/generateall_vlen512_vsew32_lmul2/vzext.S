#----------------------------------------------------------------------------- 
    # vzext.S
    #-----------------------------------------------------------------------------
    #
    # Test vzext instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vzext)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_EXT_OP 
#define TEST_EXT_OP( testnum, inst, result, val1 ) \
    TEST_CASE_LOOP( testnum, v24, result,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v24, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la x7, val1; \
        vle32.v v8, (x7); \
        inst v24, v8, v0.t; \
    )
#define TEST_EXT_OP_rs1_2( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v2, (x7); \
                inst v24, v2, v0.t;  \
            )
#define TEST_EXT_OP_rs1_4( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v4, (x7); \
                inst v24, v4, v0.t;  \
            )
#define TEST_EXT_OP_rs1_6( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v6, (x7); \
                inst v24, v6, v0.t;  \
            )
#define TEST_EXT_OP_rs1_8( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v8, v0.t;  \
            )
#define TEST_EXT_OP_rs1_10( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v10, (x7); \
                inst v24, v10, v0.t;  \
            )
#define TEST_EXT_OP_rs1_12( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v12, (x7); \
                inst v24, v12, v0.t;  \
            )
#define TEST_EXT_OP_rs1_14( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v14, (x7); \
                inst v24, v14, v0.t;  \
            )
#define TEST_EXT_OP_rs1_16( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v16, (x7); \
                inst v24, v16, v0.t;  \
            )
#define TEST_EXT_OP_rs1_18( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v18, (x7); \
                inst v24, v18, v0.t;  \
            )
#define TEST_EXT_OP_rs1_20( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v20, (x7); \
                inst v24, v20, v0.t;  \
            )
#define TEST_EXT_OP_rs1_22( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v22, (x7); \
                inst v24, v22, v0.t;  \
            )
#define TEST_EXT_OP_rs1_26( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v26, (x7); \
                inst v24, v26, v0.t;  \
            )
#define TEST_EXT_OP_rs1_28( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v28, (x7); \
                inst v24, v28, v0.t;  \
            )
#define TEST_EXT_OP_rs1_30( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v30, (x7); \
                inst v24, v30, v0.t;  \
            )
#define TEST_EXT_OP_rd_2( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v2, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v2, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v2, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_4( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v4, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v4, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v4, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_6( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v6, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v6, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v6, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_10( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v10, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v10, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v10, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_12( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v12, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v12, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v12, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_14( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v14, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v14, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v14, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_16( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v16, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v16, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v16, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_18( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v18, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v18, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v18, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_20( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v20, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v20, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v20, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_22( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v22, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v22, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v22, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_24( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v24, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v24, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_26( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v26, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v26, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v26, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_28( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v28, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v28, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v28, v8, v0.t;  \
            )
#define TEST_EXT_OP_rd_30( testnum, inst, result, val1 ) \
            TEST_CASE_LOOP( testnum, v30, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle32.v v30, (x7); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    la x7, val1; \
                vle32.v v8, (x7); \
                inst v30, v8, v0.t;  \
            )
  #-------------------------------------------------------------
  # vzext Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_EXT_OP( 0,  vzext.vf2, rd_data_vv+0, rs1_data+0);
TEST_EXT_OP( 1,  vzext.vf2, rd_data_vv+128, rs1_data+128);
TEST_EXT_OP( 2,  vzext.vf2, rd_data_vv+256, rs1_data+256);
TEST_EXT_OP( 3,  vzext.vf2, rd_data_vv+384, rs1_data+384);
TEST_EXT_OP( 4,  vzext.vf2, rd_data_vv+512, rs1_data+512);
TEST_EXT_OP( 5,  vzext.vf2, rd_data_vv+640, rs1_data+640);
TEST_EXT_OP( 6,  vzext.vf2, rd_data_vv+768, rs1_data+768);
TEST_EXT_OP( 7,  vzext.vf2, rd_data_vv+896, rs1_data+896);
TEST_EXT_OP( 8,  vzext.vf2, rd_data_vv+1024, rs1_data+1024);
TEST_EXT_OP( 9,  vzext.vf2, rd_data_vv+1152, rs1_data+1152);
TEST_EXT_OP( 10,  vzext.vf2, rd_data_vv+1280, rs1_data+1280);
TEST_EXT_OP( 11,  vzext.vf2, rd_data_vv+1408, rs1_data+1408);
TEST_EXT_OP( 12,  vzext.vf2, rd_data_vv+1536, rs1_data+1536);
TEST_EXT_OP( 13,  vzext.vf2, rd_data_vv+1664, rs1_data+1664);
TEST_EXT_OP( 14,  vzext.vf2, rd_data_vv+1792, rs1_data+1792);
TEST_EXT_OP( 15,  vzext.vf2, rd_data_vv+1920, rs1_data+1920);
TEST_EXT_OP( 16,  vzext.vf2, rd_data_vv+2048, rs1_data+2048);
TEST_EXT_OP( 17,  vzext.vf4, rd_data_vv+2176, rs1_data+0);
TEST_EXT_OP( 18,  vzext.vf4, rd_data_vv+2304, rs1_data+128);
TEST_EXT_OP( 19,  vzext.vf4, rd_data_vv+2432, rs1_data+256);
TEST_EXT_OP( 20,  vzext.vf4, rd_data_vv+2560, rs1_data+384);
TEST_EXT_OP( 21,  vzext.vf4, rd_data_vv+2688, rs1_data+512);
TEST_EXT_OP( 22,  vzext.vf4, rd_data_vv+2816, rs1_data+640);
TEST_EXT_OP( 23,  vzext.vf4, rd_data_vv+2944, rs1_data+768);
TEST_EXT_OP( 24,  vzext.vf4, rd_data_vv+3072, rs1_data+896);
TEST_EXT_OP( 25,  vzext.vf4, rd_data_vv+3200, rs1_data+1024);
TEST_EXT_OP( 26,  vzext.vf4, rd_data_vv+3328, rs1_data+1152);
TEST_EXT_OP( 27,  vzext.vf4, rd_data_vv+3456, rs1_data+1280);
TEST_EXT_OP( 28,  vzext.vf4, rd_data_vv+3584, rs1_data+1408);
TEST_EXT_OP( 29,  vzext.vf4, rd_data_vv+3712, rs1_data+1536);
TEST_EXT_OP( 30,  vzext.vf4, rd_data_vv+3840, rs1_data+1664);
TEST_EXT_OP( 31,  vzext.vf4, rd_data_vv+3968, rs1_data+1792);
TEST_EXT_OP( 32,  vzext.vf4, rd_data_vv+4096, rs1_data+1920);
TEST_EXT_OP( 33,  vzext.vf4, rd_data_vv+4224, rs1_data+2048);
  #-------------------------------------------------------------
  # vzext Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_EXT_OP_rd_2( 34,  vzext.vf2, rd_data_vv+128, rs1_data+128);
TEST_EXT_OP_rd_4( 35,  vzext.vf2, rd_data_vv+384, rs1_data+384);
TEST_EXT_OP_rd_6( 36,  vzext.vf2, rd_data_vv+640, rs1_data+640);
TEST_EXT_OP_rd_10( 37,  vzext.vf2, rd_data_vv+1152, rs1_data+1152);
TEST_EXT_OP_rd_12( 38,  vzext.vf2, rd_data_vv+1408, rs1_data+1408);
TEST_EXT_OP_rd_14( 39,  vzext.vf2, rd_data_vv+1664, rs1_data+1664);
TEST_EXT_OP_rd_16( 40,  vzext.vf2, rd_data_vv+1920, rs1_data+1920);
TEST_EXT_OP_rd_2( 41,  vzext.vf4, rd_data_vv+2304, rs1_data+128);
TEST_EXT_OP_rd_4( 42,  vzext.vf4, rd_data_vv+2560, rs1_data+384);
TEST_EXT_OP_rd_6( 43,  vzext.vf4, rd_data_vv+2816, rs1_data+640);
TEST_EXT_OP_rd_10( 44,  vzext.vf4, rd_data_vv+3328, rs1_data+1152);
TEST_EXT_OP_rd_12( 45,  vzext.vf4, rd_data_vv+3584, rs1_data+1408);
TEST_EXT_OP_rd_14( 46,  vzext.vf4, rd_data_vv+3840, rs1_data+1664);
TEST_EXT_OP_rd_16( 47,  vzext.vf4, rd_data_vv+4096, rs1_data+1920);
TEST_EXT_OP_rs1_2( 48,  vzext.vf2, rd_data_vv+128, rs1_data+128);
TEST_EXT_OP_rs1_4( 49,  vzext.vf2, rd_data_vv+384, rs1_data+384);
TEST_EXT_OP_rs1_6( 50,  vzext.vf2, rd_data_vv+640, rs1_data+640);
TEST_EXT_OP_rs1_8( 51,  vzext.vf2, rd_data_vv+896, rs1_data+896);
TEST_EXT_OP_rs1_10( 52,  vzext.vf2, rd_data_vv+1152, rs1_data+1152);
TEST_EXT_OP_rs1_12( 53,  vzext.vf2, rd_data_vv+1408, rs1_data+1408);
TEST_EXT_OP_rs1_14( 54,  vzext.vf2, rd_data_vv+1664, rs1_data+1664);
TEST_EXT_OP_rs1_16( 55,  vzext.vf2, rd_data_vv+1920, rs1_data+1920);
TEST_EXT_OP_rs1_2( 56,  vzext.vf4, rd_data_vv+2304, rs1_data+128);
TEST_EXT_OP_rs1_4( 57,  vzext.vf4, rd_data_vv+2560, rs1_data+384);
TEST_EXT_OP_rs1_6( 58,  vzext.vf4, rd_data_vv+2816, rs1_data+640);
TEST_EXT_OP_rs1_8( 59,  vzext.vf4, rd_data_vv+3072, rs1_data+896);
TEST_EXT_OP_rs1_10( 60,  vzext.vf4, rd_data_vv+3328, rs1_data+1152);
TEST_EXT_OP_rs1_12( 61,  vzext.vf4, rd_data_vv+3584, rs1_data+1408);
TEST_EXT_OP_rs1_14( 62,  vzext.vf4, rd_data_vv+3840, rs1_data+1664);
TEST_EXT_OP_rs1_16( 63,  vzext.vf4, rd_data_vv+4096, rs1_data+1920);
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
.word	0x0000fffe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000fffb
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000ffef
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000ffbf
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000feff
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000fbff
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000efff
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000bfff
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000040
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000100
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000400
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00001000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00004000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000003
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000003
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00005555
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00005555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005555
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00005555
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00005555
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00005555
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000aaaa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000aaaa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaaa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000005
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000005
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000005
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000005
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000005
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003333
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00003333
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00003333
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00003333
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00006666
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006666
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006666
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006666
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004afc
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00004afc
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00004afc
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00004afc
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b504
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b504
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b504
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b504
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b504
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00005554
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00005554
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00005554
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
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000004
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00003332
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00003332
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006665
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00006665
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00006665
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00006665
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b503
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b503
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b503
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b503
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b503
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b503
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b503
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00005556
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000aaab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000aaab
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000aaab
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000006
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000006
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000006
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006667
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00006667
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00006667
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00006667
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00004afd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00004afd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00004afd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00004afd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00004afd
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00004afd
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00004afd
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00004afd
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x000000fe
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000000fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000fb
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000000f7
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000000ef
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x000000df
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x000000bf
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000007f
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000008
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000010
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000020
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000040
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000080
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000003
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000003
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000003
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000055
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000055
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000055
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000055
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000055
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000055
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000055
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000055
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x000000aa
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000000aa
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000aa
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000000aa
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000000aa
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000005
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000005
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000005
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000033
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000033
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000033
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000033
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000033
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000033
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000033
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000066
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000066
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000066
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000066
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000066
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000066
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000066
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x000000fc
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000004
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000004
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000004
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000002
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000002
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000002
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000002
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000002
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000002
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000002
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
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000004
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000004
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000004
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000065
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000065
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000065
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000065
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000003
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000003
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000003
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000003
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000003
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000003
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000003
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000003
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000000ab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000000ab
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x000000ab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x000000ab
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x000000ab
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000006
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000006
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000006
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000006
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000006
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000006
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000006
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000006
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000067
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000067
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000067
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x000000fd
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x000000fd
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x000000fd
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000000fd
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000000fd
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x000000fd
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x000000fd
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x000000fd
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000040
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000100
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000400
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00001000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00004000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00005555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005555
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00005555
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00005555
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00005555
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003333
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00003333
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00003333
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00003333
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
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006665
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00006665
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00006665
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00006665
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000aaab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000aaab
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000aaab
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006667
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00006667
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00006667
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00006667
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000008
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000010
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000020
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000040
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000080
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000055
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000055
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000055
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000055
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000055
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000055
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000055
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000055
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000033
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000033
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000033
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000033
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000033
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000033
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000033
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
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000065
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000065
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000065
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000065
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000000ab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000000ab
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x000000ab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x000000ab
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x000000ab
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000067
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000067
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000067
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000010
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000040
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000100
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000400
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00001000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00004000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00005555
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005555
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00005555
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00005555
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00005555
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00005555
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00005555
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00005555
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003333
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003333
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003333
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00003333
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00003333
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00003333
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00003333
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00003333
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x0000b504
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x0000b504
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000b504
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000b504
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000b504
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000b504
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000b504
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000b504
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
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003332
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00006665
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00006665
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006665
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006665
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00006665
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00006665
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00006665
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00005556
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00005556
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x0000aaab
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x0000aaab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x0000aaab
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x0000aaab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x0000aaab
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x0000aaab
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00003334
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00003334
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00003334
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00006667
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00006667
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00006667
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00006667
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00006667
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000001
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000002
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000008
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000010
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000020
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000040
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000080
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000055
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000055
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000055
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000055
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000055
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000055
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000055
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000055
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000033
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000033
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000033
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000033
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000033
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000033
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000033
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000033
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000004
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000004
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000004
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000004
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000004
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000004
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000004
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000004
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
.word	0x00000000
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000000
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000032
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000065
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000065
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000065
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000065
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000065
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000065
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000065
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000056
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000056
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000056
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x000000ab
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x000000ab
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x000000ab
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x000000ab
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x000000ab
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b
.word	0x00000034
.word	0xf682191a
.word	0xfd2ce83f
.word	0x67f9ab29
.word	0x00000034
.word	0xc4d9b1e2
.word	0x9ed4e137
.word	0xb49ae54e
.word	0x00000034
.word	0x74daa72e
.word	0x48324db4
.word	0x167d97b5
.word	0x00000034
.word	0xe85755eb
.word	0x1cd86c0a
.word	0x4c811ecf
.word	0x00000034
.word	0x547cdce3
.word	0x65d27882
.word	0xb72d2ec4
.word	0x00000067
.word	0xb36fd636
.word	0xbc4988da
.word	0xaea05c04
.word	0x00000067
.word	0xea0309d7
.word	0x62498466
.word	0x1cd29ac4
.word	0x00000067
.word	0x690bcf85
.word	0x97f38b62
.word	0x9bd83b8b

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
    

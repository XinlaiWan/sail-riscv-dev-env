#define TEST_VSLIDE1_VX_OP( testnum, inst, result_base, rd_base, rs1, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle64.v v0, (x7); \
               la  x1, base; \
            vle64.v v8, (x1); \
            la  x1, rd_base; \
            vle64.v v16, (x1); \
            li x1, rs1; \
            inst v16, v8, x1, v0.t; \
        )
#define TEST_VSLIDE1_VX_OP_rd_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v4, (x1); \
                li x1, rs1; \
                inst v4, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v4, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v4, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v12, (x1); \
                li x1, rs1; \
                inst v12, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v12, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v12, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v20, (x1); \
                li x1, rs1; \
                inst v20, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v20, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v20, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v24, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v24, (x1); \
                li x1, rs1; \
                inst v24, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v24, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v24, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v28, (x1); \
                li x1, rs1; \
                inst v28, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v28, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v28, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x2, rs1; \
                inst v16, v8, x2, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_3( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x3, rs1; \
                inst v16, v8, x3, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x4, rs1; \
                inst v16, v8, x4, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_5( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x5, rs1; \
                inst v16, v8, x5, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x6, rs1; \
                inst v16, v8, x6, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_8( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x8, rs1; \
                inst v16, v8, x8, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_9( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x9, rs1; \
                inst v16, v8, x9, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x10, rs1; \
                inst v16, v8, x10, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_11( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x11, rs1; \
                inst v16, v8, x11, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x12, rs1; \
                inst v16, v8, x12, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_13( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x13, rs1; \
                inst v16, v8, x13, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x14, rs1; \
                inst v16, v8, x14, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_15( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x15, rs1; \
                inst v16, v8, x15, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_16( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x16, rs1; \
                inst v16, v8, x16, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_17( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x17, rs1; \
                inst v16, v8, x17, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x18, rs1; \
                inst v16, v8, x18, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_19( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x19, rs1; \
                inst v16, v8, x19, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x20, rs1; \
                inst v16, v8, x20, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_21( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x21, rs1; \
                inst v16, v8, x21, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x22, rs1; \
                inst v16, v8, x22, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_23( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x23, rs1; \
                inst v16, v8, x23, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x24, rs1; \
                inst v16, v8, x24, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_25( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x25, rs1; \
                inst v16, v8, x25, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x26, rs1; \
                inst v16, v8, x26, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_27( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x27, rs1; \
                inst v16, v8, x27, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x28, rs1; \
                inst v16, v8, x28, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_29( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x29, rs1; \
                inst v16, v8, x29, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x30, rs1; \
                inst v16, v8, x30, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_31( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x31, rs1; \
                inst v16, v8, x31, v0.t; \
            )
#----------------------------------------------------------------------------- 
    # vslide1.S
    #-----------------------------------------------------------------------------
    #
    # Test vslide1 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vslide1)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vslide1up/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSLIDE1_VX_OP( 1, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP( 2, vslide1down.vx, walking_data_slide1downans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP( 3, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP( 4, vslide1down.vx, walking_data_slide1downans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP( 5, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP( 6, vslide1down.vx, walking_data_slide1downans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP( 7, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  TEST_VSLIDE1_VX_OP( 8, vslide1down.vx, walking_data_slide1downans3, rd_data, 16777216, walking_data3 );
  #-------------------------------------------------------------
  # vslide1up/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VSLIDE1_VX_OP_rs1_2( 9, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_3( 10, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  TEST_VSLIDE1_VX_OP_rd_4( 11, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_4( 12, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_4( 13, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_5( 14, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_6( 15, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_8( 16, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_9( 17, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_10( 18, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_11( 19, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  TEST_VSLIDE1_VX_OP_rd_12( 20, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_12( 21, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_12( 22, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_13( 23, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_14( 24, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_15( 25, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  TEST_VSLIDE1_VX_OP_rs1_16( 26, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_17( 27, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_18( 28, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_19( 29, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  TEST_VSLIDE1_VX_OP_rd_20( 30, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_20( 31, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_20( 32, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_21( 33, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_22( 34, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_23( 35, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  TEST_VSLIDE1_VX_OP_rd_24( 36, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_24( 37, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_24( 38, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_25( 39, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_26( 40, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_27( 41, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  TEST_VSLIDE1_VX_OP_rd_28( 42, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_28( 43, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_28( 44, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_29( 45, vslide1up.vx, walking_data_slide1upans1, rd_data, -8589934593, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_30( 46, vslide1up.vx, walking_data_slide1upans2, rd_data, -9, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_31( 47, vslide1up.vx, walking_data_slide1upans3, rd_data, 16777216, walking_data3 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
rd_data:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21
.dword	22
.dword	23
.dword	24
.dword	25
.dword	26
.dword	27
.dword	28
.dword	29
.dword	30
.dword	33
.dword	35
.dword	36
.dword	37
.dword	39
.dword	40
.dword	41

walking_data0:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185

walking_data_slide1upans0:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	-4611686018427387905
.dword	10
.dword	11
.dword	12
.dword	-288230376151711745
.dword	14
.dword	15
.dword	17
.dword	-18014398509481985
.dword	19
.dword	20
.dword	21
.dword	-1125899906842625
.dword	23
.dword	24
.dword	25
.dword	-70368744177665
.dword	27
.dword	28
.dword	29
.dword	-4398046511105
.dword	33
.dword	35
.dword	36
.dword	-274877906945
.dword	39
.dword	40
.dword	41

walking_data_slide1downans0:
.dword	-6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	-1152921504606846977
.dword	10
.dword	11
.dword	12
.dword	-72057594037927937
.dword	14
.dword	15
.dword	17
.dword	-4503599627370497
.dword	19
.dword	20
.dword	21
.dword	-281474976710657
.dword	23
.dword	24
.dword	25
.dword	-17592186044417
.dword	27
.dword	28
.dword	29
.dword	-1099511627777
.dword	33
.dword	35
.dword	36
.dword	-68719476737
.dword	39
.dword	40
.dword	41

walking_data1:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17

walking_data_slide1upans1:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	-3037000498
.dword	10
.dword	11
.dword	12
.dword	-268435457
.dword	14
.dword	15
.dword	17
.dword	-16777217
.dword	19
.dword	20
.dword	21
.dword	-1048577
.dword	23
.dword	24
.dword	25
.dword	-65537
.dword	27
.dword	28
.dword	29
.dword	-4097
.dword	33
.dword	35
.dword	36
.dword	-257
.dword	39
.dword	40
.dword	41

walking_data_slide1downans1:
.dword	-4294967297
.dword	5
.dword	6
.dword	7
.dword	-1073741825
.dword	10
.dword	11
.dword	12
.dword	-67108865
.dword	14
.dword	15
.dword	17
.dword	-4194305
.dword	19
.dword	20
.dword	21
.dword	-262145
.dword	23
.dword	24
.dword	25
.dword	-16385
.dword	27
.dword	28
.dword	29
.dword	-1025
.dword	33
.dword	35
.dword	36
.dword	-65
.dword	39
.dword	40
.dword	41

walking_data2:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608

walking_data_slide1upans2:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	-2
.dword	10
.dword	11
.dword	12
.dword	3
.dword	14
.dword	15
.dword	17
.dword	8
.dword	19
.dword	20
.dword	21
.dword	128
.dword	23
.dword	24
.dword	25
.dword	2048
.dword	27
.dword	28
.dword	29
.dword	32768
.dword	33
.dword	35
.dword	36
.dword	524288
.dword	39
.dword	40
.dword	41

walking_data_slide1downans2:
.dword	-5
.dword	5
.dword	6
.dword	7
.dword	1
.dword	10
.dword	11
.dword	12
.dword	5
.dword	14
.dword	15
.dword	17
.dword	32
.dword	19
.dword	20
.dword	21
.dword	512
.dword	23
.dword	24
.dword	25
.dword	8192
.dword	27
.dword	28
.dword	29
.dword	131072
.dword	33
.dword	35
.dword	36
.dword	2097152
.dword	39
.dword	40
.dword	41

walking_data3:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496

walking_data_slide1upans3:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	134217728
.dword	10
.dword	11
.dword	12
.dword	2147483648
.dword	14
.dword	15
.dword	17
.dword	4294967296
.dword	19
.dword	20
.dword	21
.dword	68719476736
.dword	23
.dword	24
.dword	25
.dword	1099511627776
.dword	27
.dword	28
.dword	29
.dword	17592186044416
.dword	33
.dword	35
.dword	36
.dword	281474976710656
.dword	39
.dword	40
.dword	41

walking_data_slide1downans3:
.dword	33554432
.dword	5
.dword	6
.dword	7
.dword	536870912
.dword	10
.dword	11
.dword	12
.dword	3037000499
.dword	14
.dword	15
.dword	17
.dword	17179869184
.dword	19
.dword	20
.dword	21
.dword	274877906944
.dword	23
.dword	24
.dword	25
.dword	4398046511104
.dword	27
.dword	28
.dword	29
.dword	70368744177664
.dword	33
.dword	35
.dword	36
.dword	1125899906842624
.dword	39
.dword	40
.dword	41


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
    

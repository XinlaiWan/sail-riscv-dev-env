#define TEST_VSLIDE1_VX_OP( testnum, inst, result_base, rd_base, rs1, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle32.v v0, (x7); \
               la  x1, base; \
            vle32.v v8, (x1); \
            la  x1, rd_base; \
            vle32.v v16, (x1); \
            li x1, rs1; \
            inst v16, v8, x1, v0.t; \
        )
#define TEST_VSLIDE1_VX_OP_rd_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v24, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v24, (x1); \
                li x1, rs1; \
                inst v24, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v24, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v24, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x2, rs1; \
                inst v16, v8, x2, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_3( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x3, rs1; \
                inst v16, v8, x3, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x4, rs1; \
                inst v16, v8, x4, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_5( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x5, rs1; \
                inst v16, v8, x5, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x6, rs1; \
                inst v16, v8, x6, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_8( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x8, rs1; \
                inst v16, v8, x8, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_9( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x9, rs1; \
                inst v16, v8, x9, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x10, rs1; \
                inst v16, v8, x10, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_11( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x11, rs1; \
                inst v16, v8, x11, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x12, rs1; \
                inst v16, v8, x12, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_13( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x13, rs1; \
                inst v16, v8, x13, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x14, rs1; \
                inst v16, v8, x14, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_15( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x15, rs1; \
                inst v16, v8, x15, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_16( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x16, rs1; \
                inst v16, v8, x16, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_17( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x17, rs1; \
                inst v16, v8, x17, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x18, rs1; \
                inst v16, v8, x18, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_19( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x19, rs1; \
                inst v16, v8, x19, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x20, rs1; \
                inst v16, v8, x20, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_21( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x21, rs1; \
                inst v16, v8, x21, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x22, rs1; \
                inst v16, v8, x22, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_23( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x23, rs1; \
                inst v16, v8, x23, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x24, rs1; \
                inst v16, v8, x24, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_25( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x25, rs1; \
                inst v16, v8, x25, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x26, rs1; \
                inst v16, v8, x26, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_27( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x27, rs1; \
                inst v16, v8, x27, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x28, rs1; \
                inst v16, v8, x28, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_29( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x29, rs1; \
                inst v16, v8, x29, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x30, rs1; \
                inst v16, v8, x30, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_31( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
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
  TEST_VSLIDE1_VX_OP( 1, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP( 2, vslide1down.vx, walking_data_slide1downans0, rd_data, -2147483648, walking_data0 );
  #-------------------------------------------------------------
  # vslide1up/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VSLIDE1_VX_OP_rs1_2( 3, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_3( 4, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_4( 5, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_5( 6, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_6( 7, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_8( 8, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_9( 9, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_10( 10, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_11( 11, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_12( 12, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_13( 13, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_14( 14, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_15( 15, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_16( 16, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_17( 17, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_18( 18, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_19( 19, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_20( 20, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_21( 21, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_22( 22, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_23( 23, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rd_24( 24, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_24( 25, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_24( 26, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_25( 27, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_26( 28, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_27( 29, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_28( 30, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_29( 31, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_30( 32, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_31( 33, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
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
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21
.word	22
.word	23
.word	24
.word	25
.word	26
.word	27
.word	28
.word	29
.word	30
.word	33
.word	35
.word	36
.word	37
.word	39
.word	40
.word	41
.word	42
.word	43
.word	44
.word	45
.word	47
.word	48
.word	49
.word	50
.word	51
.word	52
.word	53
.word	54
.word	55
.word	56
.word	57
.word	58
.word	59
.word	60
.word	61
.word	67
.word	71
.word	73
.word	79
.word	83
.word	89
.word	97
.word	101
.word	103
.word	105
.word	107
.word	109
.word	111
.word	113
.word	115
.word	-1427183568
.word	631230946
.word	198887438
.word	-1052600986
.word	900398751
.word	1185284364
.word	226262558
.word	1107297581
.word	621766345
.word	987940440
.word	1855859986
.word	1031628733
.word	493563483
.word	123120210
.word	-790781819
.word	-1116292031
.word	1041324079
.word	1759465113
.word	1913431977
.word	1449265615
.word	1800746910
.word	338698721
.word	-763615634
.word	-262551274
.word	-461129787
.word	1653443235
.word	-1229957924
.word	-1014116443
.word	-2010860402
.word	-1980214404
.word	-1423817192
.word	228949744
.word	-1736622143
.word	1548697474
.word	1479945367
.word	-1751535988
.word	674101146
.word	-349348506
.word	1145285880
.word	1263917171
.word	637384766
.word	-992524746
.word	855214332
.word	1671269139
.word	224319911
.word	-2017765723
.word	-1178349591
.word	1828708473
.word	-477406959
.word	1082677714
.word	1315339481
.word	1680407300
.word	-1261458323
.word	-1295386023
.word	380723348
.word	-957795535
.word	-1172717303
.word	-145308265
.word	2000908249
.word	636743547
.word	1064862242
.word	-37940369

walking_data0:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-1145292303
.word	153686804
.word	-1303684688
.word	1059727787
.word	-341602669
.word	-618486259
.word	-66303661
.word	1543653656
.word	2041951250
.word	-125756096
.word	845872281
.word	702113181
.word	-666872479
.word	-1755828998
.word	-1786003303
.word	202002132
.word	2022579967
.word	1716485749
.word	1521413054
.word	1752075653
.word	-707971717
.word	308211308
.word	-1121574231
.word	-1612516248
.word	1832900990
.word	1802444696
.word	970916367
.word	223443945
.word	226347225
.word	-343767354
.word	931424829
.word	1847286926
.word	1353567432
.word	1746878138
.word	1373399106
.word	-2022265798
.word	1820402978
.word	2069125320
.word	-1784261698
.word	-925741342
.word	1129285682
.word	-1571601440
.word	-546976176
.word	-1418911764

walking_data_slide1upans0:
.word	-2147483648
.word	5
.word	6
.word	7
.word	-1073741825
.word	10
.word	11
.word	12
.word	-67108865
.word	14
.word	15
.word	17
.word	-4194305
.word	19
.word	20
.word	21
.word	-262145
.word	23
.word	24
.word	25
.word	-46339
.word	27
.word	28
.word	29
.word	-4097
.word	33
.word	35
.word	36
.word	-257
.word	39
.word	40
.word	41
.word	-17
.word	-9
.word	-5
.word	45
.word	47
.word	0
.word	49
.word	50
.word	3
.word	52
.word	5
.word	6
.word	8
.word	56
.word	57
.word	64
.word	59
.word	256
.word	512
.word	67
.word	2048
.word	73
.word	8192
.word	83
.word	89
.word	46339
.word	46340
.word	103
.word	105
.word	107
.word	109
.word	524288
.word	1048576
.word	115
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	900398751
.word	1185284364
.word	226262558
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1031628733
.word	1431655764
.word	1431655765
.word	-790781819
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	1449265615
.word	1800746910
.word	-1303684688
.word	-763615634
.word	-341602669
.word	-461129787
.word	1653443235
.word	-1229957924
.word	-1014116443
.word	-125756096
.word	-1980214404
.word	702113181
.word	228949744
.word	-1736622143
.word	1548697474
.word	202002132
.word	-1751535988
.word	1716485749
.word	-349348506
.word	1145285880
.word	-707971717
.word	637384766
.word	-1121574231
.word	-1612516248
.word	1671269139
.word	224319911
.word	970916367
.word	223443945
.word	1828708473
.word	-477406959
.word	1082677714
.word	1315339481
.word	1353567432
.word	-1261458323
.word	-1295386023
.word	380723348
.word	-957795535
.word	-1172717303
.word	-145308265
.word	2000908249
.word	1129285682
.word	1064862242
.word	-37940369

walking_data_slide1downans0:
.word	-1431655766
.word	5
.word	6
.word	7
.word	-268435457
.word	10
.word	11
.word	12
.word	-16777217
.word	14
.word	15
.word	17
.word	-1048577
.word	19
.word	20
.word	21
.word	-65537
.word	23
.word	24
.word	25
.word	-16385
.word	27
.word	28
.word	29
.word	-1025
.word	33
.word	35
.word	36
.word	-65
.word	39
.word	40
.word	41
.word	-5
.word	-3
.word	-2
.word	45
.word	47
.word	2
.word	49
.word	50
.word	5
.word	52
.word	8
.word	16
.word	32
.word	56
.word	57
.word	256
.word	59
.word	1024
.word	2048
.word	67
.word	8192
.word	73
.word	32768
.word	83
.word	89
.word	46341
.word	65536
.word	103
.word	105
.word	107
.word	109
.word	2097152
.word	4194304
.word	115
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	900398751
.word	1185284364
.word	226262558
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1031628733
.word	1431655766
.word	1717986917
.word	-790781819
.word	1717986919
.word	2147483647
.word	-1145292303
.word	153686804
.word	1449265615
.word	1800746910
.word	-341602669
.word	-763615634
.word	-66303661
.word	-461129787
.word	1653443235
.word	-1229957924
.word	-1014116443
.word	702113181
.word	-1980214404
.word	-1755828998
.word	228949744
.word	-1736622143
.word	1548697474
.word	1716485749
.word	-1751535988
.word	1752075653
.word	-349348506
.word	1145285880
.word	-1121574231
.word	637384766
.word	1832900990
.word	1802444696
.word	1671269139
.word	224319911
.word	226347225
.word	-343767354
.word	1828708473
.word	-477406959
.word	1082677714
.word	1315339481
.word	1373399106
.word	-1261458323
.word	-1295386023
.word	380723348
.word	-957795535
.word	-1172717303
.word	-145308265
.word	2000908249
.word	-546976176
.word	1064862242
.word	-37940369


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
    

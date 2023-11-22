#define TEST_VID_OP_rd_1( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v1, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v1, v0.t; \
        )
#define TEST_VID_OP_rd_2( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v2, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v2, v0.t; \
        )
#define TEST_VID_OP_rd_3( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v3, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v3, v0.t; \
        )
#define TEST_VID_OP_rd_4( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v4, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v4, v0.t; \
        )
#define TEST_VID_OP_rd_5( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v5, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v5, v0.t; \
        )
#define TEST_VID_OP_rd_6( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v6, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v6, v0.t; \
        )
#define TEST_VID_OP_rd_7( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v7, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v7, v0.t; \
        )
#define TEST_VID_OP_rd_8( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v8, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v8, v0.t; \
        )
#define TEST_VID_OP_rd_9( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v9, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v9, v0.t; \
        )
#define TEST_VID_OP_rd_10( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v10, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v10, v0.t; \
        )
#define TEST_VID_OP_rd_11( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v11, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v11, v0.t; \
        )
#define TEST_VID_OP_rd_12( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v12, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v12, v0.t; \
        )
#define TEST_VID_OP_rd_13( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v13, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v13, v0.t; \
        )
#define TEST_VID_OP_rd_14( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v14, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v14, v0.t; \
        )
#define TEST_VID_OP_rd_15( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v15, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v15, v0.t; \
        )
#define TEST_VID_OP_rd_17( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v17, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v17, v0.t; \
        )
#define TEST_VID_OP_rd_18( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v18, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v18, v0.t; \
        )
#define TEST_VID_OP_rd_19( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v19, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v19, v0.t; \
        )
#define TEST_VID_OP_rd_20( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v20, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v20, v0.t; \
        )
#define TEST_VID_OP_rd_21( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v21, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v21, v0.t; \
        )
#define TEST_VID_OP_rd_22( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v22, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v22, v0.t; \
        )
#define TEST_VID_OP_rd_23( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v23, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v23, v0.t; \
        )
#define TEST_VID_OP_rd_24( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v24, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v24, v0.t; \
        )
#define TEST_VID_OP_rd_25( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v25, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v25, v0.t; \
        )
#define TEST_VID_OP_rd_26( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v26, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v26, v0.t; \
        )
#define TEST_VID_OP_rd_27( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v27, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v27, v0.t; \
        )
#define TEST_VID_OP_rd_28( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v28, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v28, v0.t; \
        )
#define TEST_VID_OP_rd_29( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v29, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v29, v0.t; \
        )
#define TEST_VID_OP_rd_30( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v30, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v30, v0.t; \
        )
#define TEST_VID_OP_rd_31( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v31, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            la  x7, result_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v0, v8, 1; \
            inst v31, v0.t; \
        )
#----------------------------------------------------------------------------- 
    # vid.S
    #-----------------------------------------------------------------------------
    #
    # Test vid instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vid)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vid tests
  #-------------------------------------------------------------
TEST_VID_OP( 1,  vid.v, walking_ones_vid_ans0, walking_ones_dat0 );
TEST_VID_OP( 2,  vid.v, walking_zeros_vid_ans0, walking_zeros_dat0);
TEST_VID_OP( 3,  vid.v, walking_ones_vid_ans1, walking_ones_dat1 );
TEST_VID_OP( 4,  vid.v, walking_zeros_vid_ans1, walking_zeros_dat1);
TEST_VID_OP( 5,  vid.v, walking_ones_vid_ans2, walking_ones_dat2 );
TEST_VID_OP( 6,  vid.v, walking_zeros_vid_ans2, walking_zeros_dat2);
TEST_VID_OP( 7,  vid.v, walking_ones_vid_ans3, walking_ones_dat3 );
TEST_VID_OP( 8,  vid.v, walking_zeros_vid_ans3, walking_zeros_dat3);
TEST_VID_OP( 9,  vid.v, walking_ones_vid_ans4, walking_ones_dat4 );
TEST_VID_OP( 10,  vid.v, walking_zeros_vid_ans4, walking_zeros_dat4);
TEST_VID_OP( 11,  vid.v, walking_ones_vid_ans5, walking_ones_dat5 );
TEST_VID_OP( 12,  vid.v, walking_zeros_vid_ans5, walking_zeros_dat5);
TEST_VID_OP( 13,  vid.v, walking_ones_vid_ans6, walking_ones_dat6 );
TEST_VID_OP( 14,  vid.v, walking_zeros_vid_ans6, walking_zeros_dat6);
TEST_VID_OP( 15,  vid.v, walking_ones_vid_ans7, walking_ones_dat7 );
TEST_VID_OP( 16,  vid.v, walking_zeros_vid_ans7, walking_zeros_dat7);
TEST_VID_OP( 17,  vid.v, walking_ones_vid_ans8, walking_ones_dat8 );
TEST_VID_OP( 18,  vid.v, walking_zeros_vid_ans8, walking_zeros_dat8);
TEST_VID_OP( 19,  vid.v, walking_ones_vid_ans9, walking_ones_dat9 );
TEST_VID_OP( 20,  vid.v, walking_zeros_vid_ans9, walking_zeros_dat9);
TEST_VID_OP( 21,  vid.v, walking_ones_vid_ans10, walking_ones_dat10 );
TEST_VID_OP( 22,  vid.v, walking_zeros_vid_ans10, walking_zeros_dat10);
TEST_VID_OP( 23,  vid.v, walking_ones_vid_ans11, walking_ones_dat11 );
TEST_VID_OP( 24,  vid.v, walking_zeros_vid_ans11, walking_zeros_dat11);
TEST_VID_OP( 25,  vid.v, walking_ones_vid_ans12, walking_ones_dat12 );
TEST_VID_OP( 26,  vid.v, walking_zeros_vid_ans12, walking_zeros_dat12);
TEST_VID_OP( 27,  vid.v, walking_ones_vid_ans13, walking_ones_dat13 );
TEST_VID_OP( 28,  vid.v, walking_zeros_vid_ans13, walking_zeros_dat13);
TEST_VID_OP( 29,  vid.v, walking_ones_vid_ans14, walking_ones_dat14 );
TEST_VID_OP( 30,  vid.v, walking_zeros_vid_ans14, walking_zeros_dat14);
TEST_VID_OP( 31,  vid.v, walking_ones_vid_ans15, walking_ones_dat15 );
TEST_VID_OP( 32,  vid.v, walking_zeros_vid_ans15, walking_zeros_dat15);
TEST_VID_OP( 33,  vid.v, walking_ones_vid_ans16, walking_ones_dat16 );
TEST_VID_OP( 34,  vid.v, walking_zeros_vid_ans16, walking_zeros_dat16);
  #-------------------------------------------------------------
  # vid Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VID_OP_rd_1( 35,  vid.v, walking_zeros_vid_ans1, walking_zeros_dat1 );
TEST_VID_OP_rd_2( 36,  vid.v, walking_zeros_vid_ans2, walking_zeros_dat2 );
TEST_VID_OP_rd_3( 37,  vid.v, walking_zeros_vid_ans3, walking_zeros_dat3 );
TEST_VID_OP_rd_4( 38,  vid.v, walking_zeros_vid_ans4, walking_zeros_dat4 );
TEST_VID_OP_rd_5( 39,  vid.v, walking_zeros_vid_ans5, walking_zeros_dat5 );
TEST_VID_OP_rd_6( 40,  vid.v, walking_zeros_vid_ans6, walking_zeros_dat6 );
TEST_VID_OP_rd_7( 41,  vid.v, walking_zeros_vid_ans7, walking_zeros_dat7 );
TEST_VID_OP_rd_8( 42,  vid.v, walking_zeros_vid_ans8, walking_zeros_dat8 );
TEST_VID_OP_rd_9( 43,  vid.v, walking_zeros_vid_ans9, walking_zeros_dat9 );
TEST_VID_OP_rd_10( 44,  vid.v, walking_zeros_vid_ans10, walking_zeros_dat10 );
TEST_VID_OP_rd_11( 45,  vid.v, walking_zeros_vid_ans11, walking_zeros_dat11 );
TEST_VID_OP_rd_12( 46,  vid.v, walking_zeros_vid_ans12, walking_zeros_dat12 );
TEST_VID_OP_rd_13( 47,  vid.v, walking_zeros_vid_ans13, walking_zeros_dat13 );
TEST_VID_OP_rd_14( 48,  vid.v, walking_zeros_vid_ans14, walking_zeros_dat14 );
TEST_VID_OP_rd_15( 49,  vid.v, walking_zeros_vid_ans15, walking_zeros_dat15 );
TEST_VID_OP_rd_17( 50,  vid.v, walking_zeros_vid_ans0, walking_zeros_dat0 );
TEST_VID_OP_rd_18( 51,  vid.v, walking_zeros_vid_ans1, walking_zeros_dat1 );
TEST_VID_OP_rd_19( 52,  vid.v, walking_zeros_vid_ans2, walking_zeros_dat2 );
TEST_VID_OP_rd_20( 53,  vid.v, walking_zeros_vid_ans3, walking_zeros_dat3 );
TEST_VID_OP_rd_21( 54,  vid.v, walking_zeros_vid_ans4, walking_zeros_dat4 );
TEST_VID_OP_rd_22( 55,  vid.v, walking_zeros_vid_ans5, walking_zeros_dat5 );
TEST_VID_OP_rd_23( 56,  vid.v, walking_zeros_vid_ans6, walking_zeros_dat6 );
TEST_VID_OP_rd_24( 57,  vid.v, walking_zeros_vid_ans7, walking_zeros_dat7 );
TEST_VID_OP_rd_25( 58,  vid.v, walking_zeros_vid_ans8, walking_zeros_dat8 );
TEST_VID_OP_rd_26( 59,  vid.v, walking_zeros_vid_ans9, walking_zeros_dat9 );
TEST_VID_OP_rd_27( 60,  vid.v, walking_zeros_vid_ans10, walking_zeros_dat10 );
TEST_VID_OP_rd_28( 61,  vid.v, walking_zeros_vid_ans11, walking_zeros_dat11 );
TEST_VID_OP_rd_29( 62,  vid.v, walking_zeros_vid_ans12, walking_zeros_dat12 );
TEST_VID_OP_rd_30( 63,  vid.v, walking_zeros_vid_ans13, walking_zeros_dat13 );
TEST_VID_OP_rd_31( 64,  vid.v, walking_zeros_vid_ans14, walking_zeros_dat14 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
walking_ones_dat0:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat1:
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat2:
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat3:
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat4:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat5:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat6:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat7:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat8:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat9:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat10:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat11:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat12:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat13:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat14:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0

walking_ones_dat15:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0

walking_ones_dat16:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1

walking_zeros_dat0:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat1:
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat2:
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat3:
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat4:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat5:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat6:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat7:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat8:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat9:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat10:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat11:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat12:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat13:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat14:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1

walking_zeros_dat15:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1

walking_zeros_dat16:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0

walking_ones_vid_ans0:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans1:
	.word	0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans2:
	.word	0x0
	.word	1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans3:
	.word	0x0
	.word	0x0
	.word	2
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans4:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	3
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans5:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	4
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans6:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	5
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans7:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	6
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans8:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	7
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans9:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	8
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans10:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	9
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans11:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	10
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans12:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	11
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans13:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	12
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_vid_ans14:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	13
	.word	0x0
	.word	0x0

walking_ones_vid_ans15:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	14
	.word	0x0

walking_ones_vid_ans16:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	15

walking_zeros_vid_ans0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans1:
	.word	0x0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans2:
	.word	0
	.word	0x0
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans3:
	.word	0
	.word	1
	.word	0x0
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans4:
	.word	0
	.word	1
	.word	2
	.word	0x0
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans5:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0x0
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans6:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	0x0
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans7:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	0x0
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans8:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	0x0
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans9:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	0x0
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans10:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	0x0
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans11:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	0x0
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans12:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	0x0
	.word	12
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans13:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	0x0
	.word	13
	.word	14
	.word	15

walking_zeros_vid_ans14:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	0x0
	.word	14
	.word	15

walking_zeros_vid_ans15:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	0x0
	.word	15

walking_zeros_vid_ans16:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	0x0

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
    

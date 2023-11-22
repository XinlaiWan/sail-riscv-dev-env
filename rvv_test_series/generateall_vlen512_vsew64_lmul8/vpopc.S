#define TEST_VPOPC_OP( testnum, inst, result, vm_addr ) \
    TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
        VSET_VSEW_4AVL \
        la  x2, vm_addr; \
        vle32.v v14, (x2); \
        la x7, mask_data; \
    vle64.v v0, (x7); \
            inst x14, v14, v0.t;  \
    )
#define TEST_VPOPC_OP_rs2_8( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle64.v v8, (x2); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst x14, v8, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_24( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle64.v v24, (x2); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst x14, v24, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_8( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x8, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle64.v v16, (x2); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst x8, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_24( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x24, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle64.v v16, (x2); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    inst x24, v16, v0.t;  \
            )
#----------------------------------------------------------------------------- 
    # vpopc.S
    #-----------------------------------------------------------------------------
    #
    # Test vpopc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vpopc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vpopc tests
  #-------------------------------------------------------------
TEST_VPOPC_OP( 1, vpopc.m, 0x0000000000000001, walking_dat_vpopc0 );
TEST_VPOPC_OP( 2, vpopc.m, 0x0000000000000001, walking_dat_vpopc1 );
TEST_VPOPC_OP( 3, vpopc.m, 0x0000000000000001, walking_dat_vpopc2 );
TEST_VPOPC_OP( 4, vpopc.m, 0x0000000000000001, walking_dat_vpopc3 );
TEST_VPOPC_OP( 5, vpopc.m, 0x0000000000000001, walking_dat_vpopc4 );
TEST_VPOPC_OP( 6, vpopc.m, 0x0000000000000001, walking_dat_vpopc5 );
TEST_VPOPC_OP( 7, vpopc.m, 0x0000000000000001, walking_dat_vpopc6 );
TEST_VPOPC_OP( 8, vpopc.m, 0x0000000000000001, walking_dat_vpopc7 );
TEST_VPOPC_OP( 9, vpopc.m, 0x0000000000000000, walking_dat_vpopc8 );
TEST_VPOPC_OP( 10, vpopc.m, 0x0000000000000007, walking_dat_vpopc9 );
TEST_VPOPC_OP( 11, vpopc.m, 0x0000000000000007, walking_dat_vpopc10 );
TEST_VPOPC_OP( 12, vpopc.m, 0x0000000000000007, walking_dat_vpopc11 );
TEST_VPOPC_OP( 13, vpopc.m, 0x0000000000000007, walking_dat_vpopc12 );
TEST_VPOPC_OP( 14, vpopc.m, 0x0000000000000007, walking_dat_vpopc13 );
TEST_VPOPC_OP( 15, vpopc.m, 0x0000000000000007, walking_dat_vpopc14 );
TEST_VPOPC_OP( 16, vpopc.m, 0x0000000000000007, walking_dat_vpopc15 );
TEST_VPOPC_OP( 17, vpopc.m, 0x0000000000000007, walking_dat_vpopc16 );
TEST_VPOPC_OP( 18, vpopc.m, 0x0000000000000008, walking_dat_vpopc17 );
  #-------------------------------------------------------------
  # vpopc Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VPOPC_OP_rd_8( 19, vpopc.m, 0x0000000000000000, walking_dat_vpopc8 );
TEST_VPOPC_OP_rd_24( 20, vpopc.m, 0x0000000000000000, walking_dat_vpopc6 );
TEST_VPOPC_OP_rs2_8( 21, vpopc.m, 0x0000000000000000, walking_dat_vpopc8 );
TEST_VPOPC_OP_rs2_24( 22, vpopc.m, 0x0000000000000000, walking_dat_vpopc6 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
walking_dat_vpopc0:
.dword	0b10000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc1:
.dword	0b01000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc2:
.dword	0b00100000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc3:
.dword	0b00010000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc4:
.dword	0b00001000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc5:
.dword	0b00000100
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc6:
.dword	0b00000010
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc7:
.dword	0b00000001
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc8:
.dword	0b00000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc9:
.dword	0b01111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc10:
.dword	0b10111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc11:
.dword	0b11011111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc12:
.dword	0b11101111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc13:
.dword	0b11110111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc14:
.dword	0b11111011
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc15:
.dword	0b11111101
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc16:
.dword	0b11111110
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc17:
.dword	0b11111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0

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
    

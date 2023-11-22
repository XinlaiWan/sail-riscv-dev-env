#----------------------------------------------------------------------------- 
    # vmv.S
    #-----------------------------------------------------------------------------
    #
    # Test vmv instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmv)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VMV_OP_rs2_1( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v1, x7;  \
            vmv.x.s x8, v1; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_2( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v2, x7;  \
            vmv.x.s x8, v2; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_3( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v3, x7;  \
            vmv.x.s x8, v3; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_4( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v4, x7;  \
            vmv.x.s x8, v4; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_5( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v5, x7;  \
            vmv.x.s x8, v5; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_6( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v6, x7;  \
            vmv.x.s x8, v6; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_7( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v7, x7;  \
            vmv.x.s x8, v7; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_8( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v8, x7;  \
            vmv.x.s x8, v8; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_9( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v9, x7;  \
            vmv.x.s x8, v9; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_10( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v10, x7;  \
            vmv.x.s x8, v10; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_11( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v11, x7;  \
            vmv.x.s x8, v11; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_12( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v12, x7;  \
            vmv.x.s x8, v12; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_13( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v13, x7;  \
            vmv.x.s x8, v13; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_14( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v14, x7;  \
            vmv.x.s x8, v14; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_15( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v15, x7;  \
            vmv.x.s x8, v15; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_16( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v16, x7;  \
            vmv.x.s x8, v16; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_17( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v17, x7;  \
            vmv.x.s x8, v17; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_18( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v18, x7;  \
            vmv.x.s x8, v18; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_19( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v19, x7;  \
            vmv.x.s x8, v19; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_20( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v20, x7;  \
            vmv.x.s x8, v20; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_21( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v21, x7;  \
            vmv.x.s x8, v21; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_22( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v22, x7;  \
            vmv.x.s x8, v22; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_23( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v23, x7;  \
            vmv.x.s x8, v23; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_24( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v24, x7;  \
            vmv.x.s x8, v24; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_25( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v25, x7;  \
            vmv.x.s x8, v25; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_26( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v26, x7;  \
            vmv.x.s x8, v26; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_27( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v27, x7;  \
            vmv.x.s x8, v27; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_28( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v28, x7;  \
            vmv.x.s x8, v28; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_29( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v29, x7;  \
            vmv.x.s x8, v29; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_30( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v30, x7;  \
            vmv.x.s x8, v30; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
#define TEST_VMV_OP_rs2_31( testnum, result ) \
            li TESTNUM, testnum; \
            li x7, MASK_VSEW(result); \
            li x8, 0; \
            vmv.s.x v31, x7;  \
            vmv.x.s x8, v31; \
            li x2, VSEW_MASK_BITS; \
            and x8, x8, x2;
  #-------------------------------------------------------------
  # VMV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VMV_OP( 2,  -2147483648 );
  TEST_VMV_OP( 3,  -1431655766 );
  TEST_VMV_OP( 4,  -1073741825 );
  TEST_VMV_OP( 5,  -536870913 );
  TEST_VMV_OP( 6,  -268435457 );
  TEST_VMV_OP( 7,  -134217729 );
  TEST_VMV_OP( 8,  -67108865 );
  TEST_VMV_OP( 9,  -33554433 );
  TEST_VMV_OP( 10,  -16777217 );
  TEST_VMV_OP( 11,  -8388609 );
  TEST_VMV_OP( 12,  -4194305 );
  TEST_VMV_OP( 13,  -2097153 );
  TEST_VMV_OP( 14,  -1048577 );
  TEST_VMV_OP( 15,  -524289 );
  TEST_VMV_OP( 16,  -262145 );
  TEST_VMV_OP( 17,  -131073 );
  TEST_VMV_OP( 18,  -65537 );
  TEST_VMV_OP( 19,  -32769 );
  TEST_VMV_OP( 20,  -16385 );
  TEST_VMV_OP( 21,  -8193 );
  TEST_VMV_OP( 22,  -4097 );
  TEST_VMV_OP( 23,  -2049 );
  TEST_VMV_OP( 24,  -1025 );
  TEST_VMV_OP( 25,  -513 );
  TEST_VMV_OP( 26,  -257 );
  TEST_VMV_OP( 27,  -129 );
  TEST_VMV_OP( 28,  -65 );
  TEST_VMV_OP( 29,  -33 );
  TEST_VMV_OP( 30,  -17 );
  TEST_VMV_OP( 31,  -9 );
  TEST_VMV_OP( 32,  -5 );
  TEST_VMV_OP( 33,  -3 );
  TEST_VMV_OP( 34,  -2 );
  TEST_VMV_OP( 35,  1 );
  TEST_VMV_OP( 36,  2 );
  TEST_VMV_OP( 37,  4 );
  TEST_VMV_OP( 38,  8 );
  TEST_VMV_OP( 39,  16 );
  TEST_VMV_OP( 40,  32 );
  TEST_VMV_OP( 41,  64 );
  TEST_VMV_OP( 42,  128 );
  TEST_VMV_OP( 43,  256 );
  TEST_VMV_OP( 44,  512 );
  TEST_VMV_OP( 45,  1024 );
  TEST_VMV_OP( 46,  2048 );
  TEST_VMV_OP( 47,  4096 );
  TEST_VMV_OP( 48,  8192 );
  TEST_VMV_OP( 49,  16384 );
  TEST_VMV_OP( 50,  32768 );
  TEST_VMV_OP( 51,  65536 );
  TEST_VMV_OP( 52,  131072 );
  TEST_VMV_OP( 53,  262144 );
  TEST_VMV_OP( 54,  524288 );
  TEST_VMV_OP( 55,  1048576 );
  TEST_VMV_OP( 56,  2097152 );
  TEST_VMV_OP( 57,  4194304 );
  TEST_VMV_OP( 58,  8388608 );
  TEST_VMV_OP( 59,  16777216 );
  TEST_VMV_OP( 60,  33554432 );
  TEST_VMV_OP( 61,  67108864 );
  TEST_VMV_OP( 62,  134217728 );
  TEST_VMV_OP( 63,  268435456 );
  TEST_VMV_OP( 64,  536870912 );
  TEST_VMV_OP( 65,  1073741824 );
  TEST_VMV_OP( 66,  1431655765 );
  TEST_VMV_OP( 67,  2147483647 );
  TEST_VMV_OP( 68,  -2147483648 );
  TEST_VMV_OP( 69,  -1431655766 );
  TEST_VMV_OP( 70,  -1073741825 );
  TEST_VMV_OP( 71,  -536870913 );
  TEST_VMV_OP( 72,  -268435457 );
  TEST_VMV_OP( 73,  -134217729 );
  TEST_VMV_OP( 74,  -67108865 );
  TEST_VMV_OP( 75,  -33554433 );
  TEST_VMV_OP( 76,  -16777217 );
  TEST_VMV_OP( 77,  -8388609 );
  TEST_VMV_OP( 78,  -4194305 );
  TEST_VMV_OP( 79,  -2097153 );
  TEST_VMV_OP( 80,  -1048577 );
  TEST_VMV_OP( 81,  -524289 );
  TEST_VMV_OP( 82,  -262145 );
  TEST_VMV_OP( 83,  -131073 );
  TEST_VMV_OP( 84,  -65537 );
  TEST_VMV_OP( 85,  -32769 );
  TEST_VMV_OP( 86,  -16385 );
  TEST_VMV_OP( 87,  -8193 );
  TEST_VMV_OP( 88,  -4097 );
  TEST_VMV_OP( 89,  -2049 );
  TEST_VMV_OP( 90,  -1025 );
  TEST_VMV_OP( 91,  -513 );
  TEST_VMV_OP( 92,  -257 );
  TEST_VMV_OP( 93,  -129 );
  TEST_VMV_OP( 94,  -65 );
  TEST_VMV_OP( 95,  -33 );
  TEST_VMV_OP( 96,  -17 );
  TEST_VMV_OP( 97,  -9 );
  TEST_VMV_OP( 98,  -5 );
  TEST_VMV_OP( 99,  -3 );
  TEST_VMV_OP( 100,  -2 );
  TEST_VMV_OP( 101,  1 );
  TEST_VMV_OP( 102,  2 );
  TEST_VMV_OP( 103,  4 );
  TEST_VMV_OP( 104,  8 );
  TEST_VMV_OP( 105,  16 );
  TEST_VMV_OP( 106,  32 );
  TEST_VMV_OP( 107,  64 );
  TEST_VMV_OP( 108,  128 );
  TEST_VMV_OP( 109,  256 );
  TEST_VMV_OP( 110,  512 );
  TEST_VMV_OP( 111,  1024 );
  TEST_VMV_OP( 112,  2048 );
  TEST_VMV_OP( 113,  4096 );
  TEST_VMV_OP( 114,  8192 );
  TEST_VMV_OP( 115,  16384 );
  TEST_VMV_OP( 116,  32768 );
  TEST_VMV_OP( 117,  65536 );
  TEST_VMV_OP( 118,  131072 );
  TEST_VMV_OP( 119,  262144 );
  TEST_VMV_OP( 120,  524288 );
  TEST_VMV_OP( 121,  1048576 );
  TEST_VMV_OP( 122,  2097152 );
  TEST_VMV_OP( 123,  4194304 );
  TEST_VMV_OP( 124,  8388608 );
  TEST_VMV_OP( 125,  16777216 );
  TEST_VMV_OP( 126,  33554432 );
  TEST_VMV_OP( 127,  67108864 );
  TEST_VMV_OP( 128,  134217728 );
  TEST_VMV_OP( 129,  268435456 );
  TEST_VMV_OP( 130,  536870912 );
  TEST_VMV_OP( 131,  1073741824 );
  TEST_VMV_OP( 132,  1431655765 );
  TEST_VMV_OP( 133,  2147483647 );
  #-------------------------------------------------------------
  # VMV Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VMV_OP_rs2_1( 134, -2147483648 );
  TEST_VMV_OP_rs2_2( 135, -1431655766 );
  TEST_VMV_OP_rs2_3( 136, -1073741825 );
  TEST_VMV_OP_rs2_4( 137, -536870913 );
  TEST_VMV_OP_rs2_5( 138, -268435457 );
  TEST_VMV_OP_rs2_6( 139, -134217729 );
  TEST_VMV_OP_rs2_7( 140, -67108865 );
  TEST_VMV_OP_rs2_8( 141, -33554433 );
  TEST_VMV_OP_rs2_9( 142, -16777217 );
  TEST_VMV_OP_rs2_10( 143, -8388609 );
  TEST_VMV_OP_rs2_11( 144, -4194305 );
  TEST_VMV_OP_rs2_12( 145, -2097153 );
  TEST_VMV_OP_rs2_13( 146, -1048577 );
  TEST_VMV_OP_rs2_14( 147, -524289 );
  TEST_VMV_OP_rs2_15( 148, -262145 );
  TEST_VMV_OP_rs2_16( 149, -131073 );
  TEST_VMV_OP_rs2_17( 150, -65537 );
  TEST_VMV_OP_rs2_18( 151, -32769 );
  TEST_VMV_OP_rs2_19( 152, -16385 );
  TEST_VMV_OP_rs2_20( 153, -8193 );
  TEST_VMV_OP_rs2_21( 154, -4097 );
  TEST_VMV_OP_rs2_22( 155, -2049 );
  TEST_VMV_OP_rs2_23( 156, -1025 );
  TEST_VMV_OP_rs2_24( 157, -513 );
  TEST_VMV_OP_rs2_25( 158, -257 );
  TEST_VMV_OP_rs2_26( 159, -129 );
  TEST_VMV_OP_rs2_27( 160, -65 );
  TEST_VMV_OP_rs2_28( 161, -33 );
  TEST_VMV_OP_rs2_29( 162, -17 );
  TEST_VMV_OP_rs2_30( 163, -9 );
  TEST_VMV_OP_rs2_31( 164, -5 );
  TEST_VMV_OP_rs2_1( 165, -3 );
  TEST_VMV_OP_rs2_2( 166, -2 );
  TEST_VMV_OP_rs2_3( 167, 1 );
  TEST_VMV_OP_rs2_4( 168, 2 );
  TEST_VMV_OP_rs2_5( 169, 4 );
  TEST_VMV_OP_rs2_6( 170, 8 );
  TEST_VMV_OP_rs2_7( 171, 16 );
  TEST_VMV_OP_rs2_8( 172, 32 );
  TEST_VMV_OP_rs2_9( 173, 64 );
  TEST_VMV_OP_rs2_10( 174, 128 );
  TEST_VMV_OP_rs2_11( 175, 256 );
  TEST_VMV_OP_rs2_12( 176, 512 );
  TEST_VMV_OP_rs2_13( 177, 1024 );
  TEST_VMV_OP_rs2_14( 178, 2048 );
  TEST_VMV_OP_rs2_15( 179, 4096 );
  TEST_VMV_OP_rs2_16( 180, 8192 );
  TEST_VMV_OP_rs2_17( 181, 16384 );
  TEST_VMV_OP_rs2_18( 182, 32768 );
  TEST_VMV_OP_rs2_19( 183, 65536 );
  TEST_VMV_OP_rs2_20( 184, 131072 );
  TEST_VMV_OP_rs2_21( 185, 262144 );
  TEST_VMV_OP_rs2_22( 186, 524288 );
  TEST_VMV_OP_rs2_23( 187, 1048576 );
  TEST_VMV_OP_rs2_24( 188, 2097152 );
  TEST_VMV_OP_rs2_25( 189, 4194304 );
  TEST_VMV_OP_rs2_26( 190, 8388608 );
  TEST_VMV_OP_rs2_27( 191, 16777216 );
  TEST_VMV_OP_rs2_28( 192, 33554432 );
  TEST_VMV_OP_rs2_29( 193, 67108864 );
  TEST_VMV_OP_rs2_30( 194, 134217728 );
  TEST_VMV_OP_rs2_31( 195, 268435456 );
  TEST_VMV_OP_rs2_1( 196, 536870912 );
  TEST_VMV_OP_rs2_2( 197, 1073741824 );
  TEST_VMV_OP_rs2_3( 198, 1431655765 );
  TEST_VMV_OP_rs2_4( 199, 2147483647 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
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
    

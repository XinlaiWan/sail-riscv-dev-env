#----------------------------------------------------------------------------- 
    # vluxsegei8.S
    #-----------------------------------------------------------------------------
    #
    # Test vluxsegei8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vluxsegei8)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_CASE_VLSEG3
#define TEST_CASE_VLSEG3( testnum, testreg, eew, correctval1, correctval2, correctval3, code... ) \
            test_ ## testnum: \
                code; \
                li x7, MASK_EEW(correctval1, eew); \
                li x8, MASK_EEW(correctval2, eew); \
                li x9, MASK_EEW(correctval3, eew); \
                li TESTNUM, testnum; \
                vsetivli x31, 1, MK_EEW(eew), tu, mu; \
                VMVXS_AND_MASK_EEW( x14, testreg, eew ) \
                VMVXS_AND_MASK_EEW( x15, v9, eew ) \
                VMVXS_AND_MASK_EEW( x16, v10, eew )\
                VSET_VSEW \
                bne x14, x7, fail; \
                bne x15, x8, fail; \
                bne x16, x9, fail; \
        
#define TEST_VLXSEG1_OP_11( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x1), v8 ;  \
        )
#define TEST_VLXSEG1_OP_12( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x2), v8 ;  \
        )
#define TEST_VLXSEG1_OP_13( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x3), v8 ;  \
        )
#define TEST_VLXSEG1_OP_14( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x4), v8 ;  \
        )
#define TEST_VLXSEG1_OP_15( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x5), v8 ;  \
        )
#define TEST_VLXSEG1_OP_16( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x6), v8 ;  \
        )
#define TEST_VLXSEG1_OP_17( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x7), v8 ;  \
        )
#define TEST_VLXSEG1_OP_18( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x8), v8 ;  \
        )
#define TEST_VLXSEG1_OP_19( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x9), v8 ;  \
        )
#define TEST_VLXSEG1_OP_110( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x10), v8 ;  \
        )
#define TEST_VLXSEG1_OP_111( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x11), v8 ;  \
        )
#define TEST_VLXSEG1_OP_112( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x12), v8 ;  \
        )
#define TEST_VLXSEG1_OP_113( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x13), v8 ;  \
        )
#define TEST_VLXSEG1_OP_114( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x14), v8 ;  \
        )
#define TEST_VLXSEG1_OP_115( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x15), v8 ;  \
        )
#define TEST_VLXSEG1_OP_116( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x16), v8 ;  \
        )
#define TEST_VLXSEG1_OP_117( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x17), v8 ;  \
        )
#define TEST_VLXSEG1_OP_118( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x18), v8 ;  \
        )
#define TEST_VLXSEG1_OP_119( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x19), v8 ;  \
        )
#define TEST_VLXSEG1_OP_120( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x20), v8 ;  \
        )
#define TEST_VLXSEG1_OP_121( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x21), v8 ;  \
        )
#define TEST_VLXSEG1_OP_122( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x22), v8 ;  \
        )
#define TEST_VLXSEG1_OP_123( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x23), v8 ;  \
        )
#define TEST_VLXSEG1_OP_124( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x24), v8 ;  \
        )
#define TEST_VLXSEG1_OP_125( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x25), v8 ;  \
        )
#define TEST_VLXSEG1_OP_126( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x26), v8 ;  \
        )
#define TEST_VLXSEG1_OP_127( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x27), v8 ;  \
        )
#define TEST_VLXSEG1_OP_128( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x28), v8 ;  \
        )
#define TEST_VLXSEG1_OP_129( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x29), v8 ;  \
        )
#define TEST_VLXSEG1_OP_130( testnum, inst, index_eew, result, base_data, base_index  ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base_data;  \
            la  x31, base_index; \
            MK_VLE_INST(index_eew) v8, (x31);    \
            inst v16, (x30), v8 ;  \
        )
#define TEST_VLXSEG1_OP_rd1( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v1, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v1, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd2( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v2, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v2, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd3( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v3, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v3, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd4( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v4, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v4, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd5( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v5, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v5, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd6( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v6, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v6, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd7( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v7, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v7, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd9( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v9, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v9, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd10( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v10, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v10, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd11( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v11, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v11, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd12( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v12, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v12, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd13( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v13, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v13, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd14( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v14, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v14, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd15( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v15, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v15, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd17( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v17, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v17, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd18( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v18, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v18, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd19( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v19, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v19, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd20( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v20, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v20, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd21( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v21, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v21, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd22( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v22, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v22, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd23( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v23, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v23, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd24( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v24, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v24, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd25( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v25, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v25, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd26( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v26, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v26, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd27( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v27, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v27, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd28( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v28, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v28, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_rd29( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v29, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v29, (x1), v8;  \
        )
#define TEST_VLXSEG1_OP_131( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x31, base_data; \
            la  x2, base_index; \
            MK_VLE_INST(index_eew) v8, (x2);    \
            inst v16, (x31), v8 ;  \
        )
#define TEST_VLXSEG1_OP_rd30( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v30, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v30, (x1), v8 ;  \
        )
#define TEST_VLXSEG1_OP_rd24( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v24, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v24, (x1), v8 ;  \
        )
#define TEST_VLXSEG1_OP_rd20( testnum, inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v20, result, \
            la  x1, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v8, (x6);    \
            inst v20, (x1), v8 ;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VLXSEG1_OP( 2,  vluxseg2ei8.v,  8 , 0x00ff00ff, 0 + tdat , idx8dat);
  TEST_VLXSEG3_OP( 3,  vluxseg3ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 4,  vluxseg4ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 16 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 5,  vluxseg5ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,-12 + tdat4, idx8dat );
  TEST_VLXSEG3_OP( 6,  vluxseg6ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 7,  vluxseg7ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 8,  vluxseg8ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP( 9,  vluxseg2ei8.v,  8 , 0x00ff00ff, 0 + tdat , idx8dat);
  TEST_VLXSEG3_OP( 10,  vluxseg3ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 11,  vluxseg4ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 16 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 12,  vluxseg5ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0,-12 + tdat4, idx8dat );
  TEST_VLXSEG3_OP( 13,  vluxseg6ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 14,  vluxseg7ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
  TEST_VLXSEG3_OP( 15,  vluxseg8ei8.v,  8 , 0x00ff00ff, 0xff00ff00, 0x0ff00ff0, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd1( 16,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_12( 17,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd2( 18,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_13( 19,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd3( 20,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_14( 21,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd4( 22,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_15( 23,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd5( 24,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_16( 25,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd6( 26,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_17( 27,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_18( 28,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_19( 29,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd9( 30,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_110( 31,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd10( 32,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_111( 33,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd11( 34,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_112( 35,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd12( 36,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_113( 37,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd13( 38,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_114( 39,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd14( 40,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_115( 41,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd15( 42,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_116( 43,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_117( 44,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd17( 45,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_118( 46,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd18( 47,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_119( 48,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd19( 49,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_120( 50,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd20( 51,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_121( 52,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd21( 53,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_122( 54,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd22( 55,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_123( 56,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd23( 57,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_124( 58,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd24( 59,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_125( 60,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd25( 61,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_126( 62,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd26( 63,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_127( 64,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd27( 65,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_128( 66,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd28( 67,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_129( 68,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd29( 69,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_130( 70,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd30( 71,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_131( 72,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd1( 73,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_12( 74,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd2( 75,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_13( 76,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd3( 77,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_14( 78,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd4( 79,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_15( 80,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd5( 81,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_16( 82,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd6( 83,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_17( 84,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_18( 85,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_19( 86,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd9( 87,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_110( 88,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd10( 89,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_111( 90,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd11( 91,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_112( 92,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd12( 93,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_113( 94,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd13( 95,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_114( 96,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd14( 97,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_115( 98,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd15( 99,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_116( 100,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_117( 101,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd17( 102,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_118( 103,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd18( 104,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_119( 105,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd19( 106,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_120( 107,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd20( 108,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_121( 109,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd21( 110,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_122( 111,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd22( 112,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_123( 113,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd23( 114,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_124( 115,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd24( 116,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_125( 117,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd25( 118,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_126( 119,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd26( 120,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_127( 121,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd27( 122,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_128( 123,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd28( 124,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_129( 125,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd29( 126,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_130( 127,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd30( 128,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_131( 129,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd1( 130,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_12( 131,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd2( 132,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_13( 133,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd3( 134,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_14( 135,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd4( 136,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_15( 137,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd5( 138,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_16( 139,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd6( 140,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_17( 141,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_18( 142,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_19( 143,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd9( 144,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_110( 145,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd10( 146,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_111( 147,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd11( 148,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_112( 149,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd12( 150,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_113( 151,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd13( 152,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_114( 153,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd14( 154,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_115( 155,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd15( 156,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_116( 157,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_117( 158,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd17( 159,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_118( 160,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd18( 161,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_119( 162,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd19( 163,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_120( 164,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd20( 165,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_121( 166,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd21( 167,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_122( 168,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd22( 169,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_123( 170,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd23( 171,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_124( 172,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd24( 173,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_125( 174,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd25( 175,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_126( 176,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd26( 177,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_127( 178,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd27( 179,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_128( 180,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd28( 181,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_129( 182,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd29( 183,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_130( 184,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd30( 185,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_131( 186,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd1( 187,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_12( 188,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd2( 189,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_13( 190,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd3( 191,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_14( 192,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd4( 193,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_15( 194,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd5( 195,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_16( 196,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd6( 197,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_17( 198,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_18( 199,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  TEST_VLXSEG1_OP_19( 200,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd9( 201,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_110( 202,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
   TEST_VLXSEG1_OP_rd10( 203,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat);
  TEST_VLXSEG1_OP_111( 204,  vluxseg2ei8.v, 8, 0x00ff00ff, 0 + tdat, idx8dat );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    .type tdat, @object
    .size tdat, 4128
    tdat:
    tdat1:  .word 0x00ff00ff
    tdat2:  .word 0xff00ff00
    tdat3:  .word 0x0ff00ff0
    tdat4:  .word 0xf00ff00f
    tdat5:  .word 0x00ff00ff
    tdat6:  .word 0xff00ff00
    tdat7:  .word 0x0ff00ff0
    tdat8:  .word 0xf00ff00f
    tdat9:  .zero 4064
    tdat10:  .word 0x00ff00ff
    tdat11:  .word 0xff00ff00
    tdat12:  .word 0x0ff00ff0
    tdat13:  .word 0xf00ff00f
    tdat14:  .word 0x00ff00ff
    tdat15:  .word 0xff00ff00
    tdat16:  .word 0x0ff00ff0
    tdat17:  .word 0xf00ff00f
    
    idx8dat:
    idx8dat1:  .byte 0
    idx8dat2:  .byte 4
    idx8dat3:  .byte 8
    idx8dat4:  .byte 12
    idx8dat5:  .word 0x00000000
    idx8dat6:  .word 0x00000000
    idx8dat7:  .word 0x00000000
    idx8dat8:  .zero 5201314
    
    idx16dat:
    idx16dat1:  .word 0x00040000
    idx16dat2:  .word 0x000c0008
    idx16dat3:  .word 0x00140010
    idx16dat4:  .word 0x001c0018
    idx16dat5:  .zero 5201314
    
    idx32dat:
    idx32dat1:  .word 0x00000000
    idx32dat2:  .word 0x00000004
    idx32dat3:  .word 0x00000008
    idx32dat4:  .word 0x0000000c
    idx32dat5:  .zero 5201314
    
    idx64dat:
    idx64dat1:  .word 0x00000000
    idx64dat2:  .word 0x00000000
    idx64dat3:  .word 0x00000004
    idx64dat4:  .word 0x00000000
    idx64dat5:  .word 0x00000008
    idx64dat6:  .word 0x00000000
    idx64dat7:  .word 0x0000000c
    idx64dat8:  .word 0x00000000
    idx64dat9:  .zero 5201314
    
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
    

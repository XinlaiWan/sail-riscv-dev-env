#----------------------------------------------------------------------------- 
    # vsuxsegei32.S
    #-----------------------------------------------------------------------------
    #
    # Test vsuxsegei32 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsuxsegei32)
    
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
                VMVXS_AND_MASK_EEW( x15, v16, eew ) \
                VMVXS_AND_MASK_EEW( x16, v24, eew )\
                VSET_VSEW \
                bne x14, x7, fail; \
                bne x15, x8, fail; \
                bne x16, x9, fail; \
        
#define TEST_VSXSEG3_OP( testnum, load_inst, store_inst, index_eew, result1, result2, result3, base_data, base_index ) \
        TEST_CASE_VLSEG3( testnum, v8, __riscv_vsew, result1, result2, result3,  \
            la  x1, base_data; \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6); \
            li x7, MASK_VSEW(result1); \
            li x8, MASK_VSEW(result2); \
            li x9, MASK_VSEW(result3); \
            vsetivli x31, 1, __e_riscv_vsew, m1, tu, mu; \
            vmv.v.x v8, x7; \
            vmv.v.x v16, x8; \
            vmv.v.x v24, x9; \
            VSET_VSEW \
            store_inst v8, (x1), v24; \
            vsetivli x31, 1, __e_riscv_vsew, m1, tu, mu; \
            vmv.v.i v8, 0; \
            vmv.v.i v16, 0;  \
            vmv.v.i v24, 0;  \
            VSET_VSEW \
            load_inst v8, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_11( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_12( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x2), v24; \
            load_inst v16, (x2), v24; \
        )
#define TEST_VSXSEG1_OP_13( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x3), v24; \
            load_inst v16, (x3), v24; \
        )
#define TEST_VSXSEG1_OP_14( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x4), v24; \
            load_inst v16, (x4), v24; \
        )
#define TEST_VSXSEG1_OP_15( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x5), v24; \
            load_inst v16, (x5), v24; \
        )
#define TEST_VSXSEG1_OP_16( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x6), v24; \
            load_inst v16, (x6), v24; \
        )
#define TEST_VSXSEG1_OP_17( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x7), v24; \
            load_inst v16, (x7), v24; \
        )
#define TEST_VSXSEG1_OP_18( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x8), v24; \
            load_inst v16, (x8), v24; \
        )
#define TEST_VSXSEG1_OP_19( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x9), v24; \
            load_inst v16, (x9), v24; \
        )
#define TEST_VSXSEG1_OP_110( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x10), v24; \
            load_inst v16, (x10), v24; \
        )
#define TEST_VSXSEG1_OP_111( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x11), v24; \
            load_inst v16, (x11), v24; \
        )
#define TEST_VSXSEG1_OP_112( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x12), v24; \
            load_inst v16, (x12), v24; \
        )
#define TEST_VSXSEG1_OP_113( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x13), v24; \
            load_inst v16, (x13), v24; \
        )
#define TEST_VSXSEG1_OP_114( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x14), v24; \
            load_inst v16, (x14), v24; \
        )
#define TEST_VSXSEG1_OP_115( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x15), v24; \
            load_inst v16, (x15), v24; \
        )
#define TEST_VSXSEG1_OP_116( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x16), v24; \
            load_inst v16, (x16), v24; \
        )
#define TEST_VSXSEG1_OP_117( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x17), v24; \
            load_inst v16, (x17), v24; \
        )
#define TEST_VSXSEG1_OP_118( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x18), v24; \
            load_inst v16, (x18), v24; \
        )
#define TEST_VSXSEG1_OP_119( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x19), v24; \
            load_inst v16, (x19), v24; \
        )
#define TEST_VSXSEG1_OP_120( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x20), v24; \
            load_inst v16, (x20), v24; \
        )
#define TEST_VSXSEG1_OP_121( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x21), v24; \
            load_inst v16, (x21), v24; \
        )
#define TEST_VSXSEG1_OP_122( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x22), v24; \
            load_inst v16, (x22), v24; \
        )
#define TEST_VSXSEG1_OP_123( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x23), v24; \
            load_inst v16, (x23), v24; \
        )
#define TEST_VSXSEG1_OP_124( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x24), v24; \
            load_inst v16, (x24), v24; \
        )
#define TEST_VSXSEG1_OP_125( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x25), v24; \
            load_inst v16, (x25), v24; \
        )
#define TEST_VSXSEG1_OP_126( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x26), v24; \
            load_inst v16, (x26), v24; \
        )
#define TEST_VSXSEG1_OP_127( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x27), v24; \
            load_inst v16, (x27), v24; \
        )
#define TEST_VSXSEG1_OP_128( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x28), v24; \
            load_inst v16, (x28), v24; \
        )
#define TEST_VSXSEG1_OP_129( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x29), v24; \
            load_inst v16, (x29), v24; \
        )
#define TEST_VSXSEG1_OP_rd1( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v1, x3; \
            store_inst v1, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd2( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v2, x3; \
            store_inst v2, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd3( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v3, x3; \
            store_inst v3, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd4( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v4, x3; \
            store_inst v4, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd5( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v5, x3; \
            store_inst v5, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd6( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v6, x3; \
            store_inst v6, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd7( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v7, x3; \
            store_inst v7, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd8( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v8, x3; \
            store_inst v8, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd9( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v9, x3; \
            store_inst v9, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd10( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v10, x3; \
            store_inst v10, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd11( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v11, x3; \
            store_inst v11, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd12( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v12, x3; \
            store_inst v12, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd13( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v13, x3; \
            store_inst v13, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd14( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v14, x3; \
            store_inst v14, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd15( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v15, x3; \
            store_inst v15, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd16( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v16, x3; \
            store_inst v16, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd17( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v17, x3; \
            store_inst v17, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd18( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v18, x3; \
            store_inst v18, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd19( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v19, x3; \
            store_inst v19, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd20( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v20, x3; \
            store_inst v20, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd21( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v21, x3; \
            store_inst v21, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd22( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v22, x3; \
            store_inst v22, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd23( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v23, x3; \
            store_inst v23, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd24( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v24, x3; \
            store_inst v24, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd25( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v25, x3; \
            store_inst v25, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd26( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v26, x3; \
            store_inst v26, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd27( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v27, x3; \
            store_inst v27, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd28( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v28, x3; \
            store_inst v28, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd29( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v29, x3; \
            store_inst v29, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_rd30( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v30, x3; \
            store_inst v30, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXSEG1_OP_130( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x31, MASK_VSEW(result); \
            vmv.v.x v8, x31; \
            store_inst v8, (x30), v24; \
            load_inst v16, (x30), v24; \
        )
#define TEST_VSXSEG1_OP_131( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x31, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, MASK_VSEW(result); \
            vmv.v.x v8, x3; \
            store_inst v8, (x31), v24; \
            load_inst v16, (x31), v24; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
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
    

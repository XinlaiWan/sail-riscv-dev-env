#----------------------------------------------------------------------------- 
    # vsuxei8.S
    #-----------------------------------------------------------------------------
    #
    # Test vsuxei8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsuxei8)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VSXEI_OP_11( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_12( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x2), v24; \
            load_inst v16, (x2), v24; \
        )
#define TEST_VSXEI_OP_13( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x3), v24; \
            load_inst v16, (x3), v24; \
        )
#define TEST_VSXEI_OP_14( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x4), v24; \
            load_inst v16, (x4), v24; \
        )
#define TEST_VSXEI_OP_15( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x5), v24; \
            load_inst v16, (x5), v24; \
        )
#define TEST_VSXEI_OP_16( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x6), v24; \
            load_inst v16, (x6), v24; \
        )
#define TEST_VSXEI_OP_17( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x7), v24; \
            load_inst v16, (x7), v24; \
        )
#define TEST_VSXEI_OP_18( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x8), v24; \
            load_inst v16, (x8), v24; \
        )
#define TEST_VSXEI_OP_19( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x9), v24; \
            load_inst v16, (x9), v24; \
        )
#define TEST_VSXEI_OP_110( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x10), v24; \
            load_inst v16, (x10), v24; \
        )
#define TEST_VSXEI_OP_111( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x11), v24; \
            load_inst v16, (x11), v24; \
        )
#define TEST_VSXEI_OP_112( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x12), v24; \
            load_inst v16, (x12), v24; \
        )
#define TEST_VSXEI_OP_113( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x13), v24; \
            load_inst v16, (x13), v24; \
        )
#define TEST_VSXEI_OP_114( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x14), v24; \
            load_inst v16, (x14), v24; \
        )
#define TEST_VSXEI_OP_115( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x15), v24; \
            load_inst v16, (x15), v24; \
        )
#define TEST_VSXEI_OP_116( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x16), v24; \
            load_inst v16, (x16), v24; \
        )
#define TEST_VSXEI_OP_117( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x17), v24; \
            load_inst v16, (x17), v24; \
        )
#define TEST_VSXEI_OP_118( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x18), v24; \
            load_inst v16, (x18), v24; \
        )
#define TEST_VSXEI_OP_119( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x19), v24; \
            load_inst v16, (x19), v24; \
        )
#define TEST_VSXEI_OP_120( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x20), v24; \
            load_inst v16, (x20), v24; \
        )
#define TEST_VSXEI_OP_121( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x21), v24; \
            load_inst v16, (x21), v24; \
        )
#define TEST_VSXEI_OP_122( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x22), v24; \
            load_inst v16, (x22), v24; \
        )
#define TEST_VSXEI_OP_123( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x23), v24; \
            load_inst v16, (x23), v24; \
        )
#define TEST_VSXEI_OP_124( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x24), v24; \
            load_inst v16, (x24), v24; \
        )
#define TEST_VSXEI_OP_125( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x25), v24; \
            load_inst v16, (x25), v24; \
        )
#define TEST_VSXEI_OP_126( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x26), v24; \
            load_inst v16, (x26), v24; \
        )
#define TEST_VSXEI_OP_127( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x27), v24; \
            load_inst v16, (x27), v24; \
        )
#define TEST_VSXEI_OP_128( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x28), v24; \
            load_inst v16, (x28), v24; \
        )
#define TEST_VSXEI_OP_129( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base_data;  \
            la  x30, base_index; \
            MK_VLE_INST(index_eew) v24, (x30);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x29), v24; \
            load_inst v16, (x29), v24; \
        )
#define TEST_VSXEI_OP_rd1( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v1, x3; \
            store_inst v1, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd2( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v2, x3; \
            store_inst v2, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd3( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v3, x3; \
            store_inst v3, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd4( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v4, x3; \
            store_inst v4, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd5( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v5, x3; \
            store_inst v5, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd6( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v6, x3; \
            store_inst v6, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd7( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v7, x3; \
            store_inst v7, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd8( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v8, x3; \
            store_inst v8, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd9( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v9, x3; \
            store_inst v9, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd10( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v10, x3; \
            store_inst v10, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd11( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v11, x3; \
            store_inst v11, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd12( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v12, x3; \
            store_inst v12, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd13( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v13, x3; \
            store_inst v13, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd14( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v14, x3; \
            store_inst v14, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd15( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v15, x3; \
            store_inst v15, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd16( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v16, x3; \
            store_inst v16, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd17( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v17, x3; \
            store_inst v17, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd18( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v18, x3; \
            store_inst v18, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd19( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v19, x3; \
            store_inst v19, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd20( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v20, x3; \
            store_inst v20, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd21( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v21, x3; \
            store_inst v21, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd22( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v22, x3; \
            store_inst v22, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd23( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v23, x3; \
            store_inst v23, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd24( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v24, x3; \
            store_inst v24, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd25( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v25, x3; \
            store_inst v25, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd26( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v26, x3; \
            store_inst v26, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd27( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v27, x3; \
            store_inst v27, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd28( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v28, x3; \
            store_inst v28, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd29( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v29, x3; \
            store_inst v29, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_rd30( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v30, x3; \
            store_inst v30, (x1), v24; \
            load_inst v16, (x1), v24; \
        )
#define TEST_VSXEI_OP_130( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x31, result; \
            vmv.v.x v8, x31; \
            store_inst v8, (x30), v24; \
            load_inst v16, (x30), v24; \
        )
#define TEST_VSXEI_OP_131( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v16, result, \
            la  x31, base_data;  \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v24, (x6);    \
            li  x3, result; \
            vmv.v.x v8, x3; \
            store_inst v8, (x31), v24; \
            load_inst v16, (x31), v24; \
        )
#define TEST_VSXEI_OP_rd31( testnum, load_inst, store_inst, index_eew, result, base_data, base_index ) \
        TEST_CASE( testnum, v31, result, \
            la  x1, base_data;   \
            la  x6, base_index; \
            MK_VLE_INST(index_eew) v2, (x6);    \
            li  x3, result; \
            vmv.v.x v31, x3; \
            store_inst v31, (x1), v2; \
            load_inst v14, (x1), v2; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSXEI_OP( 2, vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP( 3, vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_rd1( 4,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_12( 5,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd2( 6,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_13( 7,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd3( 8,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_14( 9,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd4( 10,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_15( 11,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd5( 12,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_16( 13,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd6( 14,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_17( 15,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd7( 16,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_18( 17,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_19( 18,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd9( 19,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_110( 20,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd10( 21,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_111( 22,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd11( 23,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_112( 24,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd12( 25,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_113( 26,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd13( 27,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_114( 28,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd14( 29,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_115( 30,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd15( 31,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_116( 32,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_117( 33,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd17( 34,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_118( 35,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd18( 36,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_119( 37,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd19( 38,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_120( 39,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd20( 40,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_121( 41,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd21( 42,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_122( 43,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd22( 44,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_123( 45,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd23( 46,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_124( 47,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_125( 48,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd25( 49,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_126( 50,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd26( 51,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_127( 52,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd27( 53,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_128( 54,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd28( 55,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_129( 56,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd29( 57,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_130( 58,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd30( 59,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_rd1( 60,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_12( 61,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd2( 62,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_13( 63,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd3( 64,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_14( 65,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd4( 66,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_15( 67,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd5( 68,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_16( 69,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd6( 70,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_17( 71,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd7( 72,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_18( 73,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_19( 74,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd9( 75,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_110( 76,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd10( 77,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_111( 78,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd11( 79,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_112( 80,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd12( 81,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_113( 82,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd13( 83,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_114( 84,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd14( 85,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_115( 86,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd15( 87,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_116( 88,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_117( 89,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd17( 90,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_118( 91,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd18( 92,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_119( 93,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd19( 94,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_120( 95,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd20( 96,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_121( 97,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd21( 98,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_122( 99,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd22( 100,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_123( 101,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd23( 102,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_124( 103,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_125( 104,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd25( 105,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_126( 106,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd26( 107,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_127( 108,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd27( 109,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_128( 110,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd28( 111,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_129( 112,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd29( 113,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_130( 114,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd30( 115,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_rd1( 116,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_12( 117,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd2( 118,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_13( 119,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd3( 120,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_14( 121,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd4( 122,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_15( 123,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd5( 124,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_16( 125,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd6( 126,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_17( 127,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd7( 128,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_18( 129,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_19( 130,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd9( 131,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_110( 132,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd10( 133,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_111( 134,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd11( 135,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_112( 136,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd12( 137,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_113( 138,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd13( 139,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_114( 140,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd14( 141,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_115( 142,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd15( 143,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_116( 144,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_117( 145,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd17( 146,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_118( 147,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd18( 148,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_119( 149,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd19( 150,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_120( 151,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd20( 152,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_121( 153,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd21( 154,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_122( 155,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd22( 156,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_123( 157,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd23( 158,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_124( 159,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_125( 160,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd25( 161,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_126( 162,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd26( 163,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_127( 164,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd27( 165,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_128( 166,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd28( 167,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_129( 168,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd29( 169,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_130( 170,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd30( 171,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_rd1( 172,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_12( 173,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd2( 174,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_13( 175,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd3( 176,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_14( 177,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd4( 178,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_15( 179,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd5( 180,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_16( 181,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd6( 182,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_17( 183,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd7( 184,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_18( 185,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_19( 186,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd9( 187,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_110( 188,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
  TEST_VSXEI_OP_rd10( 189,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff,  0 + tdat, idx8dat );
  TEST_VSXEI_OP_111( 190,  vluxei8.v, vsuxei8.v, 8, 0x00ff00ff, -12 + tdat4, idx8dat );
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
    

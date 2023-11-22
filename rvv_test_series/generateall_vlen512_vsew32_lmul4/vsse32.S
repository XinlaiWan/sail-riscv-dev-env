#----------------------------------------------------------------------------- 
    # vsse32.S
    #-----------------------------------------------------------------------------
    #
    # Test vsse32 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsse32)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VSSE_OP_11( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x1), x29; \
            load_inst v16, (x1), x29 ;  \
        )
#define TEST_VSSE_OP_12( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x2, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x2), x29; \
            load_inst v16, (x2), x29 ;  \
        )
#define TEST_VSSE_OP_13( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x3, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x3), x29; \
            load_inst v16, (x3), x29 ;  \
        )
#define TEST_VSSE_OP_14( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x4, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x4), x29; \
            load_inst v16, (x4), x29 ;  \
        )
#define TEST_VSSE_OP_15( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x5, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x5), x29; \
            load_inst v16, (x5), x29 ;  \
        )
#define TEST_VSSE_OP_16( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x6, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x6), x29; \
            load_inst v16, (x6), x29 ;  \
        )
#define TEST_VSSE_OP_17( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x7, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x7), x29; \
            load_inst v16, (x7), x29 ;  \
        )
#define TEST_VSSE_OP_18( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x8, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x8), x29; \
            load_inst v16, (x8), x29 ;  \
        )
#define TEST_VSSE_OP_19( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x9, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x9), x29; \
            load_inst v16, (x9), x29 ;  \
        )
#define TEST_VSSE_OP_110( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x10, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x10), x29; \
            load_inst v16, (x10), x29 ;  \
        )
#define TEST_VSSE_OP_111( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x11, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x11), x29; \
            load_inst v16, (x11), x29 ;  \
        )
#define TEST_VSSE_OP_112( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x12, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x12), x29; \
            load_inst v16, (x12), x29 ;  \
        )
#define TEST_VSSE_OP_113( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x13, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x13), x29; \
            load_inst v16, (x13), x29 ;  \
        )
#define TEST_VSSE_OP_114( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x14, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x14), x29; \
            load_inst v16, (x14), x29 ;  \
        )
#define TEST_VSSE_OP_115( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x15, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x15), x29; \
            load_inst v16, (x15), x29 ;  \
        )
#define TEST_VSSE_OP_116( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x16, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x16), x29; \
            load_inst v16, (x16), x29 ;  \
        )
#define TEST_VSSE_OP_117( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x17, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x17), x29; \
            load_inst v16, (x17), x29 ;  \
        )
#define TEST_VSSE_OP_118( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x18, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x18), x29; \
            load_inst v16, (x18), x29 ;  \
        )
#define TEST_VSSE_OP_119( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x19, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x19), x29; \
            load_inst v16, (x19), x29 ;  \
        )
#define TEST_VSSE_OP_120( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x20, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x20), x29; \
            load_inst v16, (x20), x29 ;  \
        )
#define TEST_VSSE_OP_121( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x21, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x21), x29; \
            load_inst v16, (x21), x29 ;  \
        )
#define TEST_VSSE_OP_122( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x22, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x22), x29; \
            load_inst v16, (x22), x29 ;  \
        )
#define TEST_VSSE_OP_123( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x23, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x23), x29; \
            load_inst v16, (x23), x29 ;  \
        )
#define TEST_VSSE_OP_124( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x24, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x24), x29; \
            load_inst v16, (x24), x29 ;  \
        )
#define TEST_VSSE_OP_125( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x25, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x25), x29; \
            load_inst v16, (x25), x29 ;  \
        )
#define TEST_VSSE_OP_126( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x26, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x26), x29; \
            load_inst v16, (x26), x29 ;  \
        )
#define TEST_VSSE_OP_127( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x27, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x27), x29; \
            load_inst v16, (x27), x29 ;  \
        )
#define TEST_VSSE_OP_128( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x28, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x28), x29; \
            load_inst v16, (x28), x29 ;  \
        )
#define TEST_VSSE_OP_129( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x29), x29; \
            load_inst v16, (x29), x29 ;  \
        )
#define TEST_VSSE_OP_130( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base;  \
            li  x29, stride;  \
            li  x30, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x30; \
            VSET_VSEW \
            store_inst v8, (x30), x29; \
            load_inst v16, (x30), x29 ;  \
        )
#define TEST_VSSE_OP_rd1( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v1, x3;  \
            VSET_VSEW \
            store_inst v1, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd2( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v2, x3;  \
            VSET_VSEW \
            store_inst v2, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd3( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v3, x3;  \
            VSET_VSEW \
            store_inst v3, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd4( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v4, x3;  \
            VSET_VSEW \
            store_inst v4, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd5( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v5, x3;  \
            VSET_VSEW \
            store_inst v5, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd6( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v6, x3;  \
            VSET_VSEW \
            store_inst v6, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd7( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v7, x3;  \
            VSET_VSEW \
            store_inst v7, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd8( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x3;  \
            VSET_VSEW \
            store_inst v8, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd9( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v9, x3;  \
            VSET_VSEW \
            store_inst v9, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd10( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v10, x3;  \
            VSET_VSEW \
            store_inst v10, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd11( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v11, x3;  \
            VSET_VSEW \
            store_inst v11, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd12( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v12, x3;  \
            VSET_VSEW \
            store_inst v12, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd13( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v13, x3;  \
            VSET_VSEW \
            store_inst v13, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd14( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v14, x3;  \
            VSET_VSEW \
            store_inst v14, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd15( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v15, x3;  \
            VSET_VSEW \
            store_inst v15, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd16( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v16, x3;  \
            VSET_VSEW \
            store_inst v16, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd17( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v17, x3;  \
            VSET_VSEW \
            store_inst v17, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd18( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v18, x3;  \
            VSET_VSEW \
            store_inst v18, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd19( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v19, x3;  \
            VSET_VSEW \
            store_inst v19, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd20( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v20, x3;  \
            VSET_VSEW \
            store_inst v20, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd21( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v21, x3;  \
            VSET_VSEW \
            store_inst v21, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd22( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v22, x3;  \
            VSET_VSEW \
            store_inst v22, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd23( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v23, x3;  \
            VSET_VSEW \
            store_inst v23, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd24( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v24, x3;  \
            VSET_VSEW \
            store_inst v24, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd25( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v25, x3;  \
            VSET_VSEW \
            store_inst v25, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd26( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v26, x3;  \
            VSET_VSEW \
            store_inst v26, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd27( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v27, x3;  \
            VSET_VSEW \
            store_inst v27, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd28( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v28, x3;  \
            VSET_VSEW \
            store_inst v28, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd29( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v29, x3;  \
            VSET_VSEW \
            store_inst v29, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_rd30( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v30, x3;  \
            VSET_VSEW \
            store_inst v30, (x1), x2;  \
            load_inst v16, (x1), x2; \
        )
#define TEST_VSSE_OP_130( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x30, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x3; \
            VSET_VSEW \
            store_inst v8, (x30), x2; \
            load_inst v16, (x30), x2 ;  \
        )
#define TEST_VSSE_OP_129( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v16, result, \
            la  x29, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v8, x3; \
            VSET_VSEW \
            store_inst v8, (x29), x2; \
            load_inst v16, (x29), x2 ;  \
        )
#define TEST_VSSE_OP_rd31( testnum, load_inst, store_inst, eew, result, stride, base ) \
        TEST_CASE( testnum, v31, result, \
            la  x1, base;  \
            li  x2, stride; \
            li  x3, result; \
            vsetivli x31, 1, MK_EEW(eew), tu, mu; \
            vmv.v.x v31, x3; \
            VSET_VSEW \
            store_inst v31, (x1), x2; \
            load_inst v1, (x1), x2;  \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
   TEST_VSSE_OP( 2, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat);
   TEST_VSSE_OP( 3, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 4, 4 + tdat);
   TEST_VSSE_OP( 4, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 8, 0 + tdat);
   TEST_VSSE_OP( 5, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 4, 12 + tdat);
   TEST_VSSE_OP( 6, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 4100, 0 + tdat);
   TEST_VSSE_OP( 7, vlse32.v, vsse32.v, 32, 0xa0a0aa00, -4100, 0 + tdat15);
   TEST_VSSE_OP( 8, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat);
   TEST_VSSE_OP( 9, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 4, 4 + tdat);
   TEST_VSSE_OP( 10, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 8, 0 + tdat);
   TEST_VSSE_OP( 11, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 4, 12 + tdat);
   TEST_VSSE_OP( 12, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 4100, 0 + tdat);
   TEST_VSSE_OP( 13, vlse32.v, vsse32.v, 32, 0xa0a0aa00, -4100, 0 + tdat15);
  TEST_VSSE_OP_12( 14, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 15, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_14( 16, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 17, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_15( 18, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 19, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 20, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 21, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 22, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 23, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_111( 24, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_112( 25, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 26, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_113( 27, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_114( 28, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_115( 29, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_116( 30, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_117( 31, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_118( 32, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_119( 33, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_120( 34, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 35, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_121( 36, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_122( 37, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_123( 38, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_124( 39, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 40, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_125( 41, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_126( 42, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_127( 43, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_128( 44, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 45, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_129( 46, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_130( 47, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_12( 48, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 49, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_14( 50, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 51, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_15( 52, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 53, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 54, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 55, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 56, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 57, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_111( 58, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_112( 59, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 60, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_113( 61, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_114( 62, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_115( 63, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_116( 64, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_117( 65, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_118( 66, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_119( 67, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_120( 68, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 69, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_121( 70, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_122( 71, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_123( 72, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_124( 73, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 74, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_125( 75, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_126( 76, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_127( 77, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_128( 78, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 79, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_129( 80, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_130( 81, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_12( 82, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 83, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_14( 84, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 85, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_15( 86, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 87, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 88, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 89, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 90, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 91, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_111( 92, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_112( 93, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 94, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_113( 95, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_114( 96, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_115( 97, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_116( 98, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_117( 99, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_118( 100, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_119( 101, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_120( 102, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 103, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_121( 104, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_122( 105, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_123( 106, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_124( 107, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 108, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_125( 109, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_126( 110, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_127( 111, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_128( 112, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 113, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_129( 114, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_130( 115, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_12( 116, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 117, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_14( 118, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 119, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, 0 + tdat );
  TEST_VSSE_OP_15( 120, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 121, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 122, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 123, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 124, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 125, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
  TEST_VSSE_OP_111( 126, vlse32.v, vsse32.v, 32, 0xa0a0aa00, 0, -8 + tdat8 );
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
    

#----------------------------------------------------------------------------- 
    # vsse8.S
    #-----------------------------------------------------------------------------
    #
    # Test vsse8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsse8)
    
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
   TEST_VSSE_OP( 2, vlse8.v, vsse8.v, 8, 0xa0, 0, 0 + tdat);
   TEST_VSSE_OP( 3, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat);
   TEST_VSSE_OP( 4, vlse8.v, vsse8.v, 8, 0xa0, 2, 0 + tdat);
   TEST_VSSE_OP( 5, vlse8.v, vsse8.v, 8, 0xa0, 3, 0 + tdat);
   TEST_VSSE_OP( 6, vlse8.v, vsse8.v, 8, 0xa0, 0, 1 + tdat);
   TEST_VSSE_OP( 7, vlse8.v, vsse8.v, 8, 0xa0, 1, 1 + tdat);
   TEST_VSSE_OP( 8, vlse8.v, vsse8.v, 8, 0xa0, 2, 1 + tdat);
   TEST_VSSE_OP( 9, vlse8.v, vsse8.v, 8, 0xa0, 3, 1 + tdat);
   TEST_VSSE_OP( 10, vlse8.v, vsse8.v, 8, 0xa0, 0, 2 + tdat);
   TEST_VSSE_OP( 11, vlse8.v, vsse8.v, 8, 0xa0, 1, 2 + tdat);
   TEST_VSSE_OP( 12, vlse8.v, vsse8.v, 8, 0xa0, 2, 2 + tdat);
   TEST_VSSE_OP( 13, vlse8.v, vsse8.v, 8, 0xa0, 3, 2 + tdat);
   TEST_VSSE_OP( 14, vlse8.v, vsse8.v, 8, 0xa0, 0, 3 + tdat);
   TEST_VSSE_OP( 15, vlse8.v, vsse8.v, 8, 0xa0, 1, 3 + tdat);
   TEST_VSSE_OP( 16, vlse8.v, vsse8.v, 8, 0xa0, 2, 3 + tdat);
   TEST_VSSE_OP( 17, vlse8.v, vsse8.v, 8, 0xa0, 3, 3 + tdat);
   TEST_VSSE_OP( 18, vlse8.v, vsse8.v, 8, 0xa0, 4100, 0 + tdat);
   TEST_VSSE_OP( 19, vlse8.v, vsse8.v, 8, 0xa0, -4100, 0 + tdat15);
   TEST_VSSE_OP( 20, vlse8.v, vsse8.v, 8, 0xa0, 0, 0 + tdat);
   TEST_VSSE_OP( 21, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat);
   TEST_VSSE_OP( 22, vlse8.v, vsse8.v, 8, 0xa0, 2, 0 + tdat);
   TEST_VSSE_OP( 23, vlse8.v, vsse8.v, 8, 0xa0, 3, 0 + tdat);
   TEST_VSSE_OP( 24, vlse8.v, vsse8.v, 8, 0xa0, 0, 1 + tdat);
   TEST_VSSE_OP( 25, vlse8.v, vsse8.v, 8, 0xa0, 1, 1 + tdat);
   TEST_VSSE_OP( 26, vlse8.v, vsse8.v, 8, 0xa0, 2, 1 + tdat);
   TEST_VSSE_OP( 27, vlse8.v, vsse8.v, 8, 0xa0, 3, 1 + tdat);
   TEST_VSSE_OP( 28, vlse8.v, vsse8.v, 8, 0xa0, 0, 2 + tdat);
   TEST_VSSE_OP( 29, vlse8.v, vsse8.v, 8, 0xa0, 1, 2 + tdat);
   TEST_VSSE_OP( 30, vlse8.v, vsse8.v, 8, 0xa0, 2, 2 + tdat);
   TEST_VSSE_OP( 31, vlse8.v, vsse8.v, 8, 0xa0, 3, 2 + tdat);
   TEST_VSSE_OP( 32, vlse8.v, vsse8.v, 8, 0xa0, 0, 3 + tdat);
   TEST_VSSE_OP( 33, vlse8.v, vsse8.v, 8, 0xa0, 1, 3 + tdat);
   TEST_VSSE_OP( 34, vlse8.v, vsse8.v, 8, 0xa0, 2, 3 + tdat);
   TEST_VSSE_OP( 35, vlse8.v, vsse8.v, 8, 0xa0, 3, 3 + tdat);
   TEST_VSSE_OP( 36, vlse8.v, vsse8.v, 8, 0xa0, 4100, 0 + tdat);
   TEST_VSSE_OP( 37, vlse8.v, vsse8.v, 8, 0xa0, -4100, 0 + tdat15);
  TEST_VSSE_OP_rd1( 38, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_12( 39, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd2( 40, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_13( 41, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd3( 42, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_14( 43, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 44, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 45, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd5( 46, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_16( 47, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd6( 48, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_17( 49, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd7( 50, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_18( 51, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 52, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd9( 53, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_110( 54, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd10( 55, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_111( 56, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd11( 57, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_112( 58, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 59, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_113( 60, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd13( 61, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_114( 62, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd14( 63, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_115( 64, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd15( 65, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_116( 66, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_117( 67, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd17( 68, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_118( 69, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd18( 70, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_119( 71, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd19( 72, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_120( 73, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 74, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_121( 75, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd21( 76, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_122( 77, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd22( 78, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_123( 79, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd23( 80, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_124( 81, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 82, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_125( 83, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd25( 84, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_126( 85, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd26( 86, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_127( 87, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd27( 88, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_128( 89, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 90, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_129( 91, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd29( 92, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_130( 93, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd30( 94, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_rd1( 95, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_12( 96, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd2( 97, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_13( 98, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd3( 99, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_14( 100, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 101, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 102, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd5( 103, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_16( 104, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd6( 105, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_17( 106, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd7( 107, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_18( 108, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 109, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd9( 110, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_110( 111, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd10( 112, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_111( 113, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd11( 114, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_112( 115, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 116, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_113( 117, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd13( 118, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_114( 119, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd14( 120, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_115( 121, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd15( 122, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_116( 123, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_117( 124, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd17( 125, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_118( 126, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd18( 127, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_119( 128, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd19( 129, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_120( 130, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 131, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_121( 132, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd21( 133, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_122( 134, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd22( 135, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_123( 136, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd23( 137, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_124( 138, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 139, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_125( 140, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd25( 141, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_126( 142, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd26( 143, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_127( 144, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd27( 145, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_128( 146, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 147, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_129( 148, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd29( 149, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_130( 150, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd30( 151, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_rd1( 152, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_12( 153, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd2( 154, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_13( 155, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd3( 156, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_14( 157, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 158, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 159, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd5( 160, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_16( 161, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd6( 162, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_17( 163, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd7( 164, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_18( 165, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 166, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd9( 167, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_110( 168, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd10( 169, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_111( 170, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd11( 171, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_112( 172, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 173, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_113( 174, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd13( 175, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_114( 176, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd14( 177, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_115( 178, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd15( 179, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_116( 180, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_117( 181, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd17( 182, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_118( 183, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd18( 184, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_119( 185, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd19( 186, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_120( 187, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 188, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_121( 189, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd21( 190, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_122( 191, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd22( 192, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_123( 193, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd23( 194, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_124( 195, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 196, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_125( 197, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd25( 198, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_126( 199, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd26( 200, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_127( 201, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd27( 202, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_128( 203, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 204, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_129( 205, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd29( 206, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_130( 207, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd30( 208, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_rd1( 209, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_12( 210, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd2( 211, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_13( 212, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd3( 213, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_14( 214, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 215, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 216, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd5( 217, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_16( 218, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd6( 219, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_17( 220, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd7( 221, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_18( 222, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 223, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd9( 224, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_110( 225, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd10( 226, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_111( 227, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
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
    

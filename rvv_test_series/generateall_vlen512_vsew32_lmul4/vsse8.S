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
  TEST_VSSE_OP_12( 38, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_13( 39, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_14( 40, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 41, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 42, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_16( 43, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_17( 44, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_18( 45, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 46, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_110( 47, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_111( 48, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_112( 49, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 50, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_113( 51, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_114( 52, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_115( 53, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_116( 54, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_117( 55, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_118( 56, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_119( 57, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_120( 58, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 59, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_121( 60, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_122( 61, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_123( 62, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_124( 63, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 64, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_125( 65, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_126( 66, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_127( 67, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_128( 68, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 69, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_129( 70, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_130( 71, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_12( 72, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_13( 73, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_14( 74, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 75, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 76, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_16( 77, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_17( 78, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_18( 79, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 80, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_110( 81, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_111( 82, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_112( 83, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 84, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_113( 85, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_114( 86, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_115( 87, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_116( 88, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_117( 89, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_118( 90, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_119( 91, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_120( 92, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 93, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_121( 94, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_122( 95, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_123( 96, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_124( 97, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 98, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_125( 99, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_126( 100, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_127( 101, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_128( 102, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 103, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_129( 104, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_130( 105, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_12( 106, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_13( 107, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_14( 108, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 109, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 110, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_16( 111, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_17( 112, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_18( 113, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 114, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_110( 115, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_111( 116, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_112( 117, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 118, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_113( 119, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_114( 120, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_115( 121, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_116( 122, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_117( 123, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_118( 124, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_119( 125, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_120( 126, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 127, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_121( 128, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_122( 129, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_123( 130, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_124( 131, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 132, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_125( 133, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_126( 134, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_127( 135, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_128( 136, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 137, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_129( 138, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_130( 139, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_12( 140, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_13( 141, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_14( 142, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 143, vlse8.v, vsse8.v, 8, 0xa0, 1, 0 + tdat );
  TEST_VSSE_OP_15( 144, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_16( 145, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_17( 146, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_18( 147, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_19( 148, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_110( 149, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
  TEST_VSSE_OP_111( 150, vlse8.v, vsse8.v, 8, 0x0a, 3, -8 + tdat8 );
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
    

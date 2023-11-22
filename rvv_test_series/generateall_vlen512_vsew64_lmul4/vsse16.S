#----------------------------------------------------------------------------- 
    # vsse16.S
    #-----------------------------------------------------------------------------
    #
    # Test vsse16 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vsse16)
    
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
   TEST_VSSE_OP( 2, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat);
   TEST_VSSE_OP( 3, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 2 + tdat);
   TEST_VSSE_OP( 4, vlse16.v, vsse16.v, 16, 0xa0a0, 2, 0 + tdat);
   TEST_VSSE_OP( 5, vlse16.v, vsse16.v, 16, 0xa0a0, 2, 2 + tdat);
   TEST_VSSE_OP( 6, vlse16.v, vsse16.v, 16, 0xa0a0, 4100, 0 + tdat);
   TEST_VSSE_OP( 7, vlse16.v, vsse16.v, 16, 0xa0a0, -4100, 0 + tdat15);
   TEST_VSSE_OP( 8, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat);
   TEST_VSSE_OP( 9, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 2 + tdat);
   TEST_VSSE_OP( 10, vlse16.v, vsse16.v, 16, 0xa0a0, 2, 0 + tdat);
   TEST_VSSE_OP( 11, vlse16.v, vsse16.v, 16, 0xa0a0, 2, 2 + tdat);
   TEST_VSSE_OP( 12, vlse16.v, vsse16.v, 16, 0xa0a0, 4100, 0 + tdat);
   TEST_VSSE_OP( 13, vlse16.v, vsse16.v, 16, 0xa0a0, -4100, 0 + tdat15);
  TEST_VSSE_OP_11( 14, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_12( 15, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 16, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 17, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_14( 18, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_15( 19, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 20, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 21, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 22, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 23, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 24, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_111( 25, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 26, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_112( 27, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_113( 28, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_114( 29, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_115( 30, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_116( 31, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_117( 32, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_118( 33, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_119( 34, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 35, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_120( 36, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_121( 37, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_122( 38, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_123( 39, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 40, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_124( 41, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_125( 42, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_126( 43, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_127( 44, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 45, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_128( 46, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_129( 47, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_130( 48, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_11( 49, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_12( 50, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 51, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 52, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_14( 53, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_15( 54, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 55, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 56, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 57, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 58, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 59, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_111( 60, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 61, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_112( 62, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_113( 63, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_114( 64, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_115( 65, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_116( 66, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_117( 67, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_118( 68, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_119( 69, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 70, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_120( 71, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_121( 72, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_122( 73, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_123( 74, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 75, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_124( 76, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_125( 77, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_126( 78, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_127( 79, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 80, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_128( 81, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_129( 82, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_130( 83, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_11( 84, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_12( 85, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 86, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 87, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_14( 88, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_15( 89, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 90, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 91, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 92, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 93, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 94, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_111( 95, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd12( 96, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_112( 97, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_113( 98, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_114( 99, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_115( 100, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_116( 101, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_117( 102, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_118( 103, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_119( 104, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd20( 105, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_120( 106, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_121( 107, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_122( 108, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_123( 109, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd24( 110, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_124( 111, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_125( 112, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_126( 113, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_127( 114, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd28( 115, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_128( 116, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_129( 117, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_130( 118, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_11( 119, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_12( 120, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_13( 121, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_rd4( 122, vlse16.v, vsse16.v, 16, 0xa0a0, 0, 0 + tdat );
  TEST_VSSE_OP_14( 123, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_15( 124, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_16( 125, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_17( 126, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_18( 127, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_19( 128, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
  TEST_VSSE_OP_110( 129, vlse16.v, vsse16.v, 16, 0xa0a0, 0, -8 + tdat8 );
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
    

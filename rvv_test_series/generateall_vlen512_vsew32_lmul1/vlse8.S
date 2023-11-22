#----------------------------------------------------------------------------- 
    # vlse8.S
    #-----------------------------------------------------------------------------
    #
    # Test vlse8 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlse8)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VLSE_OP_12( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x2, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x2), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_13( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x3, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x3), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_14( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x4, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x4), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_15( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x5, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x5), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_16( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x6, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x6), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_17( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x7, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x7), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_18( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x8, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x8), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_19( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x9, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x9), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_110( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x10, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x10), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_111( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x11, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x11), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_112( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x12, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x12), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_113( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x13, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x13), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_114( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x14, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x14), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_115( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x15, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x15), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_116( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x16, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x16), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_117( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x17, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x17), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_118( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x18, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x18), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_119( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x19, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x19), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_120( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x20, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x20), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_121( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x21, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x21), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_122( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x22, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x22), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_123( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x23, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x23), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_124( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x24, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x24), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_125( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x25, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x25), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_126( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x26, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x26), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_127( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x27, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x27), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_128( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x28, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x28), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_129( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x29, base; \
                li  x30, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x29), x30; \
                VSET_VSEW \
        )
#define TEST_VLSE_OP_rd1( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v1, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v1, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd2( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v2, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v2, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd3( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v3, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v3, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd4( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v4, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v4, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd5( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v5, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v5, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd6( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v6, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v6, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd7( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v7, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v7, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd8( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v8, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v8, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd9( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v9, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v9, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd10( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v10, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v10, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd11( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v11, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v11, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd12( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v12, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v12, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd13( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v13, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v13, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd14( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v14, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v14, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd15( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v15, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v15, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd16( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd17( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v17, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v17, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd18( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v18, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v18, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd19( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v19, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v19, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd20( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v20, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v20, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd21( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v21, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v21, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd22( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v22, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v22, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd23( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v23, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v23, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd24( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v24, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v24, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd25( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v25, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v25, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd26( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v26, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v26, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd27( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v27, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v27, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd28( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v28, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v28, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd29( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v29, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v29, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd30( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v30, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v30, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_rd31( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v31, eew, result1, result2, \
                la  x1, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v31, (x1), x2; \
                VSET_VSEW \
        ) 
#define TEST_VLSE_OP_130( testnum, inst, eew, result1, result2, stride, base ) \
            TEST_CASE_LOAD( testnum, v16, eew, result1, result2, \
                la  x30, base; \
                li  x2, stride; \
                vsetivli x31, 4, MK_EEW(eew), tu, mu; \
                inst v16, (x30), x2; \
                VSET_VSEW \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VLSE_OP( 2,  vlse8.v,  8 , 0xff, 0xff , 0 , 0 + tdat );
  TEST_VLSE_OP( 3,  vlse8.v,  8 , 0x0f, 0xf0 , 1 , 0 + tdat4 );
  TEST_VLSE_OP( 4,  vlse8.v,  8 , 0x0f, 0x0f , 2 , 0 + tdat4 );
  TEST_VLSE_OP( 5,  vlse8.v,  8 , 0x0f, 0xf0 , 3 , 0 + tdat4 );
  TEST_VLSE_OP( 6,  vlse8.v,  8 , 0x00, 0x00 , 0 , 1 + tdat5 );
  TEST_VLSE_OP( 7,  vlse8.v,  8 , 0x00, 0xff , 1 , 1 + tdat5 );
  TEST_VLSE_OP( 8,  vlse8.v,  8 , 0x00, 0x00 , 2 , 1 + tdat5 );
  TEST_VLSE_OP( 9,  vlse8.v,  8 , 0x00, 0x00 , 3 , 1 + tdat5 );
  TEST_VLSE_OP( 10,  vlse8.v,  8 , 0x00, 0x00 , 0 , 2 + tdat6 );
  TEST_VLSE_OP( 11,  vlse8.v,  8 , 0x00, 0xff , 1 , 2 + tdat6 );
  TEST_VLSE_OP( 12,  vlse8.v,  8 , 0x00, 0xf0 , 2 , 2 + tdat6 );
  TEST_VLSE_OP( 13,  vlse8.v,  8 , 0x00, 0x0f , 3 , 2 + tdat6 );
  TEST_VLSE_OP( 14,  vlse8.v,  8 , 0x00, 0x00 , 0 , 3 + tdat );
  TEST_VLSE_OP( 15,  vlse8.v,  8 , 0x00, 0x00 , 1 , 3 + tdat );
  TEST_VLSE_OP( 16,  vlse8.v,  8 , 0x00, 0xff , 2 , 3 + tdat );
  TEST_VLSE_OP( 17,  vlse8.v,  8 , 0x00, 0x00 , 3 , 3 + tdat );
  TEST_VLSE_OP( 18,  vlse8.v,  8 , 0xff, 0x00 , 4100 , 0 + tdat );
  TEST_VLSE_OP( 19,  vlse8.v,  8 , 0xff, 0x00 , -4100 , 0 + tsdat6 );
  TEST_VLSE_OP( 20,  vlse8.v,  8 , 0xff, 0xff , 0 , 0 + tdat );
  TEST_VLSE_OP( 21,  vlse8.v,  8 , 0x0f, 0xf0 , 1 , 0 + tdat4 );
  TEST_VLSE_OP( 22,  vlse8.v,  8 , 0x0f, 0x0f , 2 , 0 + tdat4 );
  TEST_VLSE_OP( 23,  vlse8.v,  8 , 0x0f, 0xf0 , 3 , 0 + tdat4 );
  TEST_VLSE_OP( 24,  vlse8.v,  8 , 0x00, 0x00 , 0 , 1 + tdat5 );
  TEST_VLSE_OP( 25,  vlse8.v,  8 , 0x00, 0xff , 1 , 1 + tdat5 );
  TEST_VLSE_OP( 26,  vlse8.v,  8 , 0x00, 0x00 , 2 , 1 + tdat5 );
  TEST_VLSE_OP( 27,  vlse8.v,  8 , 0x00, 0x00 , 3 , 1 + tdat5 );
  TEST_VLSE_OP( 28,  vlse8.v,  8 , 0x00, 0x00 , 0 , 2 + tdat6 );
  TEST_VLSE_OP( 29,  vlse8.v,  8 , 0x00, 0xff , 1 , 2 + tdat6 );
  TEST_VLSE_OP( 30,  vlse8.v,  8 , 0x00, 0xf0 , 2 , 2 + tdat6 );
  TEST_VLSE_OP( 31,  vlse8.v,  8 , 0x00, 0x0f , 3 , 2 + tdat6 );
  TEST_VLSE_OP( 32,  vlse8.v,  8 , 0x00, 0x00 , 0 , 3 + tdat );
  TEST_VLSE_OP( 33,  vlse8.v,  8 , 0x00, 0x00 , 1 , 3 + tdat );
  TEST_VLSE_OP( 34,  vlse8.v,  8 , 0x00, 0xff , 2 , 3 + tdat );
  TEST_VLSE_OP( 35,  vlse8.v,  8 , 0x00, 0x00 , 3 , 3 + tdat );
  TEST_VLSE_OP( 36,  vlse8.v,  8 , 0xff, 0x00 , 4100 , 0 + tdat );
  TEST_VLSE_OP( 37,  vlse8.v,  8 , 0xff, 0x00 , -4100 , 0 + tsdat6 );
  TEST_VLSE_OP_rd1( 38,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_12( 39,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd2( 40,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_13( 41,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd3( 42,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_14( 43,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd4( 44,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_15( 45,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd5( 46,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_16( 47,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd6( 48,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_17( 49,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd7( 50,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_18( 51,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd8( 52,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_19( 53,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd9( 54,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_110( 55,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd10( 56,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_111( 57,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd11( 58,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_112( 59,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd12( 60,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_113( 61,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd13( 62,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_114( 63,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd14( 64,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_115( 65,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd15( 66,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_116( 67,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd16( 68,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_117( 69,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd17( 70,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_118( 71,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd18( 72,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_119( 73,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd19( 74,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_120( 75,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd20( 76,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_121( 77,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd21( 78,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_122( 79,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd22( 80,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_123( 81,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd23( 82,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_124( 83,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd24( 84,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_125( 85,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd25( 86,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_126( 87,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd26( 88,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_127( 89,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd27( 90,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_128( 91,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd28( 92,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_129( 93,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd29( 94,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_130( 95,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd30( 96,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_rd31( 97,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_12( 98,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd1( 99,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_13( 100,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd2( 101,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_14( 102,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd3( 103,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_15( 104,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd4( 105,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_16( 106,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd5( 107,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_17( 108,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd6( 109,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_18( 110,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd7( 111,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_19( 112,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd8( 113,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_110( 114,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd9( 115,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_111( 116,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd10( 117,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_112( 118,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd11( 119,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_113( 120,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd12( 121,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_114( 122,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd13( 123,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_115( 124,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd14( 125,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_116( 126,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd15( 127,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_117( 128,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd16( 129,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_118( 130,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd17( 131,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_119( 132,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd18( 133,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_120( 134,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd19( 135,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_121( 136,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd20( 137,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_122( 138,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd21( 139,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_123( 140,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd22( 141,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_124( 142,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd23( 143,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_125( 144,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd24( 145,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_126( 146,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd25( 147,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_127( 148,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd26( 149,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_128( 150,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd27( 151,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_129( 152,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd28( 153,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_130( 154,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd29( 155,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_rd30( 156,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_12( 157,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd31( 158,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_13( 159,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd1( 160,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_14( 161,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd2( 162,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_15( 163,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd3( 164,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_16( 165,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd4( 166,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_17( 167,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd5( 168,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_18( 169,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd6( 170,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_19( 171,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd7( 172,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_110( 173,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd8( 174,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_111( 175,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd9( 176,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_112( 177,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd10( 178,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_113( 179,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd11( 180,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_114( 181,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd12( 182,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_115( 183,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd13( 184,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_116( 185,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd14( 186,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_117( 187,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd15( 188,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_118( 189,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd16( 190,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_119( 191,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd17( 192,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_120( 193,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd18( 194,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_121( 195,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd19( 196,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_122( 197,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd20( 198,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_123( 199,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd21( 200,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_124( 201,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd22( 202,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_125( 203,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd23( 204,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_126( 205,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd24( 206,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_127( 207,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd25( 208,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_128( 209,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd26( 210,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_129( 211,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd27( 212,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_130( 213,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd28( 214,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_rd29( 215,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_12( 216,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd30( 217,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_13( 218,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd31( 219,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_14( 220,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd1( 221,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_15( 222,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd2( 223,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_16( 224,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd3( 225,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_17( 226,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd4( 227,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_18( 228,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd5( 229,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_19( 230,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd6( 231,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_110( 232,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  TEST_VLSE_OP_rd7( 233,  vlse8.v,  8 , 0x00, 0xff ,  1  , 4 + tdat);
  TEST_VLSE_OP_111( 234,  vlse8.v,  8 , 0xff, 0xff ,  0  , 0 + tdat);
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    .type tsdat, @object
    .size tsdat, 1049856
    tsdat:
    tsdat1:  .zero 524800
    tsdat2:  .word 0x00ff00ff
    tsdat3:  .word 0xff00ff00
    tsdat4:  .word 0x0ff00ff0
    tsdat5:  .word 0xf00ff00f
    tsdat6:  .word 0x00ff00ff
    tsdat7:  .word 0xff00ff00
    tsdat8:  .word 0x0ff00ff0
    tsdat9:  .word 0xf00ff00f
    tsdat10: .zero 524800
    
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
    
    idx16dat:
    idx16dat1:  .word 0x00040000
    idx16dat2:  .word 0x000c0008
    idx16dat3:  .word 0x00140010
    idx16dat4:  .word 0x001c0018
    
    idx32dat:
    idx32dat1:  .word 0x00000000
    idx32dat2:  .word 0x00000004
    idx32dat3:  .word 0x00000008
    idx32dat4:  .word 0x0000000c
    
    idx64dat:
    idx64dat1:  .word 0x00000000
    idx64dat2:  .word 0x00000000
    idx64dat3:  .word 0x00000004
    idx64dat4:  .word 0x00000000
    idx64dat5:  .word 0x00000008
    idx64dat6:  .word 0x00000000
    idx64dat7:  .word 0x0000000c
    idx64dat8:  .word 0x00000000
    
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
    

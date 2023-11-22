#----------------------------------------------------------------------------- 
    # vlse64.S
    #-----------------------------------------------------------------------------
    #
    # Test vlse64 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlse64)
    
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
  TEST_VLSE_OP( 2,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 , 8 , 0 + tdat );
  TEST_VLSE_OP( 3,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 , 4104 , 0 + tdat );
  TEST_VLSE_OP( 4,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0x0000000000000000 , -4104 , 0 + tsdat8 );
  TEST_VLSE_OP( 5,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 , 8 , 0 + tdat );
  TEST_VLSE_OP( 6,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 , 4104 , 0 + tdat );
  TEST_VLSE_OP( 7,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0x0000000000000000 , -4104 , 0 + tsdat8 );
  TEST_VLSE_OP_12( 9,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd2( 10,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_13( 11,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_14( 13,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd4( 14,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_15( 15,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_16( 17,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd6( 18,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_17( 19,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_18( 21,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd8( 22,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_19( 23,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_110( 25,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd10( 26,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_111( 27,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_112( 29,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd12( 30,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_113( 31,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_114( 33,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd14( 34,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_115( 35,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_116( 37,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd16( 38,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_117( 39,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_118( 41,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd18( 42,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_119( 43,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_120( 45,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd20( 46,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_121( 47,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_122( 49,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd22( 50,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_123( 51,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_124( 53,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd24( 54,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_125( 55,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_126( 57,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd26( 58,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_127( 59,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_128( 61,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd28( 62,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_129( 63,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_130( 65,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd30( 66,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_12( 68,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_13( 70,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd2( 71,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_14( 72,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_15( 74,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd4( 75,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_16( 76,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_17( 78,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd6( 79,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_18( 80,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_19( 82,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd8( 83,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_110( 84,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_111( 86,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd10( 87,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_112( 88,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_113( 90,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd12( 91,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_114( 92,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_115( 94,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd14( 95,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_116( 96,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_117( 98,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd16( 99,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_118( 100,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_119( 102,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd18( 103,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_120( 104,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_121( 106,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd20( 107,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_122( 108,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_123( 110,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd22( 111,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_124( 112,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_125( 114,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd24( 115,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_126( 116,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_127( 118,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd26( 119,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_128( 120,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_129( 122,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd28( 123,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_130( 124,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd30( 126,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_12( 127,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_13( 129,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_14( 131,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd2( 132,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_15( 133,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_16( 135,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd4( 136,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_17( 137,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_18( 139,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd6( 140,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_19( 141,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_110( 143,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd8( 144,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_111( 145,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_112( 147,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd10( 148,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_113( 149,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_114( 151,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd12( 152,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_115( 153,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_116( 155,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd14( 156,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_117( 157,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_118( 159,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd16( 160,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_119( 161,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_120( 163,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd18( 164,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_121( 165,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_122( 167,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd20( 168,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_123( 169,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_124( 171,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd22( 172,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_125( 173,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_126( 175,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd24( 176,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_127( 177,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_128( 179,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd26( 180,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_129( 181,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_130( 183,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd28( 184,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_12( 186,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd30( 187,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_13( 188,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_14( 190,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_15( 192,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd2( 193,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_16( 194,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_17( 196,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd4( 197,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_18( 198,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_19( 200,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_rd6( 201,  vlse64.v,  64 , 0xff00ff0000ff00ff, 0xf00ff00f0ff00ff0 ,  8  , 0 + tdat);
  TEST_VLSE_OP_110( 202,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
  TEST_VLSE_OP_111( 204,  vlse64.v,  64 , 0xf00ff00f0ff00ff0, 0xff00ff0000ff00ff ,  8  , -4 + tdat4);
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
    .align 8 
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
    

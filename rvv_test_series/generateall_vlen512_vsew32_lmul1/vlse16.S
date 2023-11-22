#----------------------------------------------------------------------------- 
    # vlse16.S
    #-----------------------------------------------------------------------------
    #
    # Test vlse16 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vlse16)
    
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
  TEST_VLSE_OP( 2,  vlse16.v,  16 , 0x00ff, 0x00ff , 2 , 0 + tdat );
  TEST_VLSE_OP( 3,  vlse16.v,  16 , 0x00ff, 0xff00 , 2 , 2 + tdat );
  TEST_VLSE_OP( 4,  vlse16.v,  16 , 0xf00f, 0xf00f , 0 , 2 + tdat4 );
  TEST_VLSE_OP( 5,  vlse16.v,  16 , 0x00ff, 0xff00 , 4100 , 2 + tdat );
  TEST_VLSE_OP( 6,  vlse16.v,  16 , 0xff00, 0x0000 , -4100 , 0 + tsdat7 );
  TEST_VLSE_OP( 7,  vlse16.v,  16 , 0x00ff, 0x00ff , 2 , 0 + tdat );
  TEST_VLSE_OP( 8,  vlse16.v,  16 , 0x00ff, 0xff00 , 2 , 2 + tdat );
  TEST_VLSE_OP( 9,  vlse16.v,  16 , 0xf00f, 0xf00f , 0 , 2 + tdat4 );
  TEST_VLSE_OP( 10,  vlse16.v,  16 , 0x00ff, 0xff00 , 4100 , 2 + tdat );
  TEST_VLSE_OP( 11,  vlse16.v,  16 , 0xff00, 0x0000 , -4100 , 0 + tsdat7 );
  TEST_VLSE_OP_rd1( 12,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_12( 13,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd2( 14,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_13( 15,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd3( 16,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_14( 17,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd4( 18,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_15( 19,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd5( 20,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_16( 21,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd6( 22,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_17( 23,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd7( 24,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_18( 25,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd8( 26,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_19( 27,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd9( 28,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_110( 29,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd10( 30,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_111( 31,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd11( 32,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_112( 33,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd12( 34,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_113( 35,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd13( 36,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_114( 37,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd14( 38,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_115( 39,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd15( 40,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_116( 41,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd16( 42,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_117( 43,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd17( 44,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_118( 45,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd18( 46,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_119( 47,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd19( 48,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_120( 49,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd20( 50,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_121( 51,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd21( 52,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_122( 53,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd22( 54,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_123( 55,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd23( 56,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_124( 57,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd24( 58,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_125( 59,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd25( 60,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_126( 61,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd26( 62,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_127( 63,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd27( 64,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_128( 65,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd28( 66,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_129( 67,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd29( 68,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_130( 69,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd30( 70,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_rd31( 71,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_12( 72,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd1( 73,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_13( 74,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd2( 75,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_14( 76,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd3( 77,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_15( 78,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd4( 79,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_16( 80,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd5( 81,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_17( 82,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd6( 83,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_18( 84,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd7( 85,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_19( 86,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd8( 87,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_110( 88,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd9( 89,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_111( 90,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd10( 91,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_112( 92,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd11( 93,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_113( 94,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd12( 95,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_114( 96,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd13( 97,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_115( 98,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd14( 99,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_116( 100,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd15( 101,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_117( 102,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd16( 103,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_118( 104,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd17( 105,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_119( 106,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd18( 107,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_120( 108,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd19( 109,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_121( 110,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd20( 111,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_122( 112,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd21( 113,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_123( 114,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd22( 115,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_124( 116,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd23( 117,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_125( 118,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd24( 119,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_126( 120,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd25( 121,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_127( 122,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd26( 123,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_128( 124,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd27( 125,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_129( 126,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd28( 127,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_130( 128,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd29( 129,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_rd30( 130,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_12( 131,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd31( 132,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_13( 133,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd1( 134,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_14( 135,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd2( 136,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_15( 137,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd3( 138,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_16( 139,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd4( 140,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_17( 141,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd5( 142,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_18( 143,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd6( 144,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_19( 145,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd7( 146,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_110( 147,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd8( 148,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_111( 149,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd9( 150,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_112( 151,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd10( 152,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_113( 153,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd11( 154,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_114( 155,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd12( 156,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_115( 157,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd13( 158,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_116( 159,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd14( 160,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_117( 161,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd15( 162,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_118( 163,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd16( 164,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_119( 165,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd17( 166,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_120( 167,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd18( 168,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_121( 169,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd19( 170,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_122( 171,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd20( 172,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_123( 173,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd21( 174,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_124( 175,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd22( 176,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_125( 177,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd23( 178,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_126( 179,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd24( 180,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_127( 181,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd25( 182,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_128( 183,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd26( 184,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_129( 185,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd27( 186,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_130( 187,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd28( 188,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_rd29( 189,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_12( 190,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd30( 191,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_13( 192,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd31( 193,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_14( 194,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd1( 195,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_15( 196,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd2( 197,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_16( 198,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd3( 199,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_17( 200,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd4( 201,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_18( 202,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd5( 203,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_19( 204,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd6( 205,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_110( 206,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
  TEST_VLSE_OP_rd7( 207,  vlse16.v,  16 , 0xf00f, 0x0ff0 ,  -4  , 2 + tdat4);
  TEST_VLSE_OP_111( 208,  vlse16.v,  16 , 0x00ff, 0x00ff ,  2  , 0 + tdat);
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
    

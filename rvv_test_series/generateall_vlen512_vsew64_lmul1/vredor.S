#----------------------------------------------------------------------------- 
    # vredor.S
    #-----------------------------------------------------------------------------
    #
    # Test vredor instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vredor)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VV_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v2, x7; \
            inst v24, v16, v2, v0.t;  \
        )
#define TEST_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v3, x7; \
            inst v24, v16, v3, v0.t;  \
        )
#define TEST_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v4, x7; \
            inst v24, v16, v4, v0.t;  \
        )
#define TEST_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v5, x7; \
            inst v24, v16, v5, v0.t;  \
        )
#define TEST_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v6, x7; \
            inst v24, v16, v6, v0.t;  \
        )
#define TEST_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v7, x7; \
            inst v24, v16, v7, v0.t;  \
        )
#define TEST_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v9, x7; \
            inst v24, v16, v9, v0.t;  \
        )
#define TEST_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v10, x7; \
            inst v24, v16, v10, v0.t;  \
        )
#define TEST_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v11, x7; \
            inst v24, v16, v11, v0.t;  \
        )
#define TEST_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v12, x7; \
            inst v24, v16, v12, v0.t;  \
        )
#define TEST_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v13, x7; \
            inst v24, v16, v13, v0.t;  \
        )
#define TEST_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v14, x7; \
            inst v24, v16, v14, v0.t;  \
        )
#define TEST_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v15, x7; \
            inst v24, v16, v15, v0.t;  \
        )
#define TEST_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v17, x7; \
            inst v24, v16, v17, v0.t;  \
        )
#define TEST_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v18, x7; \
            inst v24, v16, v18, v0.t;  \
        )
#define TEST_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v19, x7; \
            inst v24, v16, v19, v0.t;  \
        )
#define TEST_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v20, x7; \
            inst v24, v16, v20, v0.t;  \
        )
#define TEST_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v21, x7; \
            inst v24, v16, v21, v0.t;  \
        )
#define TEST_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v22, x7; \
            inst v24, v16, v22, v0.t;  \
        )
#define TEST_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v23, x7; \
            inst v24, v16, v23, v0.t;  \
        )
#define TEST_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v25, x7; \
            inst v24, v16, v25, v0.t;  \
        )
#define TEST_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v26, x7; \
            inst v24, v16, v26, v0.t;  \
        )
#define TEST_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v27, x7; \
            inst v24, v16, v27, v0.t;  \
        )
#define TEST_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v28, x7; \
            inst v24, v16, v28, v0.t;  \
        )
#define TEST_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v29, x7; \
            inst v24, v16, v29, v0.t;  \
        )
#define TEST_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v30, x7; \
            inst v24, v16, v30, v0.t;  \
        )
#define TEST_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v31, x7; \
            inst v24, v16, v31, v0.t;  \
        )
#define TEST_VV_OP_rd1( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v1, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v1, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd2( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v2, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v2, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd3( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v3, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v3, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd4( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v4, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v4, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd5( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v5, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v5, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd6( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v6, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v6, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd7( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v7, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v7, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd9( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v9, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v9, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd10( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v10, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v10, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd11( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v11, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v11, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd12( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v12, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v12, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd13( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v13, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v13, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd14( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v14, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v14, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd15( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v15, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v15, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd17( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v17, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v17, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd18( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v18, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v18, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd19( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v19, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v19, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd20( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v20, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v20, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd21( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v21, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v21, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd22( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v22, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v22, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd23( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v23, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v23, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd25( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v25, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v25, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd26( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v26, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v26, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd27( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v27, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v27, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd28( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v28, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v28, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd29( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v29, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v29, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd30( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v30, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v30, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd31( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v31, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v31, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd8( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v8, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v24, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v16, x7; \
            inst v8, v24, v16, v0.t; \
        )
#define TEST_VV_OP_rd16( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v16, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v8, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v24, x7; \
            inst v16, v8, v24, v0.t; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VV_OP( 2,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP( 3,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffd, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP( 4,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffb, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP( 5,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffff7, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP( 6,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffef, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP( 7,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffdf, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP( 8,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffbf, 0xffffffffffffffbf, 0xffffffffffffffbf );
  TEST_VV_OP( 9,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffff7f, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP( 10,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffeff, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP( 11,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffdff, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP( 12,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffbff, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP( 13,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff7ff, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP( 14,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffefff, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP( 15,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffdfff, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP( 16,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffbfff, 0xffffffffffffbfff, 0xffffffffffffbfff );
  TEST_VV_OP( 17,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff7fff, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP( 18,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffeffff, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP( 19,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffdffff, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP( 20,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffbffff, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP( 21,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffff7ffff, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP( 22,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffefffff, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP( 23,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffdfffff, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP( 24,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffbfffff, 0xffffffffffbfffff, 0xffffffffffbfffff );
  TEST_VV_OP( 25,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffff7fffff, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_VV_OP( 26,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffeffffff, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP( 27,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffdffffff, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP( 28,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffbffffff, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP( 29,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffff7ffffff, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP( 30,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffefffffff, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP( 31,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffdfffffff, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP( 32,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffbfffffff, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP( 33,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7fffffff, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP( 34,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffeffffffff, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP( 35,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffdffffffff, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP( 36,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffbffffffff, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP( 37,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff7ffffffff, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP( 38,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffefffffffff, 0xffffffefffffffff, 0xffffffefffffffff );
  TEST_VV_OP( 39,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffdfffffffff, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP( 40,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbfffffffff, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP( 41,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffff7fffffffff, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP( 42,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffeffffffffff, 0xfffffeffffffffff, 0xfffffeffffffffff );
  TEST_VV_OP( 43,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdffffffffff, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP( 44,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbffffffffff, 0xfffffbffffffffff, 0xfffffbffffffffff );
  TEST_VV_OP( 45,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7ffffffffff, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP( 46,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffefffffffffff, 0xffffefffffffffff, 0xffffefffffffffff );
  TEST_VV_OP( 47,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdfffffffffff, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP( 48,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbfffffffffff, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP( 49,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff7fffffffffff, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP( 50,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffeffffffffffff, 0xfffeffffffffffff, 0xfffeffffffffffff );
  TEST_VV_OP( 51,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdffffffffffff, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP( 52,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbffffffffffff, 0xfffbffffffffffff, 0xfffbffffffffffff );
  TEST_VV_OP( 53,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7ffffffffffff, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP( 54,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0xffefffffffffffff, 0xffefffffffffffff );
  TEST_VV_OP( 55,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdfffffffffffff, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP( 56,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffbfffffffffffff, 0xffbfffffffffffff, 0xffbfffffffffffff );
  TEST_VV_OP( 57,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffffffffffff, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP( 58,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feffffffffffffff, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP( 59,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdffffffffffffff, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP( 60,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbffffffffffffff, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP( 61,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7ffffffffffffff, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP( 62,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efffffffffffffff, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP( 63,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfffffffffffffff, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP( 64,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bfffffffffffffff, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP( 65,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffffffffffffff, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP( 66,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP( 67,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 68,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 69,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP( 70,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP( 71,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP( 72,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP( 73,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP( 74,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP( 75,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP( 76,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400, 0x00000000000400, 0x00000000000400 );
  TEST_VV_OP( 77,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP( 78,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP( 79,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP( 80,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP( 81,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP( 82,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP( 83,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP( 84,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000, 0x00000000040000, 0x00000000040000 );
  TEST_VV_OP( 85,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP( 86,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP( 87,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000, 0x00000000200000, 0x00000000200000 );
  TEST_VV_OP( 88,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP( 89,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP( 90,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP( 91,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP( 92,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP( 93,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP( 94,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP( 95,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP( 96,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP( 97,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP( 98,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000, 0x00000100000000, 0x00000100000000 );
  TEST_VV_OP( 99,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP( 100,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP( 101,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000, 0x00000800000000, 0x00000800000000 );
  TEST_VV_OP( 102,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000, 0x00001000000000, 0x00001000000000 );
  TEST_VV_OP( 103,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000, 0x00002000000000, 0x00002000000000 );
  TEST_VV_OP( 104,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000, 0x00004000000000, 0x00004000000000 );
  TEST_VV_OP( 105,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000, 0x00008000000000, 0x00008000000000 );
  TEST_VV_OP( 106,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000, 0x00010000000000, 0x00010000000000 );
  TEST_VV_OP( 107,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000000, 0x00020000000000, 0x00020000000000 );
  TEST_VV_OP( 108,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000000, 0x00040000000000, 0x00040000000000 );
  TEST_VV_OP( 109,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000000, 0x00080000000000, 0x00080000000000 );
  TEST_VV_OP( 110,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000, 0x00100000000000, 0x00100000000000 );
  TEST_VV_OP( 111,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000, 0x00200000000000, 0x00200000000000 );
  TEST_VV_OP( 112,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000000, 0x00400000000000, 0x00400000000000 );
  TEST_VV_OP( 113,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000000, 0x00800000000000, 0x00800000000000 );
  TEST_VV_OP( 114,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000, 0x01000000000000, 0x01000000000000 );
  TEST_VV_OP( 115,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000, 0x02000000000000, 0x02000000000000 );
  TEST_VV_OP( 116,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000, 0x04000000000000, 0x04000000000000 );
  TEST_VV_OP( 117,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000, 0x08000000000000, 0x08000000000000 );
  TEST_VV_OP( 118,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000, 0x10000000000000, 0x10000000000000 );
  TEST_VV_OP( 119,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000000000, 0x20000000000000, 0x20000000000000 );
  TEST_VV_OP( 120,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000000000, 0x40000000000000, 0x40000000000000 );
  TEST_VV_OP( 121,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000000000, 0x80000000000000, 0x80000000000000 );
  TEST_VV_OP( 122,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000, 0x100000000000000, 0x100000000000000 );
  TEST_VV_OP( 123,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000000, 0x200000000000000, 0x200000000000000 );
  TEST_VV_OP( 124,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000000000, 0x400000000000000, 0x400000000000000 );
  TEST_VV_OP( 125,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000000000, 0x800000000000000, 0x800000000000000 );
  TEST_VV_OP( 126,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000, 0x1000000000000000, 0x1000000000000000 );
  TEST_VV_OP( 127,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000000, 0x2000000000000000, 0x2000000000000000 );
  TEST_VV_OP( 128,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000, 0x4000000000000000, 0x4000000000000000 );
  TEST_VV_OP( 129,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000, 0x8000000000000000, 0x8000000000000000 );
  TEST_VV_OP( 130,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 131,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 132,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 133,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000005, 0x00000000000003 );
  TEST_VV_OP( 134,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x3333333333333333, 0x00000000000003 );
  TEST_VV_OP( 135,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666666, 0x00000000000003 );
  TEST_VV_OP( 136,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0xffffffff4afb0ccd, 0x00000000000003 );
  TEST_VV_OP( 137,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 138,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x000000b504f333, 0x00000000000003 );
  TEST_VV_OP( 139,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000002, 0x00000000000003 );
  TEST_VV_OP( 140,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555554, 0x00000000000003 );
  TEST_VV_OP( 141,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000000, 0x00000000000003 );
  TEST_VV_OP( 142,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000004, 0x00000000000003 );
  TEST_VV_OP( 143,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x3333333333333332, 0x00000000000003 );
  TEST_VV_OP( 144,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 145,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 146,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbba, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 147,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555556, 0x00000000000003 );
  TEST_VV_OP( 148,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab, 0x00000000000003 );
  TEST_VV_OP( 149,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000006, 0x00000000000003 );
  TEST_VV_OP( 150,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x3333333333333334, 0x00000000000003 );
  TEST_VV_OP( 151,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x00000000000003 );
  TEST_VV_OP( 152,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0xffffffff4afb0cce, 0x00000000000003 );
  TEST_VV_OP( 153,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f334, 0x000000b504f334, 0x00000000000000 );
  TEST_VV_OP( 154,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 155,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x5555555555555555, 0x5555555555555555 );
  TEST_VV_OP( 156,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_VV_OP( 157,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x00000000000005, 0x5555555555555555 );
  TEST_VV_OP( 158,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333333, 0x5555555555555555 );
  TEST_VV_OP( 159,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666666, 0x5555555555555555 );
  TEST_VV_OP( 160,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddd, 0xffffffff4afb0ccd, 0x5555555555555555 );
  TEST_VV_OP( 161,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x000000b504f333, 0x5555555555555555 );
  TEST_VV_OP( 162,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x00000000000002, 0x5555555555555555 );
  TEST_VV_OP( 163,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x5555555555555554, 0x5555555555555555 );
  TEST_VV_OP( 164,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x00000000000000, 0x5555555555555555 );
  TEST_VV_OP( 165,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x00000000000004, 0x5555555555555555 );
  TEST_VV_OP( 166,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333332, 0x5555555555555555 );
  TEST_VV_OP( 167,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 168,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x000000b504f332, 0x5555555555555555 );
  TEST_VV_OP( 169,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555556, 0x5555555555555555 );
  TEST_VV_OP( 170,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xaaaaaaaaaaaaaaab, 0x5555555555555555 );
  TEST_VV_OP( 171,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x00000000000006, 0x5555555555555555 );
  TEST_VV_OP( 172,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x3333333333333334, 0x5555555555555555 );
  TEST_VV_OP( 173,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666667, 0x5555555555555555 );
  TEST_VV_OP( 174,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddf, 0xffffffff4afb0cce, 0x5555555555555555 );
  TEST_VV_OP( 175,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f775, 0x000000b504f334, 0x5555555555555555 );
  TEST_VV_OP( 176,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x00000000000003, 0x5555555555555555 );
  TEST_VV_OP( 177,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 178,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 179,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0x00000000000005, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 180,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbb, 0x3333333333333333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 181,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeee, 0x6666666666666666, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 182,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeef, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 183,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbb, 0x000000b504f333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 184,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaa, 0x00000000000002, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 185,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0x5555555555555554, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 186,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaa, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 187,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaae, 0x00000000000004, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 188,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbba, 0x3333333333333332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 189,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0x6666666666666665, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 190,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaa, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 191,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbba, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 192,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0x5555555555555556, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 193,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 194,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaae, 0x00000000000006, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 195,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbe, 0x3333333333333334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 196,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0x6666666666666667, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 197,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeee, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 198,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbe, 0x000000b504f334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 199,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000003, 0x00000000000005 );
  TEST_VV_OP( 200,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x5555555555555555, 0x00000000000005 );
  TEST_VV_OP( 201,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0xaaaaaaaaaaaaaaaa, 0x00000000000005 );
  TEST_VV_OP( 202,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000000000005 );
  TEST_VV_OP( 203,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x3333333333333333, 0x00000000000005 );
  TEST_VV_OP( 204,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666666, 0x00000000000005 );
  TEST_VV_OP( 205,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccd, 0xffffffff4afb0ccd, 0x00000000000005 );
  TEST_VV_OP( 206,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x000000b504f333, 0x00000000000005 );
  TEST_VV_OP( 207,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000002, 0x00000000000005 );
  TEST_VV_OP( 208,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x5555555555555554, 0x00000000000005 );
  TEST_VV_OP( 209,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000000, 0x00000000000005 );
  TEST_VV_OP( 210,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000004, 0x00000000000005 );
  TEST_VV_OP( 211,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x3333333333333332, 0x00000000000005 );
  TEST_VV_OP( 212,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666665, 0x6666666666666665, 0x00000000000005 );
  TEST_VV_OP( 213,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x000000b504f332, 0x00000000000005 );
  TEST_VV_OP( 214,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555556, 0x00000000000005 );
  TEST_VV_OP( 215,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0xaaaaaaaaaaaaaaab, 0x00000000000005 );
  TEST_VV_OP( 216,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000006, 0x00000000000005 );
  TEST_VV_OP( 217,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333335, 0x3333333333333334, 0x00000000000005 );
  TEST_VV_OP( 218,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x00000000000005 );
  TEST_VV_OP( 219,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0xffffffff4afb0cce, 0x00000000000005 );
  TEST_VV_OP( 220,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f335, 0x000000b504f334, 0x00000000000005 );
  TEST_VV_OP( 221,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x00000000000003, 0x3333333333333333 );
  TEST_VV_OP( 222,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555555, 0x3333333333333333 );
  TEST_VV_OP( 223,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbb, 0xaaaaaaaaaaaaaaaa, 0x3333333333333333 );
  TEST_VV_OP( 224,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x00000000000005, 0x3333333333333333 );
  TEST_VV_OP( 225,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x3333333333333333, 0x3333333333333333 );
  TEST_VV_OP( 226,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666666, 0x3333333333333333 );
  TEST_VV_OP( 227,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3fff, 0xffffffff4afb0ccd, 0x3333333333333333 );
  TEST_VV_OP( 228,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f333, 0x000000b504f333, 0x3333333333333333 );
  TEST_VV_OP( 229,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x00000000000002, 0x3333333333333333 );
  TEST_VV_OP( 230,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555554, 0x3333333333333333 );
  TEST_VV_OP( 231,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x00000000000000, 0x3333333333333333 );
  TEST_VV_OP( 232,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x00000000000004, 0x3333333333333333 );
  TEST_VV_OP( 233,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x3333333333333332, 0x3333333333333333 );
  TEST_VV_OP( 234,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666665, 0x3333333333333333 );
  TEST_VV_OP( 235,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f333, 0x000000b504f332, 0x3333333333333333 );
  TEST_VV_OP( 236,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555556, 0x3333333333333333 );
  TEST_VV_OP( 237,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbb, 0xaaaaaaaaaaaaaaab, 0x3333333333333333 );
  TEST_VV_OP( 238,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x00000000000006, 0x3333333333333333 );
  TEST_VV_OP( 239,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x3333333333333334, 0x3333333333333333 );
  TEST_VV_OP( 240,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666667, 0x3333333333333333 );
  TEST_VV_OP( 241,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3fff, 0xffffffff4afb0cce, 0x3333333333333333 );
  TEST_VV_OP( 242,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f337, 0x000000b504f334, 0x3333333333333333 );
  TEST_VV_OP( 243,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000003, 0x6666666666666666 );
  TEST_VV_OP( 244,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555555, 0x6666666666666666 );
  TEST_VV_OP( 245,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeee, 0xaaaaaaaaaaaaaaaa, 0x6666666666666666 );
  TEST_VV_OP( 246,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000005, 0x6666666666666666 );
  TEST_VV_OP( 247,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333333, 0x6666666666666666 );
  TEST_VV_OP( 248,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x6666666666666666, 0x6666666666666666 );
  TEST_VV_OP( 249,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0xffffffff4afb0ccd, 0x6666666666666666 );
  TEST_VV_OP( 250,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x000000b504f333, 0x6666666666666666 );
  TEST_VV_OP( 251,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x00000000000002, 0x6666666666666666 );
  TEST_VV_OP( 252,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x5555555555555554, 0x6666666666666666 );
  TEST_VV_OP( 253,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x00000000000000, 0x6666666666666666 );
  TEST_VV_OP( 254,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x00000000000004, 0x6666666666666666 );
  TEST_VV_OP( 255,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x3333333333333332, 0x6666666666666666 );
  TEST_VV_OP( 256,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666665, 0x6666666666666666 );
  TEST_VV_OP( 257,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f776, 0x000000b504f332, 0x6666666666666666 );
  TEST_VV_OP( 258,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x5555555555555556, 0x6666666666666666 );
  TEST_VV_OP( 259,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0xaaaaaaaaaaaaaaab, 0x6666666666666666 );
  TEST_VV_OP( 260,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x00000000000006, 0x6666666666666666 );
  TEST_VV_OP( 261,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x3333333333333334, 0x6666666666666666 );
  TEST_VV_OP( 262,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x6666666666666666 );
  TEST_VV_OP( 263,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eee, 0xffffffff4afb0cce, 0x6666666666666666 );
  TEST_VV_OP( 264,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f776, 0x000000b504f334, 0x6666666666666666 );
  TEST_VV_OP( 265,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0x00000000000003, 0xffffffff4afb0ccd );
  TEST_VV_OP( 266,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddd, 0x5555555555555555, 0xffffffff4afb0ccd );
  TEST_VV_OP( 267,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeef, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0ccd );
  TEST_VV_OP( 268,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccd, 0x00000000000005, 0xffffffff4afb0ccd );
  TEST_VV_OP( 269,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3fff, 0x3333333333333333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 270,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0x6666666666666666, 0xffffffff4afb0ccd );
  TEST_VV_OP( 271,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccd, 0xffffffff4afb0ccd, 0xffffffff4afb0ccd );
  TEST_VV_OP( 272,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0x000000b504f333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 273,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0x00000000000002, 0xffffffff4afb0ccd );
  TEST_VV_OP( 274,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddd, 0x5555555555555554, 0xffffffff4afb0ccd );
  TEST_VV_OP( 275,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccd, 0x00000000000000, 0xffffffff4afb0ccd );
  TEST_VV_OP( 276,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccd, 0x00000000000004, 0xffffffff4afb0ccd );
  TEST_VV_OP( 277,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3fff, 0x3333333333333332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 278,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eed, 0x6666666666666665, 0xffffffff4afb0ccd );
  TEST_VV_OP( 279,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0x000000b504f332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 280,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddf, 0x5555555555555556, 0xffffffff4afb0ccd );
  TEST_VV_OP( 281,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeef, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0ccd );
  TEST_VV_OP( 282,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0x00000000000006, 0xffffffff4afb0ccd );
  TEST_VV_OP( 283,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3ffd, 0x3333333333333334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 284,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0x6666666666666667, 0xffffffff4afb0ccd );
  TEST_VV_OP( 285,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0xffffffff4afb0cce, 0xffffffff4afb0ccd );
  TEST_VV_OP( 286,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffd, 0x000000b504f334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 287,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x00000000000003, 0x000000b504f333 );
  TEST_VV_OP( 288,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x5555555555555555, 0x000000b504f333 );
  TEST_VV_OP( 289,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbb, 0xaaaaaaaaaaaaaaaa, 0x000000b504f333 );
  TEST_VV_OP( 290,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x00000000000005, 0x000000b504f333 );
  TEST_VV_OP( 291,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f333, 0x3333333333333333, 0x000000b504f333 );
  TEST_VV_OP( 292,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x6666666666666666, 0x000000b504f333 );
  TEST_VV_OP( 293,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xffffffff4afb0ccd, 0x000000b504f333 );
  TEST_VV_OP( 294,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x000000b504f333, 0x000000b504f333 );
  TEST_VV_OP( 295,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x00000000000002, 0x000000b504f333 );
  TEST_VV_OP( 296,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x5555555555555554, 0x000000b504f333 );
  TEST_VV_OP( 297,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x00000000000000, 0x000000b504f333 );
  TEST_VV_OP( 298,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x00000000000004, 0x000000b504f333 );
  TEST_VV_OP( 299,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f333, 0x3333333333333332, 0x000000b504f333 );
  TEST_VV_OP( 300,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x6666666666666665, 0x000000b504f333 );
  TEST_VV_OP( 301,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x000000b504f332, 0x000000b504f333 );
  TEST_VV_OP( 302,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x5555555555555556, 0x000000b504f333 );
  TEST_VV_OP( 303,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbb, 0xaaaaaaaaaaaaaaab, 0x000000b504f333 );
  TEST_VV_OP( 304,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x00000000000006, 0x000000b504f333 );
  TEST_VV_OP( 305,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f337, 0x3333333333333334, 0x000000b504f333 );
  TEST_VV_OP( 306,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x6666666666666667, 0x000000b504f333 );
  TEST_VV_OP( 307,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xffffffff4afb0cce, 0x000000b504f333 );
  TEST_VV_OP( 308,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x000000b504f334, 0x000000b504f333 );
  TEST_VV_OP( 309,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000002 );
  TEST_VV_OP( 310,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555555, 0x00000000000002 );
  TEST_VV_OP( 311,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x00000000000002 );
  TEST_VV_OP( 312,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000005, 0x00000000000002 );
  TEST_VV_OP( 313,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x3333333333333333, 0x00000000000002 );
  TEST_VV_OP( 314,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x6666666666666666, 0x00000000000002 );
  TEST_VV_OP( 315,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0xffffffff4afb0ccd, 0x00000000000002 );
  TEST_VV_OP( 316,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x000000b504f333, 0x00000000000002 );
  TEST_VV_OP( 317,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 318,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555554, 0x00000000000002 );
  TEST_VV_OP( 319,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000000, 0x00000000000002 );
  TEST_VV_OP( 320,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000004, 0x00000000000002 );
  TEST_VV_OP( 321,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333332, 0x3333333333333332, 0x00000000000002 );
  TEST_VV_OP( 322,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666665, 0x00000000000002 );
  TEST_VV_OP( 323,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f332, 0x000000b504f332, 0x00000000000002 );
  TEST_VV_OP( 324,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555556, 0x00000000000002 );
  TEST_VV_OP( 325,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab, 0x00000000000002 );
  TEST_VV_OP( 326,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000000000002 );
  TEST_VV_OP( 327,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x3333333333333334, 0x00000000000002 );
  TEST_VV_OP( 328,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x00000000000002 );
  TEST_VV_OP( 329,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0xffffffff4afb0cce, 0x00000000000002 );
  TEST_VV_OP( 330,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x000000b504f334, 0x00000000000002 );
  TEST_VV_OP( 331,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x00000000000003, 0x5555555555555554 );
  TEST_VV_OP( 332,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x5555555555555555, 0x5555555555555554 );
  TEST_VV_OP( 333,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xaaaaaaaaaaaaaaaa, 0x5555555555555554 );
  TEST_VV_OP( 334,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x00000000000005, 0x5555555555555554 );
  TEST_VV_OP( 335,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333333, 0x5555555555555554 );
  TEST_VV_OP( 336,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x6666666666666666, 0x5555555555555554 );
  TEST_VV_OP( 337,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddd, 0xffffffff4afb0ccd, 0x5555555555555554 );
  TEST_VV_OP( 338,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x000000b504f333, 0x5555555555555554 );
  TEST_VV_OP( 339,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x00000000000002, 0x5555555555555554 );
  TEST_VV_OP( 340,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555554, 0x5555555555555554, 0x5555555555555554 );
  TEST_VV_OP( 341,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555554, 0x00000000000000, 0x5555555555555554 );
  TEST_VV_OP( 342,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555554, 0x00000000000004, 0x5555555555555554 );
  TEST_VV_OP( 343,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x3333333333333332, 0x5555555555555554 );
  TEST_VV_OP( 344,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x6666666666666665, 0x5555555555555554 );
  TEST_VV_OP( 345,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f776, 0x000000b504f332, 0x5555555555555554 );
  TEST_VV_OP( 346,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555556, 0x5555555555555554 );
  TEST_VV_OP( 347,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xaaaaaaaaaaaaaaab, 0x5555555555555554 );
  TEST_VV_OP( 348,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x00000000000006, 0x5555555555555554 );
  TEST_VV_OP( 349,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777774, 0x3333333333333334, 0x5555555555555554 );
  TEST_VV_OP( 350,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666667, 0x5555555555555554 );
  TEST_VV_OP( 351,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5dde, 0xffffffff4afb0cce, 0x5555555555555554 );
  TEST_VV_OP( 352,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f774, 0x000000b504f334, 0x5555555555555554 );
  TEST_VV_OP( 353,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000000 );
  TEST_VV_OP( 354,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x5555555555555555, 0x00000000000000 );
  TEST_VV_OP( 355,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x00000000000000 );
  TEST_VV_OP( 356,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000000000000 );
  TEST_VV_OP( 357,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x3333333333333333, 0x00000000000000 );
  TEST_VV_OP( 358,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x6666666666666666, 0x00000000000000 );
  TEST_VV_OP( 359,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccd, 0xffffffff4afb0ccd, 0x00000000000000 );
  TEST_VV_OP( 360,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x000000b504f333, 0x00000000000000 );
  TEST_VV_OP( 361,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000000 );
  TEST_VV_OP( 362,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555554, 0x5555555555555554, 0x00000000000000 );
  TEST_VV_OP( 363,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000000 );
  TEST_VV_OP( 364,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000000 );
  TEST_VV_OP( 365,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333332, 0x3333333333333332, 0x00000000000000 );
  TEST_VV_OP( 366,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666665, 0x6666666666666665, 0x00000000000000 );
  TEST_VV_OP( 367,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f332, 0x000000b504f332, 0x00000000000000 );
  TEST_VV_OP( 368,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555556, 0x00000000000000 );
  TEST_VV_OP( 369,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab, 0x00000000000000 );
  TEST_VV_OP( 370,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000000000000 );
  TEST_VV_OP( 371,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333334, 0x3333333333333334, 0x00000000000000 );
  TEST_VV_OP( 372,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x00000000000000 );
  TEST_VV_OP( 373,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 374,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f334, 0x000000b504f334, 0x00000000000000 );
  TEST_VV_OP( 375,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000003, 0x00000000000004 );
  TEST_VV_OP( 376,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555555, 0x5555555555555555, 0x00000000000004 );
  TEST_VV_OP( 377,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaae, 0xaaaaaaaaaaaaaaaa, 0x00000000000004 );
  TEST_VV_OP( 378,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000000000004 );
  TEST_VV_OP( 379,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x3333333333333333, 0x00000000000004 );
  TEST_VV_OP( 380,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x6666666666666666, 0x00000000000004 );
  TEST_VV_OP( 381,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccd, 0xffffffff4afb0ccd, 0x00000000000004 );
  TEST_VV_OP( 382,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x000000b504f333, 0x00000000000004 );
  TEST_VV_OP( 383,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000002, 0x00000000000004 );
  TEST_VV_OP( 384,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555554, 0x5555555555555554, 0x00000000000004 );
  TEST_VV_OP( 385,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000000, 0x00000000000004 );
  TEST_VV_OP( 386,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 387,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x3333333333333332, 0x00000000000004 );
  TEST_VV_OP( 388,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666665, 0x6666666666666665, 0x00000000000004 );
  TEST_VV_OP( 389,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x000000b504f332, 0x00000000000004 );
  TEST_VV_OP( 390,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555556, 0x00000000000004 );
  TEST_VV_OP( 391,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0xaaaaaaaaaaaaaaab, 0x00000000000004 );
  TEST_VV_OP( 392,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000000000004 );
  TEST_VV_OP( 393,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333334, 0x3333333333333334, 0x00000000000004 );
  TEST_VV_OP( 394,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x00000000000004 );
  TEST_VV_OP( 395,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0xffffffff4afb0cce, 0x00000000000004 );
  TEST_VV_OP( 396,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f334, 0x000000b504f334, 0x00000000000004 );
  TEST_VV_OP( 397,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x00000000000003, 0x3333333333333332 );
  TEST_VV_OP( 398,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555555, 0x3333333333333332 );
  TEST_VV_OP( 399,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbba, 0xaaaaaaaaaaaaaaaa, 0x3333333333333332 );
  TEST_VV_OP( 400,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x00000000000005, 0x3333333333333332 );
  TEST_VV_OP( 401,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333333, 0x3333333333333333, 0x3333333333333332 );
  TEST_VV_OP( 402,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x6666666666666666, 0x3333333333333332 );
  TEST_VV_OP( 403,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3fff, 0xffffffff4afb0ccd, 0x3333333333333332 );
  TEST_VV_OP( 404,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f333, 0x000000b504f333, 0x3333333333333332 );
  TEST_VV_OP( 405,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333332, 0x00000000000002, 0x3333333333333332 );
  TEST_VV_OP( 406,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x5555555555555554, 0x3333333333333332 );
  TEST_VV_OP( 407,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333332, 0x00000000000000, 0x3333333333333332 );
  TEST_VV_OP( 408,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x00000000000004, 0x3333333333333332 );
  TEST_VV_OP( 409,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333332, 0x3333333333333332, 0x3333333333333332 );
  TEST_VV_OP( 410,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666665, 0x3333333333333332 );
  TEST_VV_OP( 411,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f332, 0x000000b504f332, 0x3333333333333332 );
  TEST_VV_OP( 412,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x5555555555555556, 0x3333333333333332 );
  TEST_VV_OP( 413,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbb, 0xaaaaaaaaaaaaaaab, 0x3333333333333332 );
  TEST_VV_OP( 414,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x00000000000006, 0x3333333333333332 );
  TEST_VV_OP( 415,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x3333333333333334, 0x3333333333333332 );
  TEST_VV_OP( 416,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666667, 0x3333333333333332 );
  TEST_VV_OP( 417,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3ffe, 0xffffffff4afb0cce, 0x3333333333333332 );
  TEST_VV_OP( 418,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f336, 0x000000b504f334, 0x3333333333333332 );
  TEST_VV_OP( 419,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000003, 0x6666666666666665 );
  TEST_VV_OP( 420,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x5555555555555555, 0x6666666666666665 );
  TEST_VV_OP( 421,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0xaaaaaaaaaaaaaaaa, 0x6666666666666665 );
  TEST_VV_OP( 422,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666665, 0x00000000000005, 0x6666666666666665 );
  TEST_VV_OP( 423,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333333, 0x6666666666666665 );
  TEST_VV_OP( 424,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666666, 0x6666666666666665 );
  TEST_VV_OP( 425,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eed, 0xffffffff4afb0ccd, 0x6666666666666665 );
  TEST_VV_OP( 426,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x000000b504f333, 0x6666666666666665 );
  TEST_VV_OP( 427,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000002, 0x6666666666666665 );
  TEST_VV_OP( 428,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x5555555555555554, 0x6666666666666665 );
  TEST_VV_OP( 429,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666665, 0x00000000000000, 0x6666666666666665 );
  TEST_VV_OP( 430,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666665, 0x00000000000004, 0x6666666666666665 );
  TEST_VV_OP( 431,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333332, 0x6666666666666665 );
  TEST_VV_OP( 432,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666665, 0x6666666666666665, 0x6666666666666665 );
  TEST_VV_OP( 433,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x000000b504f332, 0x6666666666666665 );
  TEST_VV_OP( 434,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555556, 0x6666666666666665 );
  TEST_VV_OP( 435,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0xaaaaaaaaaaaaaaab, 0x6666666666666665 );
  TEST_VV_OP( 436,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000006, 0x6666666666666665 );
  TEST_VV_OP( 437,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x3333333333333334, 0x6666666666666665 );
  TEST_VV_OP( 438,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x6666666666666665 );
  TEST_VV_OP( 439,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0xffffffff4afb0cce, 0x6666666666666665 );
  TEST_VV_OP( 440,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f775, 0x000000b504f334, 0x6666666666666665 );
  TEST_VV_OP( 441,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x00000000000003, 0x000000b504f332 );
  TEST_VV_OP( 442,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x5555555555555555, 0x000000b504f332 );
  TEST_VV_OP( 443,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbba, 0xaaaaaaaaaaaaaaaa, 0x000000b504f332 );
  TEST_VV_OP( 444,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x00000000000005, 0x000000b504f332 );
  TEST_VV_OP( 445,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f333, 0x3333333333333333, 0x000000b504f332 );
  TEST_VV_OP( 446,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f776, 0x6666666666666666, 0x000000b504f332 );
  TEST_VV_OP( 447,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xffffffff4afb0ccd, 0x000000b504f332 );
  TEST_VV_OP( 448,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f333, 0x000000b504f333, 0x000000b504f332 );
  TEST_VV_OP( 449,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f332, 0x00000000000002, 0x000000b504f332 );
  TEST_VV_OP( 450,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f776, 0x5555555555555554, 0x000000b504f332 );
  TEST_VV_OP( 451,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f332, 0x00000000000000, 0x000000b504f332 );
  TEST_VV_OP( 452,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x00000000000004, 0x000000b504f332 );
  TEST_VV_OP( 453,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f332, 0x3333333333333332, 0x000000b504f332 );
  TEST_VV_OP( 454,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x6666666666666665, 0x000000b504f332 );
  TEST_VV_OP( 455,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f332, 0x000000b504f332, 0x000000b504f332 );
  TEST_VV_OP( 456,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f776, 0x5555555555555556, 0x000000b504f332 );
  TEST_VV_OP( 457,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbb, 0xaaaaaaaaaaaaaaab, 0x000000b504f332 );
  TEST_VV_OP( 458,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x00000000000006, 0x000000b504f332 );
  TEST_VV_OP( 459,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f336, 0x3333333333333334, 0x000000b504f332 );
  TEST_VV_OP( 460,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x6666666666666667, 0x000000b504f332 );
  TEST_VV_OP( 461,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xffffffff4afb0cce, 0x000000b504f332 );
  TEST_VV_OP( 462,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x000000b504f334, 0x000000b504f332 );
  TEST_VV_OP( 463,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x00000000000003, 0x5555555555555556 );
  TEST_VV_OP( 464,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555555, 0x5555555555555556 );
  TEST_VV_OP( 465,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xaaaaaaaaaaaaaaaa, 0x5555555555555556 );
  TEST_VV_OP( 466,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x00000000000005, 0x5555555555555556 );
  TEST_VV_OP( 467,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333333, 0x5555555555555556 );
  TEST_VV_OP( 468,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x6666666666666666, 0x5555555555555556 );
  TEST_VV_OP( 469,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddf, 0xffffffff4afb0ccd, 0x5555555555555556 );
  TEST_VV_OP( 470,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f777, 0x000000b504f333, 0x5555555555555556 );
  TEST_VV_OP( 471,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x00000000000002, 0x5555555555555556 );
  TEST_VV_OP( 472,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555554, 0x5555555555555556 );
  TEST_VV_OP( 473,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x00000000000000, 0x5555555555555556 );
  TEST_VV_OP( 474,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x00000000000004, 0x5555555555555556 );
  TEST_VV_OP( 475,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x3333333333333332, 0x5555555555555556 );
  TEST_VV_OP( 476,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666665, 0x5555555555555556 );
  TEST_VV_OP( 477,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f776, 0x000000b504f332, 0x5555555555555556 );
  TEST_VV_OP( 478,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555556, 0x5555555555555556 );
  TEST_VV_OP( 479,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0xaaaaaaaaaaaaaaab, 0x5555555555555556 );
  TEST_VV_OP( 480,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x00000000000006, 0x5555555555555556 );
  TEST_VV_OP( 481,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x3333333333333334, 0x5555555555555556 );
  TEST_VV_OP( 482,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666667, 0x5555555555555556 );
  TEST_VV_OP( 483,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5dde, 0xffffffff4afb0cce, 0x5555555555555556 );
  TEST_VV_OP( 484,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f776, 0x000000b504f334, 0x5555555555555556 );
  TEST_VV_OP( 485,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0x00000000000003, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 486,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0x5555555555555555, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 487,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 488,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0x00000000000005, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 489,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbb, 0x3333333333333333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 490,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0x6666666666666666, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 491,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeef, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 492,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbb, 0x000000b504f333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 493,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0x00000000000002, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 494,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0x5555555555555554, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 495,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0x00000000000000, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 496,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0x00000000000004, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 497,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbb, 0x3333333333333332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 498,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0x6666666666666665, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 499,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbb, 0x000000b504f332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 500,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0x5555555555555556, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 501,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 502,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0x00000000000006, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 503,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbf, 0x3333333333333334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 504,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0x6666666666666667, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 505,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeef, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 506,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbf, 0x000000b504f334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 507,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000003, 0x00000000000006 );
  TEST_VV_OP( 508,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555557, 0x5555555555555555, 0x00000000000006 );
  TEST_VV_OP( 509,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaae, 0xaaaaaaaaaaaaaaaa, 0x00000000000006 );
  TEST_VV_OP( 510,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007, 0x00000000000005, 0x00000000000006 );
  TEST_VV_OP( 511,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x3333333333333333, 0x00000000000006 );
  TEST_VV_OP( 512,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666, 0x6666666666666666, 0x00000000000006 );
  TEST_VV_OP( 513,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0xffffffff4afb0ccd, 0x00000000000006 );
  TEST_VV_OP( 514,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x000000b504f333, 0x00000000000006 );
  TEST_VV_OP( 515,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000002, 0x00000000000006 );
  TEST_VV_OP( 516,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555554, 0x00000000000006 );
  TEST_VV_OP( 517,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000000, 0x00000000000006 );
  TEST_VV_OP( 518,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000004, 0x00000000000006 );
  TEST_VV_OP( 519,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x3333333333333332, 0x00000000000006 );
  TEST_VV_OP( 520,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666665, 0x00000000000006 );
  TEST_VV_OP( 521,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x000000b504f332, 0x00000000000006 );
  TEST_VV_OP( 522,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555555555556, 0x5555555555555556, 0x00000000000006 );
  TEST_VV_OP( 523,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaaaaaaaaaf, 0xaaaaaaaaaaaaaaab, 0x00000000000006 );
  TEST_VV_OP( 524,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000000000006 );
  TEST_VV_OP( 525,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x3333333333333334, 0x00000000000006 );
  TEST_VV_OP( 526,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x00000000000006 );
  TEST_VV_OP( 527,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0xffffffff4afb0cce, 0x00000000000006 );
  TEST_VV_OP( 528,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x000000b504f334, 0x00000000000006 );
  TEST_VV_OP( 529,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x00000000000003, 0x3333333333333334 );
  TEST_VV_OP( 530,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x5555555555555555, 0x3333333333333334 );
  TEST_VV_OP( 531,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbe, 0xaaaaaaaaaaaaaaaa, 0x3333333333333334 );
  TEST_VV_OP( 532,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333335, 0x00000000000005, 0x3333333333333334 );
  TEST_VV_OP( 533,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333337, 0x3333333333333333, 0x3333333333333334 );
  TEST_VV_OP( 534,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x6666666666666666, 0x3333333333333334 );
  TEST_VV_OP( 535,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3ffd, 0xffffffff4afb0ccd, 0x3333333333333334 );
  TEST_VV_OP( 536,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f337, 0x000000b504f333, 0x3333333333333334 );
  TEST_VV_OP( 537,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x00000000000002, 0x3333333333333334 );
  TEST_VV_OP( 538,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777774, 0x5555555555555554, 0x3333333333333334 );
  TEST_VV_OP( 539,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333334, 0x00000000000000, 0x3333333333333334 );
  TEST_VV_OP( 540,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333334, 0x00000000000004, 0x3333333333333334 );
  TEST_VV_OP( 541,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x3333333333333332, 0x3333333333333334 );
  TEST_VV_OP( 542,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777775, 0x6666666666666665, 0x3333333333333334 );
  TEST_VV_OP( 543,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f336, 0x000000b504f332, 0x3333333333333334 );
  TEST_VV_OP( 544,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777776, 0x5555555555555556, 0x3333333333333334 );
  TEST_VV_OP( 545,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbf, 0xaaaaaaaaaaaaaaab, 0x3333333333333334 );
  TEST_VV_OP( 546,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333336, 0x00000000000006, 0x3333333333333334 );
  TEST_VV_OP( 547,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003333333333333334, 0x3333333333333334, 0x3333333333333334 );
  TEST_VV_OP( 548,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x6666666666666667, 0x3333333333333334 );
  TEST_VV_OP( 549,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3ffe, 0xffffffff4afb0cce, 0x3333333333333334 );
  TEST_VV_OP( 550,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f334, 0x000000b504f334, 0x3333333333333334 );
  TEST_VV_OP( 551,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000003, 0x6666666666666667 );
  TEST_VV_OP( 552,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555555, 0x6666666666666667 );
  TEST_VV_OP( 553,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0xaaaaaaaaaaaaaaaa, 0x6666666666666667 );
  TEST_VV_OP( 554,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000005, 0x6666666666666667 );
  TEST_VV_OP( 555,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333333, 0x6666666666666667 );
  TEST_VV_OP( 556,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666666, 0x6666666666666667 );
  TEST_VV_OP( 557,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0xffffffff4afb0ccd, 0x6666666666666667 );
  TEST_VV_OP( 558,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x000000b504f333, 0x6666666666666667 );
  TEST_VV_OP( 559,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000002, 0x6666666666666667 );
  TEST_VV_OP( 560,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555554, 0x6666666666666667 );
  TEST_VV_OP( 561,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000000, 0x6666666666666667 );
  TEST_VV_OP( 562,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000004, 0x6666666666666667 );
  TEST_VV_OP( 563,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333332, 0x6666666666666667 );
  TEST_VV_OP( 564,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666665, 0x6666666666666667 );
  TEST_VV_OP( 565,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x000000b504f332, 0x6666666666666667 );
  TEST_VV_OP( 566,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x5555555555555556, 0x6666666666666667 );
  TEST_VV_OP( 567,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeef, 0xaaaaaaaaaaaaaaab, 0x6666666666666667 );
  TEST_VV_OP( 568,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x00000000000006, 0x6666666666666667 );
  TEST_VV_OP( 569,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007777777777777777, 0x3333333333333334, 0x6666666666666667 );
  TEST_VV_OP( 570,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666667, 0x6666666666666667, 0x6666666666666667 );
  TEST_VV_OP( 571,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0xffffffff4afb0cce, 0x6666666666666667 );
  TEST_VV_OP( 572,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x000000b504f334, 0x6666666666666667 );
  TEST_VV_OP( 573,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0x00000000000003, 0xffffffff4afb0cce );
  TEST_VV_OP( 574,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5ddf, 0x5555555555555555, 0xffffffff4afb0cce );
  TEST_VV_OP( 575,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeee, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0cce );
  TEST_VV_OP( 576,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0x00000000000005, 0xffffffff4afb0cce );
  TEST_VV_OP( 577,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3fff, 0x3333333333333333, 0xffffffff4afb0cce );
  TEST_VV_OP( 578,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eee, 0x6666666666666666, 0xffffffff4afb0cce );
  TEST_VV_OP( 579,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0ccf, 0xffffffff4afb0ccd, 0xffffffff4afb0cce );
  TEST_VV_OP( 580,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffff, 0x000000b504f333, 0xffffffff4afb0cce );
  TEST_VV_OP( 581,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0x00000000000002, 0xffffffff4afb0cce );
  TEST_VV_OP( 582,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5dde, 0x5555555555555554, 0xffffffff4afb0cce );
  TEST_VV_OP( 583,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0x00000000000000, 0xffffffff4afb0cce );
  TEST_VV_OP( 584,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0x00000000000004, 0xffffffff4afb0cce );
  TEST_VV_OP( 585,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3ffe, 0x3333333333333332, 0xffffffff4afb0cce );
  TEST_VV_OP( 586,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0x6666666666666665, 0xffffffff4afb0cce );
  TEST_VV_OP( 587,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0x000000b504f332, 0xffffffff4afb0cce );
  TEST_VV_OP( 588,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff5fff5dde, 0x5555555555555556, 0xffffffff4afb0cce );
  TEST_VV_OP( 589,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffeafbaeef, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0cce );
  TEST_VV_OP( 590,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0x00000000000006, 0xffffffff4afb0cce );
  TEST_VV_OP( 591,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7bfb3ffe, 0x3333333333333334, 0xffffffff4afb0cce );
  TEST_VV_OP( 592,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff6eff6eef, 0x6666666666666667, 0xffffffff4afb0cce );
  TEST_VV_OP( 593,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff4afb0cce, 0xffffffff4afb0cce, 0xffffffff4afb0cce );
  TEST_VV_OP( 594,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0x000000b504f334, 0xffffffff4afb0cce );
  TEST_VV_OP( 595,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x00000000000003, 0x000000b504f334 );
  TEST_VV_OP( 596,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f775, 0x5555555555555555, 0x000000b504f334 );
  TEST_VV_OP( 597,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbe, 0xaaaaaaaaaaaaaaaa, 0x000000b504f334 );
  TEST_VV_OP( 598,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f335, 0x00000000000005, 0x000000b504f334 );
  TEST_VV_OP( 599,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f337, 0x3333333333333333, 0x000000b504f334 );
  TEST_VV_OP( 600,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f776, 0x6666666666666666, 0x000000b504f334 );
  TEST_VV_OP( 601,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffd, 0xffffffff4afb0ccd, 0x000000b504f334 );
  TEST_VV_OP( 602,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f337, 0x000000b504f333, 0x000000b504f334 );
  TEST_VV_OP( 603,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x00000000000002, 0x000000b504f334 );
  TEST_VV_OP( 604,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f774, 0x5555555555555554, 0x000000b504f334 );
  TEST_VV_OP( 605,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f334, 0x00000000000000, 0x000000b504f334 );
  TEST_VV_OP( 606,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f334, 0x00000000000004, 0x000000b504f334 );
  TEST_VV_OP( 607,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f336, 0x3333333333333332, 0x000000b504f334 );
  TEST_VV_OP( 608,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f775, 0x6666666666666665, 0x000000b504f334 );
  TEST_VV_OP( 609,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x000000b504f332, 0x000000b504f334 );
  TEST_VV_OP( 610,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555f555f776, 0x5555555555555556, 0x000000b504f334 );
  TEST_VV_OP( 611,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaabfaefbbf, 0xaaaaaaaaaaaaaaab, 0x000000b504f334 );
  TEST_VV_OP( 612,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f336, 0x00000000000006, 0x000000b504f334 );
  TEST_VV_OP( 613,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333b737f334, 0x3333333333333334, 0x000000b504f334 );
  TEST_VV_OP( 614,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666f766f777, 0x6666666666666667, 0x000000b504f334 );
  TEST_VV_OP( 615,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xffffffff4afb0cce, 0x000000b504f334 );
  TEST_VV_OP( 616,  vredor.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504f334, 0x000000b504f334, 0x000000b504f334 );
  TEST_VV_OP_rd1( 617,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xfffffffffffffffe, 0xfffffffffffffffe);
  TEST_VV_OP_12( 618,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffe, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP_rd2( 619,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffd, 0xfffffffffffffffd, 0xfffffffffffffffd);
  TEST_VV_OP_13( 620,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffd, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP_rd3( 621,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffb, 0xfffffffffffffffb, 0xfffffffffffffffb);
  TEST_VV_OP_14( 622,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffffb, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP_rd4( 623,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffff7, 0xfffffffffffffff7, 0xfffffffffffffff7);
  TEST_VV_OP_15( 624,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffff7, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP_rd5( 625,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffef, 0xffffffffffffffef, 0xffffffffffffffef);
  TEST_VV_OP_16( 626,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffef, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP_rd6( 627,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffdf, 0xffffffffffffffdf, 0xffffffffffffffdf);
  TEST_VV_OP_17( 628,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffdf, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP_rd7( 629,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffbf, 0xffffffffffffffbf, 0xffffffffffffffbf);
  TEST_VV_OP_rd8( 630,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffff7f, 0xffffffffffffff7f, 0xffffffffffffff7f);
  TEST_VV_OP_19( 631,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffff7f, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP_rd9( 632,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffeff, 0xfffffffffffffeff, 0xfffffffffffffeff);
  TEST_VV_OP_110( 633,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffeff, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP_rd10( 634,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffdff, 0xfffffffffffffdff, 0xfffffffffffffdff);
  TEST_VV_OP_111( 635,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffdff, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP_rd11( 636,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffbff, 0xfffffffffffffbff, 0xfffffffffffffbff);
  TEST_VV_OP_112( 637,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffffbff, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP_rd12( 638,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff7ff, 0xfffffffffffff7ff, 0xfffffffffffff7ff);
  TEST_VV_OP_113( 639,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffff7ff, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP_rd13( 640,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffefff, 0xffffffffffffefff, 0xffffffffffffefff);
  TEST_VV_OP_114( 641,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffefff, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP_rd14( 642,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffdfff, 0xffffffffffffdfff, 0xffffffffffffdfff);
  TEST_VV_OP_115( 643,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffdfff, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP_rd15( 644,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffbfff, 0xffffffffffffbfff, 0xffffffffffffbfff);
  TEST_VV_OP_rd16( 645,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff7fff, 0xffffffffffff7fff, 0xffffffffffff7fff);
  TEST_VV_OP_117( 646,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffff7fff, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP_rd17( 647,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffeffff, 0xfffffffffffeffff, 0xfffffffffffeffff);
  TEST_VV_OP_118( 648,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffeffff, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP_rd18( 649,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffdffff, 0xfffffffffffdffff, 0xfffffffffffdffff);
  TEST_VV_OP_119( 650,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffdffff, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP_rd19( 651,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffbffff, 0xfffffffffffbffff, 0xfffffffffffbffff);
  TEST_VV_OP_120( 652,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffffbffff, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP_rd20( 653,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffff7ffff, 0xfffffffffff7ffff, 0xfffffffffff7ffff);
  TEST_VV_OP_121( 654,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffff7ffff, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP_rd21( 655,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffefffff, 0xffffffffffefffff, 0xffffffffffefffff);
  TEST_VV_OP_122( 656,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffefffff, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP_rd22( 657,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffdfffff, 0xffffffffffdfffff, 0xffffffffffdfffff);
  TEST_VV_OP_123( 658,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffdfffff, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP_rd23( 659,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffbfffff, 0xffffffffffbfffff, 0xffffffffffbfffff);
  TEST_VV_OP_rd25( 660,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffeffffff, 0xfffffffffeffffff, 0xfffffffffeffffff);
  TEST_VV_OP_126( 661,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffeffffff, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP_rd26( 662,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffdffffff, 0xfffffffffdffffff, 0xfffffffffdffffff);
  TEST_VV_OP_127( 663,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffdffffff, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP_rd27( 664,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffbffffff, 0xfffffffffbffffff, 0xfffffffffbffffff);
  TEST_VV_OP_128( 665,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffffbffffff, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP_rd28( 666,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffff7ffffff, 0xfffffffff7ffffff, 0xfffffffff7ffffff);
  TEST_VV_OP_129( 667,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffff7ffffff, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP_rd29( 668,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffefffffff, 0xffffffffefffffff, 0xffffffffefffffff);
  TEST_VV_OP_130( 669,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffefffffff, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP_rd30( 670,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffdfffffff, 0xffffffffdfffffff, 0xffffffffdfffffff);
  TEST_VV_OP_131( 671,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffdfffffff, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP_rd31( 672,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffbfffffff, 0xffffffffbfffffff, 0xffffffffbfffffff);
  TEST_VV_OP_12( 673,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffbfffffff, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP_rd1( 674,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7fffffff, 0xffffffff7fffffff, 0xffffffff7fffffff);
  TEST_VV_OP_13( 675,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff7fffffff, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP_rd2( 676,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffeffffffff, 0xfffffffeffffffff, 0xfffffffeffffffff);
  TEST_VV_OP_14( 677,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffeffffffff, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP_rd3( 678,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffdffffffff, 0xfffffffdffffffff, 0xfffffffdffffffff);
  TEST_VV_OP_15( 679,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffdffffffff, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP_rd4( 680,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffbffffffff, 0xfffffffbffffffff, 0xfffffffbffffffff);
  TEST_VV_OP_16( 681,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffbffffffff, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP_rd5( 682,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff7ffffffff, 0xfffffff7ffffffff, 0xfffffff7ffffffff);
  TEST_VV_OP_17( 683,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff7ffffffff, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP_rd6( 684,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffefffffffff, 0xffffffefffffffff, 0xffffffefffffffff);
  TEST_VV_OP_rd7( 685,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffdfffffffff, 0xffffffdfffffffff, 0xffffffdfffffffff);
  TEST_VV_OP_19( 686,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffdfffffffff, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP_rd8( 687,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbfffffffff, 0xffffffbfffffffff, 0xffffffbfffffffff);
  TEST_VV_OP_110( 688,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbfffffffff, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP_rd9( 689,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffff7fffffffff, 0xffffff7fffffffff, 0xffffff7fffffffff);
  TEST_VV_OP_111( 690,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffff7fffffffff, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP_rd10( 691,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffeffffffffff, 0xfffffeffffffffff, 0xfffffeffffffffff);
  TEST_VV_OP_112( 692,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffeffffffffff, 0xfffffeffffffffff, 0xfffffeffffffffff );
  TEST_VV_OP_rd11( 693,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdffffffffff, 0xfffffdffffffffff, 0xfffffdffffffffff);
  TEST_VV_OP_113( 694,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdffffffffff, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP_rd12( 695,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbffffffffff, 0xfffffbffffffffff, 0xfffffbffffffffff);
  TEST_VV_OP_114( 696,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbffffffffff, 0xfffffbffffffffff, 0xfffffbffffffffff );
  TEST_VV_OP_rd13( 697,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7ffffffffff, 0xfffff7ffffffffff, 0xfffff7ffffffffff);
  TEST_VV_OP_115( 698,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7ffffffffff, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP_rd14( 699,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffefffffffffff, 0xffffefffffffffff, 0xffffefffffffffff);
  TEST_VV_OP_rd15( 700,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdfffffffffff, 0xffffdfffffffffff, 0xffffdfffffffffff);
  TEST_VV_OP_117( 701,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdfffffffffff, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP_rd16( 702,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbfffffffffff, 0xffffbfffffffffff, 0xffffbfffffffffff);
  TEST_VV_OP_118( 703,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbfffffffffff, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP_rd17( 704,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff7fffffffffff, 0xffff7fffffffffff, 0xffff7fffffffffff);
  TEST_VV_OP_119( 705,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff7fffffffffff, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP_rd18( 706,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffeffffffffffff, 0xfffeffffffffffff, 0xfffeffffffffffff);
  TEST_VV_OP_120( 707,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffeffffffffffff, 0xfffeffffffffffff, 0xfffeffffffffffff );
  TEST_VV_OP_rd19( 708,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdffffffffffff, 0xfffdffffffffffff, 0xfffdffffffffffff);
  TEST_VV_OP_121( 709,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdffffffffffff, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP_rd20( 710,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbffffffffffff, 0xfffbffffffffffff, 0xfffbffffffffffff);
  TEST_VV_OP_122( 711,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbffffffffffff, 0xfffbffffffffffff, 0xfffbffffffffffff );
  TEST_VV_OP_rd21( 712,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7ffffffffffff, 0xfff7ffffffffffff, 0xfff7ffffffffffff);
  TEST_VV_OP_123( 713,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7ffffffffffff, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP_rd22( 714,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffffffffffff, 0xffefffffffffffff, 0xffefffffffffffff);
  TEST_VV_OP_rd23( 715,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdfffffffffffff, 0xffdfffffffffffff, 0xffdfffffffffffff);
  TEST_VV_OP_125( 716,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdfffffffffffff, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP_rd25( 717,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffffffffffff, 0xff7fffffffffffff, 0xff7fffffffffffff);
  TEST_VV_OP_127( 718,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffffffffffff, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP_rd26( 719,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feffffffffffffff, 0xfeffffffffffffff, 0xfeffffffffffffff);
  TEST_VV_OP_128( 720,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feffffffffffffff, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP_rd27( 721,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdffffffffffffff, 0xfdffffffffffffff, 0xfdffffffffffffff);
  TEST_VV_OP_129( 722,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdffffffffffffff, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP_rd28( 723,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbffffffffffffff, 0xfbffffffffffffff, 0xfbffffffffffffff);
  TEST_VV_OP_130( 724,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbffffffffffffff, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP_rd29( 725,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7ffffffffffffff, 0xf7ffffffffffffff, 0xf7ffffffffffffff);
  TEST_VV_OP_131( 726,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7ffffffffffffff, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP_rd30( 727,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efffffffffffffff, 0xefffffffffffffff, 0xefffffffffffffff);
  TEST_VV_OP_12( 728,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efffffffffffffff, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP_rd31( 729,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfffffffffffffff, 0xdfffffffffffffff, 0xdfffffffffffffff);
  TEST_VV_OP_13( 730,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfffffffffffffff, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP_rd1( 731,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bfffffffffffffff, 0xbfffffffffffffff, 0xbfffffffffffffff);
  TEST_VV_OP_14( 732,  vredor.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bfffffffffffffff, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP_rd2( 733,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffffffffffffff, 0x7fffffffffffffff, 0x7fffffffffffffff);
  TEST_VV_OP_15( 734,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffffffffffffff, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP_rd3( 735,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x00000000000001, 0x00000000000001);
  TEST_VV_OP_16( 736,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP_rd4( 737,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002);
  TEST_VV_OP_17( 738,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP_rd5( 739,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000004);
  TEST_VV_OP_rd6( 740,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000008, 0x00000000000008);
  TEST_VV_OP_19( 741,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP_rd7( 742,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010, 0x00000000000010, 0x00000000000010);
  TEST_VV_OP_110( 743,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP_rd8( 744,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000020, 0x00000000000020);
  TEST_VV_OP_111( 745,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP_rd9( 746,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000040, 0x00000000000040);
  TEST_VV_OP_112( 747,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP_rd10( 748,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000080, 0x00000000000080);
  TEST_VV_OP_113( 749,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP_rd11( 750,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000100, 0x00000000000100);
  TEST_VV_OP_114( 751,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP_rd12( 752,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000200, 0x00000000000200);
  TEST_VV_OP_115( 753,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP_rd13( 754,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400, 0x00000000000400, 0x00000000000400);
  TEST_VV_OP_rd14( 755,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000800, 0x00000000000800);
  TEST_VV_OP_117( 756,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP_rd15( 757,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000, 0x00000000001000, 0x00000000001000);
  TEST_VV_OP_118( 758,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP_rd16( 759,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000002000, 0x00000000002000);
  TEST_VV_OP_119( 760,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP_rd17( 761,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000004000, 0x00000000004000);
  TEST_VV_OP_120( 762,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP_rd18( 763,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000008000, 0x00000000008000);
  TEST_VV_OP_121( 764,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP_rd19( 765,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000010000, 0x00000000010000);
  TEST_VV_OP_122( 766,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP_rd20( 767,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000020000, 0x00000000020000);
  TEST_VV_OP_123( 768,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP_rd21( 769,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000, 0x00000000040000, 0x00000000040000);
  TEST_VV_OP_rd22( 770,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000080000, 0x00000000080000);
  TEST_VV_OP_125( 771,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP_rd23( 772,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000, 0x00000000100000, 0x00000000100000);
  TEST_VV_OP_126( 773,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP_rd25( 774,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000, 0x00000000400000, 0x00000000400000);
  TEST_VV_OP_128( 775,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP_rd26( 776,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000800000, 0x00000000800000);
  TEST_VV_OP_129( 777,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP_rd27( 778,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000001000000, 0x00000001000000);
  TEST_VV_OP_130( 779,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP_rd28( 780,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000002000000, 0x00000002000000);
  TEST_VV_OP_131( 781,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP_rd29( 782,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000004000000, 0x00000004000000);
  TEST_VV_OP_12( 783,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP_rd30( 784,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000008000000, 0x00000008000000);
  TEST_VV_OP_13( 785,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP_rd31( 786,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000010000000, 0x00000010000000);
  TEST_VV_OP_14( 787,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP_rd1( 788,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000020000000, 0x00000020000000);
  TEST_VV_OP_15( 789,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP_rd2( 790,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000040000000, 0x00000040000000);
  TEST_VV_OP_16( 791,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP_rd3( 792,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x00000080000000, 0x00000080000000);
  TEST_VV_OP_17( 793,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP_rd4( 794,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000, 0x00000100000000, 0x00000100000000);
  TEST_VV_OP_rd5( 795,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000, 0x00000200000000, 0x00000200000000);
  TEST_VV_OP_19( 796,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP_rd6( 797,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000, 0x00000400000000, 0x00000400000000);
  TEST_VV_OP_110( 798,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP_rd7( 799,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000, 0x00000800000000, 0x00000800000000);
  TEST_VV_OP_111( 800,  vredor.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000, 0x00000800000000, 0x00000800000000 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    


.align 4
mask_data:
	.word 0x11111111
	.word 0x86569d27
	.word 0x429ede3d
	.word 0x20219a51
	.word 0x91a8d5fd
	.word 0xbd8f6c65
	.word 0x466250f
	.word 0xe31ffa64
	.word 0xc737ad3a
	.word 0xe54c8c1e
	.word 0x7ca660db
	.word 0x692dadf
	.word 0x2c63c847
	.word 0xfbba7ae7
	.word 0x195b62bf
	.word 0xf600a3d1
	.word 0x34b80fd4
	.word 0x3aef5ff4
	.word 0x34267ad9
	.word 0x681454c0
	.word 0x67dd3492
	.word 0xb02d663e
	.word 0xb2d3f1c5
	.word 0x824d39ae
 

.align 4
rd_origin_data:
    .word 0x66da64aa
	.word 0xf682191a
	.word 0xfd2ce83f
	.word 0x67f9ab29
	.word 0x112e3ffd
	.word 0xc4d9b1e2
	.word 0x9ed4e137
	.word 0xb49ae54e
	.word 0xd075dd45
	.word 0x74daa72e
	.word 0x48324db4
	.word 0x167d97b5
	.word 0x8b536536
	.word 0xe85755eb
	.word 0x1cd86c0a
	.word 0x4c811ecf
	.word 0x8085dbf1
	.word 0x547cdce3
	.word 0x65d27882
	.word 0xb72d2ec4
	.word 0x954ee841
	.word 0xb36fd636
	.word 0xbc4988da
	.word 0xaea05c04
	.word 0xce7483a6
	.word 0xea0309d7
	.word 0x62498466
	.word 0x1cd29ac4
	.word 0x97f38b62
	.word 0x690bcf85
	.word 0x97f38b62
	.word 0x9bd83b8b
    
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
    

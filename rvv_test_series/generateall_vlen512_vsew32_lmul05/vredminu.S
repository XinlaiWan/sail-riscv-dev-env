#----------------------------------------------------------------------------- 
    # vredminu.S
    #-----------------------------------------------------------------------------
    #
    # Test vredminu instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vredminu)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#define TEST_VV_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v24, v16, v8, v0.t; \
        )
#define TEST_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v2, x7; \
            inst v24, v16, v2, v0.t;  \
        )
#define TEST_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v3, x7; \
            inst v24, v16, v3, v0.t;  \
        )
#define TEST_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v4, x7; \
            inst v24, v16, v4, v0.t;  \
        )
#define TEST_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v5, x7; \
            inst v24, v16, v5, v0.t;  \
        )
#define TEST_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v6, x7; \
            inst v24, v16, v6, v0.t;  \
        )
#define TEST_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v7, x7; \
            inst v24, v16, v7, v0.t;  \
        )
#define TEST_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v9, x7; \
            inst v24, v16, v9, v0.t;  \
        )
#define TEST_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v10, x7; \
            inst v24, v16, v10, v0.t;  \
        )
#define TEST_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v11, x7; \
            inst v24, v16, v11, v0.t;  \
        )
#define TEST_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v12, x7; \
            inst v24, v16, v12, v0.t;  \
        )
#define TEST_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v13, x7; \
            inst v24, v16, v13, v0.t;  \
        )
#define TEST_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v14, x7; \
            inst v24, v16, v14, v0.t;  \
        )
#define TEST_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v15, x7; \
            inst v24, v16, v15, v0.t;  \
        )
#define TEST_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v17, x7; \
            inst v24, v16, v17, v0.t;  \
        )
#define TEST_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v18, x7; \
            inst v24, v16, v18, v0.t;  \
        )
#define TEST_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v19, x7; \
            inst v24, v16, v19, v0.t;  \
        )
#define TEST_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v20, x7; \
            inst v24, v16, v20, v0.t;  \
        )
#define TEST_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v21, x7; \
            inst v24, v16, v21, v0.t;  \
        )
#define TEST_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v22, x7; \
            inst v24, v16, v22, v0.t;  \
        )
#define TEST_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v23, x7; \
            inst v24, v16, v23, v0.t;  \
        )
#define TEST_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v25, x7; \
            inst v24, v16, v25, v0.t;  \
        )
#define TEST_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v26, x7; \
            inst v24, v16, v26, v0.t;  \
        )
#define TEST_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v27, x7; \
            inst v24, v16, v27, v0.t;  \
        )
#define TEST_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v28, x7; \
            inst v24, v16, v28, v0.t;  \
        )
#define TEST_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v29, x7; \
            inst v24, v16, v29, v0.t;  \
        )
#define TEST_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v30, x7; \
            inst v24, v16, v30, v0.t;  \
        )
#define TEST_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v31, x7; \
            inst v24, v16, v31, v0.t;  \
        )
#define TEST_VV_OP_rd1( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v1, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v1, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd2( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v2, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v2, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd3( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v3, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v3, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd4( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v4, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v4, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd5( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v5, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v5, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd6( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v6, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v6, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd7( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v7, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v7, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd9( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v9, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v9, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd10( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v10, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v10, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd11( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v11, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v11, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd12( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v12, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v12, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd13( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v13, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v13, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd14( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v14, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v14, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd15( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v15, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v15, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd17( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v17, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v17, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd18( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v18, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v18, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd19( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v19, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v19, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd20( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v20, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v20, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd21( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v21, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v21, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd22( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v22, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v22, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd23( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v23, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v23, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd25( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v25, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v25, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd26( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v26, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v26, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd27( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v27, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v27, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd28( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v28, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v28, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd29( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v29, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v29, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd30( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v30, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v30, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd31( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v31, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v31, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd8( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v8, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v24, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v16, x7; \
            inst v8, v24, v16, v0.t; \
        )
#define TEST_VV_OP_rd16( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v16, result, \
            la x7, mask_data; \
    vle32.v v0, (x7); \
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
  TEST_VV_OP( 2,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffe, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP( 3,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffd, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP( 4,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffb, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP( 5,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff7, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP( 6,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffef, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP( 7,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffdf, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP( 8,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbf, 0xffffffffffffffbf, 0xffffffffffffffbf );
  TEST_VV_OP( 9,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffff7f, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP( 10,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffeff, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP( 11,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdff, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP( 12,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbff, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP( 13,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7ff, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP( 14,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffefff, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP( 15,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdfff, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP( 16,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbfff, 0xffffffffffffbfff, 0xffffffffffffbfff );
  TEST_VV_OP( 17,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff7fff, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP( 18,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffeffff, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP( 19,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdffff, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP( 20,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbffff, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP( 21,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7ffff, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP( 22,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffff, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP( 23,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdfffff, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP( 24,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffbfffff, 0xffffffffffbfffff, 0xffffffffffbfffff );
  TEST_VV_OP( 25,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ff7fffff, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_VV_OP( 26,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feffffff, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP( 27,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdffffff, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP( 28,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbffffff, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP( 29,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7ffffff, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP( 30,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efffffff, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP( 31,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfffffff, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP( 32,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bfffffff, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP( 33,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffffff, 0x0000007fffffff, 0x0000007fffffff );
  TEST_VV_OP( 34,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP( 35,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 36,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 37,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP( 38,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP( 39,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP( 40,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP( 41,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP( 42,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP( 43,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP( 44,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400, 0x00000000000400, 0x00000000000400 );
  TEST_VV_OP( 45,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP( 46,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP( 47,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP( 48,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP( 49,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP( 50,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP( 51,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP( 52,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000, 0x00000000040000, 0x00000000040000 );
  TEST_VV_OP( 53,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP( 54,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP( 55,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000, 0x00000000200000, 0x00000000200000 );
  TEST_VV_OP( 56,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP( 57,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP( 58,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP( 59,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP( 60,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP( 61,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP( 62,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP( 63,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP( 64,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP( 65,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xffffffff80000000, 0xffffffff80000000 );
  TEST_VV_OP( 66,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 67,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555555, 0x00000000000003 );
  TEST_VV_OP( 68,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 69,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000005, 0x00000000000003 );
  TEST_VV_OP( 70,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333333, 0x00000000000003 );
  TEST_VV_OP( 71,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000066666666, 0x00000000000003 );
  TEST_VV_OP( 72,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffffff4afc, 0x00000000000003 );
  TEST_VV_OP( 73,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555555, 0x00000000000003 );
  TEST_VV_OP( 74,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x0000000000b504, 0x00000000000003 );
  TEST_VV_OP( 75,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000003 );
  TEST_VV_OP( 76,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555554, 0x00000000000003 );
  TEST_VV_OP( 77,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000003 );
  TEST_VV_OP( 78,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000004, 0x00000000000003 );
  TEST_VV_OP( 79,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333332, 0x00000000000003 );
  TEST_VV_OP( 80,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666665, 0x00000055555555 );
  TEST_VV_OP( 81,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 82,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 83,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555556, 0x00000000000003 );
  TEST_VV_OP( 84,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffaaaaaaab, 0x00000000000003 );
  TEST_VV_OP( 85,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000006, 0x00000000000003 );
  TEST_VV_OP( 86,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333334, 0x00000000000003 );
  TEST_VV_OP( 87,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000066666667, 0x00000000000003 );
  TEST_VV_OP( 88,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffffff4afd, 0x00000000000003 );
  TEST_VV_OP( 89,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000b505, 0x00000000000000 );
  TEST_VV_OP( 90,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 91,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000055555555 );
  TEST_VV_OP( 92,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffaaaaaaaa, 0x00000055555555 );
  TEST_VV_OP( 93,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000055555555 );
  TEST_VV_OP( 94,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000055555555 );
  TEST_VV_OP( 95,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666666, 0x00000055555555 );
  TEST_VV_OP( 96,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffffff4afc, 0x00000055555555 );
  TEST_VV_OP( 97,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000055555555 );
  TEST_VV_OP( 98,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000055555555 );
  TEST_VV_OP( 99,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000055555555 );
  TEST_VV_OP( 100,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000055555555 );
  TEST_VV_OP( 101,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000055555555 );
  TEST_VV_OP( 102,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000055555555 );
  TEST_VV_OP( 103,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666665, 0x00000055555555 );
  TEST_VV_OP( 104,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000055555555 );
  TEST_VV_OP( 105,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555556, 0x00000055555555 );
  TEST_VV_OP( 106,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffaaaaaaab, 0x00000055555555 );
  TEST_VV_OP( 107,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000055555555 );
  TEST_VV_OP( 108,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000055555555 );
  TEST_VV_OP( 109,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666667, 0x00000055555555 );
  TEST_VV_OP( 110,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffffff4afd, 0x00000055555555 );
  TEST_VV_OP( 111,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000055555555 );
  TEST_VV_OP( 112,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000055555555 );
  TEST_VV_OP( 113,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 114,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0xffffffffaaaaaaaa, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 115,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 116,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 117,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666666, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 118,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0xffffffffffff4afc, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 119,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 120,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 121,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 122,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 123,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 124,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 125,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 126,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 127,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 128,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 129,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0xffffffffaaaaaaab, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 130,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 131,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 132,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000066666667, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 133,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0xffffffffffff4afd, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 134,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0xffffffffaaaaaaaa );
  TEST_VV_OP( 135,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000005 );
  TEST_VV_OP( 136,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000055555555, 0x00000000000005 );
  TEST_VV_OP( 137,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0xffffffffaaaaaaaa, 0x00000000000005 );
  TEST_VV_OP( 138,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000000000005 );
  TEST_VV_OP( 139,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000033333333, 0x00000000000005 );
  TEST_VV_OP( 140,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000066666666, 0x00000000000005 );
  TEST_VV_OP( 141,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0xffffffffffff4afc, 0x00000000000005 );
  TEST_VV_OP( 142,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x0000000000b504, 0x00000000000005 );
  TEST_VV_OP( 143,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000005 );
  TEST_VV_OP( 144,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000055555554, 0x00000000000005 );
  TEST_VV_OP( 145,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000005 );
  TEST_VV_OP( 146,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000005 );
  TEST_VV_OP( 147,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000033333332, 0x00000000000005 );
  TEST_VV_OP( 148,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000066666665, 0x00000000000005 );
  TEST_VV_OP( 149,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x0000000000b503, 0x00000000000005 );
  TEST_VV_OP( 150,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000055555556, 0x00000000000005 );
  TEST_VV_OP( 151,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0xffffffffaaaaaaab, 0x00000000000005 );
  TEST_VV_OP( 152,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000006, 0x00000000000005 );
  TEST_VV_OP( 153,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000033333334, 0x00000000000005 );
  TEST_VV_OP( 154,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000066666667, 0x00000000000005 );
  TEST_VV_OP( 155,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0xffffffffffff4afd, 0x00000000000005 );
  TEST_VV_OP( 156,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x0000000000b505, 0x00000000000005 );
  TEST_VV_OP( 157,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000033333333 );
  TEST_VV_OP( 158,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000055555555, 0x00000033333333 );
  TEST_VV_OP( 159,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0xffffffffaaaaaaaa, 0x00000033333333 );
  TEST_VV_OP( 160,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000033333333 );
  TEST_VV_OP( 161,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000033333333 );
  TEST_VV_OP( 162,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000066666666, 0x00000033333333 );
  TEST_VV_OP( 163,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0xffffffffffff4afc, 0x00000033333333 );
  TEST_VV_OP( 164,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000033333333 );
  TEST_VV_OP( 165,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000033333333 );
  TEST_VV_OP( 166,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000055555554, 0x00000033333333 );
  TEST_VV_OP( 167,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000033333333 );
  TEST_VV_OP( 168,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000033333333 );
  TEST_VV_OP( 169,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000033333333 );
  TEST_VV_OP( 170,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000066666665, 0x00000033333333 );
  TEST_VV_OP( 171,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000033333333 );
  TEST_VV_OP( 172,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000055555556, 0x00000033333333 );
  TEST_VV_OP( 173,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0xffffffffaaaaaaab, 0x00000033333333 );
  TEST_VV_OP( 174,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000033333333 );
  TEST_VV_OP( 175,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333334, 0x00000033333333 );
  TEST_VV_OP( 176,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000066666667, 0x00000033333333 );
  TEST_VV_OP( 177,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0xffffffffffff4afd, 0x00000033333333 );
  TEST_VV_OP( 178,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000033333333 );
  TEST_VV_OP( 179,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000066666666 );
  TEST_VV_OP( 180,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000066666666 );
  TEST_VV_OP( 181,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0xffffffffaaaaaaaa, 0x00000066666666 );
  TEST_VV_OP( 182,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000066666666 );
  TEST_VV_OP( 183,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000066666666 );
  TEST_VV_OP( 184,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666666, 0x00000066666666 );
  TEST_VV_OP( 185,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0xffffffffffff4afc, 0x00000066666666 );
  TEST_VV_OP( 186,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000066666666 );
  TEST_VV_OP( 187,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000066666666 );
  TEST_VV_OP( 188,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000066666666 );
  TEST_VV_OP( 189,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000066666666 );
  TEST_VV_OP( 190,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000066666666 );
  TEST_VV_OP( 191,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000066666666 );
  TEST_VV_OP( 192,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0x00000066666666 );
  TEST_VV_OP( 193,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000066666666 );
  TEST_VV_OP( 194,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0x00000066666666 );
  TEST_VV_OP( 195,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0xffffffffaaaaaaab, 0x00000066666666 );
  TEST_VV_OP( 196,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000066666666 );
  TEST_VV_OP( 197,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000066666666 );
  TEST_VV_OP( 198,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666667, 0x00000066666666 );
  TEST_VV_OP( 199,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0xffffffffffff4afd, 0x00000066666666 );
  TEST_VV_OP( 200,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000066666666 );
  TEST_VV_OP( 201,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0xffffffffffff4afc );
  TEST_VV_OP( 202,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0xffffffffffff4afc );
  TEST_VV_OP( 203,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0xffffffffaaaaaaaa, 0xffffffffffff4afc );
  TEST_VV_OP( 204,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0xffffffffffff4afc );
  TEST_VV_OP( 205,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0xffffffffffff4afc );
  TEST_VV_OP( 206,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666666, 0xffffffffffff4afc );
  TEST_VV_OP( 207,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4afc, 0xffffffffffff4afc, 0xffffffffffff4afc );
  TEST_VV_OP( 208,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0xffffffffffff4afc );
  TEST_VV_OP( 209,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0xffffffffffff4afc );
  TEST_VV_OP( 210,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0xffffffffffff4afc );
  TEST_VV_OP( 211,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0xffffffffffff4afc );
  TEST_VV_OP( 212,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0xffffffffffff4afc );
  TEST_VV_OP( 213,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0xffffffffffff4afc );
  TEST_VV_OP( 214,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0xffffffffffff4afc );
  TEST_VV_OP( 215,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0xffffffffffff4afc );
  TEST_VV_OP( 216,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0xffffffffffff4afc );
  TEST_VV_OP( 217,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0xffffffffaaaaaaab, 0xffffffffffff4afc );
  TEST_VV_OP( 218,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0xffffffffffff4afc );
  TEST_VV_OP( 219,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0xffffffffffff4afc );
  TEST_VV_OP( 220,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000066666667, 0xffffffffffff4afc );
  TEST_VV_OP( 221,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4afc, 0xffffffffffff4afd, 0xffffffffffff4afc );
  TEST_VV_OP( 222,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0xffffffffffff4afc );
  TEST_VV_OP( 223,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x0000000000b504 );
  TEST_VV_OP( 224,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000055555555, 0x0000000000b504 );
  TEST_VV_OP( 225,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0xffffffffaaaaaaaa, 0x0000000000b504 );
  TEST_VV_OP( 226,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x0000000000b504 );
  TEST_VV_OP( 227,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000033333333, 0x0000000000b504 );
  TEST_VV_OP( 228,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000066666666, 0x0000000000b504 );
  TEST_VV_OP( 229,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0xffffffffffff4afc, 0x0000000000b504 );
  TEST_VV_OP( 230,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x0000000000b504 );
  TEST_VV_OP( 231,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x0000000000b504 );
  TEST_VV_OP( 232,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000055555554, 0x0000000000b504 );
  TEST_VV_OP( 233,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x0000000000b504 );
  TEST_VV_OP( 234,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x0000000000b504 );
  TEST_VV_OP( 235,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000033333332, 0x0000000000b504 );
  TEST_VV_OP( 236,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000066666665, 0x0000000000b504 );
  TEST_VV_OP( 237,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x0000000000b504 );
  TEST_VV_OP( 238,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000055555556, 0x0000000000b504 );
  TEST_VV_OP( 239,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0xffffffffaaaaaaab, 0x0000000000b504 );
  TEST_VV_OP( 240,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x0000000000b504 );
  TEST_VV_OP( 241,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000033333334, 0x0000000000b504 );
  TEST_VV_OP( 242,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x00000066666667, 0x0000000000b504 );
  TEST_VV_OP( 243,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0xffffffffffff4afd, 0x0000000000b504 );
  TEST_VV_OP( 244,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b505, 0x0000000000b504 );
  TEST_VV_OP( 245,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000003, 0x00000000000002 );
  TEST_VV_OP( 246,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000055555555, 0x00000000000002 );
  TEST_VV_OP( 247,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xffffffffaaaaaaaa, 0x00000000000002 );
  TEST_VV_OP( 248,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000005, 0x00000000000002 );
  TEST_VV_OP( 249,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000033333333, 0x00000000000002 );
  TEST_VV_OP( 250,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000066666666, 0x00000000000002 );
  TEST_VV_OP( 251,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xffffffffffff4afc, 0x00000000000002 );
  TEST_VV_OP( 252,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000b504, 0x00000000000002 );
  TEST_VV_OP( 253,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 254,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000055555554, 0x00000000000002 );
  TEST_VV_OP( 255,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000002 );
  TEST_VV_OP( 256,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000004, 0x00000000000002 );
  TEST_VV_OP( 257,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000033333332, 0x00000000000002 );
  TEST_VV_OP( 258,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000066666665, 0x00000000000002 );
  TEST_VV_OP( 259,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000b503, 0x00000000000002 );
  TEST_VV_OP( 260,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000055555556, 0x00000000000002 );
  TEST_VV_OP( 261,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xffffffffaaaaaaab, 0x00000000000002 );
  TEST_VV_OP( 262,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000006, 0x00000000000002 );
  TEST_VV_OP( 263,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000033333334, 0x00000000000002 );
  TEST_VV_OP( 264,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000066666667, 0x00000000000002 );
  TEST_VV_OP( 265,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0xffffffffffff4afd, 0x00000000000002 );
  TEST_VV_OP( 266,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x0000000000b505, 0x00000000000002 );
  TEST_VV_OP( 267,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000055555554 );
  TEST_VV_OP( 268,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555555, 0x00000055555554 );
  TEST_VV_OP( 269,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0xffffffffaaaaaaaa, 0x00000055555554 );
  TEST_VV_OP( 270,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000055555554 );
  TEST_VV_OP( 271,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000055555554 );
  TEST_VV_OP( 272,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000066666666, 0x00000055555554 );
  TEST_VV_OP( 273,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0xffffffffffff4afc, 0x00000055555554 );
  TEST_VV_OP( 274,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000055555554 );
  TEST_VV_OP( 275,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000055555554 );
  TEST_VV_OP( 276,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000055555554 );
  TEST_VV_OP( 277,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000055555554 );
  TEST_VV_OP( 278,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000055555554 );
  TEST_VV_OP( 279,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000055555554 );
  TEST_VV_OP( 280,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000066666665, 0x00000055555554 );
  TEST_VV_OP( 281,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000055555554 );
  TEST_VV_OP( 282,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555556, 0x00000055555554 );
  TEST_VV_OP( 283,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0xffffffffaaaaaaab, 0x00000055555554 );
  TEST_VV_OP( 284,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000055555554 );
  TEST_VV_OP( 285,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000055555554 );
  TEST_VV_OP( 286,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000066666667, 0x00000055555554 );
  TEST_VV_OP( 287,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0xffffffffffff4afd, 0x00000055555554 );
  TEST_VV_OP( 288,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000055555554 );
  TEST_VV_OP( 289,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000003, 0x00000000000000 );
  TEST_VV_OP( 290,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000055555555, 0x00000000000000 );
  TEST_VV_OP( 291,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffaaaaaaaa, 0x00000000000000 );
  TEST_VV_OP( 292,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000005, 0x00000000000000 );
  TEST_VV_OP( 293,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000033333333, 0x00000000000000 );
  TEST_VV_OP( 294,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000066666666, 0x00000000000000 );
  TEST_VV_OP( 295,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffffff4afc, 0x00000000000000 );
  TEST_VV_OP( 296,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000b504, 0x00000000000000 );
  TEST_VV_OP( 297,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000002, 0x00000000000000 );
  TEST_VV_OP( 298,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000055555554, 0x00000000000000 );
  TEST_VV_OP( 299,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000000 );
  TEST_VV_OP( 300,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000004, 0x00000000000000 );
  TEST_VV_OP( 301,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000033333332, 0x00000000000000 );
  TEST_VV_OP( 302,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000066666665, 0x00000000000000 );
  TEST_VV_OP( 303,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000b503, 0x00000000000000 );
  TEST_VV_OP( 304,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000055555556, 0x00000000000000 );
  TEST_VV_OP( 305,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffaaaaaaab, 0x00000000000000 );
  TEST_VV_OP( 306,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000006, 0x00000000000000 );
  TEST_VV_OP( 307,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000033333334, 0x00000000000000 );
  TEST_VV_OP( 308,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000066666667, 0x00000000000000 );
  TEST_VV_OP( 309,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xffffffffffff4afd, 0x00000000000000 );
  TEST_VV_OP( 310,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000b505, 0x00000000000000 );
  TEST_VV_OP( 311,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000004 );
  TEST_VV_OP( 312,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000055555555, 0x00000000000004 );
  TEST_VV_OP( 313,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0xffffffffaaaaaaaa, 0x00000000000004 );
  TEST_VV_OP( 314,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000005, 0x00000000000004 );
  TEST_VV_OP( 315,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000033333333, 0x00000000000004 );
  TEST_VV_OP( 316,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000066666666, 0x00000000000004 );
  TEST_VV_OP( 317,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0xffffffffffff4afc, 0x00000000000004 );
  TEST_VV_OP( 318,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x0000000000b504, 0x00000000000004 );
  TEST_VV_OP( 319,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000004 );
  TEST_VV_OP( 320,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000055555554, 0x00000000000004 );
  TEST_VV_OP( 321,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000004 );
  TEST_VV_OP( 322,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 323,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000033333332, 0x00000000000004 );
  TEST_VV_OP( 324,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000066666665, 0x00000000000004 );
  TEST_VV_OP( 325,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x0000000000b503, 0x00000000000004 );
  TEST_VV_OP( 326,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000055555556, 0x00000000000004 );
  TEST_VV_OP( 327,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0xffffffffaaaaaaab, 0x00000000000004 );
  TEST_VV_OP( 328,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000006, 0x00000000000004 );
  TEST_VV_OP( 329,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000033333334, 0x00000000000004 );
  TEST_VV_OP( 330,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000066666667, 0x00000000000004 );
  TEST_VV_OP( 331,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0xffffffffffff4afd, 0x00000000000004 );
  TEST_VV_OP( 332,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x0000000000b505, 0x00000000000004 );
  TEST_VV_OP( 333,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000033333332 );
  TEST_VV_OP( 334,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000055555555, 0x00000033333332 );
  TEST_VV_OP( 335,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0xffffffffaaaaaaaa, 0x00000033333332 );
  TEST_VV_OP( 336,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000033333332 );
  TEST_VV_OP( 337,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333333, 0x00000033333332 );
  TEST_VV_OP( 338,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000066666666, 0x00000033333332 );
  TEST_VV_OP( 339,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0xffffffffffff4afc, 0x00000033333332 );
  TEST_VV_OP( 340,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000033333332 );
  TEST_VV_OP( 341,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000033333332 );
  TEST_VV_OP( 342,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000055555554, 0x00000033333332 );
  TEST_VV_OP( 343,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000033333332 );
  TEST_VV_OP( 344,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000033333332 );
  TEST_VV_OP( 345,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000033333332 );
  TEST_VV_OP( 346,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000066666665, 0x00000033333332 );
  TEST_VV_OP( 347,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000033333332 );
  TEST_VV_OP( 348,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000055555556, 0x00000033333332 );
  TEST_VV_OP( 349,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0xffffffffaaaaaaab, 0x00000033333332 );
  TEST_VV_OP( 350,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000033333332 );
  TEST_VV_OP( 351,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333334, 0x00000033333332 );
  TEST_VV_OP( 352,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000066666667, 0x00000033333332 );
  TEST_VV_OP( 353,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0xffffffffffff4afd, 0x00000033333332 );
  TEST_VV_OP( 354,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000033333332 );
  TEST_VV_OP( 355,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000066666665 );
  TEST_VV_OP( 356,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000066666665 );
  TEST_VV_OP( 357,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0xffffffffaaaaaaaa, 0x00000066666665 );
  TEST_VV_OP( 358,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000066666665 );
  TEST_VV_OP( 359,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000066666665 );
  TEST_VV_OP( 360,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666666, 0x00000066666665 );
  TEST_VV_OP( 361,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0xffffffffffff4afc, 0x00000066666665 );
  TEST_VV_OP( 362,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000066666665 );
  TEST_VV_OP( 363,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000066666665 );
  TEST_VV_OP( 364,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000066666665 );
  TEST_VV_OP( 365,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000066666665 );
  TEST_VV_OP( 366,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000066666665 );
  TEST_VV_OP( 367,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000066666665 );
  TEST_VV_OP( 368,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0x00000066666665 );
  TEST_VV_OP( 369,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000066666665 );
  TEST_VV_OP( 370,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0x00000066666665 );
  TEST_VV_OP( 371,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0xffffffffaaaaaaab, 0x00000066666665 );
  TEST_VV_OP( 372,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000066666665 );
  TEST_VV_OP( 373,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000066666665 );
  TEST_VV_OP( 374,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666667, 0x00000066666665 );
  TEST_VV_OP( 375,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0xffffffffffff4afd, 0x00000066666665 );
  TEST_VV_OP( 376,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000066666665 );
  TEST_VV_OP( 377,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x0000000000b503 );
  TEST_VV_OP( 378,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000055555555, 0x0000000000b503 );
  TEST_VV_OP( 379,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0xffffffffaaaaaaaa, 0x0000000000b503 );
  TEST_VV_OP( 380,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x0000000000b503 );
  TEST_VV_OP( 381,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000033333333, 0x0000000000b503 );
  TEST_VV_OP( 382,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000066666666, 0x0000000000b503 );
  TEST_VV_OP( 383,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0xffffffffffff4afc, 0x0000000000b503 );
  TEST_VV_OP( 384,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b504, 0x0000000000b503 );
  TEST_VV_OP( 385,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x0000000000b503 );
  TEST_VV_OP( 386,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000055555554, 0x0000000000b503 );
  TEST_VV_OP( 387,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x0000000000b503 );
  TEST_VV_OP( 388,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x0000000000b503 );
  TEST_VV_OP( 389,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000033333332, 0x0000000000b503 );
  TEST_VV_OP( 390,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000066666665, 0x0000000000b503 );
  TEST_VV_OP( 391,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x0000000000b503 );
  TEST_VV_OP( 392,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000055555556, 0x0000000000b503 );
  TEST_VV_OP( 393,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0xffffffffaaaaaaab, 0x0000000000b503 );
  TEST_VV_OP( 394,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x0000000000b503 );
  TEST_VV_OP( 395,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000033333334, 0x0000000000b503 );
  TEST_VV_OP( 396,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x00000066666667, 0x0000000000b503 );
  TEST_VV_OP( 397,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0xffffffffffff4afd, 0x0000000000b503 );
  TEST_VV_OP( 398,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b505, 0x0000000000b503 );
  TEST_VV_OP( 399,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000055555556 );
  TEST_VV_OP( 400,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000055555556 );
  TEST_VV_OP( 401,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0xffffffffaaaaaaaa, 0x00000055555556 );
  TEST_VV_OP( 402,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000055555556 );
  TEST_VV_OP( 403,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000055555556 );
  TEST_VV_OP( 404,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000066666666, 0x00000055555556 );
  TEST_VV_OP( 405,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0xffffffffffff4afc, 0x00000055555556 );
  TEST_VV_OP( 406,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000055555556 );
  TEST_VV_OP( 407,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000055555556 );
  TEST_VV_OP( 408,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000055555556 );
  TEST_VV_OP( 409,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000055555556 );
  TEST_VV_OP( 410,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000055555556 );
  TEST_VV_OP( 411,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000055555556 );
  TEST_VV_OP( 412,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000066666665, 0x00000055555556 );
  TEST_VV_OP( 413,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000055555556 );
  TEST_VV_OP( 414,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0x00000055555556 );
  TEST_VV_OP( 415,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0xffffffffaaaaaaab, 0x00000055555556 );
  TEST_VV_OP( 416,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000055555556 );
  TEST_VV_OP( 417,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000055555556 );
  TEST_VV_OP( 418,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000066666667, 0x00000055555556 );
  TEST_VV_OP( 419,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0xffffffffffff4afd, 0x00000055555556 );
  TEST_VV_OP( 420,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000055555556 );
  TEST_VV_OP( 421,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0xffffffffaaaaaaab );
  TEST_VV_OP( 422,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0xffffffffaaaaaaab );
  TEST_VV_OP( 423,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0xffffffffaaaaaaaa, 0xffffffffaaaaaaab );
  TEST_VV_OP( 424,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0xffffffffaaaaaaab );
  TEST_VV_OP( 425,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0xffffffffaaaaaaab );
  TEST_VV_OP( 426,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666666, 0xffffffffaaaaaaab );
  TEST_VV_OP( 427,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0xffffffffffff4afc, 0xffffffffaaaaaaab );
  TEST_VV_OP( 428,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0xffffffffaaaaaaab );
  TEST_VV_OP( 429,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0xffffffffaaaaaaab );
  TEST_VV_OP( 430,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0xffffffffaaaaaaab );
  TEST_VV_OP( 431,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0xffffffffaaaaaaab );
  TEST_VV_OP( 432,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0xffffffffaaaaaaab );
  TEST_VV_OP( 433,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0xffffffffaaaaaaab );
  TEST_VV_OP( 434,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0xffffffffaaaaaaab );
  TEST_VV_OP( 435,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0xffffffffaaaaaaab );
  TEST_VV_OP( 436,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0xffffffffaaaaaaab );
  TEST_VV_OP( 437,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0xffffffffaaaaaaab, 0xffffffffaaaaaaab );
  TEST_VV_OP( 438,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0xffffffffaaaaaaab );
  TEST_VV_OP( 439,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0xffffffffaaaaaaab );
  TEST_VV_OP( 440,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000066666667, 0xffffffffaaaaaaab );
  TEST_VV_OP( 441,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0xffffffffffff4afd, 0xffffffffaaaaaaab );
  TEST_VV_OP( 442,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0xffffffffaaaaaaab );
  TEST_VV_OP( 443,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000006 );
  TEST_VV_OP( 444,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000055555555, 0x00000000000006 );
  TEST_VV_OP( 445,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0xffffffffaaaaaaaa, 0x00000000000006 );
  TEST_VV_OP( 446,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000000000006 );
  TEST_VV_OP( 447,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000033333333, 0x00000000000006 );
  TEST_VV_OP( 448,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000066666666, 0x00000000000006 );
  TEST_VV_OP( 449,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0xffffffffffff4afc, 0x00000000000006 );
  TEST_VV_OP( 450,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x0000000000b504, 0x00000000000006 );
  TEST_VV_OP( 451,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000006 );
  TEST_VV_OP( 452,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000055555554, 0x00000000000006 );
  TEST_VV_OP( 453,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000006 );
  TEST_VV_OP( 454,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000006 );
  TEST_VV_OP( 455,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000033333332, 0x00000000000006 );
  TEST_VV_OP( 456,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000066666665, 0x00000000000006 );
  TEST_VV_OP( 457,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x0000000000b503, 0x00000000000006 );
  TEST_VV_OP( 458,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000055555556, 0x00000000000006 );
  TEST_VV_OP( 459,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0xffffffffaaaaaaab, 0x00000000000006 );
  TEST_VV_OP( 460,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000000000006 );
  TEST_VV_OP( 461,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000033333334, 0x00000000000006 );
  TEST_VV_OP( 462,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000066666667, 0x00000000000006 );
  TEST_VV_OP( 463,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0xffffffffffff4afd, 0x00000000000006 );
  TEST_VV_OP( 464,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x0000000000b505, 0x00000000000006 );
  TEST_VV_OP( 465,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000033333334 );
  TEST_VV_OP( 466,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000055555555, 0x00000033333334 );
  TEST_VV_OP( 467,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0xffffffffaaaaaaaa, 0x00000033333334 );
  TEST_VV_OP( 468,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000033333334 );
  TEST_VV_OP( 469,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000033333334 );
  TEST_VV_OP( 470,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000066666666, 0x00000033333334 );
  TEST_VV_OP( 471,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0xffffffffffff4afc, 0x00000033333334 );
  TEST_VV_OP( 472,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000033333334 );
  TEST_VV_OP( 473,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000033333334 );
  TEST_VV_OP( 474,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000055555554, 0x00000033333334 );
  TEST_VV_OP( 475,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000033333334 );
  TEST_VV_OP( 476,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000033333334 );
  TEST_VV_OP( 477,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000033333334 );
  TEST_VV_OP( 478,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000066666665, 0x00000033333334 );
  TEST_VV_OP( 479,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000033333334 );
  TEST_VV_OP( 480,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000055555556, 0x00000033333334 );
  TEST_VV_OP( 481,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0xffffffffaaaaaaab, 0x00000033333334 );
  TEST_VV_OP( 482,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000033333334 );
  TEST_VV_OP( 483,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000033333334 );
  TEST_VV_OP( 484,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000066666667, 0x00000033333334 );
  TEST_VV_OP( 485,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0xffffffffffff4afd, 0x00000033333334 );
  TEST_VV_OP( 486,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000033333334 );
  TEST_VV_OP( 487,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000066666667 );
  TEST_VV_OP( 488,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000066666667 );
  TEST_VV_OP( 489,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0xffffffffaaaaaaaa, 0x00000066666667 );
  TEST_VV_OP( 490,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000066666667 );
  TEST_VV_OP( 491,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000066666667 );
  TEST_VV_OP( 492,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666666, 0x00000066666667 );
  TEST_VV_OP( 493,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0xffffffffffff4afc, 0x00000066666667 );
  TEST_VV_OP( 494,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000066666667 );
  TEST_VV_OP( 495,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000066666667 );
  TEST_VV_OP( 496,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000066666667 );
  TEST_VV_OP( 497,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000066666667 );
  TEST_VV_OP( 498,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000066666667 );
  TEST_VV_OP( 499,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0x00000066666667 );
  TEST_VV_OP( 500,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0x00000066666667 );
  TEST_VV_OP( 501,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x00000066666667 );
  TEST_VV_OP( 502,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0x00000066666667 );
  TEST_VV_OP( 503,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0xffffffffaaaaaaab, 0x00000066666667 );
  TEST_VV_OP( 504,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x00000066666667 );
  TEST_VV_OP( 505,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0x00000066666667 );
  TEST_VV_OP( 506,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000066666667, 0x00000066666667 );
  TEST_VV_OP( 507,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0xffffffffffff4afd, 0x00000066666667 );
  TEST_VV_OP( 508,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x00000066666667 );
  TEST_VV_OP( 509,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0xffffffffffff4afd );
  TEST_VV_OP( 510,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0xffffffffffff4afd );
  TEST_VV_OP( 511,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaaa, 0xffffffffaaaaaaaa, 0xffffffffffff4afd );
  TEST_VV_OP( 512,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0xffffffffffff4afd );
  TEST_VV_OP( 513,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0xffffffffffff4afd );
  TEST_VV_OP( 514,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666666, 0x00000066666666, 0xffffffffffff4afd );
  TEST_VV_OP( 515,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4afc, 0xffffffffffff4afc, 0xffffffffffff4afd );
  TEST_VV_OP( 516,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0xffffffffffff4afd );
  TEST_VV_OP( 517,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0xffffffffffff4afd );
  TEST_VV_OP( 518,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0xffffffffffff4afd );
  TEST_VV_OP( 519,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0xffffffffffff4afd );
  TEST_VV_OP( 520,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0xffffffffffff4afd );
  TEST_VV_OP( 521,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333332, 0x00000033333332, 0xffffffffffff4afd );
  TEST_VV_OP( 522,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666665, 0x00000066666665, 0xffffffffffff4afd );
  TEST_VV_OP( 523,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0xffffffffffff4afd );
  TEST_VV_OP( 524,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555556, 0x00000055555556, 0xffffffffffff4afd );
  TEST_VV_OP( 525,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000aaaaaaab, 0xffffffffaaaaaaab, 0xffffffffffff4afd );
  TEST_VV_OP( 526,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0xffffffffffff4afd );
  TEST_VV_OP( 527,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333334, 0x00000033333334, 0xffffffffffff4afd );
  TEST_VV_OP( 528,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666667, 0x00000066666667, 0xffffffffffff4afd );
  TEST_VV_OP( 529,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff4afd, 0xffffffffffff4afd, 0xffffffffffff4afd );
  TEST_VV_OP( 530,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0xffffffffffff4afd );
  TEST_VV_OP( 531,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x0000000000b505 );
  TEST_VV_OP( 532,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000055555555, 0x0000000000b505 );
  TEST_VV_OP( 533,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0xffffffffaaaaaaaa, 0x0000000000b505 );
  TEST_VV_OP( 534,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x0000000000b505 );
  TEST_VV_OP( 535,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000033333333, 0x0000000000b505 );
  TEST_VV_OP( 536,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000066666666, 0x0000000000b505 );
  TEST_VV_OP( 537,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0xffffffffffff4afc, 0x0000000000b505 );
  TEST_VV_OP( 538,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x0000000000b505 );
  TEST_VV_OP( 539,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x0000000000b505 );
  TEST_VV_OP( 540,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000055555554, 0x0000000000b505 );
  TEST_VV_OP( 541,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x0000000000b505 );
  TEST_VV_OP( 542,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x0000000000b505 );
  TEST_VV_OP( 543,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000033333332, 0x0000000000b505 );
  TEST_VV_OP( 544,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000066666665, 0x0000000000b505 );
  TEST_VV_OP( 545,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0x0000000000b505 );
  TEST_VV_OP( 546,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000055555556, 0x0000000000b505 );
  TEST_VV_OP( 547,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0xffffffffaaaaaaab, 0x0000000000b505 );
  TEST_VV_OP( 548,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006, 0x00000000000006, 0x0000000000b505 );
  TEST_VV_OP( 549,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000033333334, 0x0000000000b505 );
  TEST_VV_OP( 550,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x00000066666667, 0x0000000000b505 );
  TEST_VV_OP( 551,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0xffffffffffff4afd, 0x0000000000b505 );
  TEST_VV_OP( 552,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b505, 0x0000000000b505, 0x0000000000b505 );
  TEST_VV_OP_rd1( 553,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffe, 0xfffffffffffffffe, 0xfffffffffffffffe);
  TEST_VV_OP_12( 554,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffe, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP_rd2( 555,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffd, 0xfffffffffffffffd, 0xfffffffffffffffd);
  TEST_VV_OP_13( 556,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffd, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP_rd3( 557,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffb, 0xfffffffffffffffb, 0xfffffffffffffffb);
  TEST_VV_OP_14( 558,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffffb, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP_rd4( 559,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff7, 0xfffffffffffffff7, 0xfffffffffffffff7);
  TEST_VV_OP_15( 560,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffff7, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP_rd5( 561,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffef, 0xffffffffffffffef, 0xffffffffffffffef);
  TEST_VV_OP_16( 562,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffef, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP_rd6( 563,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffdf, 0xffffffffffffffdf, 0xffffffffffffffdf);
  TEST_VV_OP_17( 564,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffdf, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP_rd7( 565,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffbf, 0xffffffffffffffbf, 0xffffffffffffffbf);
  TEST_VV_OP_rd8( 566,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffff7f, 0xffffffffffffff7f, 0xffffffffffffff7f);
  TEST_VV_OP_19( 567,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffff7f, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP_rd9( 568,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffeff, 0xfffffffffffffeff, 0xfffffffffffffeff);
  TEST_VV_OP_110( 569,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffeff, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP_rd10( 570,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdff, 0xfffffffffffffdff, 0xfffffffffffffdff);
  TEST_VV_OP_111( 571,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffdff, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP_rd11( 572,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbff, 0xfffffffffffffbff, 0xfffffffffffffbff);
  TEST_VV_OP_112( 573,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffffbff, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP_rd12( 574,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7ff, 0xfffffffffffff7ff, 0xfffffffffffff7ff);
  TEST_VV_OP_113( 575,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffff7ff, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP_rd13( 576,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffefff, 0xffffffffffffefff, 0xffffffffffffefff);
  TEST_VV_OP_114( 577,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffefff, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP_rd14( 578,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdfff, 0xffffffffffffdfff, 0xffffffffffffdfff);
  TEST_VV_OP_115( 579,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffdfff, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP_rd15( 580,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffbfff, 0xffffffffffffbfff, 0xffffffffffffbfff);
  TEST_VV_OP_rd16( 581,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff7fff, 0xffffffffffff7fff, 0xffffffffffff7fff);
  TEST_VV_OP_117( 582,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffff7fff, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP_rd17( 583,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffeffff, 0xfffffffffffeffff, 0xfffffffffffeffff);
  TEST_VV_OP_118( 584,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffeffff, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP_rd18( 585,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdffff, 0xfffffffffffdffff, 0xfffffffffffdffff);
  TEST_VV_OP_119( 586,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffdffff, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP_rd19( 587,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbffff, 0xfffffffffffbffff, 0xfffffffffffbffff);
  TEST_VV_OP_120( 588,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffbffff, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP_rd20( 589,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7ffff, 0xfffffffffff7ffff, 0xfffffffffff7ffff);
  TEST_VV_OP_121( 590,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fff7ffff, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP_rd21( 591,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffff, 0xffffffffffefffff, 0xffffffffffefffff);
  TEST_VV_OP_122( 592,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffefffff, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP_rd22( 593,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdfffff, 0xffffffffffdfffff, 0xffffffffffdfffff);
  TEST_VV_OP_123( 594,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffdfffff, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP_rd23( 595,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffbfffff, 0xffffffffffbfffff, 0xffffffffffbfffff);
  TEST_VV_OP_rd25( 596,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feffffff, 0xfffffffffeffffff, 0xfffffffffeffffff);
  TEST_VV_OP_126( 597,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000feffffff, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP_rd26( 598,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdffffff, 0xfffffffffdffffff, 0xfffffffffdffffff);
  TEST_VV_OP_127( 599,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdffffff, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP_rd27( 600,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbffffff, 0xfffffffffbffffff, 0xfffffffffbffffff);
  TEST_VV_OP_128( 601,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fbffffff, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP_rd28( 602,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7ffffff, 0xfffffffff7ffffff, 0xfffffffff7ffffff);
  TEST_VV_OP_129( 603,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f7ffffff, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP_rd29( 604,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efffffff, 0xffffffffefffffff, 0xffffffffefffffff);
  TEST_VV_OP_130( 605,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000efffffff, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP_rd30( 606,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfffffff, 0xffffffffdfffffff, 0xffffffffdfffffff);
  TEST_VV_OP_131( 607,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000dfffffff, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP_rd31( 608,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bfffffff, 0xffffffffbfffffff, 0xffffffffbfffffff);
  TEST_VV_OP_12( 609,  vredminu.vs, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bfffffff, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP_rd1( 610,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffffff, 0x0000007fffffff, 0x0000007fffffff);
  TEST_VV_OP_13( 611,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007fffffff, 0x0000007fffffff, 0x0000007fffffff );
  TEST_VV_OP_rd2( 612,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x00000000000001, 0x00000000000001);
  TEST_VV_OP_14( 613,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP_rd3( 614,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002);
  TEST_VV_OP_15( 615,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP_rd4( 616,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000004);
  TEST_VV_OP_16( 617,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP_rd5( 618,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000008, 0x00000000000008);
  TEST_VV_OP_17( 619,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP_rd6( 620,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010, 0x00000000000010, 0x00000000000010);
  TEST_VV_OP_rd7( 621,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000020, 0x00000000000020);
  TEST_VV_OP_19( 622,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP_rd8( 623,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000040, 0x00000000000040);
  TEST_VV_OP_110( 624,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP_rd9( 625,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000080, 0x00000000000080);
  TEST_VV_OP_111( 626,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP_rd10( 627,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000100, 0x00000000000100);
  TEST_VV_OP_112( 628,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP_rd11( 629,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000200, 0x00000000000200);
  TEST_VV_OP_113( 630,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP_rd12( 631,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400, 0x00000000000400, 0x00000000000400);
  TEST_VV_OP_114( 632,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400, 0x00000000000400, 0x00000000000400 );
  TEST_VV_OP_rd13( 633,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000800, 0x00000000000800);
  TEST_VV_OP_115( 634,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP_rd14( 635,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000, 0x00000000001000, 0x00000000001000);
  TEST_VV_OP_rd15( 636,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000002000, 0x00000000002000);
  TEST_VV_OP_117( 637,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP_rd16( 638,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000004000, 0x00000000004000);
  TEST_VV_OP_118( 639,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP_rd17( 640,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000008000, 0x00000000008000);
  TEST_VV_OP_119( 641,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP_rd18( 642,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000010000, 0x00000000010000);
  TEST_VV_OP_120( 643,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP_rd19( 644,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000020000, 0x00000000020000);
  TEST_VV_OP_121( 645,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP_rd20( 646,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000, 0x00000000040000, 0x00000000040000);
  TEST_VV_OP_122( 647,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000, 0x00000000040000, 0x00000000040000 );
  TEST_VV_OP_rd21( 648,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000080000, 0x00000000080000);
  TEST_VV_OP_123( 649,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP_rd22( 650,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000, 0x00000000100000, 0x00000000100000);
  TEST_VV_OP_rd23( 651,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000, 0x00000000200000, 0x00000000200000);
  TEST_VV_OP_125( 652,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000, 0x00000000200000, 0x00000000200000 );
  TEST_VV_OP_rd25( 653,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000800000, 0x00000000800000);
  TEST_VV_OP_127( 654,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP_rd26( 655,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000001000000, 0x00000001000000);
  TEST_VV_OP_128( 656,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP_rd27( 657,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000002000000, 0x00000002000000);
  TEST_VV_OP_129( 658,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP_rd28( 659,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000004000000, 0x00000004000000);
  TEST_VV_OP_130( 660,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP_rd29( 661,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000008000000, 0x00000008000000);
  TEST_VV_OP_131( 662,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP_rd30( 663,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000010000000, 0x00000010000000);
  TEST_VV_OP_12( 664,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP_rd31( 665,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000020000000, 0x00000020000000);
  TEST_VV_OP_13( 666,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP_rd1( 667,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000040000000, 0x00000040000000);
  TEST_VV_OP_14( 668,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP_rd2( 669,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xffffffff80000000, 0xffffffff80000000);
  TEST_VV_OP_15( 670,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000, 0xffffffff80000000, 0xffffffff80000000 );
  TEST_VV_OP_rd3( 671,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003);
  TEST_VV_OP_16( 672,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP_rd4( 673,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555555, 0x00000000000003);
  TEST_VV_OP_17( 674,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555555, 0x00000000000003 );
  TEST_VV_OP_rd5( 675,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffaaaaaaaa, 0x00000000000003);
  TEST_VV_OP_rd6( 676,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000005, 0x00000000000003);
  TEST_VV_OP_19( 677,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000005, 0x00000000000003 );
  TEST_VV_OP_rd7( 678,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333333, 0x00000000000003);
  TEST_VV_OP_110( 679,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333333, 0x00000000000003 );
  TEST_VV_OP_rd8( 680,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000066666666, 0x00000000000003);
  TEST_VV_OP_111( 681,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000066666666, 0x00000000000003 );
  TEST_VV_OP_rd9( 682,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffffff4afc, 0x00000000000003);
  TEST_VV_OP_112( 683,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffffff4afc, 0x00000000000003 );
  TEST_VV_OP_rd10( 684,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555555, 0x00000000000003);
  TEST_VV_OP_113( 685,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555555, 0x00000000000003 );
  TEST_VV_OP_rd11( 686,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x0000000000b504, 0x00000000000003);
  TEST_VV_OP_114( 687,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x0000000000b504, 0x00000000000003 );
  TEST_VV_OP_rd12( 688,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000003);
  TEST_VV_OP_115( 689,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000000000003 );
  TEST_VV_OP_rd13( 690,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555554, 0x00000000000003);
  TEST_VV_OP_rd14( 691,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000003);
  TEST_VV_OP_117( 692,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000000000003 );
  TEST_VV_OP_rd15( 693,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000004, 0x00000000000003);
  TEST_VV_OP_118( 694,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000004, 0x00000000000003 );
  TEST_VV_OP_rd16( 695,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333332, 0x00000000000003);
  TEST_VV_OP_119( 696,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333332, 0x00000000000003 );
  TEST_VV_OP_rd17( 697,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666665, 0x00000055555555);
  TEST_VV_OP_120( 698,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666665, 0x00000055555555 );
  TEST_VV_OP_rd18( 699,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffaaaaaaaa, 0x00000000000003);
  TEST_VV_OP_121( 700,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP_rd19( 701,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0xffffffffaaaaaaaa);
  TEST_VV_OP_122( 702,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b503, 0x0000000000b503, 0xffffffffaaaaaaaa );
  TEST_VV_OP_rd20( 703,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555556, 0x00000000000003);
  TEST_VV_OP_123( 704,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000055555556, 0x00000000000003 );
  TEST_VV_OP_rd21( 705,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffaaaaaaab, 0x00000000000003);
  TEST_VV_OP_rd22( 706,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000006, 0x00000000000003);
  TEST_VV_OP_125( 707,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000006, 0x00000000000003 );
  TEST_VV_OP_rd23( 708,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333334, 0x00000000000003);
  TEST_VV_OP_126( 709,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000033333334, 0x00000000000003 );
  TEST_VV_OP_rd25( 710,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffffff4afd, 0x00000000000003);
  TEST_VV_OP_128( 711,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0xffffffffffff4afd, 0x00000000000003 );
  TEST_VV_OP_rd26( 712,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000b505, 0x00000000000000);
  TEST_VV_OP_129( 713,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0000000000b505, 0x00000000000000 );
  TEST_VV_OP_rd27( 714,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003);
  TEST_VV_OP_130( 715,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP_rd28( 716,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000055555555);
  TEST_VV_OP_131( 717,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000055555555, 0x00000055555555 );
  TEST_VV_OP_rd29( 718,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffaaaaaaaa, 0x00000055555555);
  TEST_VV_OP_12( 719,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffaaaaaaaa, 0x00000055555555 );
  TEST_VV_OP_rd30( 720,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000055555555);
  TEST_VV_OP_13( 721,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005, 0x00000000000005, 0x00000055555555 );
  TEST_VV_OP_rd31( 722,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000055555555);
  TEST_VV_OP_14( 723,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333, 0x00000033333333, 0x00000055555555 );
  TEST_VV_OP_rd1( 724,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666666, 0x00000055555555);
  TEST_VV_OP_15( 725,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0x00000066666666, 0x00000055555555 );
  TEST_VV_OP_rd2( 726,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffffff4afc, 0x00000055555555);
  TEST_VV_OP_16( 727,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555, 0xffffffffffff4afc, 0x00000055555555 );
  TEST_VV_OP_rd3( 728,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000055555555);
  TEST_VV_OP_17( 729,  vredminu.vs, 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b504, 0x0000000000b504, 0x00000055555555 );
  TEST_VV_OP_rd4( 730,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002, 0x00000000000002, 0x00000055555555);
  TEST_VV_OP_rd5( 731,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000055555555);
  TEST_VV_OP_19( 732,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555554, 0x00000055555554, 0x00000055555555 );
  TEST_VV_OP_rd6( 733,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000055555555);
  TEST_VV_OP_110( 734,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00000000000000, 0x00000055555555 );
  TEST_VV_OP_rd7( 735,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000055555555);
  TEST_VV_OP_111( 736,  vredminu.vs, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004, 0x00000000000004, 0x00000055555555 );
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
    

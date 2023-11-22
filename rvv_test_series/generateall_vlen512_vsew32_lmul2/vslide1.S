#define TEST_VSLIDE1_VX_OP( testnum, inst, result_base, rd_base, rs1, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle32.v v0, (x7); \
               la  x1, base; \
            vle32.v v8, (x1); \
            la  x1, rd_base; \
            vle32.v v16, (x1); \
            li x1, rs1; \
            inst v16, v8, x1, v0.t; \
        )
#define TEST_VSLIDE1_VX_OP_rd_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v2, (x1); \
                li x1, rs1; \
                inst v2, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v2, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v2, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v4, (x1); \
                li x1, rs1; \
                inst v4, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v4, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v4, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v6, (x1); \
                li x1, rs1; \
                inst v6, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v6, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v6, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v10, (x1); \
                li x1, rs1; \
                inst v10, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v10, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v10, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v12, (x1); \
                li x1, rs1; \
                inst v12, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v12, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v12, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v14, (x1); \
                li x1, rs1; \
                inst v14, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v14, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v14, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v18, (x1); \
                li x1, rs1; \
                inst v18, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v18, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v18, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v20, (x1); \
                li x1, rs1; \
                inst v20, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v20, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v20, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v22, (x1); \
                li x1, rs1; \
                inst v22, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v22, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v22, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v24, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v24, (x1); \
                li x1, rs1; \
                inst v24, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v24, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v24, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v26, (x1); \
                li x1, rs1; \
                inst v26, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v26, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v26, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v28, (x1); \
                li x1, rs1; \
                inst v28, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v28, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v28, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v30, (x1); \
                li x1, rs1; \
                inst v30, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v30, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, rs1; \
                inst v16, v30, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x2, rs1; \
                inst v16, v8, x2, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_3( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x3, rs1; \
                inst v16, v8, x3, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x4, rs1; \
                inst v16, v8, x4, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_5( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x5, rs1; \
                inst v16, v8, x5, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x6, rs1; \
                inst v16, v8, x6, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_8( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x8, rs1; \
                inst v16, v8, x8, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_9( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x9, rs1; \
                inst v16, v8, x9, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x10, rs1; \
                inst v16, v8, x10, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_11( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x11, rs1; \
                inst v16, v8, x11, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x12, rs1; \
                inst v16, v8, x12, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_13( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x13, rs1; \
                inst v16, v8, x13, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x14, rs1; \
                inst v16, v8, x14, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_15( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x15, rs1; \
                inst v16, v8, x15, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_16( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x16, rs1; \
                inst v16, v8, x16, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_17( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x17, rs1; \
                inst v16, v8, x17, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x18, rs1; \
                inst v16, v8, x18, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_19( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x19, rs1; \
                inst v16, v8, x19, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x20, rs1; \
                inst v16, v8, x20, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_21( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x21, rs1; \
                inst v16, v8, x21, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x22, rs1; \
                inst v16, v8, x22, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_23( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x23, rs1; \
                inst v16, v8, x23, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x24, rs1; \
                inst v16, v8, x24, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_25( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x25, rs1; \
                inst v16, v8, x25, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x26, rs1; \
                inst v16, v8, x26, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_27( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x27, rs1; \
                inst v16, v8, x27, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x28, rs1; \
                inst v16, v8, x28, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_29( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x29, rs1; \
                inst v16, v8, x29, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x30, rs1; \
                inst v16, v8, x30, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_31( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x31, rs1; \
                inst v16, v8, x31, v0.t; \
            )
#----------------------------------------------------------------------------- 
    # vslide1.S
    #-----------------------------------------------------------------------------
    #
    # Test vslide1 instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vslide1)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vslide1up/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSLIDE1_VX_OP( 1, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP( 2, vslide1down.vx, walking_data_slide1downans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP( 3, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP( 4, vslide1down.vx, walking_data_slide1downans1, rd_data, -9, walking_data1 );
  #-------------------------------------------------------------
  # vslide1up/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VSLIDE1_VX_OP_rd_2( 5, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_2( 6, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_2( 7, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_3( 8, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_4( 9, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_4( 10, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_4( 11, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_5( 12, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_6( 13, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_6( 14, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_6( 15, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_8( 16, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_9( 17, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_10( 18, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_10( 19, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_10( 20, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_11( 21, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_12( 22, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_12( 23, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_12( 24, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_13( 25, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_14( 26, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_14( 27, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_14( 28, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_15( 29, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_16( 30, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_17( 31, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_18( 32, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_18( 33, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_18( 34, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_19( 35, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_20( 36, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_20( 37, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_20( 38, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_21( 39, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_22( 40, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_22( 41, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_22( 42, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_23( 43, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_24( 44, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_24( 45, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_24( 46, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_25( 47, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_26( 48, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_26( 49, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_26( 50, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_27( 51, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_28( 52, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_28( 53, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_28( 54, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_29( 55, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_30( 56, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_30( 57, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_30( 58, vslide1up.vx, walking_data_slide1upans0, rd_data, -2147483648, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_31( 59, vslide1up.vx, walking_data_slide1upans1, rd_data, -9, walking_data1 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
rd_data:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21
.word	22
.word	23
.word	24
.word	25
.word	26
.word	27
.word	28
.word	29
.word	30
.word	33
.word	35
.word	36
.word	37
.word	39
.word	40
.word	41

walking_data0:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17

walking_data_slide1upans0:
.word	-2147483648
.word	5
.word	6
.word	7
.word	-1073741825
.word	10
.word	11
.word	12
.word	-67108865
.word	14
.word	15
.word	17
.word	-4194305
.word	19
.word	20
.word	21
.word	-262145
.word	23
.word	24
.word	25
.word	-46339
.word	27
.word	28
.word	29
.word	-4097
.word	33
.word	35
.word	36
.word	-257
.word	39
.word	40
.word	41

walking_data_slide1downans0:
.word	-1431655766
.word	5
.word	6
.word	7
.word	-268435457
.word	10
.word	11
.word	12
.word	-16777217
.word	14
.word	15
.word	17
.word	-1048577
.word	19
.word	20
.word	21
.word	-65537
.word	23
.word	24
.word	25
.word	-16385
.word	27
.word	28
.word	29
.word	-1025
.word	33
.word	35
.word	36
.word	-65
.word	39
.word	40
.word	41

walking_data1:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576

walking_data_slide1upans1:
.word	-9
.word	5
.word	6
.word	7
.word	-2
.word	10
.word	11
.word	12
.word	3
.word	14
.word	15
.word	17
.word	8
.word	19
.word	20
.word	21
.word	128
.word	23
.word	24
.word	25
.word	2048
.word	27
.word	28
.word	29
.word	32768
.word	33
.word	35
.word	36
.word	65536
.word	39
.word	40
.word	41

walking_data_slide1downans1:
.word	-5
.word	5
.word	6
.word	7
.word	1
.word	10
.word	11
.word	12
.word	5
.word	14
.word	15
.word	17
.word	32
.word	19
.word	20
.word	21
.word	512
.word	23
.word	24
.word	25
.word	8192
.word	27
.word	28
.word	29
.word	46340
.word	33
.word	35
.word	36
.word	262144
.word	39
.word	40
.word	41


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
    

#define TEST_VSLIDE1_VX_OP( testnum, inst, result_base, rd_base, rs1, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle64.v v0, (x7); \
               la  x1, base; \
            vle64.v v8, (x1); \
            la  x1, rd_base; \
            vle64.v v16, (x1); \
            li x1, rs1; \
            inst v16, v8, x1, v0.t; \
        )
#define TEST_VSLIDE1_VX_OP_rd_1( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v1, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v1, (x1); \
                li x1, rs1; \
                inst v1, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_1( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v1, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v1, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v2, (x1); \
                li x1, rs1; \
                inst v2, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v2, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v2, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_3( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v3, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v3, (x1); \
                li x1, rs1; \
                inst v3, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_3( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v3, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v3, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v4, (x1); \
                li x1, rs1; \
                inst v4, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v4, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v4, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_5( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v5, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v5, (x1); \
                li x1, rs1; \
                inst v5, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_5( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v5, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v5, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v6, (x1); \
                li x1, rs1; \
                inst v6, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v6, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v6, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_7( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v7, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v7, (x1); \
                li x1, rs1; \
                inst v7, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_7( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v7, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v7, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_9( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v9, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v9, (x1); \
                li x1, rs1; \
                inst v9, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_9( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v9, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v9, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v10, (x1); \
                li x1, rs1; \
                inst v10, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v10, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v10, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_11( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v11, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v11, (x1); \
                li x1, rs1; \
                inst v11, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_11( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v11, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v11, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v12, (x1); \
                li x1, rs1; \
                inst v12, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v12, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v12, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_13( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v13, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v13, (x1); \
                li x1, rs1; \
                inst v13, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_13( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v13, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v13, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v14, (x1); \
                li x1, rs1; \
                inst v14, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v14, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v14, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_15( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v15, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v15, (x1); \
                li x1, rs1; \
                inst v15, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_15( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v15, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v15, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_17( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v17, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v17, (x1); \
                li x1, rs1; \
                inst v17, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_17( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v17, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v17, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v18, (x1); \
                li x1, rs1; \
                inst v18, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v18, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v18, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_19( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v19, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v19, (x1); \
                li x1, rs1; \
                inst v19, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_19( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v19, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v19, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v20, (x1); \
                li x1, rs1; \
                inst v20, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v20, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v20, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_21( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v21, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v21, (x1); \
                li x1, rs1; \
                inst v21, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_21( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v21, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v21, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v22, (x1); \
                li x1, rs1; \
                inst v22, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v22, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v22, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_23( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v23, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v23, (x1); \
                li x1, rs1; \
                inst v23, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_23( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v23, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v23, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v24, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v24, (x1); \
                li x1, rs1; \
                inst v24, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v24, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v24, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_25( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v25, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v25, (x1); \
                li x1, rs1; \
                inst v25, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_25( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v25, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v25, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v26, (x1); \
                li x1, rs1; \
                inst v26, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v26, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v26, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_27( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v27, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v27, (x1); \
                li x1, rs1; \
                inst v27, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_27( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v27, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v27, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v28, (x1); \
                li x1, rs1; \
                inst v28, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v28, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v28, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_29( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v29, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v29, (x1); \
                li x1, rs1; \
                inst v29, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_29( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v29, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v29, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v30, (x1); \
                li x1, rs1; \
                inst v30, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v30, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v30, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rd_31( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v31, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v31, (x1); \
                li x1, rs1; \
                inst v31, v8, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs2_31( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v31, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, rs1; \
                inst v16, v31, x1, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_2( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x2, rs1; \
                inst v16, v8, x2, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_3( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x3, rs1; \
                inst v16, v8, x3, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_4( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x4, rs1; \
                inst v16, v8, x4, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_5( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x5, rs1; \
                inst v16, v8, x5, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_6( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x6, rs1; \
                inst v16, v8, x6, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_8( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x8, rs1; \
                inst v16, v8, x8, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_9( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x9, rs1; \
                inst v16, v8, x9, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_10( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x10, rs1; \
                inst v16, v8, x10, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_11( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x11, rs1; \
                inst v16, v8, x11, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_12( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x12, rs1; \
                inst v16, v8, x12, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_13( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x13, rs1; \
                inst v16, v8, x13, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_14( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x14, rs1; \
                inst v16, v8, x14, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_15( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x15, rs1; \
                inst v16, v8, x15, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_16( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x16, rs1; \
                inst v16, v8, x16, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_17( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x17, rs1; \
                inst v16, v8, x17, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_18( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x18, rs1; \
                inst v16, v8, x18, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_19( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x19, rs1; \
                inst v16, v8, x19, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_20( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x20, rs1; \
                inst v16, v8, x20, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_21( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x21, rs1; \
                inst v16, v8, x21, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_22( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x22, rs1; \
                inst v16, v8, x22, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_23( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x23, rs1; \
                inst v16, v8, x23, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_24( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x24, rs1; \
                inst v16, v8, x24, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_25( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x25, rs1; \
                inst v16, v8, x25, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_26( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x26, rs1; \
                inst v16, v8, x26, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_27( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x27, rs1; \
                inst v16, v8, x27, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_28( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x28, rs1; \
                inst v16, v8, x28, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_29( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x29, rs1; \
                inst v16, v8, x29, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_30( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x30, rs1; \
                inst v16, v8, x30, v0.t; \
            )
#define TEST_VSLIDE1_VX_OP_rs1_31( testnum, inst, result_base, rd_base, rs1, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
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
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vslide1up/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSLIDE1_VX_OP( 1, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP( 2, vslide1down.vx, walking_data_slide1downans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP( 3, vslide1up.vx, walking_data_slide1upans1, rd_data, -144115188075855873, walking_data1 );
  TEST_VSLIDE1_VX_OP( 4, vslide1down.vx, walking_data_slide1downans1, rd_data, -144115188075855873, walking_data1 );
  TEST_VSLIDE1_VX_OP( 5, vslide1up.vx, walking_data_slide1upans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP( 6, vslide1down.vx, walking_data_slide1downans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP( 7, vslide1up.vx, walking_data_slide1upans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP( 8, vslide1down.vx, walking_data_slide1downans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP( 9, vslide1up.vx, walking_data_slide1upans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP( 10, vslide1down.vx, walking_data_slide1downans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP( 11, vslide1up.vx, walking_data_slide1upans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP( 12, vslide1down.vx, walking_data_slide1downans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP( 13, vslide1up.vx, walking_data_slide1upans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP( 14, vslide1down.vx, walking_data_slide1downans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP( 15, vslide1up.vx, walking_data_slide1upans7, rd_data, -2049, walking_data7 );
  TEST_VSLIDE1_VX_OP( 16, vslide1down.vx, walking_data_slide1downans7, rd_data, -2049, walking_data7 );
  TEST_VSLIDE1_VX_OP( 17, vslide1up.vx, walking_data_slide1upans8, rd_data, -9, walking_data8 );
  TEST_VSLIDE1_VX_OP( 18, vslide1down.vx, walking_data_slide1downans8, rd_data, -9, walking_data8 );
  TEST_VSLIDE1_VX_OP( 19, vslide1up.vx, walking_data_slide1upans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP( 20, vslide1down.vx, walking_data_slide1downans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP( 21, vslide1up.vx, walking_data_slide1upans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP( 22, vslide1down.vx, walking_data_slide1downans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP( 23, vslide1up.vx, walking_data_slide1upans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP( 24, vslide1down.vx, walking_data_slide1downans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP( 25, vslide1up.vx, walking_data_slide1upans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP( 26, vslide1down.vx, walking_data_slide1downans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP( 27, vslide1up.vx, walking_data_slide1upans13, rd_data, 3037000498, walking_data13 );
  TEST_VSLIDE1_VX_OP( 28, vslide1down.vx, walking_data_slide1downans13, rd_data, 3037000498, walking_data13 );
  TEST_VSLIDE1_VX_OP( 29, vslide1up.vx, walking_data_slide1upans14, rd_data, 137438953472, walking_data14 );
  TEST_VSLIDE1_VX_OP( 30, vslide1down.vx, walking_data_slide1downans14, rd_data, 137438953472, walking_data14 );
  TEST_VSLIDE1_VX_OP( 31, vslide1up.vx, walking_data_slide1upans15, rd_data, 35184372088832, walking_data15 );
  TEST_VSLIDE1_VX_OP( 32, vslide1down.vx, walking_data_slide1downans15, rd_data, 35184372088832, walking_data15 );
  TEST_VSLIDE1_VX_OP( 33, vslide1up.vx, walking_data_slide1upans16, rd_data, 9007199254740992, walking_data16 );
  TEST_VSLIDE1_VX_OP( 34, vslide1down.vx, walking_data_slide1downans16, rd_data, 9007199254740992, walking_data16 );
  TEST_VSLIDE1_VX_OP( 35, vslide1up.vx, walking_data_slide1upans17, rd_data, 2305843009213693952, walking_data17 );
  TEST_VSLIDE1_VX_OP( 36, vslide1down.vx, walking_data_slide1downans17, rd_data, 2305843009213693952, walking_data17 );
  #-------------------------------------------------------------
  # vslide1up/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VSLIDE1_VX_OP_rd_1( 37, vslide1up.vx, walking_data_slide1upans1, rd_data, -144115188075855873, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs2_1( 38, vslide1up.vx, walking_data_slide1upans1, rd_data, -144115188075855873, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_2( 39, vslide1up.vx, walking_data_slide1upans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs2_2( 40, vslide1up.vx, walking_data_slide1upans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_2( 41, vslide1up.vx, walking_data_slide1upans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP_rd_3( 42, vslide1up.vx, walking_data_slide1upans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP_rs2_3( 43, vslide1up.vx, walking_data_slide1upans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP_rs1_3( 44, vslide1up.vx, walking_data_slide1upans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP_rd_4( 45, vslide1up.vx, walking_data_slide1upans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP_rs2_4( 46, vslide1up.vx, walking_data_slide1upans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP_rs1_4( 47, vslide1up.vx, walking_data_slide1upans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP_rd_5( 48, vslide1up.vx, walking_data_slide1upans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP_rs2_5( 49, vslide1up.vx, walking_data_slide1upans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP_rs1_5( 50, vslide1up.vx, walking_data_slide1upans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP_rd_6( 51, vslide1up.vx, walking_data_slide1upans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP_rs2_6( 52, vslide1up.vx, walking_data_slide1upans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP_rs1_6( 53, vslide1up.vx, walking_data_slide1upans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP_rd_7( 54, vslide1up.vx, walking_data_slide1upans7, rd_data, -2049, walking_data7 );
  TEST_VSLIDE1_VX_OP_rs2_7( 55, vslide1up.vx, walking_data_slide1upans7, rd_data, -2049, walking_data7 );
  TEST_VSLIDE1_VX_OP_rs1_8( 56, vslide1up.vx, walking_data_slide1upans8, rd_data, -9, walking_data8 );
  TEST_VSLIDE1_VX_OP_rd_9( 57, vslide1up.vx, walking_data_slide1upans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP_rs2_9( 58, vslide1up.vx, walking_data_slide1upans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP_rs1_9( 59, vslide1up.vx, walking_data_slide1upans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP_rd_10( 60, vslide1up.vx, walking_data_slide1upans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP_rs2_10( 61, vslide1up.vx, walking_data_slide1upans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP_rs1_10( 62, vslide1up.vx, walking_data_slide1upans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP_rd_11( 63, vslide1up.vx, walking_data_slide1upans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP_rs2_11( 64, vslide1up.vx, walking_data_slide1upans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP_rs1_11( 65, vslide1up.vx, walking_data_slide1upans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP_rd_12( 66, vslide1up.vx, walking_data_slide1upans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP_rs2_12( 67, vslide1up.vx, walking_data_slide1upans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP_rs1_12( 68, vslide1up.vx, walking_data_slide1upans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP_rd_13( 69, vslide1up.vx, walking_data_slide1upans13, rd_data, 3037000498, walking_data13 );
  TEST_VSLIDE1_VX_OP_rs2_13( 70, vslide1up.vx, walking_data_slide1upans13, rd_data, 3037000498, walking_data13 );
  TEST_VSLIDE1_VX_OP_rs1_13( 71, vslide1up.vx, walking_data_slide1upans13, rd_data, 3037000498, walking_data13 );
  TEST_VSLIDE1_VX_OP_rd_14( 72, vslide1up.vx, walking_data_slide1upans14, rd_data, 137438953472, walking_data14 );
  TEST_VSLIDE1_VX_OP_rs2_14( 73, vslide1up.vx, walking_data_slide1upans14, rd_data, 137438953472, walking_data14 );
  TEST_VSLIDE1_VX_OP_rs1_14( 74, vslide1up.vx, walking_data_slide1upans14, rd_data, 137438953472, walking_data14 );
  TEST_VSLIDE1_VX_OP_rd_15( 75, vslide1up.vx, walking_data_slide1upans15, rd_data, 35184372088832, walking_data15 );
  TEST_VSLIDE1_VX_OP_rs2_15( 76, vslide1up.vx, walking_data_slide1upans15, rd_data, 35184372088832, walking_data15 );
  TEST_VSLIDE1_VX_OP_rs1_15( 77, vslide1up.vx, walking_data_slide1upans15, rd_data, 35184372088832, walking_data15 );
  TEST_VSLIDE1_VX_OP_rs1_16( 78, vslide1up.vx, walking_data_slide1upans16, rd_data, 9007199254740992, walking_data16 );
  TEST_VSLIDE1_VX_OP_rd_17( 79, vslide1up.vx, walking_data_slide1upans17, rd_data, 2305843009213693952, walking_data17 );
  TEST_VSLIDE1_VX_OP_rs2_17( 80, vslide1up.vx, walking_data_slide1upans17, rd_data, 2305843009213693952, walking_data17 );
  TEST_VSLIDE1_VX_OP_rs1_17( 81, vslide1up.vx, walking_data_slide1upans17, rd_data, 2305843009213693952, walking_data17 );
  TEST_VSLIDE1_VX_OP_rd_18( 82, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs2_18( 83, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rs1_18( 84, vslide1up.vx, walking_data_slide1upans0, rd_data, -9223372036854775808, walking_data0 );
  TEST_VSLIDE1_VX_OP_rd_19( 85, vslide1up.vx, walking_data_slide1upans1, rd_data, -144115188075855873, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs2_19( 86, vslide1up.vx, walking_data_slide1upans1, rd_data, -144115188075855873, walking_data1 );
  TEST_VSLIDE1_VX_OP_rs1_19( 87, vslide1up.vx, walking_data_slide1upans1, rd_data, -144115188075855873, walking_data1 );
  TEST_VSLIDE1_VX_OP_rd_20( 88, vslide1up.vx, walking_data_slide1upans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs2_20( 89, vslide1up.vx, walking_data_slide1upans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP_rs1_20( 90, vslide1up.vx, walking_data_slide1upans2, rd_data, -562949953421313, walking_data2 );
  TEST_VSLIDE1_VX_OP_rd_21( 91, vslide1up.vx, walking_data_slide1upans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP_rs2_21( 92, vslide1up.vx, walking_data_slide1upans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP_rs1_21( 93, vslide1up.vx, walking_data_slide1upans3, rd_data, -2199023255553, walking_data3 );
  TEST_VSLIDE1_VX_OP_rd_22( 94, vslide1up.vx, walking_data_slide1upans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP_rs2_22( 95, vslide1up.vx, walking_data_slide1upans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP_rs1_22( 96, vslide1up.vx, walking_data_slide1upans4, rd_data, -8589934593, walking_data4 );
  TEST_VSLIDE1_VX_OP_rd_23( 97, vslide1up.vx, walking_data_slide1upans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP_rs2_23( 98, vslide1up.vx, walking_data_slide1upans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP_rs1_23( 99, vslide1up.vx, walking_data_slide1upans5, rd_data, -134217729, walking_data5 );
  TEST_VSLIDE1_VX_OP_rd_24( 100, vslide1up.vx, walking_data_slide1upans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP_rs2_24( 101, vslide1up.vx, walking_data_slide1upans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP_rs1_24( 102, vslide1up.vx, walking_data_slide1upans6, rd_data, -524289, walking_data6 );
  TEST_VSLIDE1_VX_OP_rd_25( 103, vslide1up.vx, walking_data_slide1upans7, rd_data, -2049, walking_data7 );
  TEST_VSLIDE1_VX_OP_rs2_25( 104, vslide1up.vx, walking_data_slide1upans7, rd_data, -2049, walking_data7 );
  TEST_VSLIDE1_VX_OP_rs1_25( 105, vslide1up.vx, walking_data_slide1upans7, rd_data, -2049, walking_data7 );
  TEST_VSLIDE1_VX_OP_rd_26( 106, vslide1up.vx, walking_data_slide1upans8, rd_data, -9, walking_data8 );
  TEST_VSLIDE1_VX_OP_rs2_26( 107, vslide1up.vx, walking_data_slide1upans8, rd_data, -9, walking_data8 );
  TEST_VSLIDE1_VX_OP_rs1_26( 108, vslide1up.vx, walking_data_slide1upans8, rd_data, -9, walking_data8 );
  TEST_VSLIDE1_VX_OP_rd_27( 109, vslide1up.vx, walking_data_slide1upans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP_rs2_27( 110, vslide1up.vx, walking_data_slide1upans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP_rs1_27( 111, vslide1up.vx, walking_data_slide1upans9, rd_data, 4, walking_data9 );
  TEST_VSLIDE1_VX_OP_rd_28( 112, vslide1up.vx, walking_data_slide1upans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP_rs2_28( 113, vslide1up.vx, walking_data_slide1upans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP_rs1_28( 114, vslide1up.vx, walking_data_slide1upans10, rd_data, 256, walking_data10 );
  TEST_VSLIDE1_VX_OP_rd_29( 115, vslide1up.vx, walking_data_slide1upans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP_rs2_29( 116, vslide1up.vx, walking_data_slide1upans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP_rs1_29( 117, vslide1up.vx, walking_data_slide1upans11, rd_data, 65536, walking_data11 );
  TEST_VSLIDE1_VX_OP_rd_30( 118, vslide1up.vx, walking_data_slide1upans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP_rs2_30( 119, vslide1up.vx, walking_data_slide1upans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP_rs1_30( 120, vslide1up.vx, walking_data_slide1upans12, rd_data, 16777216, walking_data12 );
  TEST_VSLIDE1_VX_OP_rd_31( 121, vslide1up.vx, walking_data_slide1upans13, rd_data, 3037000498, walking_data13 );
  TEST_VSLIDE1_VX_OP_rs2_31( 122, vslide1up.vx, walking_data_slide1upans13, rd_data, 3037000498, walking_data13 );
  TEST_VSLIDE1_VX_OP_rs1_31( 123, vslide1up.vx, walking_data_slide1upans13, rd_data, 3037000498, walking_data13 );
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
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745

walking_data_slide1upans0:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	-4611686018427387905
.dword	10
.dword	11
.dword	12

walking_data_slide1downans0:
.dword	-6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	-1152921504606846977
.dword	10
.dword	11
.dword	12

walking_data1:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625

walking_data_slide1upans1:
.dword	-144115188075855873
.dword	5
.dword	6
.dword	7
.dword	-18014398509481985
.dword	10
.dword	11
.dword	12

walking_data_slide1downans1:
.dword	-72057594037927937
.dword	5
.dword	6
.dword	7
.dword	-4503599627370497
.dword	10
.dword	11
.dword	12

walking_data2:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105

walking_data_slide1upans2:
.dword	-562949953421313
.dword	5
.dword	6
.dword	7
.dword	-70368744177665
.dword	10
.dword	11
.dword	12

walking_data_slide1downans2:
.dword	-281474976710657
.dword	5
.dword	6
.dword	7
.dword	-17592186044417
.dword	10
.dword	11
.dword	12

walking_data3:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185

walking_data_slide1upans3:
.dword	-2199023255553
.dword	5
.dword	6
.dword	7
.dword	-274877906945
.dword	10
.dword	11
.dword	12

walking_data_slide1downans3:
.dword	-1099511627777
.dword	5
.dword	6
.dword	7
.dword	-68719476737
.dword	10
.dword	11
.dword	12

walking_data4:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457

walking_data_slide1upans4:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	-3037000498
.dword	10
.dword	11
.dword	12

walking_data_slide1downans4:
.dword	-4294967297
.dword	5
.dword	6
.dword	7
.dword	-1073741825
.dword	10
.dword	11
.dword	12

walking_data5:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577

walking_data_slide1upans5:
.dword	-134217729
.dword	5
.dword	6
.dword	7
.dword	-16777217
.dword	10
.dword	11
.dword	12

walking_data_slide1downans5:
.dword	-67108865
.dword	5
.dword	6
.dword	7
.dword	-4194305
.dword	10
.dword	11
.dword	12

walking_data6:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097

walking_data_slide1upans6:
.dword	-524289
.dword	5
.dword	6
.dword	7
.dword	-65537
.dword	10
.dword	11
.dword	12

walking_data_slide1downans6:
.dword	-262145
.dword	5
.dword	6
.dword	7
.dword	-16385
.dword	10
.dword	11
.dword	12

walking_data7:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17

walking_data_slide1upans7:
.dword	-2049
.dword	5
.dword	6
.dword	7
.dword	-257
.dword	10
.dword	11
.dword	12

walking_data_slide1downans7:
.dword	-1025
.dword	5
.dword	6
.dword	7
.dword	-65
.dword	10
.dword	11
.dword	12

walking_data8:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3

walking_data_slide1upans8:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	-2
.dword	10
.dword	11
.dword	12

walking_data_slide1downans8:
.dword	-5
.dword	5
.dword	6
.dword	7
.dword	1
.dword	10
.dword	11
.dword	12

walking_data9:
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128

walking_data_slide1upans9:
.dword	4
.dword	5
.dword	6
.dword	7
.dword	8
.dword	10
.dword	11
.dword	12

walking_data_slide1downans9:
.dword	5
.dword	5
.dword	6
.dword	7
.dword	32
.dword	10
.dword	11
.dword	12

walking_data10:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768

walking_data_slide1upans10:
.dword	256
.dword	5
.dword	6
.dword	7
.dword	2048
.dword	10
.dword	11
.dword	12

walking_data_slide1downans10:
.dword	512
.dword	5
.dword	6
.dword	7
.dword	8192
.dword	10
.dword	11
.dword	12

walking_data11:
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608

walking_data_slide1upans11:
.dword	65536
.dword	5
.dword	6
.dword	7
.dword	524288
.dword	10
.dword	11
.dword	12

walking_data_slide1downans11:
.dword	131072
.dword	5
.dword	6
.dword	7
.dword	2097152
.dword	10
.dword	11
.dword	12

walking_data12:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648

walking_data_slide1upans12:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	134217728
.dword	10
.dword	11
.dword	12

walking_data_slide1downans12:
.dword	33554432
.dword	5
.dword	6
.dword	7
.dword	536870912
.dword	10
.dword	11
.dword	12

walking_data13:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736

walking_data_slide1upans13:
.dword	3037000498
.dword	5
.dword	6
.dword	7
.dword	4294967296
.dword	10
.dword	11
.dword	12

walking_data_slide1downans13:
.dword	3037000499
.dword	5
.dword	6
.dword	7
.dword	17179869184
.dword	10
.dword	11
.dword	12

walking_data14:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416

walking_data_slide1upans14:
.dword	137438953472
.dword	5
.dword	6
.dword	7
.dword	1099511627776
.dword	10
.dword	11
.dword	12

walking_data_slide1downans14:
.dword	274877906944
.dword	5
.dword	6
.dword	7
.dword	4398046511104
.dword	10
.dword	11
.dword	12

walking_data15:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496

walking_data_slide1upans15:
.dword	35184372088832
.dword	5
.dword	6
.dword	7
.dword	281474976710656
.dword	10
.dword	11
.dword	12

walking_data_slide1downans15:
.dword	70368744177664
.dword	5
.dword	6
.dword	7
.dword	1125899906842624
.dword	10
.dword	11
.dword	12

walking_data16:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976

walking_data_slide1upans16:
.dword	9007199254740992
.dword	5
.dword	6
.dword	7
.dword	72057594037927936
.dword	10
.dword	11
.dword	12

walking_data_slide1downans16:
.dword	18014398509481984
.dword	5
.dword	6
.dword	7
.dword	288230376151711744
.dword	10
.dword	11
.dword	12

walking_data17:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206

walking_data_slide1upans17:
.dword	2305843009213693952
.dword	5
.dword	6
.dword	7
.dword	3689348814741910324
.dword	10
.dword	11
.dword	12

walking_data_slide1downans17:
.dword	3689348814741910322
.dword	5
.dword	6
.dword	7
.dword	6148914691236517204
.dword	10
.dword	11
.dword	12


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
    

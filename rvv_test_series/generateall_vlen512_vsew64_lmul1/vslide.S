#undef TEST_VSLIDE_VX_OP 
#define TEST_VSLIDE_VX_OP( testnum, inst, result_base, rd_base, offset, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle64.v v0, (x7); \
               la  x1, base; \
            vle64.v v8, (x1); \
            la  x1, rd_base; \
            vle64.v v16, (x1); \
            li x1, offset; \
            inst v16, v8, x1, v0.t; \
        )
#undef TEST_VSLIDE_VI_OP 
#define TEST_VSLIDE_VI_OP( testnum, inst, result_base, rd_base, offset_imm, base) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle64.v v0, (x7); \
               la  x1, base; \
            vle64.v v8, (x1); \
            la  x1, rd_base; \
            vle64.v v16, (x1); \
            inst v16, v8, offset_imm, v0.t; \
        )
#define TEST_VSLIDE_VX_OP_rd_1( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v1, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v1, (x1); \
                li x1, offset; \
                inst v1, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v2, (x1); \
                li x1, offset; \
                inst v2, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_3( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v3, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v3, (x1); \
                li x1, offset; \
                inst v3, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v4, (x1); \
                li x1, offset; \
                inst v4, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_5( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v5, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v5, (x1); \
                li x1, offset; \
                inst v5, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v6, (x1); \
                li x1, offset; \
                inst v6, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_7( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v7, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v7, (x1); \
                li x1, offset; \
                inst v7, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_9( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v9, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v9, (x1); \
                li x1, offset; \
                inst v9, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v10, (x1); \
                li x1, offset; \
                inst v10, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_11( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v11, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v11, (x1); \
                li x1, offset; \
                inst v11, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v12, (x1); \
                li x1, offset; \
                inst v12, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_13( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v13, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v13, (x1); \
                li x1, offset; \
                inst v13, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v14, (x1); \
                li x1, offset; \
                inst v14, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_15( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v15, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v15, (x1); \
                li x1, offset; \
                inst v15, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_17( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v17, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v17, (x1); \
                li x1, offset; \
                inst v17, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v18, (x1); \
                li x1, offset; \
                inst v18, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_19( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v19, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v19, (x1); \
                li x1, offset; \
                inst v19, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v20, (x1); \
                li x1, offset; \
                inst v20, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_21( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v21, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v21, (x1); \
                li x1, offset; \
                inst v21, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v22, (x1); \
                li x1, offset; \
                inst v22, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_23( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v23, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v23, (x1); \
                li x1, offset; \
                inst v23, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_25( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v25, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v25, (x1); \
                li x1, offset; \
                inst v25, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v26, (x1); \
                li x1, offset; \
                inst v26, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_27( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v27, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v27, (x1); \
                li x1, offset; \
                inst v27, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v28, (x1); \
                li x1, offset; \
                inst v28, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_29( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v29, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v29, (x1); \
                li x1, offset; \
                inst v29, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v30, (x1); \
                li x1, offset; \
                inst v30, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_31( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v31, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v31, (x1); \
                li x1, offset; \
                inst v31, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_1( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v1, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v1, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v2, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v2, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_3( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v3, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v3, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v4, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v4, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_5( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v5, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v5, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v6, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v6, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_7( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v7, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v7, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_9( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v9, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v9, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v10, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v10, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_11( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v11, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v11, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v12, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v12, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_13( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v13, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v13, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v14, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v14, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_15( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v15, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v15, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_17( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v17, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v17, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v18, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v18, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_19( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v19, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v19, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v20, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v20, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_21( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v21, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v21, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v22, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v22, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_23( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v23, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v23, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_25( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v25, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v25, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v26, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v26, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_27( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v27, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v27, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v28, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v28, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_29( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v29, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v29, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v30, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v30, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_31( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v31, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v31, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x2, offset; \
                inst v16, v8, x2, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_3( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x3, offset; \
                inst v16, v8, x3, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x4, offset; \
                inst v16, v8, x4, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_5( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x5, offset; \
                inst v16, v8, x5, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x6, offset; \
                inst v16, v8, x6, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_8( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x8, offset; \
                inst v16, v8, x8, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_9( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x9, offset; \
                inst v16, v8, x9, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x10, offset; \
                inst v16, v8, x10, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_11( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x11, offset; \
                inst v16, v8, x11, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x12, offset; \
                inst v16, v8, x12, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_13( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x13, offset; \
                inst v16, v8, x13, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x14, offset; \
                inst v16, v8, x14, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_15( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x15, offset; \
                inst v16, v8, x15, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_16( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x16, offset; \
                inst v16, v8, x16, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_17( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x17, offset; \
                inst v16, v8, x17, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x18, offset; \
                inst v16, v8, x18, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_19( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x19, offset; \
                inst v16, v8, x19, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x20, offset; \
                inst v16, v8, x20, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_21( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x21, offset; \
                inst v16, v8, x21, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x22, offset; \
                inst v16, v8, x22, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_23( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x23, offset; \
                inst v16, v8, x23, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_24( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x24, offset; \
                inst v16, v8, x24, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_25( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x25, offset; \
                inst v16, v8, x25, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x26, offset; \
                inst v16, v8, x26, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_27( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x27, offset; \
                inst v16, v8, x27, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x28, offset; \
                inst v16, v8, x28, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_29( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x29, offset; \
                inst v16, v8, x29, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x30, offset; \
                inst v16, v8, x30, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_31( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x31, offset; \
                inst v16, v8, x31, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_1( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v1, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v1, (x1); \
                inst v1, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_2( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v2, (x1); \
                inst v2, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_3( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v3, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v3, (x1); \
                inst v3, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_4( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v4, (x1); \
                inst v4, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_5( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v5, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v5, (x1); \
                inst v5, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_6( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v6, (x1); \
                inst v6, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_7( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v7, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v7, (x1); \
                inst v7, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_9( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v9, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v9, (x1); \
                inst v9, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_10( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v10, (x1); \
                inst v10, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_11( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v11, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v11, (x1); \
                inst v11, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_12( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v12, (x1); \
                inst v12, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_13( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v13, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v13, (x1); \
                inst v13, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_14( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v14, (x1); \
                inst v14, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_15( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v15, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v15, (x1); \
                inst v15, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_17( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v17, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v17, (x1); \
                inst v17, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_18( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v18, (x1); \
                inst v18, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_19( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v19, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v19, (x1); \
                inst v19, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_20( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v20, (x1); \
                inst v20, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_21( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v21, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v21, (x1); \
                inst v21, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_22( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v22, (x1); \
                inst v22, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_23( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v23, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v23, (x1); \
                inst v23, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_25( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v25, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v25, (x1); \
                inst v25, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_26( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v26, (x1); \
                inst v26, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_27( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v27, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v27, (x1); \
                inst v27, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_28( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v28, (x1); \
                inst v28, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_29( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v29, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v29, (x1); \
                inst v29, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_30( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v30, (x1); \
                inst v30, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_31( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v31, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v31, (x1); \
                inst v31, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_1( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v1, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v1, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_2( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v2, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v2, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_3( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v3, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v3, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_4( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v4, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v4, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_5( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v5, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v5, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_6( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v6, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v6, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_7( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v7, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v7, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_9( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v9, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v9, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_10( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v10, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v10, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_11( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v11, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v11, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_12( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v12, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v12, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_13( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v13, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v13, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_14( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v14, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v14, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_15( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v15, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v15, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_17( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v17, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v17, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_18( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v18, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v18, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_19( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v19, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v19, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_20( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v20, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v20, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_21( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v21, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v21, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_22( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v22, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v22, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_23( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v23, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v23, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_25( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v25, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v25, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_26( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v26, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v26, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_27( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v27, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v27, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_28( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v28, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v28, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_29( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v29, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v29, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_30( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v30, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v30, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_31( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v31, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v31, offset_imm, v0.t; \
            )
#----------------------------------------------------------------------------- 
    # vslide.S
    #-----------------------------------------------------------------------------
    #
    # Test vslide instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vslide)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vslideup.vx/vi Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSLIDE_VX_OP( 1, vslideup.vx, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VX_OP( 2, vslidedown.vx, walking_data0_slidedownans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VI_OP( 3, vslideup.vi, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VI_OP( 4, vslidedown.vi, walking_data0_slidedownans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VX_OP( 5, vslideup.vx, walking_data1_slideupans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VX_OP( 6, vslidedown.vx, walking_data1_slidedownans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VI_OP( 7, vslideup.vi, walking_data1_slideupans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VI_OP( 8, vslidedown.vi, walking_data1_slidedownans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VX_OP( 9, vslideup.vx, walking_data2_slideupans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VX_OP( 10, vslidedown.vx, walking_data2_slidedownans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VI_OP( 11, vslideup.vi, walking_data2_slideupans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VI_OP( 12, vslidedown.vi, walking_data2_slidedownans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VX_OP( 13, vslideup.vx, walking_data3_slideupans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VX_OP( 14, vslidedown.vx, walking_data3_slidedownans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VI_OP( 15, vslideup.vi, walking_data3_slideupans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VI_OP( 16, vslidedown.vi, walking_data3_slidedownans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VX_OP( 17, vslideup.vx, walking_data4_slideupans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VX_OP( 18, vslidedown.vx, walking_data4_slidedownans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VI_OP( 19, vslideup.vi, walking_data4_slideupans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VI_OP( 20, vslidedown.vi, walking_data4_slidedownans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VX_OP( 21, vslideup.vx, walking_data5_slideupans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VX_OP( 22, vslidedown.vx, walking_data5_slidedownans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VI_OP( 23, vslideup.vi, walking_data5_slideupans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VI_OP( 24, vslidedown.vi, walking_data5_slidedownans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VX_OP( 25, vslideup.vx, walking_data6_slideupans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VX_OP( 26, vslidedown.vx, walking_data6_slidedownans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VI_OP( 27, vslideup.vi, walking_data6_slideupans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VI_OP( 28, vslidedown.vi, walking_data6_slidedownans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VX_OP( 29, vslideup.vx, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VX_OP( 30, vslidedown.vx, walking_data7_slidedownans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VI_OP( 31, vslideup.vi, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VI_OP( 32, vslidedown.vi, walking_data7_slidedownans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VX_OP( 33, vslideup.vx, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VX_OP( 34, vslidedown.vx, walking_data8_slidedownans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VI_OP( 35, vslideup.vi, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VI_OP( 36, vslidedown.vi, walking_data8_slidedownans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VX_OP( 37, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP( 38, vslidedown.vx, walking_data9_slidedownans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP( 39, vslideup.vi, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP( 40, vslidedown.vi, walking_data9_slidedownans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP( 41, vslideup.vx, walking_data10_slideupans_offset_0, rd_data, 0, walking_data10 );
  TEST_VSLIDE_VX_OP( 42, vslidedown.vx, walking_data10_slidedownans_offset_0, rd_data, 0, walking_data10 );
  TEST_VSLIDE_VI_OP( 43, vslideup.vi, walking_data10_slideupans_offset_0, rd_data, 0, walking_data10 );
  TEST_VSLIDE_VI_OP( 44, vslidedown.vi, walking_data10_slidedownans_offset_0, rd_data, 0, walking_data10 );
  TEST_VSLIDE_VX_OP( 45, vslideup.vx, walking_data11_slideupans_offset_0, rd_data, 0, walking_data11 );
  TEST_VSLIDE_VX_OP( 46, vslidedown.vx, walking_data11_slidedownans_offset_0, rd_data, 0, walking_data11 );
  TEST_VSLIDE_VI_OP( 47, vslideup.vi, walking_data11_slideupans_offset_0, rd_data, 0, walking_data11 );
  TEST_VSLIDE_VI_OP( 48, vslidedown.vi, walking_data11_slidedownans_offset_0, rd_data, 0, walking_data11 );
  TEST_VSLIDE_VX_OP( 49, vslideup.vx, walking_data12_slideupans_offset_0, rd_data, 0, walking_data12 );
  TEST_VSLIDE_VX_OP( 50, vslidedown.vx, walking_data12_slidedownans_offset_0, rd_data, 0, walking_data12 );
  TEST_VSLIDE_VI_OP( 51, vslideup.vi, walking_data12_slideupans_offset_0, rd_data, 0, walking_data12 );
  TEST_VSLIDE_VI_OP( 52, vslidedown.vi, walking_data12_slidedownans_offset_0, rd_data, 0, walking_data12 );
  TEST_VSLIDE_VX_OP( 53, vslideup.vx, walking_data13_slideupans_offset_0, rd_data, 0, walking_data13 );
  TEST_VSLIDE_VX_OP( 54, vslidedown.vx, walking_data13_slidedownans_offset_0, rd_data, 0, walking_data13 );
  TEST_VSLIDE_VI_OP( 55, vslideup.vi, walking_data13_slideupans_offset_0, rd_data, 0, walking_data13 );
  TEST_VSLIDE_VI_OP( 56, vslidedown.vi, walking_data13_slidedownans_offset_0, rd_data, 0, walking_data13 );
  TEST_VSLIDE_VX_OP( 57, vslideup.vx, walking_data14_slideupans_offset_0, rd_data, 0, walking_data14 );
  TEST_VSLIDE_VX_OP( 58, vslidedown.vx, walking_data14_slidedownans_offset_0, rd_data, 0, walking_data14 );
  TEST_VSLIDE_VI_OP( 59, vslideup.vi, walking_data14_slideupans_offset_0, rd_data, 0, walking_data14 );
  TEST_VSLIDE_VI_OP( 60, vslidedown.vi, walking_data14_slidedownans_offset_0, rd_data, 0, walking_data14 );
  TEST_VSLIDE_VX_OP( 61, vslideup.vx, walking_data15_slideupans_offset_0, rd_data, 0, walking_data15 );
  TEST_VSLIDE_VX_OP( 62, vslidedown.vx, walking_data15_slidedownans_offset_0, rd_data, 0, walking_data15 );
  TEST_VSLIDE_VI_OP( 63, vslideup.vi, walking_data15_slideupans_offset_0, rd_data, 0, walking_data15 );
  TEST_VSLIDE_VI_OP( 64, vslidedown.vi, walking_data15_slidedownans_offset_0, rd_data, 0, walking_data15 );
  TEST_VSLIDE_VX_OP( 65, vslideup.vx, walking_data16_slideupans_offset_0, rd_data, 0, walking_data16 );
  TEST_VSLIDE_VX_OP( 66, vslidedown.vx, walking_data16_slidedownans_offset_0, rd_data, 0, walking_data16 );
  TEST_VSLIDE_VI_OP( 67, vslideup.vi, walking_data16_slideupans_offset_0, rd_data, 0, walking_data16 );
  TEST_VSLIDE_VI_OP( 68, vslidedown.vi, walking_data16_slidedownans_offset_0, rd_data, 0, walking_data16 );
  TEST_VSLIDE_VX_OP( 69, vslideup.vx, walking_data17_slideupans_offset_0, rd_data, 0, walking_data17 );
  TEST_VSLIDE_VX_OP( 70, vslidedown.vx, walking_data17_slidedownans_offset_0, rd_data, 0, walking_data17 );
  TEST_VSLIDE_VI_OP( 71, vslideup.vi, walking_data17_slideupans_offset_0, rd_data, 0, walking_data17 );
  TEST_VSLIDE_VI_OP( 72, vslidedown.vi, walking_data17_slidedownans_offset_0, rd_data, 0, walking_data17 );
  #-------------------------------------------------------------
  # vslideup.vx/vi Test  (Different Registers)  ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_2)
  TEST_VSLIDE_VX_OP_rd_1( 73, vslideup.vx, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_1( 74, vslideup.vx, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VI_OP_rd_1( 75, vslideup.vi, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VI_OP_rs2_1( 76, vslideup.vi, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VX_OP_rd_2( 77, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs2_2( 78, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rd_2( 79, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rs2_2( 80, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs1_2( 81, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rd_3( 82, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rs2_3( 83, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VI_OP_rd_3( 84, vslideup.vi, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VI_OP_rs2_3( 85, vslideup.vi, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_3( 86, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rd_4( 87, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs2_4( 88, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rd_4( 89, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rs2_4( 90, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs1_4( 91, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rd_5( 92, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rs2_5( 93, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VI_OP_rd_5( 94, vslideup.vi, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VI_OP_rs2_5( 95, vslideup.vi, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_5( 96, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rd_6( 97, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rs2_6( 98, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VI_OP_rd_6( 99, vslideup.vi, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VI_OP_rs2_6( 100, vslideup.vi, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rs1_6( 101, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rd_7( 102, vslideup.vx, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VX_OP_rs2_7( 103, vslideup.vx, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VI_OP_rd_7( 104, vslideup.vi, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VI_OP_rs2_7( 105, vslideup.vi, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VX_OP_rs1_8( 106, vslideup.vx, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VX_OP_rd_9( 107, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rs2_9( 108, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP_rd_9( 109, vslideup.vi, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP_rs2_9( 110, vslideup.vi, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rs1_9( 111, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rd_10( 112, vslideup.vx, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VX_OP_rs2_10( 113, vslideup.vx, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VI_OP_rd_10( 114, vslideup.vi, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VI_OP_rs2_10( 115, vslideup.vi, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VX_OP_rs1_10( 116, vslideup.vx, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VX_OP_rd_11( 117, vslideup.vx, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VX_OP_rs2_11( 118, vslideup.vx, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VI_OP_rd_11( 119, vslideup.vi, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VI_OP_rs2_11( 120, vslideup.vi, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VX_OP_rs1_11( 121, vslideup.vx, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VX_OP_rd_12( 122, vslideup.vx, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VX_OP_rs2_12( 123, vslideup.vx, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VI_OP_rd_12( 124, vslideup.vi, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VI_OP_rs2_12( 125, vslideup.vi, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VX_OP_rs1_12( 126, vslideup.vx, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VX_OP_rd_13( 127, vslideup.vx, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
  TEST_VSLIDE_VX_OP_rs2_13( 128, vslideup.vx, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
  TEST_VSLIDE_VI_OP_rd_13( 129, vslideup.vi, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
  TEST_VSLIDE_VI_OP_rs2_13( 130, vslideup.vi, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
  TEST_VSLIDE_VX_OP_rs1_13( 131, vslideup.vx, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
  TEST_VSLIDE_VX_OP_rd_14( 132, vslideup.vx, walking_data14_slideupans_offset_5, rd_data, 5, walking_data14 );
  TEST_VSLIDE_VX_OP_rs2_14( 133, vslideup.vx, walking_data14_slideupans_offset_5, rd_data, 5, walking_data14 );
  TEST_VSLIDE_VI_OP_rd_14( 134, vslideup.vi, walking_data14_slideupans_offset_5, rd_data, 5, walking_data14 );
  TEST_VSLIDE_VI_OP_rs2_14( 135, vslideup.vi, walking_data14_slideupans_offset_5, rd_data, 5, walking_data14 );
  TEST_VSLIDE_VX_OP_rs1_14( 136, vslideup.vx, walking_data14_slideupans_offset_5, rd_data, 5, walking_data14 );
  TEST_VSLIDE_VX_OP_rd_15( 137, vslideup.vx, walking_data15_slideupans_offset_6, rd_data, 6, walking_data15 );
  TEST_VSLIDE_VX_OP_rs2_15( 138, vslideup.vx, walking_data15_slideupans_offset_6, rd_data, 6, walking_data15 );
  TEST_VSLIDE_VI_OP_rd_15( 139, vslideup.vi, walking_data15_slideupans_offset_6, rd_data, 6, walking_data15 );
  TEST_VSLIDE_VI_OP_rs2_15( 140, vslideup.vi, walking_data15_slideupans_offset_6, rd_data, 6, walking_data15 );
  TEST_VSLIDE_VX_OP_rs1_15( 141, vslideup.vx, walking_data15_slideupans_offset_6, rd_data, 6, walking_data15 );
  TEST_VSLIDE_VX_OP_rs1_16( 142, vslideup.vx, walking_data16_slideupans_offset_7, rd_data, 7, walking_data16 );
  TEST_VSLIDE_VX_OP_rd_17( 143, vslideup.vx, walking_data17_slideupans_offset_8, rd_data, 8, walking_data17 );
  TEST_VSLIDE_VX_OP_rs2_17( 144, vslideup.vx, walking_data17_slideupans_offset_8, rd_data, 8, walking_data17 );
  TEST_VSLIDE_VI_OP_rd_17( 145, vslideup.vi, walking_data17_slideupans_offset_8, rd_data, 8, walking_data17 );
  TEST_VSLIDE_VI_OP_rs2_17( 146, vslideup.vi, walking_data17_slideupans_offset_8, rd_data, 8, walking_data17 );
  TEST_VSLIDE_VX_OP_rs1_17( 147, vslideup.vx, walking_data17_slideupans_offset_8, rd_data, 8, walking_data17 );
  TEST_VSLIDE_VX_OP_rd_18( 148, vslideup.vx, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VX_OP_rs2_18( 149, vslideup.vx, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VI_OP_rd_18( 150, vslideup.vi, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VI_OP_rs2_18( 151, vslideup.vi, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VX_OP_rs1_18( 152, vslideup.vx, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VX_OP_rd_19( 153, vslideup.vx, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_19( 154, vslideup.vx, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VI_OP_rd_19( 155, vslideup.vi, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VI_OP_rs2_19( 156, vslideup.vi, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VX_OP_rs1_19( 157, vslideup.vx, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VX_OP_rd_20( 158, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs2_20( 159, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rd_20( 160, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rs2_20( 161, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs1_20( 162, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rd_21( 163, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rs2_21( 164, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VI_OP_rd_21( 165, vslideup.vi, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VI_OP_rs2_21( 166, vslideup.vi, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_21( 167, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rd_22( 168, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs2_22( 169, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rd_22( 170, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rs2_22( 171, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs1_22( 172, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rd_23( 173, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rs2_23( 174, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VI_OP_rd_23( 175, vslideup.vi, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VI_OP_rs2_23( 176, vslideup.vi, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_23( 177, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_24( 178, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rd_25( 179, vslideup.vx, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VX_OP_rs2_25( 180, vslideup.vx, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VI_OP_rd_25( 181, vslideup.vi, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VI_OP_rs2_25( 182, vslideup.vi, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VX_OP_rs1_25( 183, vslideup.vx, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VX_OP_rd_26( 184, vslideup.vx, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VX_OP_rs2_26( 185, vslideup.vx, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VI_OP_rd_26( 186, vslideup.vi, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VI_OP_rs2_26( 187, vslideup.vi, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VX_OP_rs1_26( 188, vslideup.vx, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VX_OP_rd_27( 189, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rs2_27( 190, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP_rd_27( 191, vslideup.vi, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP_rs2_27( 192, vslideup.vi, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rs1_27( 193, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rd_28( 194, vslideup.vx, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VX_OP_rs2_28( 195, vslideup.vx, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VI_OP_rd_28( 196, vslideup.vi, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VI_OP_rs2_28( 197, vslideup.vi, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VX_OP_rs1_28( 198, vslideup.vx, walking_data10_slideupans_offset_1, rd_data, 1, walking_data10 );
  TEST_VSLIDE_VX_OP_rd_29( 199, vslideup.vx, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VX_OP_rs2_29( 200, vslideup.vx, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VI_OP_rd_29( 201, vslideup.vi, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VI_OP_rs2_29( 202, vslideup.vi, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VX_OP_rs1_29( 203, vslideup.vx, walking_data11_slideupans_offset_2, rd_data, 2, walking_data11 );
  TEST_VSLIDE_VX_OP_rd_30( 204, vslideup.vx, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VX_OP_rs2_30( 205, vslideup.vx, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VI_OP_rd_30( 206, vslideup.vi, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VI_OP_rs2_30( 207, vslideup.vi, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VX_OP_rs1_30( 208, vslideup.vx, walking_data12_slideupans_offset_3, rd_data, 3, walking_data12 );
  TEST_VSLIDE_VX_OP_rd_31( 209, vslideup.vx, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
  TEST_VSLIDE_VX_OP_rs2_31( 210, vslideup.vx, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
  TEST_VSLIDE_VX_OP_rs1_31( 211, vslideup.vx, walking_data13_slideupans_offset_4, rd_data, 4, walking_data13 );
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

walking_data0_slideupans_offset_0:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	-2305843009213693953
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-4611686018427387905
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-6148914691236517205
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-6148914691236517206
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-9223372036854775808
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_0:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	-2305843009213693953
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_1:
.dword	-6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	-1152921504606846977
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_2:
.dword	-6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	-576460752303423489
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_3:
.dword	-4611686018427387905
.dword	5
.dword	6
.dword	7
.dword	-288230376151711745
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_4:
.dword	-2305843009213693953
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_5:
.dword	-1152921504606846977
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_6:
.dword	-576460752303423489
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_7:
.dword	-288230376151711745
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data0_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data1_slideupans_offset_0:
.dword	-144115188075855873
.dword	5
.dword	6
.dword	7
.dword	-9007199254740993
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-18014398509481985
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-36028797018963969
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-72057594037927937
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-144115188075855873
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_0:
.dword	-144115188075855873
.dword	5
.dword	6
.dword	7
.dword	-9007199254740993
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_1:
.dword	-72057594037927937
.dword	5
.dword	6
.dword	7
.dword	-4503599627370497
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_2:
.dword	-36028797018963969
.dword	5
.dword	6
.dword	7
.dword	-2251799813685249
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_3:
.dword	-18014398509481985
.dword	5
.dword	6
.dword	7
.dword	-1125899906842625
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_4:
.dword	-9007199254740993
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_5:
.dword	-4503599627370497
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_6:
.dword	-2251799813685249
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_7:
.dword	-1125899906842625
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data1_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data2_slideupans_offset_0:
.dword	-562949953421313
.dword	5
.dword	6
.dword	7
.dword	-35184372088833
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-70368744177665
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-140737488355329
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-281474976710657
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-562949953421313
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_0:
.dword	-562949953421313
.dword	5
.dword	6
.dword	7
.dword	-35184372088833
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_1:
.dword	-281474976710657
.dword	5
.dword	6
.dword	7
.dword	-17592186044417
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_2:
.dword	-140737488355329
.dword	5
.dword	6
.dword	7
.dword	-8796093022209
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_3:
.dword	-70368744177665
.dword	5
.dword	6
.dword	7
.dword	-4398046511105
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_4:
.dword	-35184372088833
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_5:
.dword	-17592186044417
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_6:
.dword	-8796093022209
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_7:
.dword	-4398046511105
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data2_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data3_slideupans_offset_0:
.dword	-2199023255553
.dword	5
.dword	6
.dword	7
.dword	-137438953473
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-274877906945
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-549755813889
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-1099511627777
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-2199023255553
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_0:
.dword	-2199023255553
.dword	5
.dword	6
.dword	7
.dword	-137438953473
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_1:
.dword	-1099511627777
.dword	5
.dword	6
.dword	7
.dword	-68719476737
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_2:
.dword	-549755813889
.dword	5
.dword	6
.dword	7
.dword	-34359738369
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_3:
.dword	-274877906945
.dword	5
.dword	6
.dword	7
.dword	-17179869185
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_4:
.dword	-137438953473
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_5:
.dword	-68719476737
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_6:
.dword	-34359738369
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_7:
.dword	-17179869185
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data3_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data4_slideupans_offset_0:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	-2147483649
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-3037000498
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-3037000499
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-4294967297
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-8589934593
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_0:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	-2147483649
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_1:
.dword	-4294967297
.dword	5
.dword	6
.dword	7
.dword	-1073741825
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_2:
.dword	-3037000499
.dword	5
.dword	6
.dword	7
.dword	-536870913
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_3:
.dword	-3037000498
.dword	5
.dword	6
.dword	7
.dword	-268435457
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_4:
.dword	-2147483649
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_5:
.dword	-1073741825
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_6:
.dword	-536870913
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_7:
.dword	-268435457
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data4_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data5_slideupans_offset_0:
.dword	-134217729
.dword	5
.dword	6
.dword	7
.dword	-8388609
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-16777217
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-33554433
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-67108865
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-134217729
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_0:
.dword	-134217729
.dword	5
.dword	6
.dword	7
.dword	-8388609
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_1:
.dword	-67108865
.dword	5
.dword	6
.dword	7
.dword	-4194305
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_2:
.dword	-33554433
.dword	5
.dword	6
.dword	7
.dword	-2097153
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_3:
.dword	-16777217
.dword	5
.dword	6
.dword	7
.dword	-1048577
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_4:
.dword	-8388609
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_5:
.dword	-4194305
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_6:
.dword	-2097153
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_7:
.dword	-1048577
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data5_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data6_slideupans_offset_0:
.dword	-524289
.dword	5
.dword	6
.dword	7
.dword	-32769
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-65537
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-131073
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-262145
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-524289
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_0:
.dword	-524289
.dword	5
.dword	6
.dword	7
.dword	-32769
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_1:
.dword	-262145
.dword	5
.dword	6
.dword	7
.dword	-16385
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_2:
.dword	-131073
.dword	5
.dword	6
.dword	7
.dword	-8193
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_3:
.dword	-65537
.dword	5
.dword	6
.dword	7
.dword	-4097
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_4:
.dword	-32769
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_5:
.dword	-16385
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_6:
.dword	-8193
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_7:
.dword	-4097
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data6_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data7_slideupans_offset_0:
.dword	-2049
.dword	5
.dword	6
.dword	7
.dword	-129
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-257
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-513
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-1025
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-2049
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_0:
.dword	-2049
.dword	5
.dword	6
.dword	7
.dword	-129
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_1:
.dword	-1025
.dword	5
.dword	6
.dword	7
.dword	-65
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_2:
.dword	-513
.dword	5
.dword	6
.dword	7
.dword	-33
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_3:
.dword	-257
.dword	5
.dword	6
.dword	7
.dword	-17
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_4:
.dword	-129
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_5:
.dword	-65
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_6:
.dword	-33
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_7:
.dword	-17
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data7_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data8_slideupans_offset_0:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-2
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-3
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-5
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-9
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_0:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_1:
.dword	-5
.dword	5
.dword	6
.dword	7
.dword	1
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_2:
.dword	-3
.dword	5
.dword	6
.dword	7
.dword	2
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_3:
.dword	-2
.dword	5
.dword	6
.dword	7
.dword	3
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_4:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_5:
.dword	1
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_6:
.dword	2
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data8_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data9_slideupans_offset_0:
.dword	4
.dword	5
.dword	6
.dword	7
.dword	16
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	8
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	6
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	5
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	4
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_0:
.dword	4
.dword	5
.dword	6
.dword	7
.dword	16
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_1:
.dword	5
.dword	5
.dword	6
.dword	7
.dword	32
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_2:
.dword	6
.dword	5
.dword	6
.dword	7
.dword	64
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_3:
.dword	8
.dword	5
.dword	6
.dword	7
.dword	128
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_4:
.dword	16
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_5:
.dword	32
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_6:
.dword	64
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_7:
.dword	128
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data9_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data10_slideupans_offset_0:
.dword	256
.dword	5
.dword	6
.dword	7
.dword	4096
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	2048
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	1024
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	512
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	256
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_0:
.dword	256
.dword	5
.dword	6
.dword	7
.dword	4096
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_1:
.dword	512
.dword	5
.dword	6
.dword	7
.dword	8192
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_2:
.dword	1024
.dword	5
.dword	6
.dword	7
.dword	16384
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_3:
.dword	2048
.dword	5
.dword	6
.dword	7
.dword	32768
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_4:
.dword	4096
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_5:
.dword	8192
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_6:
.dword	16384
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_7:
.dword	32768
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data10_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data11_slideupans_offset_0:
.dword	65536
.dword	5
.dword	6
.dword	7
.dword	1048576
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	524288
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	262144
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	131072
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	65536
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_0:
.dword	65536
.dword	5
.dword	6
.dword	7
.dword	1048576
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_1:
.dword	131072
.dword	5
.dword	6
.dword	7
.dword	2097152
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_2:
.dword	262144
.dword	5
.dword	6
.dword	7
.dword	4194304
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_3:
.dword	524288
.dword	5
.dword	6
.dword	7
.dword	8388608
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_4:
.dword	1048576
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_5:
.dword	2097152
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_6:
.dword	4194304
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_7:
.dword	8388608
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data11_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data12_slideupans_offset_0:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	268435456
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	134217728
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	67108864
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	33554432
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	16777216
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_0:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	268435456
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_1:
.dword	33554432
.dword	5
.dword	6
.dword	7
.dword	536870912
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_2:
.dword	67108864
.dword	5
.dword	6
.dword	7
.dword	1073741824
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_3:
.dword	134217728
.dword	5
.dword	6
.dword	7
.dword	2147483648
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_4:
.dword	268435456
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_5:
.dword	536870912
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_6:
.dword	1073741824
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_7:
.dword	2147483648
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data12_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data13_slideupans_offset_0:
.dword	3037000498
.dword	5
.dword	6
.dword	7
.dword	8589934592
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	4294967296
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	3037000500
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	3037000499
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	3037000498
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_0:
.dword	3037000498
.dword	5
.dword	6
.dword	7
.dword	8589934592
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_1:
.dword	3037000499
.dword	5
.dword	6
.dword	7
.dword	17179869184
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_2:
.dword	3037000500
.dword	5
.dword	6
.dword	7
.dword	34359738368
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_3:
.dword	4294967296
.dword	5
.dword	6
.dword	7
.dword	68719476736
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_4:
.dword	8589934592
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_5:
.dword	17179869184
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_6:
.dword	34359738368
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_7:
.dword	68719476736
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data13_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data14_slideupans_offset_0:
.dword	137438953472
.dword	5
.dword	6
.dword	7
.dword	2199023255552
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	1099511627776
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	549755813888
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	274877906944
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	137438953472
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_0:
.dword	137438953472
.dword	5
.dword	6
.dword	7
.dword	2199023255552
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_1:
.dword	274877906944
.dword	5
.dword	6
.dword	7
.dword	4398046511104
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_2:
.dword	549755813888
.dword	5
.dword	6
.dword	7
.dword	8796093022208
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_3:
.dword	1099511627776
.dword	5
.dword	6
.dword	7
.dword	17592186044416
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_4:
.dword	2199023255552
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_5:
.dword	4398046511104
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_6:
.dword	8796093022208
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_7:
.dword	17592186044416
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data14_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data15_slideupans_offset_0:
.dword	35184372088832
.dword	5
.dword	6
.dword	7
.dword	562949953421312
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	281474976710656
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	140737488355328
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	70368744177664
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	35184372088832
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_0:
.dword	35184372088832
.dword	5
.dword	6
.dword	7
.dword	562949953421312
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_1:
.dword	70368744177664
.dword	5
.dword	6
.dword	7
.dword	1125899906842624
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_2:
.dword	140737488355328
.dword	5
.dword	6
.dword	7
.dword	2251799813685248
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_3:
.dword	281474976710656
.dword	5
.dword	6
.dword	7
.dword	4503599627370496
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_4:
.dword	562949953421312
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_5:
.dword	1125899906842624
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_6:
.dword	2251799813685248
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_7:
.dword	4503599627370496
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data15_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data16_slideupans_offset_0:
.dword	9007199254740992
.dword	5
.dword	6
.dword	7
.dword	144115188075855872
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	72057594037927936
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	36028797018963968
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	18014398509481984
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9007199254740992
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_0:
.dword	9007199254740992
.dword	5
.dword	6
.dword	7
.dword	144115188075855872
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_1:
.dword	18014398509481984
.dword	5
.dword	6
.dword	7
.dword	288230376151711744
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_2:
.dword	36028797018963968
.dword	5
.dword	6
.dword	7
.dword	576460752303423488
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_3:
.dword	72057594037927936
.dword	5
.dword	6
.dword	7
.dword	1152921504606846976
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_4:
.dword	144115188075855872
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_5:
.dword	288230376151711744
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_6:
.dword	576460752303423488
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_7:
.dword	1152921504606846976
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data16_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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

walking_data17_slideupans_offset_0:
.dword	2305843009213693952
.dword	5
.dword	6
.dword	7
.dword	4611686018427387904
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	3689348814741910324
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	3689348814741910323
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	3689348814741910322
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	2305843009213693952
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_0:
.dword	2305843009213693952
.dword	5
.dword	6
.dword	7
.dword	4611686018427387904
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_1:
.dword	3689348814741910322
.dword	5
.dword	6
.dword	7
.dword	6148914691236517204
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_2:
.dword	3689348814741910323
.dword	5
.dword	6
.dword	7
.dword	6148914691236517205
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_3:
.dword	3689348814741910324
.dword	5
.dword	6
.dword	7
.dword	6148914691236517206
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_4:
.dword	4611686018427387904
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_5:
.dword	6148914691236517204
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_6:
.dword	6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_7:
.dword	6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12

walking_data17_slidedownans_offset_8:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
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
    

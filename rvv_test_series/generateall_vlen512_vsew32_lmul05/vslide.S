#undef TEST_VSLIDE_VX_OP 
#define TEST_VSLIDE_VX_OP( testnum, inst, result_base, rd_base, offset, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle32.v v0, (x7); \
               la  x1, base; \
            vle32.v v8, (x1); \
            la  x1, rd_base; \
            vle32.v v16, (x1); \
            li x1, offset; \
            inst v16, v8, x1, v0.t; \
        )
#undef TEST_VSLIDE_VI_OP 
#define TEST_VSLIDE_VI_OP( testnum, inst, result_base, rd_base, offset_imm, base) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle32.v v0, (x7); \
               la  x1, base; \
            vle32.v v8, (x1); \
            la  x1, rd_base; \
            vle32.v v16, (x1); \
            inst v16, v8, offset_imm, v0.t; \
        )
#define TEST_VSLIDE_VX_OP_rd_1( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v1, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v1, (x1); \
                li x1, offset; \
                inst v1, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v2, (x1); \
                li x1, offset; \
                inst v2, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_3( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v3, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v3, (x1); \
                li x1, offset; \
                inst v3, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v4, (x1); \
                li x1, offset; \
                inst v4, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_5( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v5, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v5, (x1); \
                li x1, offset; \
                inst v5, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v6, (x1); \
                li x1, offset; \
                inst v6, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_7( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v7, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v7, (x1); \
                li x1, offset; \
                inst v7, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_9( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v9, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v9, (x1); \
                li x1, offset; \
                inst v9, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v10, (x1); \
                li x1, offset; \
                inst v10, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_11( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v11, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v11, (x1); \
                li x1, offset; \
                inst v11, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v12, (x1); \
                li x1, offset; \
                inst v12, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_13( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v13, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v13, (x1); \
                li x1, offset; \
                inst v13, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v14, (x1); \
                li x1, offset; \
                inst v14, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_15( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v15, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v15, (x1); \
                li x1, offset; \
                inst v15, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_17( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v17, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v17, (x1); \
                li x1, offset; \
                inst v17, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v18, (x1); \
                li x1, offset; \
                inst v18, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_19( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v19, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v19, (x1); \
                li x1, offset; \
                inst v19, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v20, (x1); \
                li x1, offset; \
                inst v20, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_21( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v21, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v21, (x1); \
                li x1, offset; \
                inst v21, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v22, (x1); \
                li x1, offset; \
                inst v22, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_23( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v23, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v23, (x1); \
                li x1, offset; \
                inst v23, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_25( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v25, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v25, (x1); \
                li x1, offset; \
                inst v25, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v26, (x1); \
                li x1, offset; \
                inst v26, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_27( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v27, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v27, (x1); \
                li x1, offset; \
                inst v27, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v28, (x1); \
                li x1, offset; \
                inst v28, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_29( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v29, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v29, (x1); \
                li x1, offset; \
                inst v29, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v30, (x1); \
                li x1, offset; \
                inst v30, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_31( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v31, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v31, (x1); \
                li x1, offset; \
                inst v31, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_1( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v1, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v1, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v2, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v2, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_3( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v3, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v3, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v4, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v4, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_5( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v5, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v5, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v6, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v6, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_7( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v7, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v7, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_9( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v9, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v9, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v10, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v10, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_11( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v11, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v11, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v12, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v12, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_13( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v13, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v13, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v14, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v14, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_15( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v15, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v15, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_17( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v17, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v17, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v18, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v18, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_19( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v19, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v19, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v20, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v20, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_21( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v21, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v21, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v22, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v22, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_23( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v23, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v23, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_25( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v25, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v25, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v26, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v26, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_27( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v27, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v27, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v28, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v28, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_29( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v29, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v29, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v30, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v30, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_31( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v31, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x1, offset; \
                inst v16, v31, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x2, offset; \
                inst v16, v8, x2, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_3( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x3, offset; \
                inst v16, v8, x3, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x4, offset; \
                inst v16, v8, x4, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_5( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x5, offset; \
                inst v16, v8, x5, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x6, offset; \
                inst v16, v8, x6, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_8( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x8, offset; \
                inst v16, v8, x8, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_9( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x9, offset; \
                inst v16, v8, x9, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x10, offset; \
                inst v16, v8, x10, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_11( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x11, offset; \
                inst v16, v8, x11, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x12, offset; \
                inst v16, v8, x12, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_13( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x13, offset; \
                inst v16, v8, x13, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x14, offset; \
                inst v16, v8, x14, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_15( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x15, offset; \
                inst v16, v8, x15, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_16( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x16, offset; \
                inst v16, v8, x16, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_17( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x17, offset; \
                inst v16, v8, x17, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x18, offset; \
                inst v16, v8, x18, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_19( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x19, offset; \
                inst v16, v8, x19, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x20, offset; \
                inst v16, v8, x20, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_21( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x21, offset; \
                inst v16, v8, x21, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x22, offset; \
                inst v16, v8, x22, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_23( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x23, offset; \
                inst v16, v8, x23, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_24( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x24, offset; \
                inst v16, v8, x24, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_25( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x25, offset; \
                inst v16, v8, x25, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x26, offset; \
                inst v16, v8, x26, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_27( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x27, offset; \
                inst v16, v8, x27, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x28, offset; \
                inst v16, v8, x28, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_29( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x29, offset; \
                inst v16, v8, x29, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x30, offset; \
                inst v16, v8, x30, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_31( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                li x31, offset; \
                inst v16, v8, x31, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_1( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v1, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v1, (x1); \
                inst v1, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_2( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v2, (x1); \
                inst v2, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_3( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v3, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v3, (x1); \
                inst v3, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_4( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v4, (x1); \
                inst v4, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_5( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v5, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v5, (x1); \
                inst v5, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_6( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v6, (x1); \
                inst v6, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_7( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v7, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v7, (x1); \
                inst v7, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_9( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v9, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v9, (x1); \
                inst v9, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_10( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v10, (x1); \
                inst v10, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_11( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v11, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v11, (x1); \
                inst v11, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_12( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v12, (x1); \
                inst v12, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_13( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v13, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v13, (x1); \
                inst v13, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_14( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v14, (x1); \
                inst v14, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_15( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v15, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v15, (x1); \
                inst v15, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_17( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v17, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v17, (x1); \
                inst v17, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_18( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v18, (x1); \
                inst v18, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_19( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v19, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v19, (x1); \
                inst v19, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_20( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v20, (x1); \
                inst v20, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_21( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v21, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v21, (x1); \
                inst v21, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_22( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v22, (x1); \
                inst v22, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_23( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v23, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v23, (x1); \
                inst v23, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_25( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v25, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v25, (x1); \
                inst v25, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_26( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v26, (x1); \
                inst v26, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_27( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v27, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v27, (x1); \
                inst v27, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_28( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v28, (x1); \
                inst v28, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_29( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v29, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v29, (x1); \
                inst v29, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_30( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v30, (x1); \
                inst v30, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_31( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v31, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v8, (x1); \
                la  x1, rd_base; \
                vle32.v v31, (x1); \
                inst v31, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_1( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v1, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v1, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_2( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v2, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v2, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_3( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v3, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v3, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_4( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v4, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v4, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_5( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v5, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v5, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_6( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v6, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v6, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_7( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v7, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v7, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_9( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v9, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v9, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_10( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v10, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v10, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_11( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v11, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v11, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_12( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v12, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v12, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_13( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v13, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v13, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_14( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v14, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v14, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_15( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v15, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v15, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_17( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v17, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v17, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_18( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v18, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v18, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_19( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v19, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v19, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_20( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v20, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v20, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_21( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v21, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v21, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_22( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v22, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v22, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_23( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v23, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v23, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_25( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v25, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v25, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_26( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v26, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v26, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_27( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v27, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v27, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_28( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v28, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v28, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_29( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v29, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v29, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_30( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v30, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
                inst v16, v30, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_31( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                   la  x1, base; \
                vle32.v v31, (x1); \
                la  x1, rd_base; \
                vle32.v v16, (x1); \
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
    
    RVTEST_RV64UV
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
  #-------------------------------------------------------------
  # vslideup.vx/vi Test  (Different Registers)  ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_2)
  TEST_VSLIDE_VX_OP_rd_1( 41, vslideup.vx, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_1( 42, vslideup.vx, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VI_OP_rd_1( 43, vslideup.vi, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VI_OP_rs2_1( 44, vslideup.vi, walking_data1_slideupans_offset_1, rd_data, 1, walking_data1 );
  TEST_VSLIDE_VX_OP_rd_2( 45, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs2_2( 46, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rd_2( 47, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rs2_2( 48, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs1_2( 49, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rd_3( 50, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rs2_3( 51, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VI_OP_rd_3( 52, vslideup.vi, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VI_OP_rs2_3( 53, vslideup.vi, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_3( 54, vslideup.vx, walking_data3_slideupans_offset_3, rd_data, 3, walking_data3 );
  TEST_VSLIDE_VX_OP_rd_4( 55, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs2_4( 56, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rd_4( 57, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rs2_4( 58, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs1_4( 59, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rd_5( 60, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rs2_5( 61, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VI_OP_rd_5( 62, vslideup.vi, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VI_OP_rs2_5( 63, vslideup.vi, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_5( 64, vslideup.vx, walking_data5_slideupans_offset_5, rd_data, 5, walking_data5 );
  TEST_VSLIDE_VX_OP_rd_6( 65, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rs2_6( 66, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VI_OP_rd_6( 67, vslideup.vi, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VI_OP_rs2_6( 68, vslideup.vi, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rs1_6( 69, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rd_7( 70, vslideup.vx, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VX_OP_rs2_7( 71, vslideup.vx, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VI_OP_rd_7( 72, vslideup.vi, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VI_OP_rs2_7( 73, vslideup.vi, walking_data7_slideupans_offset_7, rd_data, 7, walking_data7 );
  TEST_VSLIDE_VX_OP_rs1_8( 74, vslideup.vx, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VX_OP_rd_9( 75, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rs2_9( 76, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP_rd_9( 77, vslideup.vi, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VI_OP_rs2_9( 78, vslideup.vi, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rs1_9( 79, vslideup.vx, walking_data9_slideupans_offset_0, rd_data, 0, walking_data9 );
  TEST_VSLIDE_VX_OP_rd_10( 80, vslideup.vx, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VX_OP_rs2_10( 81, vslideup.vx, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VI_OP_rd_10( 82, vslideup.vi, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VI_OP_rs2_10( 83, vslideup.vi, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VX_OP_rs1_10( 84, vslideup.vx, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VX_OP_rd_11( 85, vslideup.vx, walking_data1_slideupans_offset_2, rd_data, 2, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_11( 86, vslideup.vx, walking_data1_slideupans_offset_2, rd_data, 2, walking_data1 );
  TEST_VSLIDE_VI_OP_rd_11( 87, vslideup.vi, walking_data1_slideupans_offset_2, rd_data, 2, walking_data1 );
  TEST_VSLIDE_VI_OP_rs2_11( 88, vslideup.vi, walking_data1_slideupans_offset_2, rd_data, 2, walking_data1 );
  TEST_VSLIDE_VX_OP_rs1_11( 89, vslideup.vx, walking_data1_slideupans_offset_2, rd_data, 2, walking_data1 );
  TEST_VSLIDE_VX_OP_rd_12( 90, vslideup.vx, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VX_OP_rs2_12( 91, vslideup.vx, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VI_OP_rd_12( 92, vslideup.vi, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VI_OP_rs2_12( 93, vslideup.vi, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VX_OP_rs1_12( 94, vslideup.vx, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VX_OP_rd_13( 95, vslideup.vx, walking_data3_slideupans_offset_4, rd_data, 4, walking_data3 );
  TEST_VSLIDE_VX_OP_rs2_13( 96, vslideup.vx, walking_data3_slideupans_offset_4, rd_data, 4, walking_data3 );
  TEST_VSLIDE_VI_OP_rd_13( 97, vslideup.vi, walking_data3_slideupans_offset_4, rd_data, 4, walking_data3 );
  TEST_VSLIDE_VI_OP_rs2_13( 98, vslideup.vi, walking_data3_slideupans_offset_4, rd_data, 4, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_13( 99, vslideup.vx, walking_data3_slideupans_offset_4, rd_data, 4, walking_data3 );
  TEST_VSLIDE_VX_OP_rd_14( 100, vslideup.vx, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VX_OP_rs2_14( 101, vslideup.vx, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VI_OP_rd_14( 102, vslideup.vi, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VI_OP_rs2_14( 103, vslideup.vi, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VX_OP_rs1_14( 104, vslideup.vx, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VX_OP_rd_15( 105, vslideup.vx, walking_data5_slideupans_offset_6, rd_data, 6, walking_data5 );
  TEST_VSLIDE_VX_OP_rs2_15( 106, vslideup.vx, walking_data5_slideupans_offset_6, rd_data, 6, walking_data5 );
  TEST_VSLIDE_VI_OP_rd_15( 107, vslideup.vi, walking_data5_slideupans_offset_6, rd_data, 6, walking_data5 );
  TEST_VSLIDE_VI_OP_rs2_15( 108, vslideup.vi, walking_data5_slideupans_offset_6, rd_data, 6, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_15( 109, vslideup.vx, walking_data5_slideupans_offset_6, rd_data, 6, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_16( 110, vslideup.vx, walking_data6_slideupans_offset_7, rd_data, 7, walking_data6 );
  TEST_VSLIDE_VX_OP_rd_17( 111, vslideup.vx, walking_data7_slideupans_offset_8, rd_data, 8, walking_data7 );
  TEST_VSLIDE_VX_OP_rs2_17( 112, vslideup.vx, walking_data7_slideupans_offset_8, rd_data, 8, walking_data7 );
  TEST_VSLIDE_VI_OP_rd_17( 113, vslideup.vi, walking_data7_slideupans_offset_8, rd_data, 8, walking_data7 );
  TEST_VSLIDE_VI_OP_rs2_17( 114, vslideup.vi, walking_data7_slideupans_offset_8, rd_data, 8, walking_data7 );
  TEST_VSLIDE_VX_OP_rs1_17( 115, vslideup.vx, walking_data7_slideupans_offset_8, rd_data, 8, walking_data7 );
  TEST_VSLIDE_VX_OP_rd_18( 116, vslideup.vx, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VX_OP_rs2_18( 117, vslideup.vx, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VI_OP_rd_18( 118, vslideup.vi, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VI_OP_rs2_18( 119, vslideup.vi, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VX_OP_rs1_18( 120, vslideup.vx, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VX_OP_rd_19( 121, vslideup.vx, walking_data9_slideupans_offset_1, rd_data, 1, walking_data9 );
  TEST_VSLIDE_VX_OP_rs2_19( 122, vslideup.vx, walking_data9_slideupans_offset_1, rd_data, 1, walking_data9 );
  TEST_VSLIDE_VI_OP_rd_19( 123, vslideup.vi, walking_data9_slideupans_offset_1, rd_data, 1, walking_data9 );
  TEST_VSLIDE_VI_OP_rs2_19( 124, vslideup.vi, walking_data9_slideupans_offset_1, rd_data, 1, walking_data9 );
  TEST_VSLIDE_VX_OP_rs1_19( 125, vslideup.vx, walking_data9_slideupans_offset_1, rd_data, 1, walking_data9 );
  TEST_VSLIDE_VX_OP_rd_20( 126, vslideup.vx, walking_data0_slideupans_offset_2, rd_data, 2, walking_data0 );
  TEST_VSLIDE_VX_OP_rs2_20( 127, vslideup.vx, walking_data0_slideupans_offset_2, rd_data, 2, walking_data0 );
  TEST_VSLIDE_VI_OP_rd_20( 128, vslideup.vi, walking_data0_slideupans_offset_2, rd_data, 2, walking_data0 );
  TEST_VSLIDE_VI_OP_rs2_20( 129, vslideup.vi, walking_data0_slideupans_offset_2, rd_data, 2, walking_data0 );
  TEST_VSLIDE_VX_OP_rs1_20( 130, vslideup.vx, walking_data0_slideupans_offset_2, rd_data, 2, walking_data0 );
  TEST_VSLIDE_VX_OP_rd_21( 131, vslideup.vx, walking_data1_slideupans_offset_3, rd_data, 3, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_21( 132, vslideup.vx, walking_data1_slideupans_offset_3, rd_data, 3, walking_data1 );
  TEST_VSLIDE_VI_OP_rd_21( 133, vslideup.vi, walking_data1_slideupans_offset_3, rd_data, 3, walking_data1 );
  TEST_VSLIDE_VI_OP_rs2_21( 134, vslideup.vi, walking_data1_slideupans_offset_3, rd_data, 3, walking_data1 );
  TEST_VSLIDE_VX_OP_rs1_21( 135, vslideup.vx, walking_data1_slideupans_offset_3, rd_data, 3, walking_data1 );
  TEST_VSLIDE_VX_OP_rd_22( 136, vslideup.vx, walking_data2_slideupans_offset_4, rd_data, 4, walking_data2 );
  TEST_VSLIDE_VX_OP_rs2_22( 137, vslideup.vx, walking_data2_slideupans_offset_4, rd_data, 4, walking_data2 );
  TEST_VSLIDE_VI_OP_rd_22( 138, vslideup.vi, walking_data2_slideupans_offset_4, rd_data, 4, walking_data2 );
  TEST_VSLIDE_VI_OP_rs2_22( 139, vslideup.vi, walking_data2_slideupans_offset_4, rd_data, 4, walking_data2 );
  TEST_VSLIDE_VX_OP_rs1_22( 140, vslideup.vx, walking_data2_slideupans_offset_4, rd_data, 4, walking_data2 );
  TEST_VSLIDE_VX_OP_rd_23( 141, vslideup.vx, walking_data3_slideupans_offset_5, rd_data, 5, walking_data3 );
  TEST_VSLIDE_VX_OP_rs2_23( 142, vslideup.vx, walking_data3_slideupans_offset_5, rd_data, 5, walking_data3 );
  TEST_VSLIDE_VI_OP_rd_23( 143, vslideup.vi, walking_data3_slideupans_offset_5, rd_data, 5, walking_data3 );
  TEST_VSLIDE_VI_OP_rs2_23( 144, vslideup.vi, walking_data3_slideupans_offset_5, rd_data, 5, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_23( 145, vslideup.vx, walking_data3_slideupans_offset_5, rd_data, 5, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_24( 146, vslideup.vx, walking_data4_slideupans_offset_6, rd_data, 6, walking_data4 );
  TEST_VSLIDE_VX_OP_rd_25( 147, vslideup.vx, walking_data5_slideupans_offset_7, rd_data, 7, walking_data5 );
  TEST_VSLIDE_VX_OP_rs2_25( 148, vslideup.vx, walking_data5_slideupans_offset_7, rd_data, 7, walking_data5 );
  TEST_VSLIDE_VI_OP_rd_25( 149, vslideup.vi, walking_data5_slideupans_offset_7, rd_data, 7, walking_data5 );
  TEST_VSLIDE_VI_OP_rs2_25( 150, vslideup.vi, walking_data5_slideupans_offset_7, rd_data, 7, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_25( 151, vslideup.vx, walking_data5_slideupans_offset_7, rd_data, 7, walking_data5 );
  TEST_VSLIDE_VX_OP_rd_26( 152, vslideup.vx, walking_data6_slideupans_offset_8, rd_data, 8, walking_data6 );
  TEST_VSLIDE_VX_OP_rs2_26( 153, vslideup.vx, walking_data6_slideupans_offset_8, rd_data, 8, walking_data6 );
  TEST_VSLIDE_VI_OP_rd_26( 154, vslideup.vi, walking_data6_slideupans_offset_8, rd_data, 8, walking_data6 );
  TEST_VSLIDE_VI_OP_rs2_26( 155, vslideup.vi, walking_data6_slideupans_offset_8, rd_data, 8, walking_data6 );
  TEST_VSLIDE_VX_OP_rs1_26( 156, vslideup.vx, walking_data6_slideupans_offset_8, rd_data, 8, walking_data6 );
  TEST_VSLIDE_VX_OP_rd_27( 157, vslideup.vx, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VX_OP_rs2_27( 158, vslideup.vx, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VI_OP_rd_27( 159, vslideup.vi, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VI_OP_rs2_27( 160, vslideup.vi, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VX_OP_rs1_27( 161, vslideup.vx, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VX_OP_rd_28( 162, vslideup.vx, walking_data8_slideupans_offset_1, rd_data, 1, walking_data8 );
  TEST_VSLIDE_VX_OP_rs2_28( 163, vslideup.vx, walking_data8_slideupans_offset_1, rd_data, 1, walking_data8 );
  TEST_VSLIDE_VI_OP_rd_28( 164, vslideup.vi, walking_data8_slideupans_offset_1, rd_data, 1, walking_data8 );
  TEST_VSLIDE_VI_OP_rs2_28( 165, vslideup.vi, walking_data8_slideupans_offset_1, rd_data, 1, walking_data8 );
  TEST_VSLIDE_VX_OP_rs1_28( 166, vslideup.vx, walking_data8_slideupans_offset_1, rd_data, 1, walking_data8 );
  TEST_VSLIDE_VX_OP_rd_29( 167, vslideup.vx, walking_data9_slideupans_offset_2, rd_data, 2, walking_data9 );
  TEST_VSLIDE_VX_OP_rs2_29( 168, vslideup.vx, walking_data9_slideupans_offset_2, rd_data, 2, walking_data9 );
  TEST_VSLIDE_VI_OP_rd_29( 169, vslideup.vi, walking_data9_slideupans_offset_2, rd_data, 2, walking_data9 );
  TEST_VSLIDE_VI_OP_rs2_29( 170, vslideup.vi, walking_data9_slideupans_offset_2, rd_data, 2, walking_data9 );
  TEST_VSLIDE_VX_OP_rs1_29( 171, vslideup.vx, walking_data9_slideupans_offset_2, rd_data, 2, walking_data9 );
  TEST_VSLIDE_VX_OP_rd_30( 172, vslideup.vx, walking_data0_slideupans_offset_3, rd_data, 3, walking_data0 );
  TEST_VSLIDE_VX_OP_rs2_30( 173, vslideup.vx, walking_data0_slideupans_offset_3, rd_data, 3, walking_data0 );
  TEST_VSLIDE_VI_OP_rd_30( 174, vslideup.vi, walking_data0_slideupans_offset_3, rd_data, 3, walking_data0 );
  TEST_VSLIDE_VI_OP_rs2_30( 175, vslideup.vi, walking_data0_slideupans_offset_3, rd_data, 3, walking_data0 );
  TEST_VSLIDE_VX_OP_rs1_30( 176, vslideup.vx, walking_data0_slideupans_offset_3, rd_data, 3, walking_data0 );
  TEST_VSLIDE_VX_OP_rd_31( 177, vslideup.vx, walking_data1_slideupans_offset_4, rd_data, 4, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_31( 178, vslideup.vx, walking_data1_slideupans_offset_4, rd_data, 4, walking_data1 );
  TEST_VSLIDE_VX_OP_rs1_31( 179, vslideup.vx, walking_data1_slideupans_offset_4, rd_data, 4, walking_data1 );
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

walking_data0:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865

walking_data0_slideupans_offset_0:
.word	-2147483648
.word	5
.word	6
.word	7
.word	-536870913
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	-1073741825
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	-1431655765
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	-1431655766
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	-2147483648
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data0_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_0:
.word	-2147483648
.word	5
.word	6
.word	7
.word	-536870913
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_1:
.word	-1431655766
.word	5
.word	6
.word	7
.word	-268435457
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_2:
.word	-1431655765
.word	5
.word	6
.word	7
.word	-134217729
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_3:
.word	-1073741825
.word	5
.word	6
.word	7
.word	-67108865
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_4:
.word	-536870913
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_5:
.word	-268435457
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_6:
.word	-134217729
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_7:
.word	-67108865
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data0_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data1:
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145

walking_data1_slideupans_offset_0:
.word	-33554433
.word	5
.word	6
.word	7
.word	-2097153
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	-4194305
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	-8388609
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	-16777217
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	-33554433
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data1_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_0:
.word	-33554433
.word	5
.word	6
.word	7
.word	-2097153
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_1:
.word	-16777217
.word	5
.word	6
.word	7
.word	-1048577
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_2:
.word	-8388609
.word	5
.word	6
.word	7
.word	-524289
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_3:
.word	-4194305
.word	5
.word	6
.word	7
.word	-262145
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_4:
.word	-2097153
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_5:
.word	-1048577
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_6:
.word	-524289
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_7:
.word	-262145
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data1_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data2:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097

walking_data2_slideupans_offset_0:
.word	-131073
.word	5
.word	6
.word	7
.word	-32769
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	-46339
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	-46340
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	-65537
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	-131073
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data2_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_0:
.word	-131073
.word	5
.word	6
.word	7
.word	-32769
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_1:
.word	-65537
.word	5
.word	6
.word	7
.word	-16385
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_2:
.word	-46340
.word	5
.word	6
.word	7
.word	-8193
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_3:
.word	-46339
.word	5
.word	6
.word	7
.word	-4097
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_4:
.word	-32769
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_5:
.word	-16385
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_6:
.word	-8193
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_7:
.word	-4097
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data2_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data3:
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17

walking_data3_slideupans_offset_0:
.word	-2049
.word	5
.word	6
.word	7
.word	-129
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	-257
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	-513
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	-1025
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	-2049
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data3_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_0:
.word	-2049
.word	5
.word	6
.word	7
.word	-129
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_1:
.word	-1025
.word	5
.word	6
.word	7
.word	-65
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_2:
.word	-513
.word	5
.word	6
.word	7
.word	-33
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_3:
.word	-257
.word	5
.word	6
.word	7
.word	-17
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_4:
.word	-129
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_5:
.word	-65
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_6:
.word	-33
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_7:
.word	-17
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data3_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data4:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3

walking_data4_slideupans_offset_0:
.word	-9
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	-2
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	-3
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	-5
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	-9
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data4_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_0:
.word	-9
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_1:
.word	-5
.word	5
.word	6
.word	7
.word	1
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_2:
.word	-3
.word	5
.word	6
.word	7
.word	2
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_3:
.word	-2
.word	5
.word	6
.word	7
.word	3
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_4:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_5:
.word	1
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_6:
.word	2
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data4_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data5:
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128

walking_data5_slideupans_offset_0:
.word	4
.word	5
.word	6
.word	7
.word	16
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	8
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	6
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	5
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	4
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data5_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_0:
.word	4
.word	5
.word	6
.word	7
.word	16
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_1:
.word	5
.word	5
.word	6
.word	7
.word	32
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_2:
.word	6
.word	5
.word	6
.word	7
.word	64
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_3:
.word	8
.word	5
.word	6
.word	7
.word	128
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_4:
.word	16
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_5:
.word	32
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_6:
.word	64
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_7:
.word	128
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data5_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data6:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768

walking_data6_slideupans_offset_0:
.word	256
.word	5
.word	6
.word	7
.word	4096
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	2048
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	1024
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	512
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	256
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data6_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_0:
.word	256
.word	5
.word	6
.word	7
.word	4096
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_1:
.word	512
.word	5
.word	6
.word	7
.word	8192
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_2:
.word	1024
.word	5
.word	6
.word	7
.word	16384
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_3:
.word	2048
.word	5
.word	6
.word	7
.word	32768
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_4:
.word	4096
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_5:
.word	8192
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_6:
.word	16384
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_7:
.word	32768
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data6_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data7:
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576

walking_data7_slideupans_offset_0:
.word	46339
.word	5
.word	6
.word	7
.word	131072
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	65536
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	46341
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	46340
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	46339
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data7_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_0:
.word	46339
.word	5
.word	6
.word	7
.word	131072
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_1:
.word	46340
.word	5
.word	6
.word	7
.word	262144
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_2:
.word	46341
.word	5
.word	6
.word	7
.word	524288
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_3:
.word	65536
.word	5
.word	6
.word	7
.word	1048576
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_4:
.word	131072
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_5:
.word	262144
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_6:
.word	524288
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_7:
.word	1048576
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data7_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data8:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456

walking_data8_slideupans_offset_0:
.word	2097152
.word	5
.word	6
.word	7
.word	33554432
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	16777216
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	8388608
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	4194304
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	2097152
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data8_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_0:
.word	2097152
.word	5
.word	6
.word	7
.word	33554432
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_1:
.word	4194304
.word	5
.word	6
.word	7
.word	67108864
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_2:
.word	8388608
.word	5
.word	6
.word	7
.word	134217728
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_3:
.word	16777216
.word	5
.word	6
.word	7
.word	268435456
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_4:
.word	33554432
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_5:
.word	67108864
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_6:
.word	134217728
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_7:
.word	268435456
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data8_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data9:
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766

walking_data9_slideupans_offset_0:
.word	536870912
.word	5
.word	6
.word	7
.word	1073741824
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_1:
.word	3
.word	5
.word	6
.word	7
.word	858993460
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_2:
.word	3
.word	5
.word	6
.word	7
.word	858993459
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_3:
.word	3
.word	5
.word	6
.word	7
.word	858993458
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_4:
.word	3
.word	5
.word	6
.word	7
.word	536870912
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_5:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_6:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_7:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data9_slideupans_offset_8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_0:
.word	536870912
.word	5
.word	6
.word	7
.word	1073741824
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_1:
.word	858993458
.word	5
.word	6
.word	7
.word	1431655764
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_2:
.word	858993459
.word	5
.word	6
.word	7
.word	1431655765
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_3:
.word	858993460
.word	5
.word	6
.word	7
.word	1431655766
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_4:
.word	1073741824
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_5:
.word	1431655764
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_6:
.word	1431655765
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_7:
.word	1431655766
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12

walking_data9_slidedownans_offset_8:
.word	0
.word	5
.word	6
.word	7
.word	0
.word	10
.word	11
.word	12


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
    

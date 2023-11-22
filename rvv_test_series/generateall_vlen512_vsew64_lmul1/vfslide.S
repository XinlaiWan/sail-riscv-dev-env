#define TEST_VSLIDE_VF_OP(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle64.v v0, (x7); \
               la  x1, base; \
            vle64.v v8, (x1); \
            la  x1, rd_base; \
            vle64.v v16, (x1); \
            la x1, f_rs1_base; \
            fld f1, 0(x1); \
            inst v16, v8, f1, v0.t; \
        )
 #define TEST_VSLIDE_VF_OP_rd_1(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v1, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v1, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v1, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_1(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v1, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v1, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_2(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v2, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v2, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_2(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v2, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v2, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_3(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v3, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v3, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v3, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_3(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v3, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v3, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_4(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v4, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v4, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_4(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v4, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v4, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_5(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v5, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v5, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v5, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_5(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v5, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v5, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_6(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v6, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v6, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_6(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v6, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v6, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_7(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v7, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v7, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v7, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_7(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v7, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v7, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_9(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v9, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v9, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v9, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_9(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v9, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v9, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_10(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v10, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v10, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_10(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v10, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v10, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_11(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v11, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v11, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v11, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_11(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v11, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v11, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_12(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v12, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v12, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_12(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v12, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v12, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_13(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v13, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v13, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v13, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_13(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v13, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v13, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_14(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v14, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v14, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_14(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v14, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v14, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_17(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v17, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v17, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v17, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_17(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v17, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v17, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_18(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v18, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v18, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_18(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v18, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v18, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_19(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v19, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v19, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v19, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_19(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v19, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v19, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_20(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v20, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v20, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_20(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v20, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v20, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_21(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v21, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v21, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v21, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_21(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v21, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v21, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_22(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v22, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v22, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_22(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v22, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v22, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_23(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v23, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v23, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v23, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_23(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v23, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v23, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_24(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v24, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v24, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v24, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_24(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v24, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v24, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_25(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v25, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v25, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v25, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_25(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v25, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v25, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_26(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v26, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v26, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_26(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v26, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v26, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_27(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v27, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v27, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v27, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_27(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v27, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v27, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_28(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v28, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v28, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_28(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v28, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v28, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_29(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v29, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v29, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v29, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_29(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v29, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v29, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rd_30(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v30, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v30, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs2_30(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v30, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v30, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_1(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f1, 0(x1); \
                inst v16, v8, f1, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_2(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f2, 0(x1); \
                inst v16, v8, f2, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_3(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f3, 0(x1); \
                inst v16, v8, f3, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_4(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f4, 0(x1); \
                inst v16, v8, f4, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_5(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f5, 0(x1); \
                inst v16, v8, f5, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_6(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f6, 0(x1); \
                inst v16, v8, f6, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_7(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f7, 0(x1); \
                inst v16, v8, f7, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_8(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f8, 0(x1); \
                inst v16, v8, f8, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_9(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f9, 0(x1); \
                inst v16, v8, f9, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_10(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f10, 0(x1); \
                inst v16, v8, f10, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_11(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f11, 0(x1); \
                inst v16, v8, f11, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_12(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f12, 0(x1); \
                inst v16, v8, f12, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_13(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f13, 0(x1); \
                inst v16, v8, f13, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_14(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f14, 0(x1); \
                inst v16, v8, f14, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_15(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f15, 0(x1); \
                inst v16, v8, f15, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_16(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f16, 0(x1); \
                inst v16, v8, f16, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_17(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f17, 0(x1); \
                inst v16, v8, f17, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_18(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f18, 0(x1); \
                inst v16, v8, f18, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_19(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f19, 0(x1); \
                inst v16, v8, f19, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_20(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f20, 0(x1); \
                inst v16, v8, f20, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_21(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f21, 0(x1); \
                inst v16, v8, f21, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_22(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f22, 0(x1); \
                inst v16, v8, f22, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_23(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f23, 0(x1); \
                inst v16, v8, f23, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_24(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f24, 0(x1); \
                inst v16, v8, f24, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_25(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f25, 0(x1); \
                inst v16, v8, f25, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_26(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f26, 0(x1); \
                inst v16, v8, f26, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_27(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f27, 0(x1); \
                inst v16, v8, f27, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_28(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f28, 0(x1); \
                inst v16, v8, f28, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_29(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f29, 0(x1); \
                inst v16, v8, f29, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_30(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f30, 0(x1); \
                inst v16, v8, f30, v0.t; \
            )
 #define TEST_VSLIDE_VF_OP_rs1_31(testnum, inst, flags, result_base, rd_base, f_rs1_base, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                la x1, f_rs1_base; \
                fld f31, 0(x1); \
                inst v16, v8, f31, v0.t; \
            )
#----------------------------------------------------------------------------- 
    # vfslide.S
    #-----------------------------------------------------------------------------
    #
    # Test vfslide instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfslide)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vfslideup/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSLIDE_VF_OP( 1, vfslide1up.vf, 0, f_data_slide1upans0, f_rd_data, f_rd_data0, f_data0 );
  TEST_VSLIDE_VF_OP( 2, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP( 3, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP( 4, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP( 5, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP( 6, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP( 7, vfslide1up.vf, 0, f_data_slide1upans3, f_rd_data, f_rd_data0, f_data3 );
  TEST_VSLIDE_VF_OP( 8, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  #-------------------------------------------------------------
  # vfslideup/down.vx/vf Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VSLIDE_VF_OP_rd_1( 9, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_1( 10, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rd_2( 11, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_2( 12, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_2( 13, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rd_3( 14, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rs2_3( 15, vfslide1up.vf, 0, f_data_slide1upans3, f_rd_data, f_rd_data0, f_data3 );
  TEST_VSLIDE_VF_OP_rs1_3( 16, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rd_4( 17, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rs2_4( 18, vfslide1up.vf, 0, f_data_slide1upans0, f_rd_data, f_rd_data0, f_data0 );
  TEST_VSLIDE_VF_OP_rs1_4( 19, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rd_5( 20, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_5( 21, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rs1_5( 22, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rd_6( 23, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_6( 24, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_6( 25, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rd_7( 26, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rs2_7( 27, vfslide1up.vf, 0, f_data_slide1upans3, f_rd_data, f_rd_data0, f_data3 );
  TEST_VSLIDE_VF_OP_rs1_8( 28, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rd_9( 29, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_9( 30, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rs1_9( 31, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rd_10( 32, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_10( 33, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_10( 34, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rd_11( 35, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rs2_11( 36, vfslide1up.vf, 0, f_data_slide1upans3, f_rd_data, f_rd_data0, f_data3 );
  TEST_VSLIDE_VF_OP_rs1_11( 37, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rd_12( 38, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rs2_12( 39, vfslide1up.vf, 0, f_data_slide1upans0, f_rd_data, f_rd_data0, f_data0 );
  TEST_VSLIDE_VF_OP_rs1_12( 40, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rd_13( 41, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_13( 42, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rs1_13( 43, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rd_14( 44, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_14( 45, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_14( 46, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_15( 47, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rs1_16( 48, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rd_17( 49, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_17( 50, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rs1_17( 51, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rd_18( 52, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_18( 53, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_18( 54, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rd_19( 55, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rs2_19( 56, vfslide1up.vf, 0, f_data_slide1upans3, f_rd_data, f_rd_data0, f_data3 );
  TEST_VSLIDE_VF_OP_rs1_19( 57, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rd_20( 58, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rs2_20( 59, vfslide1up.vf, 0, f_data_slide1upans0, f_rd_data, f_rd_data0, f_data0 );
  TEST_VSLIDE_VF_OP_rs1_20( 60, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rd_21( 61, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_21( 62, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rs1_21( 63, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rd_22( 64, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_22( 65, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_22( 66, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rd_23( 67, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rs2_23( 68, vfslide1up.vf, 0, f_data_slide1upans3, f_rd_data, f_rd_data0, f_data3 );
  TEST_VSLIDE_VF_OP_rs1_23( 69, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rd_24( 70, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rs2_24( 71, vfslide1up.vf, 0, f_data_slide1upans0, f_rd_data, f_rd_data0, f_data0 );
  TEST_VSLIDE_VF_OP_rs1_24( 72, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rd_25( 73, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_25( 74, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rs1_25( 75, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rd_26( 76, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_26( 77, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_26( 78, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rd_27( 79, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rs2_27( 80, vfslide1up.vf, 0, f_data_slide1upans3, f_rd_data, f_rd_data0, f_data3 );
  TEST_VSLIDE_VF_OP_rs1_27( 81, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  TEST_VSLIDE_VF_OP_rd_28( 82, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rs2_28( 83, vfslide1up.vf, 0, f_data_slide1upans0, f_rd_data, f_rd_data0, f_data0 );
  TEST_VSLIDE_VF_OP_rs1_28( 84, vfslide1down.vf, 0, f_data_slide1downans0, f_rd_data, f_rd_data7, f_data0 );
  TEST_VSLIDE_VF_OP_rd_29( 85, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rs2_29( 86, vfslide1up.vf, 0, f_data_slide1upans1, f_rd_data, f_rd_data0, f_data1 );
  TEST_VSLIDE_VF_OP_rs1_29( 87, vfslide1down.vf, 0, f_data_slide1downans1, f_rd_data, f_rd_data7, f_data1 );
  TEST_VSLIDE_VF_OP_rd_30( 88, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs2_30( 89, vfslide1up.vf, 0, f_data_slide1upans2, f_rd_data, f_rd_data0, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_30( 90, vfslide1down.vf, 0, f_data_slide1downans2, f_rd_data, f_rd_data7, f_data2 );
  TEST_VSLIDE_VF_OP_rs1_31( 91, vfslide1down.vf, 0, f_data_slide1downans3, f_rd_data, f_rd_data7, f_data3 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
f_rd_data:
f_rd_data0:	
.dword	0x40400000
f_rd_data1:	
.dword	0x41F8CCCC
f_rd_data2:	
.dword	0x43031999
f_rd_data3:	
.dword	0x40799999
f_rd_data4:	
.dword	0x415E6666
f_rd_data5:	
.dword	0x4303E666
f_rd_data6:	
.dword	0xBF03126E
f_rd_data7:	
.dword	0xBFC18937

f_data0:
.dword	0x80000001
.dword	0xBF800000
.dword	0x807FFFFE
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x807FFFFF
.dword	0x00800000
.dword	0x00000002

f_data_slide1upans0:
.dword	0x40400000
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x3F800000
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937

f_data_slide1downans0:
.dword	0xBF800000
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x807FFFFF
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937

f_data1:
.dword	0x007FFFFF
.dword	0x00000001
.dword	0x00000000
.dword	0x80000000
.dword	0x80855555
.dword	0x7F7FFFFF
.dword	0x80800000
.dword	0x00800001

f_data_slide1upans1:
.dword	0x40400000
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x80000000
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937

f_data_slide1downans1:
.dword	0x00000001
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x7F7FFFFF
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937

f_data2:
.dword	0x80000001
.dword	0xBF800000
.dword	0x807FFFFE
.dword	0x3F800000
.dword	0xFF7FFFFF
.dword	0x807FFFFF
.dword	0x00800000
.dword	0x00000002

f_data_slide1upans2:
.dword	0x40400000
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x3F800000
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937

f_data_slide1downans2:
.dword	0xBF800000
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x807FFFFF
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937

f_data3:
.dword	0x007FFFFF
.dword	0x00000001
.dword	0x00000000
.dword	0x80000000
.dword	0x80855555
.dword	0x7F7FFFFF
.dword	0x80800000
.dword	0x00800001

f_data_slide1upans3:
.dword	0x40400000
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x80000000
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937

f_data_slide1downans3:
.dword	0x00000001
.dword	0x41F8CCCC
.dword	0x43031999
.dword	0x40799999
.dword	0x7F7FFFFF
.dword	0x4303E666
.dword	0xBF03126E
.dword	0xBFC18937


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
    

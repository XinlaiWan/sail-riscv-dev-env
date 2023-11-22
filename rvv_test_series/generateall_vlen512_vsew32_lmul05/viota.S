#undef TEST_VIOTA_OP
#define TEST_VIOTA_OP( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_8( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v16, (x1); \
        vmseq.vi v8, v16, 1; \
        vmv.v.i v16, 2;\
        inst v16, v8, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_16( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v16, v8, 1; \
        vmv.v.i v8, 2;\
        inst v8, v16, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_1( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v1, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v1, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_2( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_3( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v3, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v3, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_4( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v4, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v4, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_5( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v5, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v5, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_6( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v6, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v6, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_7( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v7, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v7, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_9( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v9, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v9, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_10( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v10, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v10, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_11( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v11, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v11, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_12( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v12, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v12, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_13( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v13, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v13, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_14( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v14, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v14, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_15( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v15, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v15, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_17( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v17, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v17, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_18( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v18, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v18, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_19( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v19, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v19, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_20( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v20, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v20, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_21( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v21, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v21, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_22( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v22, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v22, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_23( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v23, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v23, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_24( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v24, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v24, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_25( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v25, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v25, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_26( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v26, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v26, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_27( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v27, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v27, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_28( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v28, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v28, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_29( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v29, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v29, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_30( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v30, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v30, v0.t; \
        )
#define TEST_VIOTA_OP_rs2_31( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v31, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v31, v0.t; \
        )
#define TEST_VIOTA_OP_rd_1( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v1, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v1, 2;\
        inst v1, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_3( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v3, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v3, 2;\
        inst v3, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_4( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v4, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v4, 2;\
        inst v4, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_5( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v5, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v5, 2;\
        inst v5, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_6( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v6, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v6, 2;\
        inst v6, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_7( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v7, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v7, 2;\
        inst v7, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_8( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v8, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v8, 2;\
        inst v8, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_9( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v9, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v9, 2;\
        inst v9, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_10( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v10, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v10, 2;\
        inst v10, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_11( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v11, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v11, 2;\
        inst v11, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_12( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v12, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v12, 2;\
        inst v12, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_13( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v13, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v13, 2;\
        inst v13, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_14( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v14, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v14, 2;\
        inst v14, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_15( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v15, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v15, 2;\
        inst v15, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_16( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v16, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_17( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v17, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v17, 2;\
        inst v17, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_18( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v18, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v18, 2;\
        inst v18, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_19( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v19, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v19, 2;\
        inst v19, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_20( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v20, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v20, 2;\
        inst v20, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_21( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v21, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v21, 2;\
        inst v21, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_22( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v22, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v22, 2;\
        inst v22, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_23( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v23, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v23, 2;\
        inst v23, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_24( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v24, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v24, 2;\
        inst v24, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_25( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v25, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v25, 2;\
        inst v25, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_26( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v26, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v26, 2;\
        inst v26, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_27( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v27, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v27, 2;\
        inst v27, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_28( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v28, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v28, 2;\
        inst v28, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_29( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v29, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v29, 2;\
        inst v29, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_30( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v30, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v30, 2;\
        inst v30, v2, v0.t; \
        )
#define TEST_VIOTA_OP_rd_31( testnum, inst, result_addr, src1_addr )  \
        TEST_CASE_LOOP( testnum, v31, result_addr,  \
        VSET_VSEW_4AVL \
        la x7, rd_origin_data; \
        vle32.v v16, (x7); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v31, 2;\
        inst v31, v2, v0.t; \
        )
#----------------------------------------------------------------------------- 
    # viota.S
    #-----------------------------------------------------------------------------
    #
    # Test viota instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "riscv_test.h"
    #include "test_macros_vector.h"

#undef TEST_VIOTA_OP
#define TEST_VIOTA_OP( testnum, inst, result_addr, src1_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
        VSET_VSEW_4AVL \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            la  x1, src1_addr; \
        la  x7, result_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v2, v8, 1; \
        vmv.v.i v16, 2;\
        inst v16, v2, v0.t; \
        )
RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",viota)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # viota tests
  #-------------------------------------------------------------
TEST_VIOTA_OP( 1,  viota.m, walking_ones_ans0, walking_ones_dat0 );
TEST_VIOTA_OP( 2,  viota.m, walking_zeros_ans0, walking_zeros_dat0);
  #-------------------------------------------------------------
  # viota Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VIOTA_OP_rd_1( 3,  viota.m, walking_zeros_ans1, walking_zeros_dat1 );
TEST_VIOTA_OP_rd_3( 4,  viota.m, walking_zeros_ans3, walking_zeros_dat3 );
TEST_VIOTA_OP_rd_4( 5,  viota.m, walking_zeros_ans4, walking_zeros_dat4 );
TEST_VIOTA_OP_rd_5( 6,  viota.m, walking_zeros_ans5, walking_zeros_dat5 );
TEST_VIOTA_OP_rd_6( 7,  viota.m, walking_zeros_ans6, walking_zeros_dat6 );
TEST_VIOTA_OP_rd_7( 8,  viota.m, walking_zeros_ans7, walking_zeros_dat7 );
TEST_VIOTA_OP_rd_8( 9,  viota.m, walking_zeros_ans8, walking_zeros_dat8 );
TEST_VIOTA_OP_rd_9( 10,  viota.m, walking_zeros_ans0, walking_zeros_dat0 );
TEST_VIOTA_OP_rd_10( 11,  viota.m, walking_zeros_ans1, walking_zeros_dat1 );
TEST_VIOTA_OP_rd_11( 12,  viota.m, walking_zeros_ans2, walking_zeros_dat2 );
TEST_VIOTA_OP_rd_12( 13,  viota.m, walking_zeros_ans3, walking_zeros_dat3 );
TEST_VIOTA_OP_rd_13( 14,  viota.m, walking_zeros_ans4, walking_zeros_dat4 );
TEST_VIOTA_OP_rd_14( 15,  viota.m, walking_zeros_ans5, walking_zeros_dat5 );
TEST_VIOTA_OP_rd_15( 16,  viota.m, walking_zeros_ans6, walking_zeros_dat6 );
TEST_VIOTA_OP_rd_16( 17,  viota.m, walking_zeros_ans7, walking_zeros_dat7 );
TEST_VIOTA_OP_rd_17( 18,  viota.m, walking_zeros_ans8, walking_zeros_dat8 );
TEST_VIOTA_OP_rd_18( 19,  viota.m, walking_zeros_ans0, walking_zeros_dat0 );
TEST_VIOTA_OP_rd_19( 20,  viota.m, walking_zeros_ans1, walking_zeros_dat1 );
TEST_VIOTA_OP_rd_20( 21,  viota.m, walking_zeros_ans2, walking_zeros_dat2 );
TEST_VIOTA_OP_rd_21( 22,  viota.m, walking_zeros_ans3, walking_zeros_dat3 );
TEST_VIOTA_OP_rd_22( 23,  viota.m, walking_zeros_ans4, walking_zeros_dat4 );
TEST_VIOTA_OP_rd_23( 24,  viota.m, walking_zeros_ans5, walking_zeros_dat5 );
TEST_VIOTA_OP_rd_24( 25,  viota.m, walking_zeros_ans6, walking_zeros_dat6 );
TEST_VIOTA_OP_rd_25( 26,  viota.m, walking_zeros_ans7, walking_zeros_dat7 );
TEST_VIOTA_OP_rd_26( 27,  viota.m, walking_zeros_ans8, walking_zeros_dat8 );
TEST_VIOTA_OP_rd_27( 28,  viota.m, walking_zeros_ans0, walking_zeros_dat0 );
TEST_VIOTA_OP_rd_28( 29,  viota.m, walking_zeros_ans1, walking_zeros_dat1 );
TEST_VIOTA_OP_rd_29( 30,  viota.m, walking_zeros_ans2, walking_zeros_dat2 );
TEST_VIOTA_OP_rd_30( 31,  viota.m, walking_zeros_ans3, walking_zeros_dat3 );
TEST_VIOTA_OP_rd_31( 32,  viota.m, walking_zeros_ans4, walking_zeros_dat4 );
TEST_VIOTA_OP_rs2_1( 33,  viota.m, walking_ones_ans1, walking_ones_dat1 );
TEST_VIOTA_OP_rs2_2( 34,  viota.m, walking_ones_ans2, walking_ones_dat2 );
TEST_VIOTA_OP_rs2_3( 35,  viota.m, walking_ones_ans3, walking_ones_dat3 );
TEST_VIOTA_OP_rs2_4( 36,  viota.m, walking_ones_ans4, walking_ones_dat4 );
TEST_VIOTA_OP_rs2_5( 37,  viota.m, walking_ones_ans5, walking_ones_dat5 );
TEST_VIOTA_OP_rs2_6( 38,  viota.m, walking_ones_ans6, walking_ones_dat6 );
TEST_VIOTA_OP_rs2_7( 39,  viota.m, walking_ones_ans7, walking_ones_dat7 );
TEST_VIOTA_OP_rs2_9( 40,  viota.m, walking_ones_ans0, walking_ones_dat0 );
TEST_VIOTA_OP_rs2_10( 41,  viota.m, walking_ones_ans1, walking_ones_dat1 );
TEST_VIOTA_OP_rs2_11( 42,  viota.m, walking_ones_ans2, walking_ones_dat2 );
TEST_VIOTA_OP_rs2_12( 43,  viota.m, walking_ones_ans3, walking_ones_dat3 );
TEST_VIOTA_OP_rs2_13( 44,  viota.m, walking_ones_ans4, walking_ones_dat4 );
TEST_VIOTA_OP_rs2_14( 45,  viota.m, walking_ones_ans5, walking_ones_dat5 );
TEST_VIOTA_OP_rs2_15( 46,  viota.m, walking_ones_ans6, walking_ones_dat6 );
TEST_VIOTA_OP_rs2_17( 47,  viota.m, walking_ones_ans8, walking_ones_dat8 );
TEST_VIOTA_OP_rs2_18( 48,  viota.m, walking_ones_ans0, walking_ones_dat0 );
TEST_VIOTA_OP_rs2_19( 49,  viota.m, walking_ones_ans1, walking_ones_dat1 );
TEST_VIOTA_OP_rs2_20( 50,  viota.m, walking_ones_ans2, walking_ones_dat2 );
TEST_VIOTA_OP_rs2_21( 51,  viota.m, walking_ones_ans3, walking_ones_dat3 );
TEST_VIOTA_OP_rs2_22( 52,  viota.m, walking_ones_ans4, walking_ones_dat4 );
TEST_VIOTA_OP_rs2_23( 53,  viota.m, walking_ones_ans5, walking_ones_dat5 );
TEST_VIOTA_OP_rs2_24( 54,  viota.m, walking_ones_ans6, walking_ones_dat6 );
TEST_VIOTA_OP_rs2_25( 55,  viota.m, walking_ones_ans7, walking_ones_dat7 );
TEST_VIOTA_OP_rs2_26( 56,  viota.m, walking_ones_ans8, walking_ones_dat8 );
TEST_VIOTA_OP_rs2_27( 57,  viota.m, walking_ones_ans0, walking_ones_dat0 );
TEST_VIOTA_OP_rs2_28( 58,  viota.m, walking_ones_ans1, walking_ones_dat1 );
TEST_VIOTA_OP_rs2_29( 59,  viota.m, walking_ones_ans2, walking_ones_dat2 );
TEST_VIOTA_OP_rs2_30( 60,  viota.m, walking_ones_ans3, walking_ones_dat3 );
TEST_VIOTA_OP_rs2_31( 61,  viota.m, walking_ones_ans4, walking_ones_dat4 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
walking_ones_dat0:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat1:
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat2:
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat3:
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat4:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat5:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat6:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0

walking_ones_dat7:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0

walking_ones_dat8:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1

walking_zeros_dat0:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat1:
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat2:
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat3:
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat4:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat5:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat6:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1

walking_zeros_dat7:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1

walking_zeros_dat8:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0

walking_ones_ans0:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans1:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x1
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans2:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans3:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans4:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans5:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans6:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans7:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_ones_ans8:
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0x0
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans0:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans1:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans2:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans3:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans4:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans5:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans6:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans7:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2

walking_zeros_ans8:
	.word	0
	.word	0x2
	.word	0x2
	.word	0x2
	.word	1
	.word	0x2
	.word	0x2
	.word	0x2


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
    

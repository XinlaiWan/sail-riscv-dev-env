#define TEST_VSFMB_OP_rs2_8( testnum, inst, result, src1_addr ) \
    TEST_CASE_MASK_4VL( testnum, v14, result, \
        VSET_VSEW_4AVL \
        la  x1, src1_addr; \
        vle64.v v16, (x1); \
        vmseq.vi v8, v16, 1; \
        inst v14, v8; \
        VSET_VSEW \
    )
#define TEST_VSFMB_OP_rs2_14( testnum, inst, result, src1_addr ) \
    TEST_CASE_MASK_4VL( testnum, v5, result, \
        VSET_VSEW_4AVL \
        la  x1, src1_addr; \
        vle64.v v8, (x1); \
        vmseq.vi v14, v8, 1; \
        inst v5, v14; \
        VSET_VSEW \
    )
#define TEST_VSFMB_OP_rs2_1( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v14, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_2( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v2, v8, 1; \
            inst v14, v2; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_3( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v3, v8, 1; \
            inst v14, v3; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_4( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v4, v8, 1; \
            inst v14, v4; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_5( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v5, v8, 1; \
            inst v14, v5; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_6( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v6, v8, 1; \
            inst v14, v6; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_10( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v10, v8, 1; \
            inst v14, v10; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_11( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v11, v8, 1; \
            inst v14, v11; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_12( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v12, v8, 1; \
            inst v14, v12; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_13( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v13, v8, 1; \
            inst v14, v13; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_15( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v15, v8, 1; \
            inst v14, v15; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_16( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v16, v8, 1; \
            inst v14, v16; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_17( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v17, v8, 1; \
            inst v14, v17; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_18( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v18, v8, 1; \
            inst v14, v18; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_19( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v19, v8, 1; \
            inst v14, v19; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_20( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v20, v8, 1; \
            inst v14, v20; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_21( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v21, v8, 1; \
            inst v14, v21; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_22( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v22, v8, 1; \
            inst v14, v22; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_23( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v23, v8, 1; \
            inst v14, v23; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_24( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v24, v8, 1; \
            inst v14, v24; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_25( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v25, v8, 1; \
            inst v14, v25; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_26( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v26, v8, 1; \
            inst v14, v26; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_27( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v27, v8, 1; \
            inst v14, v27; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_28( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v28, v8, 1; \
            inst v14, v28; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_29( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v29, v8, 1; \
            inst v14, v29; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_30( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v30, v8, 1; \
            inst v14, v30; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_31( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v31, v8, 1; \
            inst v14, v31; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_1( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v1, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v2, v8, 1; \
            inst v1, v2; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_2( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v2, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_3( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v3, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v3, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_4( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v4, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_5( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v5, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v5, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_6( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v6, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_7( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v7, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v7, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_8( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v8, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_9( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v9, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v9, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_10( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v10, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_11( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v11, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v11, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_12( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v12, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_13( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v13, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v13, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_14( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v14, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_15( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v15, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v15, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_16( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v16, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_17( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v17, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v17, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_18( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v18, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_19( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v19, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v19, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_20( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v20, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_21( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v21, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v21, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_22( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v22, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_23( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v23, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v23, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_24( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v24, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_25( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v25, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v25, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_26( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v26, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_27( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v27, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v27, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_28( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v28, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_29( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v29, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v29, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_30( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v30, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_31( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v31, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v31, v1; \
            VSET_VSEW \
        )
#----------------------------------------------------------------------------- 
    # vmsbf.S
    #-----------------------------------------------------------------------------
    #
    # Test vmsbf instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmsbf)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmsbf tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 1,  vmsbf.m,  0x0000000000000010, walking_ones_dat0 );
TEST_VSFMB_OP( 2,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0);
TEST_VSFMB_OP( 3,  vmsbf.m,  0x0000000000000000, walking_ones_dat1 );
TEST_VSFMB_OP( 4,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1);
TEST_VSFMB_OP( 5,  vmsbf.m,  0x0000000000000001, walking_ones_dat2 );
TEST_VSFMB_OP( 6,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2);
TEST_VSFMB_OP( 7,  vmsbf.m,  0x0000000000000002, walking_ones_dat3 );
TEST_VSFMB_OP( 8,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3);
TEST_VSFMB_OP( 9,  vmsbf.m,  0x0000000000000003, walking_ones_dat4 );
TEST_VSFMB_OP( 10,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4);
TEST_VSFMB_OP( 11,  vmsbf.m,  0x0000000000000004, walking_ones_dat5 );
TEST_VSFMB_OP( 12,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5);
TEST_VSFMB_OP( 13,  vmsbf.m,  0x0000000000000005, walking_ones_dat6 );
TEST_VSFMB_OP( 14,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6);
TEST_VSFMB_OP( 15,  vmsbf.m,  0x0000000000000006, walking_ones_dat7 );
TEST_VSFMB_OP( 16,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7);
TEST_VSFMB_OP( 17,  vmsbf.m,  0x0000000000000007, walking_ones_dat8 );
TEST_VSFMB_OP( 18,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8);
TEST_VSFMB_OP( 19,  vmsbf.m,  0x0000000000000008, walking_ones_dat9 );
TEST_VSFMB_OP( 20,  vmsbf.m,  0x0000000000000000, walking_zeros_dat9);
TEST_VSFMB_OP( 21,  vmsbf.m,  0x0000000000000009, walking_ones_dat10 );
TEST_VSFMB_OP( 22,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10);
TEST_VSFMB_OP( 23,  vmsbf.m,  0x000000000000000a, walking_ones_dat11 );
TEST_VSFMB_OP( 24,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11);
TEST_VSFMB_OP( 25,  vmsbf.m,  0x000000000000000b, walking_ones_dat12 );
TEST_VSFMB_OP( 26,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12);
TEST_VSFMB_OP( 27,  vmsbf.m,  0x000000000000000c, walking_ones_dat13 );
TEST_VSFMB_OP( 28,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13);
TEST_VSFMB_OP( 29,  vmsbf.m,  0x000000000000000d, walking_ones_dat14 );
TEST_VSFMB_OP( 30,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14);
TEST_VSFMB_OP( 31,  vmsbf.m,  0x000000000000000e, walking_ones_dat15 );
TEST_VSFMB_OP( 32,  vmsbf.m,  0x0000000000000000, walking_zeros_dat15);
TEST_VSFMB_OP( 33,  vmsbf.m,  0x000000000000000f, walking_ones_dat16 );
TEST_VSFMB_OP( 34,  vmsbf.m,  0x0000000000000000, walking_zeros_dat16);
  #-------------------------------------------------------------
  # vmsbf Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_2( 35,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_4( 36,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_6( 37,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_8( 38,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_10( 39,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_12( 40,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_14( 41,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_16( 42,  vmsbf.m,  0x0000000000000000, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_18( 43,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_20( 44,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_22( 45,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_24( 46,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_26( 47,  vmsbf.m,  0x0000000000000000, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_28( 48,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_30( 49,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_1( 50,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 51,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 52,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 53,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 54,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 55,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_10( 56,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 57,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 58,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 59,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 60,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 61,  vmsbf.m,  0x0000000000000000, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 62,  vmsbf.m,  0x0000000000000000, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 63,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_18( 64,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_19( 65,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_20( 66,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_21( 67,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_22( 68,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_23( 69,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_24( 70,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_25( 71,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_26( 72,  vmsbf.m,  0x0000000000000000, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_27( 73,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_28( 74,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_29( 75,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_30( 76,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_31( 77,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
  #-------------------------------------------------------------
  # vmsif tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 78,  vmsif.m,  0x0000000000000010, walking_ones_dat0 );
TEST_VSFMB_OP( 79,  vmsif.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 80,  vmsif.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 81,  vmsif.m,  0x0000000000000002, walking_zeros_dat1);
TEST_VSFMB_OP( 82,  vmsif.m,  0x0000000000000002, walking_ones_dat2 );
TEST_VSFMB_OP( 83,  vmsif.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 84,  vmsif.m,  0x0000000000000003, walking_ones_dat3 );
TEST_VSFMB_OP( 85,  vmsif.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 86,  vmsif.m,  0x0000000000000004, walking_ones_dat4 );
TEST_VSFMB_OP( 87,  vmsif.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 88,  vmsif.m,  0x0000000000000005, walking_ones_dat5 );
TEST_VSFMB_OP( 89,  vmsif.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 90,  vmsif.m,  0x0000000000000006, walking_ones_dat6 );
TEST_VSFMB_OP( 91,  vmsif.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 92,  vmsif.m,  0x0000000000000007, walking_ones_dat7 );
TEST_VSFMB_OP( 93,  vmsif.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 94,  vmsif.m,  0x0000000000000008, walking_ones_dat8 );
TEST_VSFMB_OP( 95,  vmsif.m,  0x0000000000000001, walking_zeros_dat8);
TEST_VSFMB_OP( 96,  vmsif.m,  0x0000000000000009, walking_ones_dat9 );
TEST_VSFMB_OP( 97,  vmsif.m,  0x0000000000000001, walking_zeros_dat9);
TEST_VSFMB_OP( 98,  vmsif.m,  0x000000000000000a, walking_ones_dat10 );
TEST_VSFMB_OP( 99,  vmsif.m,  0x0000000000000001, walking_zeros_dat10);
TEST_VSFMB_OP( 100,  vmsif.m,  0x000000000000000b, walking_ones_dat11 );
TEST_VSFMB_OP( 101,  vmsif.m,  0x0000000000000001, walking_zeros_dat11);
TEST_VSFMB_OP( 102,  vmsif.m,  0x000000000000000c, walking_ones_dat12 );
TEST_VSFMB_OP( 103,  vmsif.m,  0x0000000000000001, walking_zeros_dat12);
TEST_VSFMB_OP( 104,  vmsif.m,  0x000000000000000d, walking_ones_dat13 );
TEST_VSFMB_OP( 105,  vmsif.m,  0x0000000000000001, walking_zeros_dat13);
TEST_VSFMB_OP( 106,  vmsif.m,  0x000000000000000e, walking_ones_dat14 );
TEST_VSFMB_OP( 107,  vmsif.m,  0x0000000000000001, walking_zeros_dat14);
TEST_VSFMB_OP( 108,  vmsif.m,  0x000000000000000f, walking_ones_dat15 );
TEST_VSFMB_OP( 109,  vmsif.m,  0x0000000000000001, walking_zeros_dat15);
TEST_VSFMB_OP( 110,  vmsif.m,  0x0000000000000010, walking_ones_dat16 );
TEST_VSFMB_OP( 111,  vmsif.m,  0x0000000000000001, walking_zeros_dat16);
  #-------------------------------------------------------------
  # vmsif Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 112,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 113,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 114,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 115,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 116,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 117,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 118,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 119,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 120,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_10( 121,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_11( 122,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_12( 123,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_13( 124,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_14( 125,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_15( 126,  vmsif.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rd_16( 127,  vmsif.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_17( 128,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_18( 129,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_19( 130,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_20( 131,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_21( 132,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_22( 133,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_23( 134,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_24( 135,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_25( 136,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_26( 137,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_27( 138,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_28( 139,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_29( 140,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_30( 141,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_31( 142,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_1( 143,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 144,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 145,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 146,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 147,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 148,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_10( 149,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 150,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 151,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 152,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 153,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 154,  vmsif.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 155,  vmsif.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 156,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_18( 157,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_19( 158,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_20( 159,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_21( 160,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_22( 161,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_23( 162,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_24( 163,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_25( 164,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_26( 165,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_27( 166,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_28( 167,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_29( 168,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_30( 169,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_31( 170,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
  #-------------------------------------------------------------
  # vmsof tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 171,  vmsof.m,  0x0000000000000000, walking_ones_dat0 );
TEST_VSFMB_OP( 172,  vmsof.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 173,  vmsof.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 174,  vmsof.m,  0x0000000000000001, walking_zeros_dat1);
TEST_VSFMB_OP( 175,  vmsof.m,  0x0000000000000001, walking_ones_dat2 );
TEST_VSFMB_OP( 176,  vmsof.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 177,  vmsof.m,  0x0000000000000001, walking_ones_dat3 );
TEST_VSFMB_OP( 178,  vmsof.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 179,  vmsof.m,  0x0000000000000001, walking_ones_dat4 );
TEST_VSFMB_OP( 180,  vmsof.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 181,  vmsof.m,  0x0000000000000001, walking_ones_dat5 );
TEST_VSFMB_OP( 182,  vmsof.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 183,  vmsof.m,  0x0000000000000001, walking_ones_dat6 );
TEST_VSFMB_OP( 184,  vmsof.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 185,  vmsof.m,  0x0000000000000001, walking_ones_dat7 );
TEST_VSFMB_OP( 186,  vmsof.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 187,  vmsof.m,  0x0000000000000001, walking_ones_dat8 );
TEST_VSFMB_OP( 188,  vmsof.m,  0x0000000000000001, walking_zeros_dat8);
TEST_VSFMB_OP( 189,  vmsof.m,  0x0000000000000001, walking_ones_dat9 );
TEST_VSFMB_OP( 190,  vmsof.m,  0x0000000000000001, walking_zeros_dat9);
TEST_VSFMB_OP( 191,  vmsof.m,  0x0000000000000001, walking_ones_dat10 );
TEST_VSFMB_OP( 192,  vmsof.m,  0x0000000000000001, walking_zeros_dat10);
TEST_VSFMB_OP( 193,  vmsof.m,  0x0000000000000001, walking_ones_dat11 );
TEST_VSFMB_OP( 194,  vmsof.m,  0x0000000000000001, walking_zeros_dat11);
TEST_VSFMB_OP( 195,  vmsof.m,  0x0000000000000001, walking_ones_dat12 );
TEST_VSFMB_OP( 196,  vmsof.m,  0x0000000000000001, walking_zeros_dat12);
TEST_VSFMB_OP( 197,  vmsof.m,  0x0000000000000001, walking_ones_dat13 );
TEST_VSFMB_OP( 198,  vmsof.m,  0x0000000000000001, walking_zeros_dat13);
TEST_VSFMB_OP( 199,  vmsof.m,  0x0000000000000001, walking_ones_dat14 );
TEST_VSFMB_OP( 200,  vmsof.m,  0x0000000000000001, walking_zeros_dat14);
TEST_VSFMB_OP( 201,  vmsof.m,  0x0000000000000001, walking_ones_dat15 );
TEST_VSFMB_OP( 202,  vmsof.m,  0x0000000000000001, walking_zeros_dat15);
TEST_VSFMB_OP( 203,  vmsof.m,  0x0000000000000001, walking_ones_dat16 );
TEST_VSFMB_OP( 204,  vmsof.m,  0x0000000000000001, walking_zeros_dat16);
  #-------------------------------------------------------------
  # vmsof Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 205,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 206,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 207,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 208,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 209,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 210,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 211,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 212,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 213,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_10( 214,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_11( 215,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_12( 216,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_13( 217,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_14( 218,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_15( 219,  vmsof.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rd_16( 220,  vmsof.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_17( 221,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_18( 222,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_19( 223,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_20( 224,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_21( 225,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_22( 226,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_23( 227,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_24( 228,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_25( 229,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_26( 230,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_27( 231,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_28( 232,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_29( 233,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_30( 234,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_31( 235,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_1( 236,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 237,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 238,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 239,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 240,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 241,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_10( 242,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 243,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 244,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 245,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 246,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 247,  vmsof.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 248,  vmsof.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 249,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_18( 250,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_19( 251,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_20( 252,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_21( 253,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_22( 254,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_23( 255,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_24( 256,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_25( 257,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_26( 258,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_27( 259,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_28( 260,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_29( 261,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_30( 262,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_31( 263,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
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
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat1:
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat2:
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat3:
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat4:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat5:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat6:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat7:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat8:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat9:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat10:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat11:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat12:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat13:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat14:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0

walking_ones_dat15:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0

walking_ones_dat16:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1

walking_zeros_dat0:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat1:
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat2:
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat3:
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat4:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat5:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat6:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat7:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat8:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat9:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat10:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat11:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat12:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat13:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat14:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1

walking_zeros_dat15:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1

walking_zeros_dat16:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0

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
    

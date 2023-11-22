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
#define TEST_VSFMB_OP_rs2_7( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v7, v8, 1; \
            inst v14, v7; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_9( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle64.v v8, (x1); \
            vmseq.vi v9, v8, 1; \
            inst v14, v9; \
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
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmsbf tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 1,  vmsbf.m,  0x0000000000000008, walking_ones_dat0 );
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
  #-------------------------------------------------------------
  # vmsbf Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 19,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 20,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 21,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 22,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 23,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 24,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 25,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 26,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 27,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_10( 28,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_11( 29,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_12( 30,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_13( 31,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_14( 32,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_15( 33,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_16( 34,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_17( 35,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_18( 36,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_19( 37,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_20( 38,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_21( 39,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_22( 40,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_23( 41,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_24( 42,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_25( 43,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_26( 44,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_27( 45,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_28( 46,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_29( 47,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_30( 48,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_31( 49,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_1( 50,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 51,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 52,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 53,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 54,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 55,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_7( 56,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_9( 57,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_10( 58,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_11( 59,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_12( 60,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_13( 61,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_14( 62,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_15( 63,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_16( 64,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_17( 65,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_18( 66,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_19( 67,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_20( 68,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_21( 69,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_22( 70,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_23( 71,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_24( 72,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_25( 73,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_26( 74,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_27( 75,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_28( 76,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_29( 77,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_30( 78,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_31( 79,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
  #-------------------------------------------------------------
  # vmsif tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 80,  vmsif.m,  0x0000000000000008, walking_ones_dat0 );
TEST_VSFMB_OP( 81,  vmsif.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 82,  vmsif.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 83,  vmsif.m,  0x0000000000000002, walking_zeros_dat1);
TEST_VSFMB_OP( 84,  vmsif.m,  0x0000000000000002, walking_ones_dat2 );
TEST_VSFMB_OP( 85,  vmsif.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 86,  vmsif.m,  0x0000000000000003, walking_ones_dat3 );
TEST_VSFMB_OP( 87,  vmsif.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 88,  vmsif.m,  0x0000000000000004, walking_ones_dat4 );
TEST_VSFMB_OP( 89,  vmsif.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 90,  vmsif.m,  0x0000000000000005, walking_ones_dat5 );
TEST_VSFMB_OP( 91,  vmsif.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 92,  vmsif.m,  0x0000000000000006, walking_ones_dat6 );
TEST_VSFMB_OP( 93,  vmsif.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 94,  vmsif.m,  0x0000000000000007, walking_ones_dat7 );
TEST_VSFMB_OP( 95,  vmsif.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 96,  vmsif.m,  0x0000000000000008, walking_ones_dat8 );
TEST_VSFMB_OP( 97,  vmsif.m,  0x0000000000000001, walking_zeros_dat8);
  #-------------------------------------------------------------
  # vmsif Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 98,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 99,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 100,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 101,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 102,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 103,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 104,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 105,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 106,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_10( 107,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_11( 108,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_12( 109,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_13( 110,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_14( 111,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_15( 112,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_16( 113,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_17( 114,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_18( 115,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_19( 116,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_20( 117,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_21( 118,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_22( 119,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_23( 120,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_24( 121,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_25( 122,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_26( 123,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_27( 124,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_28( 125,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_29( 126,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_30( 127,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_31( 128,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_1( 129,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 130,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 131,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 132,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 133,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 134,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_7( 135,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_9( 136,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_10( 137,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_11( 138,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_12( 139,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_13( 140,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_14( 141,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_15( 142,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_16( 143,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_17( 144,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_18( 145,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_19( 146,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_20( 147,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_21( 148,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_22( 149,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_23( 150,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_24( 151,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_25( 152,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_26( 153,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_27( 154,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_28( 155,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_29( 156,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_30( 157,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_31( 158,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
  #-------------------------------------------------------------
  # vmsof tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 159,  vmsof.m,  0x0000000000000000, walking_ones_dat0 );
TEST_VSFMB_OP( 160,  vmsof.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 161,  vmsof.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 162,  vmsof.m,  0x0000000000000001, walking_zeros_dat1);
TEST_VSFMB_OP( 163,  vmsof.m,  0x0000000000000001, walking_ones_dat2 );
TEST_VSFMB_OP( 164,  vmsof.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 165,  vmsof.m,  0x0000000000000001, walking_ones_dat3 );
TEST_VSFMB_OP( 166,  vmsof.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 167,  vmsof.m,  0x0000000000000001, walking_ones_dat4 );
TEST_VSFMB_OP( 168,  vmsof.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 169,  vmsof.m,  0x0000000000000001, walking_ones_dat5 );
TEST_VSFMB_OP( 170,  vmsof.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 171,  vmsof.m,  0x0000000000000001, walking_ones_dat6 );
TEST_VSFMB_OP( 172,  vmsof.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 173,  vmsof.m,  0x0000000000000001, walking_ones_dat7 );
TEST_VSFMB_OP( 174,  vmsof.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 175,  vmsof.m,  0x0000000000000001, walking_ones_dat8 );
TEST_VSFMB_OP( 176,  vmsof.m,  0x0000000000000001, walking_zeros_dat8);
  #-------------------------------------------------------------
  # vmsof Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 177,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 178,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 179,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 180,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 181,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 182,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 183,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 184,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 185,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_10( 186,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_11( 187,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_12( 188,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_13( 189,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_14( 190,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_15( 191,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_16( 192,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_17( 193,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_18( 194,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_19( 195,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_20( 196,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_21( 197,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_22( 198,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_23( 199,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_24( 200,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_25( 201,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_26( 202,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_27( 203,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_28( 204,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_29( 205,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_30( 206,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_31( 207,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_1( 208,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 209,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 210,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 211,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 212,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 213,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_7( 214,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_9( 215,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_10( 216,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_11( 217,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_12( 218,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_13( 219,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_14( 220,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_15( 221,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_16( 222,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_17( 223,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_18( 224,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_19( 225,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_20( 226,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_21( 227,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_22( 228,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_23( 229,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_24( 230,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_25( 231,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_26( 232,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_27( 233,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_28( 234,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_29( 235,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_30( 236,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_31( 237,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
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

walking_ones_dat1:
	.dword	0x1
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

walking_ones_dat3:
	.dword	0x0
	.dword	0x0
	.dword	0x1
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

walking_ones_dat5:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
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

walking_ones_dat7:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
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

walking_zeros_dat0:
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

walking_zeros_dat2:
	.dword	0x1
	.dword	0x0
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

walking_zeros_dat4:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
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

walking_zeros_dat6:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
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

walking_zeros_dat8:
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
    

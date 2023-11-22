#define TEST_VSFMB_OP_rs2_8( testnum, inst, result, src1_addr ) \
    TEST_CASE_MASK_4VL( testnum, v14, result, \
        VSET_VSEW_4AVL \
        la  x1, src1_addr; \
        vle32.v v16, (x1); \
        vmseq.vi v8, v16, 1; \
        inst v14, v8; \
        VSET_VSEW \
    )
#define TEST_VSFMB_OP_rs2_14( testnum, inst, result, src1_addr ) \
    TEST_CASE_MASK_4VL( testnum, v5, result, \
        VSET_VSEW_4AVL \
        la  x1, src1_addr; \
        vle32.v v8, (x1); \
        vmseq.vi v14, v8, 1; \
        inst v5, v14; \
        VSET_VSEW \
    )
#define TEST_VSFMB_OP_rs2_1( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v14, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_2( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v2, v8, 1; \
            inst v14, v2; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_3( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v3, v8, 1; \
            inst v14, v3; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_4( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v4, v8, 1; \
            inst v14, v4; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_5( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v5, v8, 1; \
            inst v14, v5; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_6( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v6, v8, 1; \
            inst v14, v6; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_7( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v7, v8, 1; \
            inst v14, v7; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_9( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v9, v8, 1; \
            inst v14, v9; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_10( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v10, v8, 1; \
            inst v14, v10; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_11( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v11, v8, 1; \
            inst v14, v11; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_12( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v12, v8, 1; \
            inst v14, v12; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_13( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v13, v8, 1; \
            inst v14, v13; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_15( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v15, v8, 1; \
            inst v14, v15; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_16( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v16, v8, 1; \
            inst v14, v16; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_17( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v17, v8, 1; \
            inst v14, v17; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_18( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v18, v8, 1; \
            inst v14, v18; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_19( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v19, v8, 1; \
            inst v14, v19; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_20( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v20, v8, 1; \
            inst v14, v20; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_21( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v21, v8, 1; \
            inst v14, v21; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_22( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v22, v8, 1; \
            inst v14, v22; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_23( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v23, v8, 1; \
            inst v14, v23; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_24( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v24, v8, 1; \
            inst v14, v24; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_25( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v25, v8, 1; \
            inst v14, v25; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_26( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v26, v8, 1; \
            inst v14, v26; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_27( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v27, v8, 1; \
            inst v14, v27; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_28( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v28, v8, 1; \
            inst v14, v28; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_29( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v29, v8, 1; \
            inst v14, v29; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_30( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v30, v8, 1; \
            inst v14, v30; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rs2_31( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v31, v8, 1; \
            inst v14, v31; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_1( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v1, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v2, v8, 1; \
            inst v1, v2; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_2( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v2, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_3( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v3, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v3, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_4( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v4, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_5( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v5, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v5, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_6( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v6, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_7( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v7, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v7, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_8( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v8, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_9( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v9, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v9, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_10( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v10, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_11( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v11, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v11, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_12( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v12, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_13( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v13, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v13, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_14( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v14, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_15( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v15, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v15, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_16( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v16, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_17( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v17, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v17, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_18( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v18, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_19( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v19, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v19, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_20( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v20, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_21( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v21, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v21, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_22( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v22, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_23( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v23, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v23, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_24( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v24, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_25( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v25, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v25, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_26( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v26, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_27( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v27, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v27, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_28( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v28, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_29( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v29, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v29, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_30( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
            vmseq.vi v1, v8, 1; \
            inst v30, v1; \
            VSET_VSEW \
        )
#define TEST_VSFMB_OP_rd_31( testnum, inst, result, src1_addr ) \
        TEST_CASE_MASK_4VL( testnum, v31, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            vle32.v v8, (x1); \
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
TEST_VSFMB_OP_rd_1( 35,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 36,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 37,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 38,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 39,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 40,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 41,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 42,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 43,  vmsbf.m,  0x0000000000000000, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_10( 44,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_11( 45,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_12( 46,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_13( 47,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_14( 48,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_15( 49,  vmsbf.m,  0x0000000000000000, walking_zeros_dat15 );
TEST_VSFMB_OP_rd_16( 50,  vmsbf.m,  0x0000000000000000, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_17( 51,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_18( 52,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_19( 53,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_20( 54,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_21( 55,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_22( 56,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_23( 57,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_24( 58,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_25( 59,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_26( 60,  vmsbf.m,  0x0000000000000000, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_27( 61,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_28( 62,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_29( 63,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_30( 64,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_31( 65,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_1( 66,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 67,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 68,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 69,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 70,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 71,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_7( 72,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_9( 73,  vmsbf.m,  0x0000000000000000, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_10( 74,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 75,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 76,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 77,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 78,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 79,  vmsbf.m,  0x0000000000000000, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 80,  vmsbf.m,  0x0000000000000000, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 81,  vmsbf.m,  0x0000000000000000, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_18( 82,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_19( 83,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_20( 84,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_21( 85,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_22( 86,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_23( 87,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_24( 88,  vmsbf.m,  0x0000000000000000, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_25( 89,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_26( 90,  vmsbf.m,  0x0000000000000000, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_27( 91,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_28( 92,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_29( 93,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_30( 94,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_31( 95,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
  #-------------------------------------------------------------
  # vmsif tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 96,  vmsif.m,  0x0000000000000010, walking_ones_dat0 );
TEST_VSFMB_OP( 97,  vmsif.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 98,  vmsif.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 99,  vmsif.m,  0x0000000000000002, walking_zeros_dat1);
TEST_VSFMB_OP( 100,  vmsif.m,  0x0000000000000002, walking_ones_dat2 );
TEST_VSFMB_OP( 101,  vmsif.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 102,  vmsif.m,  0x0000000000000003, walking_ones_dat3 );
TEST_VSFMB_OP( 103,  vmsif.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 104,  vmsif.m,  0x0000000000000004, walking_ones_dat4 );
TEST_VSFMB_OP( 105,  vmsif.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 106,  vmsif.m,  0x0000000000000005, walking_ones_dat5 );
TEST_VSFMB_OP( 107,  vmsif.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 108,  vmsif.m,  0x0000000000000006, walking_ones_dat6 );
TEST_VSFMB_OP( 109,  vmsif.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 110,  vmsif.m,  0x0000000000000007, walking_ones_dat7 );
TEST_VSFMB_OP( 111,  vmsif.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 112,  vmsif.m,  0x0000000000000008, walking_ones_dat8 );
TEST_VSFMB_OP( 113,  vmsif.m,  0x0000000000000001, walking_zeros_dat8);
TEST_VSFMB_OP( 114,  vmsif.m,  0x0000000000000009, walking_ones_dat9 );
TEST_VSFMB_OP( 115,  vmsif.m,  0x0000000000000001, walking_zeros_dat9);
TEST_VSFMB_OP( 116,  vmsif.m,  0x000000000000000a, walking_ones_dat10 );
TEST_VSFMB_OP( 117,  vmsif.m,  0x0000000000000001, walking_zeros_dat10);
TEST_VSFMB_OP( 118,  vmsif.m,  0x000000000000000b, walking_ones_dat11 );
TEST_VSFMB_OP( 119,  vmsif.m,  0x0000000000000001, walking_zeros_dat11);
TEST_VSFMB_OP( 120,  vmsif.m,  0x000000000000000c, walking_ones_dat12 );
TEST_VSFMB_OP( 121,  vmsif.m,  0x0000000000000001, walking_zeros_dat12);
TEST_VSFMB_OP( 122,  vmsif.m,  0x000000000000000d, walking_ones_dat13 );
TEST_VSFMB_OP( 123,  vmsif.m,  0x0000000000000001, walking_zeros_dat13);
TEST_VSFMB_OP( 124,  vmsif.m,  0x000000000000000e, walking_ones_dat14 );
TEST_VSFMB_OP( 125,  vmsif.m,  0x0000000000000001, walking_zeros_dat14);
TEST_VSFMB_OP( 126,  vmsif.m,  0x000000000000000f, walking_ones_dat15 );
TEST_VSFMB_OP( 127,  vmsif.m,  0x0000000000000001, walking_zeros_dat15);
TEST_VSFMB_OP( 128,  vmsif.m,  0x0000000000000010, walking_ones_dat16 );
TEST_VSFMB_OP( 129,  vmsif.m,  0x0000000000000001, walking_zeros_dat16);
  #-------------------------------------------------------------
  # vmsif Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 130,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 131,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 132,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 133,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 134,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 135,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 136,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 137,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 138,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_10( 139,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_11( 140,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_12( 141,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_13( 142,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_14( 143,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_15( 144,  vmsif.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rd_16( 145,  vmsif.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_17( 146,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_18( 147,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_19( 148,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_20( 149,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_21( 150,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_22( 151,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_23( 152,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_24( 153,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_25( 154,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_26( 155,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_27( 156,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_28( 157,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_29( 158,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_30( 159,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_31( 160,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_1( 161,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 162,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 163,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 164,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 165,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 166,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_7( 167,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_9( 168,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_10( 169,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 170,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 171,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 172,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 173,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 174,  vmsif.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 175,  vmsif.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 176,  vmsif.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_18( 177,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_19( 178,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_20( 179,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_21( 180,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_22( 181,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_23( 182,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_24( 183,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_25( 184,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_26( 185,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_27( 186,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_28( 187,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_29( 188,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_30( 189,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_31( 190,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
  #-------------------------------------------------------------
  # vmsof tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 191,  vmsof.m,  0x0000000000000000, walking_ones_dat0 );
TEST_VSFMB_OP( 192,  vmsof.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 193,  vmsof.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 194,  vmsof.m,  0x0000000000000001, walking_zeros_dat1);
TEST_VSFMB_OP( 195,  vmsof.m,  0x0000000000000001, walking_ones_dat2 );
TEST_VSFMB_OP( 196,  vmsof.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 197,  vmsof.m,  0x0000000000000001, walking_ones_dat3 );
TEST_VSFMB_OP( 198,  vmsof.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 199,  vmsof.m,  0x0000000000000001, walking_ones_dat4 );
TEST_VSFMB_OP( 200,  vmsof.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 201,  vmsof.m,  0x0000000000000001, walking_ones_dat5 );
TEST_VSFMB_OP( 202,  vmsof.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 203,  vmsof.m,  0x0000000000000001, walking_ones_dat6 );
TEST_VSFMB_OP( 204,  vmsof.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 205,  vmsof.m,  0x0000000000000001, walking_ones_dat7 );
TEST_VSFMB_OP( 206,  vmsof.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 207,  vmsof.m,  0x0000000000000001, walking_ones_dat8 );
TEST_VSFMB_OP( 208,  vmsof.m,  0x0000000000000001, walking_zeros_dat8);
TEST_VSFMB_OP( 209,  vmsof.m,  0x0000000000000001, walking_ones_dat9 );
TEST_VSFMB_OP( 210,  vmsof.m,  0x0000000000000001, walking_zeros_dat9);
TEST_VSFMB_OP( 211,  vmsof.m,  0x0000000000000001, walking_ones_dat10 );
TEST_VSFMB_OP( 212,  vmsof.m,  0x0000000000000001, walking_zeros_dat10);
TEST_VSFMB_OP( 213,  vmsof.m,  0x0000000000000001, walking_ones_dat11 );
TEST_VSFMB_OP( 214,  vmsof.m,  0x0000000000000001, walking_zeros_dat11);
TEST_VSFMB_OP( 215,  vmsof.m,  0x0000000000000001, walking_ones_dat12 );
TEST_VSFMB_OP( 216,  vmsof.m,  0x0000000000000001, walking_zeros_dat12);
TEST_VSFMB_OP( 217,  vmsof.m,  0x0000000000000001, walking_ones_dat13 );
TEST_VSFMB_OP( 218,  vmsof.m,  0x0000000000000001, walking_zeros_dat13);
TEST_VSFMB_OP( 219,  vmsof.m,  0x0000000000000001, walking_ones_dat14 );
TEST_VSFMB_OP( 220,  vmsof.m,  0x0000000000000001, walking_zeros_dat14);
TEST_VSFMB_OP( 221,  vmsof.m,  0x0000000000000001, walking_ones_dat15 );
TEST_VSFMB_OP( 222,  vmsof.m,  0x0000000000000001, walking_zeros_dat15);
TEST_VSFMB_OP( 223,  vmsof.m,  0x0000000000000001, walking_ones_dat16 );
TEST_VSFMB_OP( 224,  vmsof.m,  0x0000000000000001, walking_zeros_dat16);
  #-------------------------------------------------------------
  # vmsof Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 225,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 226,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 227,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 228,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 229,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 230,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 231,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 232,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 233,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_10( 234,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_11( 235,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_12( 236,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_13( 237,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_14( 238,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_15( 239,  vmsof.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rd_16( 240,  vmsof.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_17( 241,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rd_18( 242,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_19( 243,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_20( 244,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_21( 245,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_22( 246,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_23( 247,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_24( 248,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_25( 249,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_26( 250,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_27( 251,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_28( 252,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_29( 253,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_30( 254,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_31( 255,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_1( 256,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 257,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 258,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 259,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 260,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 261,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_7( 262,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_9( 263,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_10( 264,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 265,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 266,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 267,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 268,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 269,  vmsof.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 270,  vmsof.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 271,  vmsof.m,  0x0000000000000001, walking_zeros_dat0 );
TEST_VSFMB_OP_rs2_18( 272,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_19( 273,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_20( 274,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_21( 275,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_22( 276,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_23( 277,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_24( 278,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rs2_25( 279,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rs2_26( 280,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rs2_27( 281,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_28( 282,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_29( 283,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_30( 284,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_31( 285,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
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
	.word	0x0
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
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat9:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat10:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat11:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat12:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat13:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat14:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0
	.word	0x0

walking_ones_dat15:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
	.word	0x0

walking_ones_dat16:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x1
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
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat9:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat10:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat11:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat12:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat13:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat14:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1
	.word	0x1

walking_zeros_dat15:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
	.word	0x1

walking_zeros_dat16:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0

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
    

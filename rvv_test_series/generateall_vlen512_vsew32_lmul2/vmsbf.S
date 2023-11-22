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
TEST_VSFMB_OP( 1,  vmsbf.m,  0x0000000000000020, walking_ones_dat0 );
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
TEST_VSFMB_OP( 35,  vmsbf.m,  0x0000000000000010, walking_ones_dat17 );
TEST_VSFMB_OP( 36,  vmsbf.m,  0x0000000000000000, walking_zeros_dat17);
TEST_VSFMB_OP( 37,  vmsbf.m,  0x0000000000000011, walking_ones_dat18 );
TEST_VSFMB_OP( 38,  vmsbf.m,  0x0000000000000000, walking_zeros_dat18);
TEST_VSFMB_OP( 39,  vmsbf.m,  0x0000000000000012, walking_ones_dat19 );
TEST_VSFMB_OP( 40,  vmsbf.m,  0x0000000000000000, walking_zeros_dat19);
TEST_VSFMB_OP( 41,  vmsbf.m,  0x0000000000000013, walking_ones_dat20 );
TEST_VSFMB_OP( 42,  vmsbf.m,  0x0000000000000000, walking_zeros_dat20);
TEST_VSFMB_OP( 43,  vmsbf.m,  0x0000000000000014, walking_ones_dat21 );
TEST_VSFMB_OP( 44,  vmsbf.m,  0x0000000000000000, walking_zeros_dat21);
TEST_VSFMB_OP( 45,  vmsbf.m,  0x0000000000000015, walking_ones_dat22 );
TEST_VSFMB_OP( 46,  vmsbf.m,  0x0000000000000000, walking_zeros_dat22);
TEST_VSFMB_OP( 47,  vmsbf.m,  0x0000000000000016, walking_ones_dat23 );
TEST_VSFMB_OP( 48,  vmsbf.m,  0x0000000000000000, walking_zeros_dat23);
TEST_VSFMB_OP( 49,  vmsbf.m,  0x0000000000000017, walking_ones_dat24 );
TEST_VSFMB_OP( 50,  vmsbf.m,  0x0000000000000000, walking_zeros_dat24);
TEST_VSFMB_OP( 51,  vmsbf.m,  0x0000000000000018, walking_ones_dat25 );
TEST_VSFMB_OP( 52,  vmsbf.m,  0x0000000000000000, walking_zeros_dat25);
TEST_VSFMB_OP( 53,  vmsbf.m,  0x0000000000000019, walking_ones_dat26 );
TEST_VSFMB_OP( 54,  vmsbf.m,  0x0000000000000000, walking_zeros_dat26);
TEST_VSFMB_OP( 55,  vmsbf.m,  0x000000000000001a, walking_ones_dat27 );
TEST_VSFMB_OP( 56,  vmsbf.m,  0x0000000000000000, walking_zeros_dat27);
TEST_VSFMB_OP( 57,  vmsbf.m,  0x000000000000001b, walking_ones_dat28 );
TEST_VSFMB_OP( 58,  vmsbf.m,  0x0000000000000000, walking_zeros_dat28);
TEST_VSFMB_OP( 59,  vmsbf.m,  0x000000000000001c, walking_ones_dat29 );
TEST_VSFMB_OP( 60,  vmsbf.m,  0x0000000000000000, walking_zeros_dat29);
TEST_VSFMB_OP( 61,  vmsbf.m,  0x000000000000001d, walking_ones_dat30 );
TEST_VSFMB_OP( 62,  vmsbf.m,  0x0000000000000000, walking_zeros_dat30);
TEST_VSFMB_OP( 63,  vmsbf.m,  0x000000000000001e, walking_ones_dat31 );
TEST_VSFMB_OP( 64,  vmsbf.m,  0x0000000000000000, walking_zeros_dat31);
TEST_VSFMB_OP( 65,  vmsbf.m,  0x000000000000001f, walking_ones_dat32 );
TEST_VSFMB_OP( 66,  vmsbf.m,  0x0000000000000000, walking_zeros_dat32);
  #-------------------------------------------------------------
  # vmsbf Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_2( 67,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_4( 68,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_6( 69,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_8( 70,  vmsbf.m,  0x0000000000000000, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_10( 71,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_12( 72,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_14( 73,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_16( 74,  vmsbf.m,  0x0000000000000000, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_18( 75,  vmsbf.m,  0x0000000000000000, walking_zeros_dat18 );
TEST_VSFMB_OP_rd_20( 76,  vmsbf.m,  0x0000000000000000, walking_zeros_dat20 );
TEST_VSFMB_OP_rd_22( 77,  vmsbf.m,  0x0000000000000000, walking_zeros_dat22 );
TEST_VSFMB_OP_rd_24( 78,  vmsbf.m,  0x0000000000000000, walking_zeros_dat24 );
TEST_VSFMB_OP_rd_26( 79,  vmsbf.m,  0x0000000000000000, walking_zeros_dat26 );
TEST_VSFMB_OP_rd_28( 80,  vmsbf.m,  0x0000000000000000, walking_zeros_dat28 );
TEST_VSFMB_OP_rd_30( 81,  vmsbf.m,  0x0000000000000000, walking_zeros_dat30 );
TEST_VSFMB_OP_rs2_1( 82,  vmsbf.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 83,  vmsbf.m,  0x0000000000000000, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 84,  vmsbf.m,  0x0000000000000000, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 85,  vmsbf.m,  0x0000000000000000, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 86,  vmsbf.m,  0x0000000000000000, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 87,  vmsbf.m,  0x0000000000000000, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_10( 88,  vmsbf.m,  0x0000000000000000, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 89,  vmsbf.m,  0x0000000000000000, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 90,  vmsbf.m,  0x0000000000000000, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 91,  vmsbf.m,  0x0000000000000000, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 92,  vmsbf.m,  0x0000000000000000, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 93,  vmsbf.m,  0x0000000000000000, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 94,  vmsbf.m,  0x0000000000000000, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 95,  vmsbf.m,  0x0000000000000000, walking_zeros_dat17 );
TEST_VSFMB_OP_rs2_18( 96,  vmsbf.m,  0x0000000000000000, walking_zeros_dat18 );
TEST_VSFMB_OP_rs2_19( 97,  vmsbf.m,  0x0000000000000000, walking_zeros_dat19 );
TEST_VSFMB_OP_rs2_20( 98,  vmsbf.m,  0x0000000000000000, walking_zeros_dat20 );
TEST_VSFMB_OP_rs2_21( 99,  vmsbf.m,  0x0000000000000000, walking_zeros_dat21 );
TEST_VSFMB_OP_rs2_22( 100,  vmsbf.m,  0x0000000000000000, walking_zeros_dat22 );
TEST_VSFMB_OP_rs2_23( 101,  vmsbf.m,  0x0000000000000000, walking_zeros_dat23 );
TEST_VSFMB_OP_rs2_24( 102,  vmsbf.m,  0x0000000000000000, walking_zeros_dat24 );
TEST_VSFMB_OP_rs2_25( 103,  vmsbf.m,  0x0000000000000000, walking_zeros_dat25 );
TEST_VSFMB_OP_rs2_26( 104,  vmsbf.m,  0x0000000000000000, walking_zeros_dat26 );
TEST_VSFMB_OP_rs2_27( 105,  vmsbf.m,  0x0000000000000000, walking_zeros_dat27 );
TEST_VSFMB_OP_rs2_28( 106,  vmsbf.m,  0x0000000000000000, walking_zeros_dat28 );
TEST_VSFMB_OP_rs2_29( 107,  vmsbf.m,  0x0000000000000000, walking_zeros_dat29 );
TEST_VSFMB_OP_rs2_30( 108,  vmsbf.m,  0x0000000000000000, walking_zeros_dat30 );
TEST_VSFMB_OP_rs2_31( 109,  vmsbf.m,  0x0000000000000000, walking_zeros_dat31 );
  #-------------------------------------------------------------
  # vmsif tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 110,  vmsif.m,  0x0000000000000020, walking_ones_dat0 );
TEST_VSFMB_OP( 111,  vmsif.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 112,  vmsif.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 113,  vmsif.m,  0x0000000000000002, walking_zeros_dat1);
TEST_VSFMB_OP( 114,  vmsif.m,  0x0000000000000002, walking_ones_dat2 );
TEST_VSFMB_OP( 115,  vmsif.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 116,  vmsif.m,  0x0000000000000003, walking_ones_dat3 );
TEST_VSFMB_OP( 117,  vmsif.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 118,  vmsif.m,  0x0000000000000004, walking_ones_dat4 );
TEST_VSFMB_OP( 119,  vmsif.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 120,  vmsif.m,  0x0000000000000005, walking_ones_dat5 );
TEST_VSFMB_OP( 121,  vmsif.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 122,  vmsif.m,  0x0000000000000006, walking_ones_dat6 );
TEST_VSFMB_OP( 123,  vmsif.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 124,  vmsif.m,  0x0000000000000007, walking_ones_dat7 );
TEST_VSFMB_OP( 125,  vmsif.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 126,  vmsif.m,  0x0000000000000008, walking_ones_dat8 );
TEST_VSFMB_OP( 127,  vmsif.m,  0x0000000000000001, walking_zeros_dat8);
TEST_VSFMB_OP( 128,  vmsif.m,  0x0000000000000009, walking_ones_dat9 );
TEST_VSFMB_OP( 129,  vmsif.m,  0x0000000000000001, walking_zeros_dat9);
TEST_VSFMB_OP( 130,  vmsif.m,  0x000000000000000a, walking_ones_dat10 );
TEST_VSFMB_OP( 131,  vmsif.m,  0x0000000000000001, walking_zeros_dat10);
TEST_VSFMB_OP( 132,  vmsif.m,  0x000000000000000b, walking_ones_dat11 );
TEST_VSFMB_OP( 133,  vmsif.m,  0x0000000000000001, walking_zeros_dat11);
TEST_VSFMB_OP( 134,  vmsif.m,  0x000000000000000c, walking_ones_dat12 );
TEST_VSFMB_OP( 135,  vmsif.m,  0x0000000000000001, walking_zeros_dat12);
TEST_VSFMB_OP( 136,  vmsif.m,  0x000000000000000d, walking_ones_dat13 );
TEST_VSFMB_OP( 137,  vmsif.m,  0x0000000000000001, walking_zeros_dat13);
TEST_VSFMB_OP( 138,  vmsif.m,  0x000000000000000e, walking_ones_dat14 );
TEST_VSFMB_OP( 139,  vmsif.m,  0x0000000000000001, walking_zeros_dat14);
TEST_VSFMB_OP( 140,  vmsif.m,  0x000000000000000f, walking_ones_dat15 );
TEST_VSFMB_OP( 141,  vmsif.m,  0x0000000000000001, walking_zeros_dat15);
TEST_VSFMB_OP( 142,  vmsif.m,  0x0000000000000010, walking_ones_dat16 );
TEST_VSFMB_OP( 143,  vmsif.m,  0x0000000000000001, walking_zeros_dat16);
TEST_VSFMB_OP( 144,  vmsif.m,  0x0000000000000011, walking_ones_dat17 );
TEST_VSFMB_OP( 145,  vmsif.m,  0x0000000000000001, walking_zeros_dat17);
TEST_VSFMB_OP( 146,  vmsif.m,  0x0000000000000012, walking_ones_dat18 );
TEST_VSFMB_OP( 147,  vmsif.m,  0x0000000000000001, walking_zeros_dat18);
TEST_VSFMB_OP( 148,  vmsif.m,  0x0000000000000013, walking_ones_dat19 );
TEST_VSFMB_OP( 149,  vmsif.m,  0x0000000000000001, walking_zeros_dat19);
TEST_VSFMB_OP( 150,  vmsif.m,  0x0000000000000014, walking_ones_dat20 );
TEST_VSFMB_OP( 151,  vmsif.m,  0x0000000000000001, walking_zeros_dat20);
TEST_VSFMB_OP( 152,  vmsif.m,  0x0000000000000015, walking_ones_dat21 );
TEST_VSFMB_OP( 153,  vmsif.m,  0x0000000000000001, walking_zeros_dat21);
TEST_VSFMB_OP( 154,  vmsif.m,  0x0000000000000016, walking_ones_dat22 );
TEST_VSFMB_OP( 155,  vmsif.m,  0x0000000000000001, walking_zeros_dat22);
TEST_VSFMB_OP( 156,  vmsif.m,  0x0000000000000017, walking_ones_dat23 );
TEST_VSFMB_OP( 157,  vmsif.m,  0x0000000000000001, walking_zeros_dat23);
TEST_VSFMB_OP( 158,  vmsif.m,  0x0000000000000018, walking_ones_dat24 );
TEST_VSFMB_OP( 159,  vmsif.m,  0x0000000000000001, walking_zeros_dat24);
TEST_VSFMB_OP( 160,  vmsif.m,  0x0000000000000019, walking_ones_dat25 );
TEST_VSFMB_OP( 161,  vmsif.m,  0x0000000000000001, walking_zeros_dat25);
TEST_VSFMB_OP( 162,  vmsif.m,  0x000000000000001a, walking_ones_dat26 );
TEST_VSFMB_OP( 163,  vmsif.m,  0x0000000000000001, walking_zeros_dat26);
TEST_VSFMB_OP( 164,  vmsif.m,  0x000000000000001b, walking_ones_dat27 );
TEST_VSFMB_OP( 165,  vmsif.m,  0x0000000000000001, walking_zeros_dat27);
TEST_VSFMB_OP( 166,  vmsif.m,  0x000000000000001c, walking_ones_dat28 );
TEST_VSFMB_OP( 167,  vmsif.m,  0x0000000000000001, walking_zeros_dat28);
TEST_VSFMB_OP( 168,  vmsif.m,  0x000000000000001d, walking_ones_dat29 );
TEST_VSFMB_OP( 169,  vmsif.m,  0x0000000000000001, walking_zeros_dat29);
TEST_VSFMB_OP( 170,  vmsif.m,  0x000000000000001e, walking_ones_dat30 );
TEST_VSFMB_OP( 171,  vmsif.m,  0x0000000000000001, walking_zeros_dat30);
TEST_VSFMB_OP( 172,  vmsif.m,  0x000000000000001f, walking_ones_dat31 );
TEST_VSFMB_OP( 173,  vmsif.m,  0x0000000000000001, walking_zeros_dat31);
TEST_VSFMB_OP( 174,  vmsif.m,  0x0000000000000020, walking_ones_dat32 );
TEST_VSFMB_OP( 175,  vmsif.m,  0x0000000000000001, walking_zeros_dat32);
  #-------------------------------------------------------------
  # vmsif Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 176,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 177,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 178,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 179,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 180,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 181,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 182,  vmsif.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 183,  vmsif.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 184,  vmsif.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_10( 185,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_11( 186,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_12( 187,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_13( 188,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_14( 189,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_15( 190,  vmsif.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rd_16( 191,  vmsif.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_17( 192,  vmsif.m,  0x0000000000000001, walking_zeros_dat17 );
TEST_VSFMB_OP_rd_18( 193,  vmsif.m,  0x0000000000000001, walking_zeros_dat18 );
TEST_VSFMB_OP_rd_19( 194,  vmsif.m,  0x0000000000000001, walking_zeros_dat19 );
TEST_VSFMB_OP_rd_20( 195,  vmsif.m,  0x0000000000000001, walking_zeros_dat20 );
TEST_VSFMB_OP_rd_21( 196,  vmsif.m,  0x0000000000000001, walking_zeros_dat21 );
TEST_VSFMB_OP_rd_22( 197,  vmsif.m,  0x0000000000000001, walking_zeros_dat22 );
TEST_VSFMB_OP_rd_23( 198,  vmsif.m,  0x0000000000000001, walking_zeros_dat23 );
TEST_VSFMB_OP_rd_24( 199,  vmsif.m,  0x0000000000000001, walking_zeros_dat24 );
TEST_VSFMB_OP_rd_25( 200,  vmsif.m,  0x0000000000000001, walking_zeros_dat25 );
TEST_VSFMB_OP_rd_26( 201,  vmsif.m,  0x0000000000000001, walking_zeros_dat26 );
TEST_VSFMB_OP_rd_27( 202,  vmsif.m,  0x0000000000000001, walking_zeros_dat27 );
TEST_VSFMB_OP_rd_28( 203,  vmsif.m,  0x0000000000000001, walking_zeros_dat28 );
TEST_VSFMB_OP_rd_29( 204,  vmsif.m,  0x0000000000000001, walking_zeros_dat29 );
TEST_VSFMB_OP_rd_30( 205,  vmsif.m,  0x0000000000000001, walking_zeros_dat30 );
TEST_VSFMB_OP_rd_31( 206,  vmsif.m,  0x0000000000000001, walking_zeros_dat31 );
TEST_VSFMB_OP_rs2_1( 207,  vmsif.m,  0x0000000000000002, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 208,  vmsif.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 209,  vmsif.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 210,  vmsif.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 211,  vmsif.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 212,  vmsif.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_10( 213,  vmsif.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 214,  vmsif.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 215,  vmsif.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 216,  vmsif.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 217,  vmsif.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 218,  vmsif.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 219,  vmsif.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 220,  vmsif.m,  0x0000000000000001, walking_zeros_dat17 );
TEST_VSFMB_OP_rs2_18( 221,  vmsif.m,  0x0000000000000001, walking_zeros_dat18 );
TEST_VSFMB_OP_rs2_19( 222,  vmsif.m,  0x0000000000000001, walking_zeros_dat19 );
TEST_VSFMB_OP_rs2_20( 223,  vmsif.m,  0x0000000000000001, walking_zeros_dat20 );
TEST_VSFMB_OP_rs2_21( 224,  vmsif.m,  0x0000000000000001, walking_zeros_dat21 );
TEST_VSFMB_OP_rs2_22( 225,  vmsif.m,  0x0000000000000001, walking_zeros_dat22 );
TEST_VSFMB_OP_rs2_23( 226,  vmsif.m,  0x0000000000000001, walking_zeros_dat23 );
TEST_VSFMB_OP_rs2_24( 227,  vmsif.m,  0x0000000000000001, walking_zeros_dat24 );
TEST_VSFMB_OP_rs2_25( 228,  vmsif.m,  0x0000000000000001, walking_zeros_dat25 );
TEST_VSFMB_OP_rs2_26( 229,  vmsif.m,  0x0000000000000001, walking_zeros_dat26 );
TEST_VSFMB_OP_rs2_27( 230,  vmsif.m,  0x0000000000000001, walking_zeros_dat27 );
TEST_VSFMB_OP_rs2_28( 231,  vmsif.m,  0x0000000000000001, walking_zeros_dat28 );
TEST_VSFMB_OP_rs2_29( 232,  vmsif.m,  0x0000000000000001, walking_zeros_dat29 );
TEST_VSFMB_OP_rs2_30( 233,  vmsif.m,  0x0000000000000001, walking_zeros_dat30 );
TEST_VSFMB_OP_rs2_31( 234,  vmsif.m,  0x0000000000000001, walking_zeros_dat31 );
  #-------------------------------------------------------------
  # vmsof tests
  #-------------------------------------------------------------
TEST_VSFMB_OP( 235,  vmsof.m,  0x0000000000000000, walking_ones_dat0 );
TEST_VSFMB_OP( 236,  vmsof.m,  0x0000000000000001, walking_zeros_dat0);
TEST_VSFMB_OP( 237,  vmsof.m,  0x0000000000000001, walking_ones_dat1 );
TEST_VSFMB_OP( 238,  vmsof.m,  0x0000000000000001, walking_zeros_dat1);
TEST_VSFMB_OP( 239,  vmsof.m,  0x0000000000000001, walking_ones_dat2 );
TEST_VSFMB_OP( 240,  vmsof.m,  0x0000000000000001, walking_zeros_dat2);
TEST_VSFMB_OP( 241,  vmsof.m,  0x0000000000000001, walking_ones_dat3 );
TEST_VSFMB_OP( 242,  vmsof.m,  0x0000000000000001, walking_zeros_dat3);
TEST_VSFMB_OP( 243,  vmsof.m,  0x0000000000000001, walking_ones_dat4 );
TEST_VSFMB_OP( 244,  vmsof.m,  0x0000000000000001, walking_zeros_dat4);
TEST_VSFMB_OP( 245,  vmsof.m,  0x0000000000000001, walking_ones_dat5 );
TEST_VSFMB_OP( 246,  vmsof.m,  0x0000000000000001, walking_zeros_dat5);
TEST_VSFMB_OP( 247,  vmsof.m,  0x0000000000000001, walking_ones_dat6 );
TEST_VSFMB_OP( 248,  vmsof.m,  0x0000000000000001, walking_zeros_dat6);
TEST_VSFMB_OP( 249,  vmsof.m,  0x0000000000000001, walking_ones_dat7 );
TEST_VSFMB_OP( 250,  vmsof.m,  0x0000000000000001, walking_zeros_dat7);
TEST_VSFMB_OP( 251,  vmsof.m,  0x0000000000000001, walking_ones_dat8 );
TEST_VSFMB_OP( 252,  vmsof.m,  0x0000000000000001, walking_zeros_dat8);
TEST_VSFMB_OP( 253,  vmsof.m,  0x0000000000000001, walking_ones_dat9 );
TEST_VSFMB_OP( 254,  vmsof.m,  0x0000000000000001, walking_zeros_dat9);
TEST_VSFMB_OP( 255,  vmsof.m,  0x0000000000000001, walking_ones_dat10 );
TEST_VSFMB_OP( 256,  vmsof.m,  0x0000000000000001, walking_zeros_dat10);
TEST_VSFMB_OP( 257,  vmsof.m,  0x0000000000000001, walking_ones_dat11 );
TEST_VSFMB_OP( 258,  vmsof.m,  0x0000000000000001, walking_zeros_dat11);
TEST_VSFMB_OP( 259,  vmsof.m,  0x0000000000000001, walking_ones_dat12 );
TEST_VSFMB_OP( 260,  vmsof.m,  0x0000000000000001, walking_zeros_dat12);
TEST_VSFMB_OP( 261,  vmsof.m,  0x0000000000000001, walking_ones_dat13 );
TEST_VSFMB_OP( 262,  vmsof.m,  0x0000000000000001, walking_zeros_dat13);
TEST_VSFMB_OP( 263,  vmsof.m,  0x0000000000000001, walking_ones_dat14 );
TEST_VSFMB_OP( 264,  vmsof.m,  0x0000000000000001, walking_zeros_dat14);
TEST_VSFMB_OP( 265,  vmsof.m,  0x0000000000000001, walking_ones_dat15 );
TEST_VSFMB_OP( 266,  vmsof.m,  0x0000000000000001, walking_zeros_dat15);
TEST_VSFMB_OP( 267,  vmsof.m,  0x0000000000000001, walking_ones_dat16 );
TEST_VSFMB_OP( 268,  vmsof.m,  0x0000000000000001, walking_zeros_dat16);
TEST_VSFMB_OP( 269,  vmsof.m,  0x0000000000000001, walking_ones_dat17 );
TEST_VSFMB_OP( 270,  vmsof.m,  0x0000000000000001, walking_zeros_dat17);
TEST_VSFMB_OP( 271,  vmsof.m,  0x0000000000000001, walking_ones_dat18 );
TEST_VSFMB_OP( 272,  vmsof.m,  0x0000000000000001, walking_zeros_dat18);
TEST_VSFMB_OP( 273,  vmsof.m,  0x0000000000000001, walking_ones_dat19 );
TEST_VSFMB_OP( 274,  vmsof.m,  0x0000000000000001, walking_zeros_dat19);
TEST_VSFMB_OP( 275,  vmsof.m,  0x0000000000000001, walking_ones_dat20 );
TEST_VSFMB_OP( 276,  vmsof.m,  0x0000000000000001, walking_zeros_dat20);
TEST_VSFMB_OP( 277,  vmsof.m,  0x0000000000000001, walking_ones_dat21 );
TEST_VSFMB_OP( 278,  vmsof.m,  0x0000000000000001, walking_zeros_dat21);
TEST_VSFMB_OP( 279,  vmsof.m,  0x0000000000000001, walking_ones_dat22 );
TEST_VSFMB_OP( 280,  vmsof.m,  0x0000000000000001, walking_zeros_dat22);
TEST_VSFMB_OP( 281,  vmsof.m,  0x0000000000000001, walking_ones_dat23 );
TEST_VSFMB_OP( 282,  vmsof.m,  0x0000000000000001, walking_zeros_dat23);
TEST_VSFMB_OP( 283,  vmsof.m,  0x0000000000000001, walking_ones_dat24 );
TEST_VSFMB_OP( 284,  vmsof.m,  0x0000000000000001, walking_zeros_dat24);
TEST_VSFMB_OP( 285,  vmsof.m,  0x0000000000000001, walking_ones_dat25 );
TEST_VSFMB_OP( 286,  vmsof.m,  0x0000000000000001, walking_zeros_dat25);
TEST_VSFMB_OP( 287,  vmsof.m,  0x0000000000000001, walking_ones_dat26 );
TEST_VSFMB_OP( 288,  vmsof.m,  0x0000000000000001, walking_zeros_dat26);
TEST_VSFMB_OP( 289,  vmsof.m,  0x0000000000000001, walking_ones_dat27 );
TEST_VSFMB_OP( 290,  vmsof.m,  0x0000000000000001, walking_zeros_dat27);
TEST_VSFMB_OP( 291,  vmsof.m,  0x0000000000000001, walking_ones_dat28 );
TEST_VSFMB_OP( 292,  vmsof.m,  0x0000000000000001, walking_zeros_dat28);
TEST_VSFMB_OP( 293,  vmsof.m,  0x0000000000000001, walking_ones_dat29 );
TEST_VSFMB_OP( 294,  vmsof.m,  0x0000000000000001, walking_zeros_dat29);
TEST_VSFMB_OP( 295,  vmsof.m,  0x0000000000000001, walking_ones_dat30 );
TEST_VSFMB_OP( 296,  vmsof.m,  0x0000000000000001, walking_zeros_dat30);
TEST_VSFMB_OP( 297,  vmsof.m,  0x0000000000000001, walking_ones_dat31 );
TEST_VSFMB_OP( 298,  vmsof.m,  0x0000000000000001, walking_zeros_dat31);
TEST_VSFMB_OP( 299,  vmsof.m,  0x0000000000000001, walking_ones_dat32 );
TEST_VSFMB_OP( 300,  vmsof.m,  0x0000000000000001, walking_zeros_dat32);
  #-------------------------------------------------------------
  # vmsof Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VSFMB_OP_rd_1( 301,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rd_2( 302,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rd_3( 303,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rd_4( 304,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rd_5( 305,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rd_6( 306,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rd_7( 307,  vmsof.m,  0x0000000000000001, walking_zeros_dat7 );
TEST_VSFMB_OP_rd_8( 308,  vmsof.m,  0x0000000000000001, walking_zeros_dat8 );
TEST_VSFMB_OP_rd_9( 309,  vmsof.m,  0x0000000000000001, walking_zeros_dat9 );
TEST_VSFMB_OP_rd_10( 310,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rd_11( 311,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rd_12( 312,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rd_13( 313,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rd_14( 314,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rd_15( 315,  vmsof.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rd_16( 316,  vmsof.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rd_17( 317,  vmsof.m,  0x0000000000000001, walking_zeros_dat17 );
TEST_VSFMB_OP_rd_18( 318,  vmsof.m,  0x0000000000000001, walking_zeros_dat18 );
TEST_VSFMB_OP_rd_19( 319,  vmsof.m,  0x0000000000000001, walking_zeros_dat19 );
TEST_VSFMB_OP_rd_20( 320,  vmsof.m,  0x0000000000000001, walking_zeros_dat20 );
TEST_VSFMB_OP_rd_21( 321,  vmsof.m,  0x0000000000000001, walking_zeros_dat21 );
TEST_VSFMB_OP_rd_22( 322,  vmsof.m,  0x0000000000000001, walking_zeros_dat22 );
TEST_VSFMB_OP_rd_23( 323,  vmsof.m,  0x0000000000000001, walking_zeros_dat23 );
TEST_VSFMB_OP_rd_24( 324,  vmsof.m,  0x0000000000000001, walking_zeros_dat24 );
TEST_VSFMB_OP_rd_25( 325,  vmsof.m,  0x0000000000000001, walking_zeros_dat25 );
TEST_VSFMB_OP_rd_26( 326,  vmsof.m,  0x0000000000000001, walking_zeros_dat26 );
TEST_VSFMB_OP_rd_27( 327,  vmsof.m,  0x0000000000000001, walking_zeros_dat27 );
TEST_VSFMB_OP_rd_28( 328,  vmsof.m,  0x0000000000000001, walking_zeros_dat28 );
TEST_VSFMB_OP_rd_29( 329,  vmsof.m,  0x0000000000000001, walking_zeros_dat29 );
TEST_VSFMB_OP_rd_30( 330,  vmsof.m,  0x0000000000000001, walking_zeros_dat30 );
TEST_VSFMB_OP_rd_31( 331,  vmsof.m,  0x0000000000000001, walking_zeros_dat31 );
TEST_VSFMB_OP_rs2_1( 332,  vmsof.m,  0x0000000000000001, walking_zeros_dat1 );
TEST_VSFMB_OP_rs2_2( 333,  vmsof.m,  0x0000000000000001, walking_zeros_dat2 );
TEST_VSFMB_OP_rs2_3( 334,  vmsof.m,  0x0000000000000001, walking_zeros_dat3 );
TEST_VSFMB_OP_rs2_4( 335,  vmsof.m,  0x0000000000000001, walking_zeros_dat4 );
TEST_VSFMB_OP_rs2_5( 336,  vmsof.m,  0x0000000000000001, walking_zeros_dat5 );
TEST_VSFMB_OP_rs2_6( 337,  vmsof.m,  0x0000000000000001, walking_zeros_dat6 );
TEST_VSFMB_OP_rs2_10( 338,  vmsof.m,  0x0000000000000001, walking_zeros_dat10 );
TEST_VSFMB_OP_rs2_11( 339,  vmsof.m,  0x0000000000000001, walking_zeros_dat11 );
TEST_VSFMB_OP_rs2_12( 340,  vmsof.m,  0x0000000000000001, walking_zeros_dat12 );
TEST_VSFMB_OP_rs2_13( 341,  vmsof.m,  0x0000000000000001, walking_zeros_dat13 );
TEST_VSFMB_OP_rs2_14( 342,  vmsof.m,  0x0000000000000001, walking_zeros_dat14 );
TEST_VSFMB_OP_rs2_15( 343,  vmsof.m,  0x0000000000000001, walking_zeros_dat15 );
TEST_VSFMB_OP_rs2_16( 344,  vmsof.m,  0x0000000000000001, walking_zeros_dat16 );
TEST_VSFMB_OP_rs2_17( 345,  vmsof.m,  0x0000000000000001, walking_zeros_dat17 );
TEST_VSFMB_OP_rs2_18( 346,  vmsof.m,  0x0000000000000001, walking_zeros_dat18 );
TEST_VSFMB_OP_rs2_19( 347,  vmsof.m,  0x0000000000000001, walking_zeros_dat19 );
TEST_VSFMB_OP_rs2_20( 348,  vmsof.m,  0x0000000000000001, walking_zeros_dat20 );
TEST_VSFMB_OP_rs2_21( 349,  vmsof.m,  0x0000000000000001, walking_zeros_dat21 );
TEST_VSFMB_OP_rs2_22( 350,  vmsof.m,  0x0000000000000001, walking_zeros_dat22 );
TEST_VSFMB_OP_rs2_23( 351,  vmsof.m,  0x0000000000000001, walking_zeros_dat23 );
TEST_VSFMB_OP_rs2_24( 352,  vmsof.m,  0x0000000000000001, walking_zeros_dat24 );
TEST_VSFMB_OP_rs2_25( 353,  vmsof.m,  0x0000000000000001, walking_zeros_dat25 );
TEST_VSFMB_OP_rs2_26( 354,  vmsof.m,  0x0000000000000001, walking_zeros_dat26 );
TEST_VSFMB_OP_rs2_27( 355,  vmsof.m,  0x0000000000000001, walking_zeros_dat27 );
TEST_VSFMB_OP_rs2_28( 356,  vmsof.m,  0x0000000000000001, walking_zeros_dat28 );
TEST_VSFMB_OP_rs2_29( 357,  vmsof.m,  0x0000000000000001, walking_zeros_dat29 );
TEST_VSFMB_OP_rs2_30( 358,  vmsof.m,  0x0000000000000001, walking_zeros_dat30 );
TEST_VSFMB_OP_rs2_31( 359,  vmsof.m,  0x0000000000000001, walking_zeros_dat31 );
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

walking_ones_dat17:
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

walking_ones_dat18:
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

walking_ones_dat19:
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

walking_ones_dat20:
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

walking_ones_dat21:
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

walking_ones_dat22:
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

walking_ones_dat23:
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

walking_ones_dat24:
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

walking_ones_dat25:
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

walking_ones_dat26:
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

walking_ones_dat27:
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

walking_ones_dat28:
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

walking_ones_dat29:
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

walking_ones_dat30:
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

walking_ones_dat31:
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

walking_ones_dat32:
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

walking_zeros_dat17:
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

walking_zeros_dat18:
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

walking_zeros_dat19:
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

walking_zeros_dat20:
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

walking_zeros_dat21:
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

walking_zeros_dat22:
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

walking_zeros_dat23:
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

walking_zeros_dat24:
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

walking_zeros_dat25:
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

walking_zeros_dat26:
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

walking_zeros_dat27:
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

walking_zeros_dat28:
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

walking_zeros_dat29:
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

walking_zeros_dat30:
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

walking_zeros_dat31:
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

walking_zeros_dat32:
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
    

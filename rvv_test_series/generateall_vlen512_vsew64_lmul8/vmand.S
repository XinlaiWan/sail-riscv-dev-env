#define TEST_VMRL_OP_rs1_1( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v3, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v3, v2, v1; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rs1_2( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v2, v16, 1; \
                inst v14, v1, v2; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_3( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v3, v16, 1; \
                inst v14, v1, v3; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_4( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v4, v16, 1; \
                inst v14, v1, v4; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_5( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v5, v16, 1; \
                inst v14, v1, v5; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_6( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v6, v16, 1; \
                inst v14, v1, v6; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_7( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v7, v16, 1; \
                inst v14, v1, v7; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_8( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v8, v16, 1; \
                inst v14, v1, v8; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_9( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v9, v16, 1; \
                inst v14, v1, v9; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_10( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v10, v16, 1; \
                inst v14, v1, v10; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_11( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v11, v16, 1; \
                inst v14, v1, v11; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_12( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v12, v16, 1; \
                inst v14, v1, v12; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_13( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v13, v16, 1; \
                inst v14, v1, v13; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_14( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v14, v16, 1; \
                inst v14, v1, v14; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_15( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v15, v16, 1; \
                inst v14, v1, v15; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_16( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v16, v4, 1; \
                inst v14, v1, v16; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_17( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v17, v4, 1; \
                inst v14, v1, v17; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_18( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v18, v4, 1; \
                inst v14, v1, v18; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_19( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v19, v4, 1; \
                inst v14, v1, v19; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_20( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v20, v4, 1; \
                inst v14, v1, v20; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_21( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v21, v4, 1; \
                inst v14, v1, v21; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_22( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v22, v4, 1; \
                inst v14, v1, v22; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_23( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v4, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v23, v4, 1; \
                inst v14, v1, v23; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_24( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v24, v16, 1; \
                inst v14, v1, v24; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_25( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v25, v16, 1; \
                inst v14, v1, v25; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_26( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v26, v16, 1; \
                inst v14, v1, v26; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_27( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v27, v16, 1; \
                inst v14, v1, v27; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_28( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v28, v16, 1; \
                inst v14, v1, v28; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_29( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v29, v16, 1; \
                inst v14, v1, v29; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_30( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v30, v16, 1; \
                inst v14, v1, v30; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_31( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v31, v16, 1; \
                inst v14, v1, v31; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rd_2( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v2, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_3( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v3, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v3, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_4( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v4, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_5( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v5, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v5, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_6( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v6, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_7( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v7, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v7, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_8( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v8, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_9( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v9, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v9, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_10( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v10, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_11( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v11, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v11, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_12( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v12, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_13( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v13, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v13, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_14( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v14, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_15( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v15, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v15, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_16( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v16, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_17( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v17, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v17, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_18( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v18, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_19( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v19, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v19, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_20( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v20, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_21( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v21, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v21, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_22( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v22, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_23( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v23, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v23, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_24( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v24, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_25( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v25, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v25, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_26( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v26, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_27( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v27, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v27, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_28( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v28, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_29( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v29, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v29, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_30( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v30, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_31( testnum, inst, sew, result, src1_addr, src2_addr ) \
        TEST_CASE_MASK_4VL( testnum, v31, result, \
            VSET_VSEW_4AVL \
            la  x1, src1_addr; \
            MK_VLE_INST(sew) v8, (x1); \
            la  x1, src2_addr; \
            MK_VLE_INST(sew) v16, (x1); \
            vmseq.vi v1, v8, 1; \
            vmseq.vi v2, v16, 1; \
            inst v31, v1, v2; \
            VSET_VSEW \
        )
#define TEST_VMRL_OP_rd_1( testnum, inst, sew, result, src1_addr, src2_addr ) \
    TEST_CASE_MASK_4VL( testnum, v1, result, \
        VSET_VSEW_4AVL \
        la  x1, src1_addr; \
        MK_VLE_INST(sew) v8, (x1); \
        la  x1, src2_addr; \
        MK_VLE_INST(sew) v16, (x1); \
        vmseq.vi v3, v8, 1; \
        vmseq.vi v2, v16, 1; \
        inst v1, v3, v2; \
        VSET_VSEW \
    )
#define TEST_VMRL_OP_rd_2( testnum, inst, sew, result, src1_addr, src2_addr ) \
    TEST_CASE_MASK_4VL( testnum, v2, result, \
        VSET_VSEW_4AVL \
        la  x1, src1_addr; \
        MK_VLE_INST(sew) v8, (x1); \
        la  x1, src2_addr; \
        MK_VLE_INST(sew) v16, (x1); \
        vmseq.vi v1, v8, 1; \
        vmseq.vi v3, v16, 1; \
        inst v2, v1, v3; \
        VSET_VSEW \
    )
#----------------------------------------------------------------------------- 
    # vmand.S
    #-----------------------------------------------------------------------------
    #
    # Test vmand instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmand)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmand tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 9,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 19,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 28,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 33,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat33 );
TEST_VMRL_OP( 37,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat37 );
TEST_VMRL_OP( 42,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat42 );
TEST_VMRL_OP( 72,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 81,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 88,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 131,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 155,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 165,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat35 );
TEST_VMRL_OP( 167,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat37 );
TEST_VMRL_OP( 169,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat39 );
TEST_VMRL_OP( 206,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 224,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 236,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat41 );
TEST_VMRL_OP( 239,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat44 );
TEST_VMRL_OP( 249,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat54 );
TEST_VMRL_OP( 268,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 296,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat36 );
TEST_VMRL_OP( 301,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat41 );
TEST_VMRL_OP( 320,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat60 );
TEST_VMRL_OP( 330,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 344,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 347,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat22 );
TEST_VMRL_OP( 367,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat42 );
TEST_VMRL_OP( 405,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 417,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 437,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat47 );
TEST_VMRL_OP( 465,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 504,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat49 );
TEST_VMRL_OP( 513,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat58 );
TEST_VMRL_OP( 521,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 526,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 532,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 534,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 535,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 536,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 546,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 555,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat35 );
TEST_VMRL_OP( 594,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 627,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat42 );
TEST_VMRL_OP( 657,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 706,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat56 );
TEST_VMRL_OP( 735,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 743,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 745,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 747,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 750,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat35 );
TEST_VMRL_OP( 752,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat37 );
TEST_VMRL_OP( 756,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat41 );
TEST_VMRL_OP( 775,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat60 );
TEST_VMRL_OP( 800,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat20 );
TEST_VMRL_OP( 819,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat39 );
TEST_VMRL_OP( 822,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat42 );
TEST_VMRL_OP( 823,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat43 );
TEST_VMRL_OP( 824,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat44 );
TEST_VMRL_OP( 830,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat50 );
TEST_VMRL_OP( 833,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat53 );
TEST_VMRL_OP( 865,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat20 );
TEST_VMRL_OP( 872,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat27 );
TEST_VMRL_OP( 898,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat53 );
TEST_VMRL_OP( 908,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat63 );
TEST_VMRL_OP( 910,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 960,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat50 );
TEST_VMRL_OP( 967,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat57 );
TEST_VMRL_OP( 968,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat58 );
TEST_VMRL_OP( 986,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 994,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 995,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 1002,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 1041,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 1046,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1054,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1066,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 1068,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 1069,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat29 );
TEST_VMRL_OP( 1075,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat35 );
TEST_VMRL_OP( 1079,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat39 );
TEST_VMRL_OP( 1093,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat53 );
TEST_VMRL_OP( 1096,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat56 );
TEST_VMRL_OP( 1257,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 1264,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 1280,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat45 );
TEST_VMRL_OP( 1281,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat46 );
TEST_VMRL_OP( 1288,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat53 );
TEST_VMRL_OP( 1290,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat55 );
TEST_VMRL_OP( 1292,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat57 );
TEST_VMRL_OP( 1309,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat9 );
TEST_VMRL_OP( 1310,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 1319,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat19 );
TEST_VMRL_OP( 1358,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat58 );
TEST_VMRL_OP( 1383,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 1396,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 1413,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat48 );
TEST_VMRL_OP( 1455,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 1466,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat36 );
TEST_VMRL_OP( 1467,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat37 );
TEST_VMRL_OP( 1469,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat39 );
TEST_VMRL_OP( 1491,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat61 );
TEST_VMRL_OP( 1592,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 1629,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat4 );
TEST_VMRL_OP( 1661,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat36 );
TEST_VMRL_OP( 1672,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat47 );
TEST_VMRL_OP( 1709,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 1710,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat20 );
TEST_VMRL_OP( 1726,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat36 );
TEST_VMRL_OP( 1734,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat44 );
TEST_VMRL_OP( 1739,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat49 );
TEST_VMRL_OP( 1766,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 1769,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 1788,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat33 );
TEST_VMRL_OP( 1803,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat48 );
TEST_VMRL_OP( 1804,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat49 );
TEST_VMRL_OP( 1809,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat54 );
TEST_VMRL_OP( 1819,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat64 );
TEST_VMRL_OP( 1822,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 1823,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 1854,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat34 );
TEST_VMRL_OP( 1858,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat38 );
TEST_VMRL_OP( 1860,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat40 );
TEST_VMRL_OP( 1893,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 1899,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat14 );
TEST_VMRL_OP( 1916,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat31 );
TEST_VMRL_OP( 1919,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat34 );
TEST_VMRL_OP( 1924,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat39 );
TEST_VMRL_OP( 1930,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat45 );
TEST_VMRL_OP( 1945,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat60 );
TEST_VMRL_OP( 1974,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 1986,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat36 );
TEST_VMRL_OP( 1990,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat40 );
TEST_VMRL_OP( 2001,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat51 );
TEST_VMRL_OP( 2024,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat9 );
TEST_VMRL_OP( 2039,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 2102,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 2115,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat35 );
TEST_VMRL_OP( 2119,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat39 );
TEST_VMRL_OP( 2132,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat52 );
TEST_VMRL_OP( 2139,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat59 );
TEST_VMRL_OP( 2152,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat33, walking_ones_dat7 );
TEST_VMRL_OP( 2173,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat33, walking_ones_dat28 );
TEST_VMRL_OP( 2193,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat33, walking_ones_dat48 );
TEST_VMRL_OP( 2216,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat34, walking_ones_dat6 );
TEST_VMRL_OP( 2220,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat34, walking_ones_dat10 );
TEST_VMRL_OP( 2227,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat34, walking_ones_dat17 );
TEST_VMRL_OP( 2278,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_ones_dat3 );
TEST_VMRL_OP( 2288,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_ones_dat13 );
TEST_VMRL_OP( 2301,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_ones_dat26 );
TEST_VMRL_OP( 2325,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_ones_dat50 );
TEST_VMRL_OP( 2329,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_ones_dat54 );
TEST_VMRL_OP( 2330,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_ones_dat55 );
TEST_VMRL_OP( 2391,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat36, walking_ones_dat51 );
TEST_VMRL_OP( 2402,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat36, walking_ones_dat62 );
TEST_VMRL_OP( 2438,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat37, walking_ones_dat33 );
TEST_VMRL_OP( 2480,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat38, walking_ones_dat10 );
TEST_VMRL_OP( 2481,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat38, walking_ones_dat11 );
TEST_VMRL_OP( 2494,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat38, walking_ones_dat24 );
TEST_VMRL_OP( 2519,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat38, walking_ones_dat49 );
TEST_VMRL_OP( 2561,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat39, walking_ones_dat26 );
TEST_VMRL_OP( 2600,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat40, walking_ones_dat0 );
TEST_VMRL_OP( 2624,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat40, walking_ones_dat24 );
TEST_VMRL_OP( 2650,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat40, walking_ones_dat50 );
TEST_VMRL_OP( 2675,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat41, walking_ones_dat10 );
TEST_VMRL_OP( 2691,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat41, walking_ones_dat26 );
TEST_VMRL_OP( 2777,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat42, walking_ones_dat47 );
TEST_VMRL_OP( 2810,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat43, walking_ones_dat15 );
TEST_VMRL_OP( 2828,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat43, walking_ones_dat33 );
TEST_VMRL_OP( 2884,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat44, walking_ones_dat24 );
TEST_VMRL_OP( 2902,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat44, walking_ones_dat42 );
TEST_VMRL_OP( 2922,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat44, walking_ones_dat62 );
TEST_VMRL_OP( 2951,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat45, walking_ones_dat26 );
TEST_VMRL_OP( 2964,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat45, walking_ones_dat39 );
TEST_VMRL_OP( 2966,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat45, walking_ones_dat41 );
TEST_VMRL_OP( 2996,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat46, walking_ones_dat6 );
TEST_VMRL_OP( 3017,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat46, walking_ones_dat27 );
TEST_VMRL_OP( 3036,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 3082,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat47, walking_ones_dat27 );
TEST_VMRL_OP( 3103,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat47, walking_ones_dat48 );
TEST_VMRL_OP( 3133,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat13 );
TEST_VMRL_OP( 3138,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat18 );
TEST_VMRL_OP( 3146,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat26 );
TEST_VMRL_OP( 3149,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat29 );
TEST_VMRL_OP( 3157,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat37 );
TEST_VMRL_OP( 3159,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat39 );
TEST_VMRL_OP( 3164,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat44 );
TEST_VMRL_OP( 3167,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_ones_dat47 );
TEST_VMRL_OP( 3199,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat49, walking_ones_dat14 );
TEST_VMRL_OP( 3218,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat49, walking_ones_dat33 );
TEST_VMRL_OP( 3241,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat49, walking_ones_dat56 );
TEST_VMRL_OP( 3309,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat50, walking_ones_dat59 );
TEST_VMRL_OP( 3314,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat50, walking_ones_dat64 );
TEST_VMRL_OP( 3359,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat51, walking_ones_dat44 );
TEST_VMRL_OP( 3360,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat51, walking_ones_dat45 );
TEST_VMRL_OP( 3366,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 3371,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat51, walking_ones_dat56 );
TEST_VMRL_OP( 3380,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat52, walking_ones_dat0 );
TEST_VMRL_OP( 3391,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat52, walking_ones_dat11 );
TEST_VMRL_OP( 3415,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat52, walking_ones_dat35 );
TEST_VMRL_OP( 3440,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat52, walking_ones_dat60 );
TEST_VMRL_OP( 3451,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_ones_dat6 );
TEST_VMRL_OP( 3468,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_ones_dat23 );
TEST_VMRL_OP( 3486,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_ones_dat41 );
TEST_VMRL_OP( 3488,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_ones_dat43 );
TEST_VMRL_OP( 3507,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_ones_dat62 );
TEST_VMRL_OP( 3508,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_ones_dat63 );
TEST_VMRL_OP( 3517,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat7 );
TEST_VMRL_OP( 3518,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat8 );
TEST_VMRL_OP( 3526,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat16 );
TEST_VMRL_OP( 3532,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat22 );
TEST_VMRL_OP( 3538,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat28 );
TEST_VMRL_OP( 3544,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat34 );
TEST_VMRL_OP( 3553,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat43 );
TEST_VMRL_OP( 3555,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_ones_dat45 );
TEST_VMRL_OP( 3584,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_ones_dat9 );
TEST_VMRL_OP( 3589,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_ones_dat14 );
TEST_VMRL_OP( 3595,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_ones_dat20 );
TEST_VMRL_OP( 3598,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_ones_dat23 );
TEST_VMRL_OP( 3626,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_ones_dat51 );
TEST_VMRL_OP( 3631,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_ones_dat56 );
TEST_VMRL_OP( 3634,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_ones_dat59 );
TEST_VMRL_OP( 3646,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat56, walking_ones_dat6 );
TEST_VMRL_OP( 3672,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat56, walking_ones_dat32 );
TEST_VMRL_OP( 3707,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat57, walking_ones_dat2 );
TEST_VMRL_OP( 3713,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat57, walking_ones_dat8 );
TEST_VMRL_OP( 3731,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat57, walking_ones_dat26 );
TEST_VMRL_OP( 3760,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat57, walking_ones_dat55 );
TEST_VMRL_OP( 3770,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat58, walking_ones_dat0 );
TEST_VMRL_OP( 3772,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat58, walking_ones_dat2 );
TEST_VMRL_OP( 3802,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat58, walking_ones_dat32 );
TEST_VMRL_OP( 3813,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat58, walking_ones_dat43 );
TEST_VMRL_OP( 3829,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat58, walking_ones_dat59 );
TEST_VMRL_OP( 3868,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat59, walking_ones_dat33 );
TEST_VMRL_OP( 3879,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat59, walking_ones_dat44 );
TEST_VMRL_OP( 3882,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat59, walking_ones_dat47 );
TEST_VMRL_OP( 3887,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat59, walking_ones_dat52 );
TEST_VMRL_OP( 3904,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_ones_dat4 );
TEST_VMRL_OP( 3917,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_ones_dat17 );
TEST_VMRL_OP( 3929,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_ones_dat29 );
TEST_VMRL_OP( 3950,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_ones_dat50 );
TEST_VMRL_OP( 3951,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_ones_dat51 );
TEST_VMRL_OP( 3960,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 3963,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_ones_dat63 );
TEST_VMRL_OP( 3965,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat61, walking_ones_dat0 );
TEST_VMRL_OP( 4001,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat61, walking_ones_dat36 );
TEST_VMRL_OP( 4038,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat62, walking_ones_dat8 );
TEST_VMRL_OP( 4047,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat62, walking_ones_dat17 );
TEST_VMRL_OP( 4065,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat62, walking_ones_dat35 );
TEST_VMRL_OP( 4104,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat63, walking_ones_dat9 );
TEST_VMRL_OP( 4126,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat63, walking_ones_dat31 );
TEST_VMRL_OP( 4142,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat63, walking_ones_dat47 );
TEST_VMRL_OP( 4153,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat63, walking_ones_dat58 );
TEST_VMRL_OP( 4291,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4303,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 4306,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 4335,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat45 );
TEST_VMRL_OP( 4358,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 4364,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 4387,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat32 );
TEST_VMRL_OP( 4399,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat44 );
TEST_VMRL_OP( 4421,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 4425,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 4472,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat52 );
TEST_VMRL_OP( 4473,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat53 );
TEST_VMRL_OP( 4499,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 4514,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 4548,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat63 );
TEST_VMRL_OP( 4584,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat34 );
TEST_VMRL_OP( 4606,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat56 );
TEST_VMRL_OP( 4608,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat58 );
TEST_VMRL_OP( 4624,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 4638,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat23 );
TEST_VMRL_OP( 4654,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat39 );
TEST_VMRL_OP( 4677,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat62 );
TEST_VMRL_OP( 4713,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat33 );
TEST_VMRL_OP( 4756,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 4790,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat45 );
TEST_VMRL_OP( 4844,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat34 );
TEST_VMRL_OP( 4873,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat63 );
TEST_VMRL_OP( 4898,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat23 );
TEST_VMRL_OP( 4908,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat33 );
TEST_VMRL_OP( 4927,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat52 );
TEST_VMRL_OP( 4941,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 4974,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat34 );
TEST_VMRL_OP( 4988,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat48 );
TEST_VMRL_OP( 5012,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 5040,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat35 );
TEST_VMRL_OP( 5081,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 5091,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat21 );
TEST_VMRL_OP( 5092,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 5100,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 5126,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat56 );
TEST_VMRL_OP( 5132,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat62 );
TEST_VMRL_OP( 5143,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 5146,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 5153,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat18 );
TEST_VMRL_OP( 5170,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat35 );
TEST_VMRL_OP( 5182,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat47 );
TEST_VMRL_OP( 5186,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat51 );
TEST_VMRL_OP( 5196,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat61 );
TEST_VMRL_OP( 5217,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 5242,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat42 );
TEST_VMRL_OP( 5246,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat46 );
TEST_VMRL_OP( 5250,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat50 );
TEST_VMRL_OP( 5277,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 5284,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 5294,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 5298,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat33 );
TEST_VMRL_OP( 5301,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat36 );
TEST_VMRL_OP( 5332,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 5335,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat5 );
TEST_VMRL_OP( 5336,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 5361,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 5362,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 5366,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat36 );
TEST_VMRL_OP( 5369,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat39 );
TEST_VMRL_OP( 5375,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat45 );
TEST_VMRL_OP( 5382,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat52 );
TEST_VMRL_OP( 5411,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat16 );
TEST_VMRL_OP( 5441,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat46 );
TEST_VMRL_OP( 5463,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 5473,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 5481,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 5532,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 5541,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 5570,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat45 );
TEST_VMRL_OP( 5580,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat55 );
TEST_VMRL_OP( 5611,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 5619,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat29 );
TEST_VMRL_OP( 5621,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat31 );
TEST_VMRL_OP( 5638,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat48 );
TEST_VMRL_OP( 5673,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 5677,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 5696,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat41 );
TEST_VMRL_OP( 5727,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 5728,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat8 );
TEST_VMRL_OP( 5752,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 5755,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat35 );
TEST_VMRL_OP( 5757,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat37 );
TEST_VMRL_OP( 5779,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat59 );
TEST_VMRL_OP( 5797,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 5798,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 5823,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat38 );
TEST_VMRL_OP( 5829,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat44 );
TEST_VMRL_OP( 5862,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat12 );
TEST_VMRL_OP( 5863,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 5864,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 5869,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 5871,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 5874,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 5884,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat34 );
TEST_VMRL_OP( 5896,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat46 );
TEST_VMRL_OP( 5898,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat48 );
TEST_VMRL_OP( 5941,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 5943,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 5959,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat44 );
TEST_VMRL_OP( 5969,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat54 );
TEST_VMRL_OP( 5976,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat61 );
TEST_VMRL_OP( 6033,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat53 );
TEST_VMRL_OP( 6050,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 6098,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat53 );
TEST_VMRL_OP( 6107,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat62 );
TEST_VMRL_OP( 6155,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat45 );
TEST_VMRL_OP( 6171,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat61 );
TEST_VMRL_OP( 6184,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 6189,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 6198,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat23 );
TEST_VMRL_OP( 6223,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat48 );
TEST_VMRL_OP( 6236,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat61 );
TEST_VMRL_OP( 6255,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 6291,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat51 );
TEST_VMRL_OP( 6295,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat55 );
TEST_VMRL_OP( 6318,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 6323,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat18 );
TEST_VMRL_OP( 6327,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 6329,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 6342,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat37 );
TEST_VMRL_OP( 6362,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat57 );
TEST_VMRL_OP( 6379,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat9 );
TEST_VMRL_OP( 6395,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat25 );
TEST_VMRL_OP( 6405,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat35 );
TEST_VMRL_OP( 6426,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat56 );
TEST_VMRL_OP( 6434,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat64 );
TEST_VMRL_OP( 6435,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat34, walking_zeros_dat0 );
TEST_VMRL_OP( 6445,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat10 );
TEST_VMRL_OP( 6446,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat11 );
TEST_VMRL_OP( 6454,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat19 );
TEST_VMRL_OP( 6455,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat20 );
TEST_VMRL_OP( 6468,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat33 );
TEST_VMRL_OP( 6492,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat57 );
TEST_VMRL_OP( 6501,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat1 );
TEST_VMRL_OP( 6508,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat8 );
TEST_VMRL_OP( 6522,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat22 );
TEST_VMRL_OP( 6552,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat52 );
TEST_VMRL_OP( 6561,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat61 );
TEST_VMRL_OP( 6574,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat9 );
TEST_VMRL_OP( 6577,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat12 );
TEST_VMRL_OP( 6601,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 6618,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat53 );
TEST_VMRL_OP( 6654,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat24 );
TEST_VMRL_OP( 6661,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat31 );
TEST_VMRL_OP( 6662,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat32 );
TEST_VMRL_OP( 6663,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat33 );
TEST_VMRL_OP( 6706,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat11 );
TEST_VMRL_OP( 6712,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat17 );
TEST_VMRL_OP( 6715,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat20 );
TEST_VMRL_OP( 6716,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat21 );
TEST_VMRL_OP( 6729,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat34 );
TEST_VMRL_OP( 6755,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat60 );
TEST_VMRL_OP( 6782,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat22 );
TEST_VMRL_OP( 6784,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat24 );
TEST_VMRL_OP( 6811,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat51 );
TEST_VMRL_OP( 6831,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat6 );
TEST_VMRL_OP( 6852,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat27 );
TEST_VMRL_OP( 6855,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat30 );
TEST_VMRL_OP( 6910,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat20 );
TEST_VMRL_OP( 6940,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat50 );
TEST_VMRL_OP( 6961,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat6 );
TEST_VMRL_OP( 6969,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat14 );
TEST_VMRL_OP( 6980,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat25 );
TEST_VMRL_OP( 6986,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat31 );
TEST_VMRL_OP( 6987,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat32 );
TEST_VMRL_OP( 7018,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat63 );
TEST_VMRL_OP( 7024,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat4 );
TEST_VMRL_OP( 7042,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat22 );
TEST_VMRL_OP( 7055,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat35 );
TEST_VMRL_OP( 7077,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat57 );
TEST_VMRL_OP( 7085,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat0 );
TEST_VMRL_OP( 7110,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat25 );
TEST_VMRL_OP( 7114,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat29 );
TEST_VMRL_OP( 7128,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat43 );
TEST_VMRL_OP( 7163,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat13 );
TEST_VMRL_OP( 7175,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat25 );
TEST_VMRL_OP( 7179,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat29 );
TEST_VMRL_OP( 7211,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat61 );
TEST_VMRL_OP( 7216,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat1 );
TEST_VMRL_OP( 7247,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat32 );
TEST_VMRL_OP( 7255,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat40 );
TEST_VMRL_OP( 7258,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat43 );
TEST_VMRL_OP( 7262,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat47 );
TEST_VMRL_OP( 7299,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat19 );
TEST_VMRL_OP( 7301,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat21 );
TEST_VMRL_OP( 7324,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat44 );
TEST_VMRL_OP( 7330,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat50 );
TEST_VMRL_OP( 7336,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat56 );
TEST_VMRL_OP( 7348,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat3 );
TEST_VMRL_OP( 7389,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat44 );
TEST_VMRL_OP( 7406,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat61 );
TEST_VMRL_OP( 7409,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat64 );
TEST_VMRL_OP( 7415,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat5 );
TEST_VMRL_OP( 7442,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat32 );
TEST_VMRL_OP( 7443,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat33 );
TEST_VMRL_OP( 7451,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat41 );
TEST_VMRL_OP( 7453,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat43 );
TEST_VMRL_OP( 7457,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat47 );
TEST_VMRL_OP( 7479,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat4 );
TEST_VMRL_OP( 7503,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat28 );
TEST_VMRL_OP( 7507,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat32 );
TEST_VMRL_OP( 7510,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat35 );
TEST_VMRL_OP( 7517,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat42 );
TEST_VMRL_OP( 7530,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat55 );
TEST_VMRL_OP( 7542,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat2 );
TEST_VMRL_OP( 7543,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat3 );
TEST_VMRL_OP( 7584,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat44 );
TEST_VMRL_OP( 7586,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat46 );
TEST_VMRL_OP( 7591,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 7597,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat57 );
TEST_VMRL_OP( 7602,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat62 );
TEST_VMRL_OP( 7609,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat4 );
TEST_VMRL_OP( 7646,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat41 );
TEST_VMRL_OP( 7652,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat47 );
TEST_VMRL_OP( 7655,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat50 );
TEST_VMRL_OP( 7693,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat23 );
TEST_VMRL_OP( 7696,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat26 );
TEST_VMRL_OP( 7708,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat38 );
TEST_VMRL_OP( 7723,  vmand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 7731,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat61 );
TEST_VMRL_OP( 7748,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat13 );
TEST_VMRL_OP( 7768,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat33 );
TEST_VMRL_OP( 7774,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat39 );
TEST_VMRL_OP( 7795,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat60 );
TEST_VMRL_OP( 7808,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat8 );
TEST_VMRL_OP( 7818,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat18 );
TEST_VMRL_OP( 7829,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat29 );
TEST_VMRL_OP( 7838,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat38 );
TEST_VMRL_OP( 7853,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat53 );
TEST_VMRL_OP( 7878,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat13 );
TEST_VMRL_OP( 7896,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat31 );
TEST_VMRL_OP( 7901,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat36 );
TEST_VMRL_OP( 7903,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat38 );
TEST_VMRL_OP( 7920,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat55 );
TEST_VMRL_OP( 7974,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat44 );
TEST_VMRL_OP( 8004,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat9 );
TEST_VMRL_OP( 8017,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat22 );
TEST_VMRL_OP( 8021,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat26 );
TEST_VMRL_OP( 8069,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat9 );
TEST_VMRL_OP( 8076,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat16 );
TEST_VMRL_OP( 8086,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat26 );
TEST_VMRL_OP( 8123,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat63 );
TEST_VMRL_OP( 8148,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat23 );
TEST_VMRL_OP( 8191,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat1 );
TEST_VMRL_OP( 8206,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat16 );
TEST_VMRL_OP( 8207,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat17 );
TEST_VMRL_OP( 8227,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat37 );
TEST_VMRL_OP( 8244,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat54 );
TEST_VMRL_OP( 8252,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat62 );
TEST_VMRL_OP( 8254,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat64 );
TEST_VMRL_OP( 8270,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat15 );
TEST_VMRL_OP( 8309,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat54 );
TEST_VMRL_OP( 8311,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat56 );
TEST_VMRL_OP( 8314,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat59 );
TEST_VMRL_OP( 8324,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat4 );
TEST_VMRL_OP( 8346,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat26 );
TEST_VMRL_OP( 8369,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat49 );
TEST_VMRL_OP( 8381,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat61 );
TEST_VMRL_OP( 8394,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat9 );
TEST_VMRL_OP( 8426,  vmand.mm,  64,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat41 );
TEST_VMRL_OP( 8476,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 8506,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat56 );
TEST_VMRL_OP( 8512,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat62 );
TEST_VMRL_OP( 8544,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat29 );
TEST_VMRL_OP( 8551,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat36 );
TEST_VMRL_OP( 8576,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat61 );
TEST_VMRL_OP( 8580,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 8611,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 8617,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat37 );
TEST_VMRL_OP( 8619,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat39 );
TEST_VMRL_OP( 8662,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 8697,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat52 );
TEST_VMRL_OP( 8698,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat53 );
TEST_VMRL_OP( 8706,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat61 );
TEST_VMRL_OP( 8713,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 8721,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 8743,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat33 );
TEST_VMRL_OP( 8750,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat40 );
TEST_VMRL_OP( 8754,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat44 );
TEST_VMRL_OP( 8758,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat48 );
TEST_VMRL_OP( 8762,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat52 );
TEST_VMRL_OP( 8783,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 8794,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 8799,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 8807,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 8808,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat33 );
TEST_VMRL_OP( 8809,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat34 );
TEST_VMRL_OP( 8828,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat53 );
TEST_VMRL_OP( 8871,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 8935,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 8942,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat37 );
TEST_VMRL_OP( 9016,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat46 );
TEST_VMRL_OP( 9020,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat50 );
TEST_VMRL_OP( 9022,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat52 );
TEST_VMRL_OP( 9058,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 9060,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 9081,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat46 );
TEST_VMRL_OP( 9094,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat59 );
TEST_VMRL_OP( 9101,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 9108,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 9131,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 9191,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 9198,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat33 );
TEST_VMRL_OP( 9231,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 9240,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 9250,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 9269,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat39 );
TEST_VMRL_OP( 9283,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat53 );
TEST_VMRL_OP( 9304,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 9324,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 9354,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat59 );
TEST_VMRL_OP( 9365,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 9370,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 9388,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 9416,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat56 );
TEST_VMRL_OP( 9417,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat57 );
TEST_VMRL_OP( 9429,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 9433,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 9458,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat33 );
TEST_VMRL_OP( 9463,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat38 );
TEST_VMRL_OP( 9466,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat41 );
TEST_VMRL_OP( 9486,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat61 );
TEST_VMRL_OP( 9550,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat60 );
TEST_VMRL_OP( 9580,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 9610,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat55 );
TEST_VMRL_OP( 9657,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat37 );
TEST_VMRL_OP( 9692,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 9702,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 9707,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 9724,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat39 );
TEST_VMRL_OP( 9730,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat45 );
TEST_VMRL_OP( 9732,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat47 );
TEST_VMRL_OP( 9744,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat59 );
TEST_VMRL_OP( 9746,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat61 );
TEST_VMRL_OP( 9776,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 9779,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 9813,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat63 );
TEST_VMRL_OP( 9823,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 9835,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat20 );
TEST_VMRL_OP( 9840,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 9848,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat33 );
TEST_VMRL_OP( 9852,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat37 );
TEST_VMRL_OP( 9884,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 9891,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 9904,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat24 );
TEST_VMRL_OP( 9920,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat40 );
TEST_VMRL_OP( 9960,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 9966,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat21 );
TEST_VMRL_OP( 9977,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 9987,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat42 );
TEST_VMRL_OP( 9988,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat43 );
TEST_VMRL_OP( 10013,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat3 );
TEST_VMRL_OP( 10021,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 10025,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat15 );
TEST_VMRL_OP( 10028,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 10048,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat38 );
TEST_VMRL_OP( 10069,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat59 );
TEST_VMRL_OP( 10112,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat37 );
TEST_VMRL_OP( 10124,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat49 );
TEST_VMRL_OP( 10128,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat53 );
TEST_VMRL_OP( 10177,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat37 );
TEST_VMRL_OP( 10197,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat57 );
TEST_VMRL_OP( 10239,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat34 );
TEST_VMRL_OP( 10241,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat36 );
TEST_VMRL_OP( 10260,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat55 );
TEST_VMRL_OP( 10266,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat61 );
TEST_VMRL_OP( 10271,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 10292,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 10293,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 10334,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat64 );
TEST_VMRL_OP( 10342,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 10350,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat15 );
TEST_VMRL_OP( 10360,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 10372,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat37 );
TEST_VMRL_OP( 10374,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat39 );
TEST_VMRL_OP( 10383,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat48 );
TEST_VMRL_OP( 10392,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat57 );
TEST_VMRL_OP( 10398,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat63 );
TEST_VMRL_OP( 10415,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 10441,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat41 );
TEST_VMRL_OP( 10455,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat55 );
TEST_VMRL_OP( 10458,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat58 );
TEST_VMRL_OP( 10460,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat60 );
TEST_VMRL_OP( 10474,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 10494,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 10527,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat62 );
TEST_VMRL_OP( 10555,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 10578,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat48 );
TEST_VMRL_OP( 10588,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat58 );
TEST_VMRL_OP( 10605,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat33, walking_zeros_dat10 );
TEST_VMRL_OP( 10638,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat33, walking_zeros_dat43 );
TEST_VMRL_OP( 10702,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat34, walking_zeros_dat42 );
TEST_VMRL_OP( 10746,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat21 );
TEST_VMRL_OP( 10748,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat23 );
TEST_VMRL_OP( 10750,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat25 );
TEST_VMRL_OP( 10755,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat30 );
TEST_VMRL_OP( 10765,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat40 );
TEST_VMRL_OP( 10791,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat1 );
TEST_VMRL_OP( 10795,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat5 );
TEST_VMRL_OP( 10809,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat19 );
TEST_VMRL_OP( 10813,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat23 );
TEST_VMRL_OP( 10814,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat24 );
TEST_VMRL_OP( 10848,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat58 );
TEST_VMRL_OP( 10868,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat13 );
TEST_VMRL_OP( 10874,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat19 );
TEST_VMRL_OP( 10896,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat41 );
TEST_VMRL_OP( 10911,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat56 );
TEST_VMRL_OP( 10953,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat38, walking_zeros_dat33 );
TEST_VMRL_OP( 10956,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat38, walking_zeros_dat36 );
TEST_VMRL_OP( 10974,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat38, walking_zeros_dat54 );
TEST_VMRL_OP( 10986,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat1 );
TEST_VMRL_OP( 11016,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat31 );
TEST_VMRL_OP( 11017,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat32 );
TEST_VMRL_OP( 11039,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat54 );
TEST_VMRL_OP( 11045,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat60 );
TEST_VMRL_OP( 11058,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat40, walking_zeros_dat8 );
TEST_VMRL_OP( 11089,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat40, walking_zeros_dat39 );
TEST_VMRL_OP( 11115,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat0 );
TEST_VMRL_OP( 11122,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat7 );
TEST_VMRL_OP( 11133,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat18 );
TEST_VMRL_OP( 11134,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat19 );
TEST_VMRL_OP( 11172,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat57 );
TEST_VMRL_OP( 11219,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat39 );
TEST_VMRL_OP( 11227,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat47 );
TEST_VMRL_OP( 11297,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat43, walking_zeros_dat52 );
TEST_VMRL_OP( 11298,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat43, walking_zeros_dat53 );
TEST_VMRL_OP( 11326,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat16 );
TEST_VMRL_OP( 11333,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat23 );
TEST_VMRL_OP( 11335,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat25 );
TEST_VMRL_OP( 11350,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat40 );
TEST_VMRL_OP( 11374,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat64 );
TEST_VMRL_OP( 11385,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_zeros_dat10 );
TEST_VMRL_OP( 11399,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_zeros_dat24 );
TEST_VMRL_OP( 11407,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_zeros_dat32 );
TEST_VMRL_OP( 11437,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_zeros_dat62 );
TEST_VMRL_OP( 11441,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat1 );
TEST_VMRL_OP( 11448,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat8 );
TEST_VMRL_OP( 11497,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat57 );
TEST_VMRL_OP( 11499,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat59 );
TEST_VMRL_OP( 11543,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat47, walking_zeros_dat38 );
TEST_VMRL_OP( 11585,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat15 );
TEST_VMRL_OP( 11614,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat44 );
TEST_VMRL_OP( 11640,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat5 );
TEST_VMRL_OP( 11647,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat12 );
TEST_VMRL_OP( 11668,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat33 );
TEST_VMRL_OP( 11679,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat44 );
TEST_VMRL_OP( 11687,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat52 );
TEST_VMRL_OP( 11698,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat63 );
TEST_VMRL_OP( 11703,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat3 );
TEST_VMRL_OP( 11716,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat16 );
TEST_VMRL_OP( 11729,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat29 );
TEST_VMRL_OP( 11737,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat37 );
TEST_VMRL_OP( 11741,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat41 );
TEST_VMRL_OP( 11766,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat51, walking_zeros_dat1 );
TEST_VMRL_OP( 11771,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat51, walking_zeros_dat6 );
TEST_VMRL_OP( 11785,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat51, walking_zeros_dat20 );
TEST_VMRL_OP( 11836,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat6 );
TEST_VMRL_OP( 11837,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat7 );
TEST_VMRL_OP( 11841,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat11 );
TEST_VMRL_OP( 11845,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat15 );
TEST_VMRL_OP( 11853,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat23 );
TEST_VMRL_OP( 11863,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat33 );
TEST_VMRL_OP( 11891,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat61 );
TEST_VMRL_OP( 11894,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat64 );
TEST_VMRL_OP( 11935,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_zeros_dat40 );
TEST_VMRL_OP( 11959,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_zeros_dat64 );
TEST_VMRL_OP( 11960,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat0 );
TEST_VMRL_OP( 12003,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat43 );
TEST_VMRL_OP( 12011,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat51 );
TEST_VMRL_OP( 12016,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat56 );
TEST_VMRL_OP( 12021,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat61 );
TEST_VMRL_OP( 12051,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat26 );
TEST_VMRL_OP( 12055,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat30 );
TEST_VMRL_OP( 12063,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat38 );
TEST_VMRL_OP( 12068,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat43 );
TEST_VMRL_OP( 12069,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat44 );
TEST_VMRL_OP( 12079,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat54 );
TEST_VMRL_OP( 12095,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat5 );
TEST_VMRL_OP( 12105,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat15 );
TEST_VMRL_OP( 12110,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat20 );
TEST_VMRL_OP( 12117,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat27 );
TEST_VMRL_OP( 12125,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat35 );
TEST_VMRL_OP( 12138,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat48 );
TEST_VMRL_OP( 12143,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat53 );
TEST_VMRL_OP( 12153,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat63 );
TEST_VMRL_OP( 12198,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat57, walking_zeros_dat43 );
TEST_VMRL_OP( 12227,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat7 );
TEST_VMRL_OP( 12234,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat14 );
TEST_VMRL_OP( 12245,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat25 );
TEST_VMRL_OP( 12252,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat32 );
TEST_VMRL_OP( 12276,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat56 );
TEST_VMRL_OP( 12287,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat2 );
TEST_VMRL_OP( 12291,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat6 );
TEST_VMRL_OP( 12304,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat19 );
TEST_VMRL_OP( 12345,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat60 );
TEST_VMRL_OP( 12346,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat61 );
TEST_VMRL_OP( 12352,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat2 );
TEST_VMRL_OP( 12357,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat7 );
TEST_VMRL_OP( 12382,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat32 );
TEST_VMRL_OP( 12399,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat49 );
TEST_VMRL_OP( 12404,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat54 );
TEST_VMRL_OP( 12412,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat62 );
TEST_VMRL_OP( 12451,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_zeros_dat36 );
TEST_VMRL_OP( 12453,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_zeros_dat38 );
TEST_VMRL_OP( 12456,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_zeros_dat41 );
TEST_VMRL_OP( 12478,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_zeros_dat63 );
TEST_VMRL_OP( 12484,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat4 );
TEST_VMRL_OP( 12487,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat7 );
TEST_VMRL_OP( 12493,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat13 );
TEST_VMRL_OP( 12497,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat17 );
TEST_VMRL_OP( 12516,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat36 );
TEST_VMRL_OP( 12540,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat60 );
TEST_VMRL_OP( 12557,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat12 );
TEST_VMRL_OP( 12571,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat26 );
TEST_VMRL_OP( 12590,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat45 );
TEST_VMRL_OP( 12604,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat59 );
TEST_VMRL_OP( 12609,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat64 );
TEST_VMRL_OP( 12643,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat33 );
TEST_VMRL_OP( 12650,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat40 );
TEST_VMRL_OP( 12666,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat56 );
TEST_VMRL_OP( 12668,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat58 );
TEST_VMRL_OP( 12683,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 12704,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 12736,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat61 );
TEST_VMRL_OP( 12740,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 12746,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 12751,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 12786,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat46 );
TEST_VMRL_OP( 12789,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat49 );
TEST_VMRL_OP( 12833,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 12863,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat58 );
TEST_VMRL_OP( 12891,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat21 );
TEST_VMRL_OP( 12904,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat34 );
TEST_VMRL_OP( 12916,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat46 );
TEST_VMRL_OP( 12958,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 12964,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat29 );
TEST_VMRL_OP( 12965,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat30 );
TEST_VMRL_OP( 12991,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat56 );
TEST_VMRL_OP( 13009,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 13051,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat51 );
TEST_VMRL_OP( 13065,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 13066,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 13078,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 13120,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat55 );
TEST_VMRL_OP( 13148,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 13151,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat21 );
TEST_VMRL_OP( 13152,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat22 );
TEST_VMRL_OP( 13160,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 13161,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 13172,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat42 );
TEST_VMRL_OP( 13178,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat48 );
TEST_VMRL_OP( 13236,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat41 );
TEST_VMRL_OP( 13245,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat50 );
TEST_VMRL_OP( 13251,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat56 );
TEST_VMRL_OP( 13262,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 13273,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 13277,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat17 );
TEST_VMRL_OP( 13307,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat47 );
TEST_VMRL_OP( 13309,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat49 );
TEST_VMRL_OP( 13331,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 13341,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 13347,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 13397,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 13398,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 13406,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 13411,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat21 );
TEST_VMRL_OP( 13439,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat49 );
TEST_VMRL_OP( 13467,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 13482,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 13486,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 13491,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat36 );
TEST_VMRL_OP( 13492,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat37 );
TEST_VMRL_OP( 13505,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat50 );
TEST_VMRL_OP( 13527,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 13548,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat28 );
TEST_VMRL_OP( 13556,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat36 );
TEST_VMRL_OP( 13566,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat46 );
TEST_VMRL_OP( 13570,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat50 );
TEST_VMRL_OP( 13601,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 13619,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat34 );
TEST_VMRL_OP( 13633,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat48 );
TEST_VMRL_OP( 13646,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat61 );
TEST_VMRL_OP( 13654,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 13701,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat51 );
TEST_VMRL_OP( 13705,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat55 );
TEST_VMRL_OP( 13716,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 13718,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 13728,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 13740,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat25 );
TEST_VMRL_OP( 13752,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat37 );
TEST_VMRL_OP( 13762,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat47 );
TEST_VMRL_OP( 13790,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat10 );
TEST_VMRL_OP( 13805,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 13810,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 13813,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat33 );
TEST_VMRL_OP( 13843,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat63 );
TEST_VMRL_OP( 13849,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 13858,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat13 );
TEST_VMRL_OP( 13870,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 13871,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 13877,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 13897,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat52 );
TEST_VMRL_OP( 13902,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat57 );
TEST_VMRL_OP( 13903,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat58 );
TEST_VMRL_OP( 13906,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat61 );
TEST_VMRL_OP( 13908,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat63 );
TEST_VMRL_OP( 13939,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 13952,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat42 );
TEST_VMRL_OP( 13962,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat52 );
TEST_VMRL_OP( 13982,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat7 );
TEST_VMRL_OP( 13983,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 14012,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat37 );
TEST_VMRL_OP( 14013,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat38 );
TEST_VMRL_OP( 14026,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat51 );
TEST_VMRL_OP( 14040,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 14045,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 14059,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 14061,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 14063,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 14082,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat42 );
TEST_VMRL_OP( 14093,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat53 );
TEST_VMRL_OP( 14094,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat54 );
TEST_VMRL_OP( 14100,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat60 );
TEST_VMRL_OP( 14144,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat39 );
TEST_VMRL_OP( 14163,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat58 );
TEST_VMRL_OP( 14195,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 14214,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat44 );
TEST_VMRL_OP( 14240,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat5 );
TEST_VMRL_OP( 14242,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat7 );
TEST_VMRL_OP( 14247,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 14253,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 14283,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat48 );
TEST_VMRL_OP( 14285,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat50 );
TEST_VMRL_OP( 14289,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat54 );
TEST_VMRL_OP( 14304,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat4 );
TEST_VMRL_OP( 14320,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat20 );
TEST_VMRL_OP( 14332,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 14336,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat36 );
TEST_VMRL_OP( 14354,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat54 );
TEST_VMRL_OP( 14365,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat0 );
TEST_VMRL_OP( 14415,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat50 );
TEST_VMRL_OP( 14439,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 14454,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 14490,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat60 );
TEST_VMRL_OP( 14557,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat62 );
TEST_VMRL_OP( 14599,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat39 );
TEST_VMRL_OP( 14610,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat50 );
TEST_VMRL_OP( 14632,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat7 );
TEST_VMRL_OP( 14663,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat38 );
TEST_VMRL_OP( 14669,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat44 );
TEST_VMRL_OP( 14671,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat46 );
TEST_VMRL_OP( 14693,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 14715,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat25 );
TEST_VMRL_OP( 14726,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat36 );
TEST_VMRL_OP( 14744,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat54 );
TEST_VMRL_OP( 14760,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 14769,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 14788,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat33 );
TEST_VMRL_OP( 14826,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat6 );
TEST_VMRL_OP( 14838,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat18 );
TEST_VMRL_OP( 14850,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat30 );
TEST_VMRL_OP( 14857,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat37 );
TEST_VMRL_OP( 14878,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat58 );
TEST_VMRL_OP( 14901,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat16 );
TEST_VMRL_OP( 14920,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat35 );
TEST_VMRL_OP( 14949,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat64 );
TEST_VMRL_OP( 14953,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat3 );
TEST_VMRL_OP( 14987,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat37 );
TEST_VMRL_OP( 15008,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat58 );
TEST_VMRL_OP( 15014,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat64 );
TEST_VMRL_OP( 15044,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat29 );
TEST_VMRL_OP( 15070,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat55 );
TEST_VMRL_OP( 15116,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat36 );
TEST_VMRL_OP( 15125,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat45 );
TEST_VMRL_OP( 15128,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat48 );
TEST_VMRL_OP( 15164,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat19 );
TEST_VMRL_OP( 15166,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat21 );
TEST_VMRL_OP( 15168,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat23 );
TEST_VMRL_OP( 15200,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat55 );
TEST_VMRL_OP( 15205,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat60 );
TEST_VMRL_OP( 15217,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat7 );
TEST_VMRL_OP( 15255,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat45 );
TEST_VMRL_OP( 15269,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat59 );
TEST_VMRL_OP( 15270,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat60 );
TEST_VMRL_OP( 15284,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat9 );
TEST_VMRL_OP( 15287,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat12 );
TEST_VMRL_OP( 15291,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat16 );
TEST_VMRL_OP( 15299,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat24 );
TEST_VMRL_OP( 15327,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat52 );
TEST_VMRL_OP( 15346,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat6 );
TEST_VMRL_OP( 15360,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat20 );
TEST_VMRL_OP( 15403,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat63 );
TEST_VMRL_OP( 15412,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat7 );
TEST_VMRL_OP( 15438,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat33 );
TEST_VMRL_OP( 15479,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat9 );
TEST_VMRL_OP( 15495,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat25 );
TEST_VMRL_OP( 15496,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat26 );
TEST_VMRL_OP( 15525,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat55 );
TEST_VMRL_OP( 15529,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat59 );
TEST_VMRL_OP( 15539,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat4 );
TEST_VMRL_OP( 15552,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat17 );
TEST_VMRL_OP( 15575,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat40 );
TEST_VMRL_OP( 15580,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat45 );
TEST_VMRL_OP( 15595,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat60 );
TEST_VMRL_OP( 15603,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat3 );
TEST_VMRL_OP( 15610,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat10 );
TEST_VMRL_OP( 15611,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat11 );
TEST_VMRL_OP( 15642,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat42 );
TEST_VMRL_OP( 15713,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat48 );
TEST_VMRL_OP( 15727,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat62 );
TEST_VMRL_OP( 15735,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_ones_dat5 );
TEST_VMRL_OP( 15745,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_ones_dat15 );
TEST_VMRL_OP( 15790,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_ones_dat60 );
TEST_VMRL_OP( 15812,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat17 );
TEST_VMRL_OP( 15827,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat32 );
TEST_VMRL_OP( 15836,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat41 );
TEST_VMRL_OP( 15838,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat43 );
TEST_VMRL_OP( 15864,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat4 );
TEST_VMRL_OP( 15866,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat6 );
TEST_VMRL_OP( 15872,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat12 );
TEST_VMRL_OP( 15882,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat22 );
TEST_VMRL_OP( 15913,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat53 );
TEST_VMRL_OP( 15930,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat5 );
TEST_VMRL_OP( 15939,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat14 );
TEST_VMRL_OP( 15943,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat18 );
TEST_VMRL_OP( 15947,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat22 );
TEST_VMRL_OP( 15955,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat30 );
TEST_VMRL_OP( 15963,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat38 );
TEST_VMRL_OP( 15964,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat39 );
TEST_VMRL_OP( 15967,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat42 );
TEST_VMRL_OP( 15993,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat3 );
TEST_VMRL_OP( 16035,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat45 );
TEST_VMRL_OP( 16042,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat52 );
TEST_VMRL_OP( 16069,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat14 );
TEST_VMRL_OP( 16091,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat36 );
TEST_VMRL_OP( 16104,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat49 );
TEST_VMRL_OP( 16133,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat13 );
TEST_VMRL_OP( 16153,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat33 );
TEST_VMRL_OP( 16179,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat59 );
TEST_VMRL_OP( 16181,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat61 );
TEST_VMRL_OP( 16203,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat18 );
TEST_VMRL_OP( 16204,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat19 );
TEST_VMRL_OP( 16225,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat40 );
TEST_VMRL_OP( 16264,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat14 );
TEST_VMRL_OP( 16275,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat25 );
TEST_VMRL_OP( 16278,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat28 );
TEST_VMRL_OP( 16282,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat32 );
TEST_VMRL_OP( 16297,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat47 );
TEST_VMRL_OP( 16301,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat51 );
TEST_VMRL_OP( 16344,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat29 );
TEST_VMRL_OP( 16352,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat37 );
TEST_VMRL_OP( 16353,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat38 );
TEST_VMRL_OP( 16355,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat40 );
TEST_VMRL_OP( 16356,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat41 );
TEST_VMRL_OP( 16385,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat5 );
TEST_VMRL_OP( 16391,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat11 );
TEST_VMRL_OP( 16435,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat55 );
TEST_VMRL_OP( 16443,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat63 );
TEST_VMRL_OP( 16452,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat7 );
TEST_VMRL_OP( 16477,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat32 );
TEST_VMRL_OP( 16480,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat35 );
TEST_VMRL_OP( 16491,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat46 );
TEST_VMRL_OP( 16502,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat57 );
TEST_VMRL_OP( 16510,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat0 );
TEST_VMRL_OP( 16511,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat1 );
TEST_VMRL_OP( 16533,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat23 );
TEST_VMRL_OP( 16561,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat51 );
TEST_VMRL_OP( 16585,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat10 );
TEST_VMRL_OP( 16621,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat46 );
TEST_VMRL_OP( 16664,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat24 );
TEST_VMRL_OP( 16665,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat25 );
TEST_VMRL_OP( 16666,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat26 );
TEST_VMRL_OP( 16669,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat29 );
TEST_VMRL_OP( 16670,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat30 );
TEST_VMRL_OP( 16707,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat2 );
TEST_VMRL_OP( 16718,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat13 );
TEST_VMRL_OP( 16724,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat19 );
TEST_VMRL_OP( 16749,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat44 );
TEST_VMRL_OP( 16774,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat4 );
TEST_VMRL_OP( 16777,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat7 );
TEST_VMRL_OP( 16789,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat19 );
TEST_VMRL_OP( 16821,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat51 );
TEST_VMRL_OP( 16834,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat64 );
TEST_VMRL_OP( 16876,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat41 );
TEST_VMRL_OP( 16896,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat61 );
TEST_VMRL_OP( 16900,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33975,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33976,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33977,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33978,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33979,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33980,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33981,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33982,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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

walking_ones_dat17:
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

walking_ones_dat18:
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

walking_ones_dat19:
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

walking_ones_dat20:
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

walking_ones_dat21:
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

walking_ones_dat22:
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

walking_ones_dat23:
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

walking_ones_dat24:
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

walking_ones_dat25:
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

walking_ones_dat26:
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

walking_ones_dat27:
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

walking_ones_dat28:
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

walking_ones_dat29:
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

walking_ones_dat30:
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

walking_ones_dat31:
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

walking_ones_dat32:
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

walking_ones_dat33:
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

walking_ones_dat34:
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

walking_ones_dat35:
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

walking_ones_dat36:
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

walking_ones_dat37:
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

walking_ones_dat38:
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

walking_ones_dat39:
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

walking_ones_dat40:
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

walking_ones_dat41:
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

walking_ones_dat42:
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

walking_ones_dat43:
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

walking_ones_dat44:
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

walking_ones_dat45:
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

walking_ones_dat46:
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

walking_ones_dat47:
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

walking_ones_dat48:
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

walking_ones_dat49:
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

walking_ones_dat50:
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

walking_ones_dat51:
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

walking_ones_dat52:
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

walking_ones_dat53:
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

walking_ones_dat54:
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

walking_ones_dat55:
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

walking_ones_dat56:
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

walking_ones_dat57:
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

walking_ones_dat58:
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

walking_ones_dat59:
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

walking_ones_dat60:
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

walking_ones_dat61:
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

walking_ones_dat62:
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

walking_ones_dat63:
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

walking_ones_dat64:
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

walking_zeros_dat17:
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

walking_zeros_dat18:
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

walking_zeros_dat19:
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

walking_zeros_dat20:
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

walking_zeros_dat21:
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

walking_zeros_dat22:
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

walking_zeros_dat23:
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

walking_zeros_dat24:
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

walking_zeros_dat25:
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

walking_zeros_dat26:
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

walking_zeros_dat27:
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

walking_zeros_dat28:
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

walking_zeros_dat29:
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

walking_zeros_dat30:
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

walking_zeros_dat31:
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

walking_zeros_dat32:
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

walking_zeros_dat33:
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

walking_zeros_dat34:
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

walking_zeros_dat35:
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

walking_zeros_dat36:
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

walking_zeros_dat37:
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

walking_zeros_dat38:
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

walking_zeros_dat39:
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

walking_zeros_dat40:
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

walking_zeros_dat41:
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

walking_zeros_dat42:
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

walking_zeros_dat43:
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

walking_zeros_dat44:
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

walking_zeros_dat45:
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

walking_zeros_dat46:
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

walking_zeros_dat47:
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

walking_zeros_dat48:
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

walking_zeros_dat49:
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

walking_zeros_dat50:
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

walking_zeros_dat51:
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

walking_zeros_dat52:
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

walking_zeros_dat53:
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

walking_zeros_dat54:
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

walking_zeros_dat55:
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

walking_zeros_dat56:
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

walking_zeros_dat57:
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

walking_zeros_dat58:
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

walking_zeros_dat59:
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

walking_zeros_dat60:
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

walking_zeros_dat61:
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

walking_zeros_dat62:
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

walking_zeros_dat63:
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

walking_zeros_dat64:
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
    

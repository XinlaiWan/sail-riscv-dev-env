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
    # vmandnot.S
    #-----------------------------------------------------------------------------
    #
    # Test vmandnot instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmandnot)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmandnot tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 30,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 31,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 36,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat36 );
TEST_VMRL_OP( 39,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat39 );
TEST_VMRL_OP( 138,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 157,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 181,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat51 );
TEST_VMRL_OP( 195,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 200,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 209,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 255,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat60 );
TEST_VMRL_OP( 278,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 280,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat20 );
TEST_VMRL_OP( 290,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat30 );
TEST_VMRL_OP( 295,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat35 );
TEST_VMRL_OP( 319,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat59 );
TEST_VMRL_OP( 345,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 352,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 406,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 420,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat30 );
TEST_VMRL_OP( 424,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat34 );
TEST_VMRL_OP( 428,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat38 );
TEST_VMRL_OP( 437,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat47 );
TEST_VMRL_OP( 460,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 475,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 486,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 506,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat51 );
TEST_VMRL_OP( 519,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat64 );
TEST_VMRL_OP( 545,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat25 );
TEST_VMRL_OP( 557,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat37 );
TEST_VMRL_OP( 579,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat59 );
TEST_VMRL_OP( 585,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 587,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 660,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 675,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 677,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 701,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat51 );
TEST_VMRL_OP( 718,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 727,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 737,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 738,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 747,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 762,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat47 );
TEST_VMRL_OP( 765,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat50 );
TEST_VMRL_OP( 777,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat62 );
TEST_VMRL_OP( 791,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 816,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat36 );
TEST_VMRL_OP( 823,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat43 );
TEST_VMRL_OP( 844,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat64 );
TEST_VMRL_OP( 902,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat57 );
TEST_VMRL_OP( 912,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 927,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 961,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat51 );
TEST_VMRL_OP( 965,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat55 );
TEST_VMRL_OP( 973,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat63 );
TEST_VMRL_OP( 1007,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat32 );
TEST_VMRL_OP( 1018,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat43 );
TEST_VMRL_OP( 1029,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat54 );
TEST_VMRL_OP( 1035,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat60 );
TEST_VMRL_OP( 1050,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1066,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 1067,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat27 );
TEST_VMRL_OP( 1103,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat63 );
TEST_VMRL_OP( 1107,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 1147,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat42 );
TEST_VMRL_OP( 1148,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat43 );
TEST_VMRL_OP( 1185,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 1190,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 1206,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat36 );
TEST_VMRL_OP( 1226,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat56 );
TEST_VMRL_OP( 1268,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat33 );
TEST_VMRL_OP( 1277,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat42 );
TEST_VMRL_OP( 1291,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat56 );
TEST_VMRL_OP( 1316,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 1326,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat26 );
TEST_VMRL_OP( 1352,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat52 );
TEST_VMRL_OP( 1361,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat61 );
TEST_VMRL_OP( 1387,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_ones_dat22 );
TEST_VMRL_OP( 1442,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 1447,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 1460,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 1464,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat34 );
TEST_VMRL_OP( 1478,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat48 );
TEST_VMRL_OP( 1483,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat53 );
TEST_VMRL_OP( 1490,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat60 );
TEST_VMRL_OP( 1497,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 1560,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 1598,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat38 );
TEST_VMRL_OP( 1605,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat45 );
TEST_VMRL_OP( 1620,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat60 );
TEST_VMRL_OP( 1623,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat63 );
TEST_VMRL_OP( 1630,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 1670,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat45 );
TEST_VMRL_OP( 1677,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat52 );
TEST_VMRL_OP( 1721,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 1757,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 1764,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 1773,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 1777,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 1799,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat44 );
TEST_VMRL_OP( 1801,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat46 );
TEST_VMRL_OP( 1836,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 1909,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 1964,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat14 );
TEST_VMRL_OP( 1990,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat40 );
TEST_VMRL_OP( 1993,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat43 );
TEST_VMRL_OP( 2020,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 2035,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 2041,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 2085,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 2100,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 2104,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 2133,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat53 );
TEST_VMRL_OP( 2161,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat33, walking_ones_dat16 );
TEST_VMRL_OP( 2199,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat33, walking_ones_dat54 );
TEST_VMRL_OP( 2243,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat34, walking_ones_dat33 );
TEST_VMRL_OP( 2253,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat34, walking_ones_dat43 );
TEST_VMRL_OP( 2270,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat34, walking_ones_dat60 );
TEST_VMRL_OP( 2295,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_ones_dat20 );
TEST_VMRL_OP( 2331,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_ones_dat56 );
TEST_VMRL_OP( 2345,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat36, walking_ones_dat5 );
TEST_VMRL_OP( 2413,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_ones_dat8 );
TEST_VMRL_OP( 2423,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_ones_dat18 );
TEST_VMRL_OP( 2429,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_ones_dat24 );
TEST_VMRL_OP( 2464,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_ones_dat59 );
TEST_VMRL_OP( 2468,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_ones_dat63 );
TEST_VMRL_OP( 2495,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat38, walking_ones_dat25 );
TEST_VMRL_OP( 2499,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat38, walking_ones_dat29 );
TEST_VMRL_OP( 2541,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_ones_dat6 );
TEST_VMRL_OP( 2553,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_ones_dat18 );
TEST_VMRL_OP( 2574,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 2583,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_ones_dat48 );
TEST_VMRL_OP( 2594,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_ones_dat59 );
TEST_VMRL_OP( 2614,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat40, walking_ones_dat14 );
TEST_VMRL_OP( 2619,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat40, walking_ones_dat19 );
TEST_VMRL_OP( 2656,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat40, walking_ones_dat56 );
TEST_VMRL_OP( 2672,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_ones_dat7 );
TEST_VMRL_OP( 2679,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_ones_dat14 );
TEST_VMRL_OP( 2684,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_ones_dat19 );
TEST_VMRL_OP( 2696,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_ones_dat31 );
TEST_VMRL_OP( 2725,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat41, walking_ones_dat60 );
TEST_VMRL_OP( 2770,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat42, walking_ones_dat40 );
TEST_VMRL_OP( 2788,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat42, walking_ones_dat58 );
TEST_VMRL_OP( 2815,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat43, walking_ones_dat20 );
TEST_VMRL_OP( 2845,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat43, walking_ones_dat50 );
TEST_VMRL_OP( 2859,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat43, walking_ones_dat64 );
TEST_VMRL_OP( 2879,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_ones_dat19 );
TEST_VMRL_OP( 2886,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_ones_dat26 );
TEST_VMRL_OP( 2896,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_ones_dat36 );
TEST_VMRL_OP( 2906,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_ones_dat46 );
TEST_VMRL_OP( 2914,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat44, walking_ones_dat54 );
TEST_VMRL_OP( 2951,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_ones_dat26 );
TEST_VMRL_OP( 2955,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_ones_dat30 );
TEST_VMRL_OP( 2960,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_ones_dat35 );
TEST_VMRL_OP( 2981,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_ones_dat56 );
TEST_VMRL_OP( 2984,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat45, walking_ones_dat59 );
TEST_VMRL_OP( 3012,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat46, walking_ones_dat22 );
TEST_VMRL_OP( 3039,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat46, walking_ones_dat49 );
TEST_VMRL_OP( 3071,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat47, walking_ones_dat16 );
TEST_VMRL_OP( 3078,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat47, walking_ones_dat23 );
TEST_VMRL_OP( 3097,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat47, walking_ones_dat42 );
TEST_VMRL_OP( 3100,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat47, walking_ones_dat45 );
TEST_VMRL_OP( 3132,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat48, walking_ones_dat12 );
TEST_VMRL_OP( 3139,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat48, walking_ones_dat19 );
TEST_VMRL_OP( 3160,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat48, walking_ones_dat40 );
TEST_VMRL_OP( 3161,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat48, walking_ones_dat41 );
TEST_VMRL_OP( 3185,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat49, walking_ones_dat0 );
TEST_VMRL_OP( 3276,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat50, walking_ones_dat26 );
TEST_VMRL_OP( 3308,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat50, walking_ones_dat58 );
TEST_VMRL_OP( 3364,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat51, walking_ones_dat49 );
TEST_VMRL_OP( 3396,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_ones_dat16 );
TEST_VMRL_OP( 3430,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat52, walking_ones_dat50 );
TEST_VMRL_OP( 3459,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_ones_dat14 );
TEST_VMRL_OP( 3478,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_ones_dat33 );
TEST_VMRL_OP( 3492,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_ones_dat47 );
TEST_VMRL_OP( 3498,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 3506,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_ones_dat61 );
TEST_VMRL_OP( 3508,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_ones_dat63 );
TEST_VMRL_OP( 3519,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_ones_dat9 );
TEST_VMRL_OP( 3526,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_ones_dat16 );
TEST_VMRL_OP( 3540,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_ones_dat30 );
TEST_VMRL_OP( 3541,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_ones_dat31 );
TEST_VMRL_OP( 3548,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat54, walking_ones_dat38 );
TEST_VMRL_OP( 3632,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat55, walking_ones_dat57 );
TEST_VMRL_OP( 3661,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_ones_dat21 );
TEST_VMRL_OP( 3672,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_ones_dat32 );
TEST_VMRL_OP( 3684,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat56, walking_ones_dat44 );
TEST_VMRL_OP( 3705,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat57, walking_ones_dat0 );
TEST_VMRL_OP( 3712,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat57, walking_ones_dat7 );
TEST_VMRL_OP( 3780,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_ones_dat10 );
TEST_VMRL_OP( 3788,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_ones_dat18 );
TEST_VMRL_OP( 3812,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_ones_dat42 );
TEST_VMRL_OP( 3829,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat58, walking_ones_dat59 );
TEST_VMRL_OP( 3853,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_ones_dat18 );
TEST_VMRL_OP( 3881,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_ones_dat46 );
TEST_VMRL_OP( 3890,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_ones_dat55 );
TEST_VMRL_OP( 3898,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat59, walking_ones_dat63 );
TEST_VMRL_OP( 3900,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_ones_dat0 );
TEST_VMRL_OP( 3939,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_ones_dat39 );
TEST_VMRL_OP( 3970,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_ones_dat5 );
TEST_VMRL_OP( 3974,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_ones_dat9 );
TEST_VMRL_OP( 3999,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_ones_dat34 );
TEST_VMRL_OP( 4001,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat61, walking_ones_dat36 );
TEST_VMRL_OP( 4043,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_ones_dat13 );
TEST_VMRL_OP( 4083,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_ones_dat53 );
TEST_VMRL_OP( 4085,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat62, walking_ones_dat55 );
TEST_VMRL_OP( 4115,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_ones_dat20 );
TEST_VMRL_OP( 4132,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_ones_dat37 );
TEST_VMRL_OP( 4138,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat63, walking_ones_dat43 );
TEST_VMRL_OP( 4192,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_ones_dat32 );
TEST_VMRL_OP( 4195,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_ones_dat35 );
TEST_VMRL_OP( 4205,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_ones_dat45 );
TEST_VMRL_OP( 4214,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat64, walking_ones_dat54 );
TEST_VMRL_OP( 4232,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 4274,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat49 );
TEST_VMRL_OP( 4288,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat63 );
TEST_VMRL_OP( 4297,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 4299,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 4307,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat17 );
TEST_VMRL_OP( 4320,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 4359,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 4369,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 4376,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 4393,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat38 );
TEST_VMRL_OP( 4403,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat48 );
TEST_VMRL_OP( 4416,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat61 );
TEST_VMRL_OP( 4437,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 4446,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat26 );
TEST_VMRL_OP( 4476,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat56 );
TEST_VMRL_OP( 4485,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 4488,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 4565,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 4608,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat58 );
TEST_VMRL_OP( 4676,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat61 );
TEST_VMRL_OP( 4709,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 4723,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat43 );
TEST_VMRL_OP( 4725,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat45 );
TEST_VMRL_OP( 4726,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat46 );
TEST_VMRL_OP( 4727,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat47 );
TEST_VMRL_OP( 4743,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat63 );
TEST_VMRL_OP( 4778,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat33 );
TEST_VMRL_OP( 4783,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat38 );
TEST_VMRL_OP( 4789,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat44 );
TEST_VMRL_OP( 4812,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 4821,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 4834,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat24 );
TEST_VMRL_OP( 4849,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat39 );
TEST_VMRL_OP( 4866,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat56 );
TEST_VMRL_OP( 4883,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 4887,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 4912,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat37 );
TEST_VMRL_OP( 4938,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat63 );
TEST_VMRL_OP( 4942,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 4944,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 4947,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 4958,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat18 );
TEST_VMRL_OP( 4966,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 5008,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 5038,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat33 );
TEST_VMRL_OP( 5046,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat41 );
TEST_VMRL_OP( 5064,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat59 );
TEST_VMRL_OP( 5098,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 5101,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 5114,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat44 );
TEST_VMRL_OP( 5131,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat61 );
TEST_VMRL_OP( 5159,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 5199,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat64 );
TEST_VMRL_OP( 5264,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat64 );
TEST_VMRL_OP( 5265,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 5269,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 5322,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat57 );
TEST_VMRL_OP( 5329,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat64 );
TEST_VMRL_OP( 5350,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 5410,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 5424,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 5446,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat51 );
TEST_VMRL_OP( 5449,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat54 );
TEST_VMRL_OP( 5452,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat57 );
TEST_VMRL_OP( 5486,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 5497,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat37 );
TEST_VMRL_OP( 5523,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat63 );
TEST_VMRL_OP( 5613,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat23 );
TEST_VMRL_OP( 5624,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat34 );
TEST_VMRL_OP( 5650,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat60 );
TEST_VMRL_OP( 5664,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 5669,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat14 );
TEST_VMRL_OP( 5689,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat34 );
TEST_VMRL_OP( 5704,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat49 );
TEST_VMRL_OP( 5713,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat58 );
TEST_VMRL_OP( 5719,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat64 );
TEST_VMRL_OP( 5732,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat12 );
TEST_VMRL_OP( 5801,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 5802,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 5826,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat41 );
TEST_VMRL_OP( 5898,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat48 );
TEST_VMRL_OP( 5924,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat9 );
TEST_VMRL_OP( 5927,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 5929,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 5941,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 5955,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat40 );
TEST_VMRL_OP( 5959,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat44 );
TEST_VMRL_OP( 5965,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat50 );
TEST_VMRL_OP( 5966,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat51 );
TEST_VMRL_OP( 5991,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 6007,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 6031,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat51 );
TEST_VMRL_OP( 6066,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 6069,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 6079,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat34 );
TEST_VMRL_OP( 6080,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat35 );
TEST_VMRL_OP( 6083,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat38 );
TEST_VMRL_OP( 6091,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat46 );
TEST_VMRL_OP( 6109,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat64 );
TEST_VMRL_OP( 6117,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 6126,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 6133,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 6169,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat59 );
TEST_VMRL_OP( 6187,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat12 );
TEST_VMRL_OP( 6193,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 6195,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 6206,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 6226,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat51 );
TEST_VMRL_OP( 6235,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat60 );
TEST_VMRL_OP( 6257,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat17 );
TEST_VMRL_OP( 6262,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 6270,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat30 );
TEST_VMRL_OP( 6274,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat34 );
TEST_VMRL_OP( 6284,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat44 );
TEST_VMRL_OP( 6314,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat9 );
TEST_VMRL_OP( 6330,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 6333,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 6350,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat45 );
TEST_VMRL_OP( 6376,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat6 );
TEST_VMRL_OP( 6407,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat37 );
TEST_VMRL_OP( 6446,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat11 );
TEST_VMRL_OP( 6475,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat40 );
TEST_VMRL_OP( 6480,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat45 );
TEST_VMRL_OP( 6482,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat47 );
TEST_VMRL_OP( 6516,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat16 );
TEST_VMRL_OP( 6517,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat17 );
TEST_VMRL_OP( 6519,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat19 );
TEST_VMRL_OP( 6529,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat29 );
TEST_VMRL_OP( 6561,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat61 );
TEST_VMRL_OP( 6565,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat0 );
TEST_VMRL_OP( 6566,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat1 );
TEST_VMRL_OP( 6572,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat7 );
TEST_VMRL_OP( 6577,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat12 );
TEST_VMRL_OP( 6588,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat23 );
TEST_VMRL_OP( 6662,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat32 );
TEST_VMRL_OP( 6673,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat43 );
TEST_VMRL_OP( 6680,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat50 );
TEST_VMRL_OP( 6687,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat57 );
TEST_VMRL_OP( 6716,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat21 );
TEST_VMRL_OP( 6722,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat27 );
TEST_VMRL_OP( 6729,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat34 );
TEST_VMRL_OP( 6732,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat37 );
TEST_VMRL_OP( 6742,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat47 );
TEST_VMRL_OP( 6817,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat57 );
TEST_VMRL_OP( 6821,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat61 );
TEST_VMRL_OP( 6845,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_zeros_dat20 );
TEST_VMRL_OP( 6861,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_zeros_dat36 );
TEST_VMRL_OP( 6862,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_zeros_dat37 );
TEST_VMRL_OP( 6912,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat22 );
TEST_VMRL_OP( 6930,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat40 );
TEST_VMRL_OP( 6932,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat42 );
TEST_VMRL_OP( 6934,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat44 );
TEST_VMRL_OP( 6948,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat58 );
TEST_VMRL_OP( 6960,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat42, walking_zeros_dat5 );
TEST_VMRL_OP( 6964,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat42, walking_zeros_dat9 );
TEST_VMRL_OP( 7008,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat42, walking_zeros_dat53 );
TEST_VMRL_OP( 7034,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_zeros_dat14 );
TEST_VMRL_OP( 7075,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_zeros_dat55 );
TEST_VMRL_OP( 7085,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_zeros_dat0 );
TEST_VMRL_OP( 7147,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_zeros_dat62 );
TEST_VMRL_OP( 7166,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_zeros_dat16 );
TEST_VMRL_OP( 7208,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_zeros_dat58 );
TEST_VMRL_OP( 7242,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat46, walking_zeros_dat27 );
TEST_VMRL_OP( 7257,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat46, walking_zeros_dat42 );
TEST_VMRL_OP( 7271,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat46, walking_zeros_dat56 );
TEST_VMRL_OP( 7283,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat3 );
TEST_VMRL_OP( 7303,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat23 );
TEST_VMRL_OP( 7309,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat29 );
TEST_VMRL_OP( 7320,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat40 );
TEST_VMRL_OP( 7342,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat62 );
TEST_VMRL_OP( 7375,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat30 );
TEST_VMRL_OP( 7388,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat43 );
TEST_VMRL_OP( 7389,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat44 );
TEST_VMRL_OP( 7395,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat50 );
TEST_VMRL_OP( 7405,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat60 );
TEST_VMRL_OP( 7407,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat62 );
TEST_VMRL_OP( 7408,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat63 );
TEST_VMRL_OP( 7421,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat11 );
TEST_VMRL_OP( 7425,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat15 );
TEST_VMRL_OP( 7426,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat16 );
TEST_VMRL_OP( 7461,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat51 );
TEST_VMRL_OP( 7468,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat58 );
TEST_VMRL_OP( 7494,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat19 );
TEST_VMRL_OP( 7497,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat22 );
TEST_VMRL_OP( 7502,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat27 );
TEST_VMRL_OP( 7511,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat36 );
TEST_VMRL_OP( 7519,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat44 );
TEST_VMRL_OP( 7541,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat1 );
TEST_VMRL_OP( 7566,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat26 );
TEST_VMRL_OP( 7576,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat36 );
TEST_VMRL_OP( 7580,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat40 );
TEST_VMRL_OP( 7588,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat48 );
TEST_VMRL_OP( 7592,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat52 );
TEST_VMRL_OP( 7617,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_zeros_dat12 );
TEST_VMRL_OP( 7619,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_zeros_dat14 );
TEST_VMRL_OP( 7622,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_zeros_dat17 );
TEST_VMRL_OP( 7631,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_zeros_dat26 );
TEST_VMRL_OP( 7692,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat22 );
TEST_VMRL_OP( 7700,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat30 );
TEST_VMRL_OP( 7713,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat43 );
TEST_VMRL_OP( 7724,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat54 );
TEST_VMRL_OP( 7735,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_zeros_dat0 );
TEST_VMRL_OP( 7745,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_zeros_dat10 );
TEST_VMRL_OP( 7769,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_zeros_dat34 );
TEST_VMRL_OP( 7821,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_zeros_dat21 );
TEST_VMRL_OP( 7824,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_zeros_dat24 );
TEST_VMRL_OP( 7844,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_zeros_dat44 );
TEST_VMRL_OP( 7850,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_zeros_dat50 );
TEST_VMRL_OP( 7867,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat2 );
TEST_VMRL_OP( 7880,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat15 );
TEST_VMRL_OP( 7907,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat42 );
TEST_VMRL_OP( 7911,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat46 );
TEST_VMRL_OP( 7913,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat48 );
TEST_VMRL_OP( 7920,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat55 );
TEST_VMRL_OP( 7952,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat22 );
TEST_VMRL_OP( 7970,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat40 );
TEST_VMRL_OP( 7975,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat45 );
TEST_VMRL_OP( 7983,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat53 );
TEST_VMRL_OP( 8006,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat11 );
TEST_VMRL_OP( 8034,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat39 );
TEST_VMRL_OP( 8041,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat46 );
TEST_VMRL_OP( 8051,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat56 );
TEST_VMRL_OP( 8064,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat4 );
TEST_VMRL_OP( 8074,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat14 );
TEST_VMRL_OP( 8086,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat26 );
TEST_VMRL_OP( 8093,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat33 );
TEST_VMRL_OP( 8099,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat39 );
TEST_VMRL_OP( 8103,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat43 );
TEST_VMRL_OP( 8148,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat60, walking_zeros_dat23 );
TEST_VMRL_OP( 8243,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_zeros_dat53 );
TEST_VMRL_OP( 8249,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_zeros_dat59 );
TEST_VMRL_OP( 8318,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat62, walking_zeros_dat63 );
TEST_VMRL_OP( 8330,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_zeros_dat10 );
TEST_VMRL_OP( 8363,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_zeros_dat43 );
TEST_VMRL_OP( 8387,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat2 );
TEST_VMRL_OP( 8391,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat6 );
TEST_VMRL_OP( 8408,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat23 );
TEST_VMRL_OP( 8410,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat25 );
TEST_VMRL_OP( 8411,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat26 );
TEST_VMRL_OP( 8444,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat59 );
TEST_VMRL_OP( 8489,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat39 );
TEST_VMRL_OP( 8511,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat61 );
TEST_VMRL_OP( 8609,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 8615,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat35 );
TEST_VMRL_OP( 8622,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat42 );
TEST_VMRL_OP( 8634,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat54 );
TEST_VMRL_OP( 8750,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat40 );
TEST_VMRL_OP( 8763,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat53 );
TEST_VMRL_OP( 8788,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 8805,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat30 );
TEST_VMRL_OP( 8807,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 8811,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat36 );
TEST_VMRL_OP( 8825,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat50 );
TEST_VMRL_OP( 8859,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 8878,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat38 );
TEST_VMRL_OP( 8895,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat55 );
TEST_VMRL_OP( 8943,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat38 );
TEST_VMRL_OP( 8974,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 8994,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 8998,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 9009,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat39 );
TEST_VMRL_OP( 9030,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat60 );
TEST_VMRL_OP( 9041,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 9053,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 9054,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 9097,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat62 );
TEST_VMRL_OP( 9124,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 9148,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat48 );
TEST_VMRL_OP( 9182,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 9194,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 9212,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat47 );
TEST_VMRL_OP( 9225,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat60 );
TEST_VMRL_OP( 9287,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat57 );
TEST_VMRL_OP( 9289,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat59 );
TEST_VMRL_OP( 9294,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat64 );
TEST_VMRL_OP( 9329,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat34 );
TEST_VMRL_OP( 9354,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat59 );
TEST_VMRL_OP( 9365,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 9374,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 9381,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat21 );
TEST_VMRL_OP( 9417,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat57 );
TEST_VMRL_OP( 9437,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 9448,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat23 );
TEST_VMRL_OP( 9469,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat44 );
TEST_VMRL_OP( 9473,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat48 );
TEST_VMRL_OP( 9477,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat52 );
TEST_VMRL_OP( 9480,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat55 );
TEST_VMRL_OP( 9509,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 9515,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat25 );
TEST_VMRL_OP( 9519,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 9523,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat33 );
TEST_VMRL_OP( 9530,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat40 );
TEST_VMRL_OP( 9558,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 9561,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 9565,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat10 );
TEST_VMRL_OP( 9577,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 9595,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat40 );
TEST_VMRL_OP( 9603,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat48 );
TEST_VMRL_OP( 9607,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat52 );
TEST_VMRL_OP( 9611,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat56 );
TEST_VMRL_OP( 9617,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat62 );
TEST_VMRL_OP( 9626,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat6 );
TEST_VMRL_OP( 9635,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 9645,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 9669,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat49 );
TEST_VMRL_OP( 9689,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat4 );
TEST_VMRL_OP( 9693,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 9696,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 9701,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 9782,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat32 );
TEST_VMRL_OP( 9800,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat50 );
TEST_VMRL_OP( 9801,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat51 );
TEST_VMRL_OP( 9806,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat56 );
TEST_VMRL_OP( 9812,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat62 );
TEST_VMRL_OP( 9824,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 9828,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 9830,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 9878,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat63 );
TEST_VMRL_OP( 9893,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 9915,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat35 );
TEST_VMRL_OP( 9921,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat41 );
TEST_VMRL_OP( 9922,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat42 );
TEST_VMRL_OP( 9938,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat58 );
TEST_VMRL_OP( 9983,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat38 );
TEST_VMRL_OP( 9986,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat41 );
TEST_VMRL_OP( 9996,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat51 );
TEST_VMRL_OP( 10028,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 10030,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat20 );
TEST_VMRL_OP( 10053,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat43 );
TEST_VMRL_OP( 10058,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat48 );
TEST_VMRL_OP( 10076,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 10090,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 10093,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 10095,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 10102,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 10108,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat33 );
TEST_VMRL_OP( 10112,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat37 );
TEST_VMRL_OP( 10115,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat40 );
TEST_VMRL_OP( 10119,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat44 );
TEST_VMRL_OP( 10125,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat50 );
TEST_VMRL_OP( 10132,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat57 );
TEST_VMRL_OP( 10160,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 10163,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 10176,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat36 );
TEST_VMRL_OP( 10187,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat47 );
TEST_VMRL_OP( 10211,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 10227,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 10229,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 10233,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 10248,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat43 );
TEST_VMRL_OP( 10263,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat58 );
TEST_VMRL_OP( 10264,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat59 );
TEST_VMRL_OP( 10272,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 10277,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 10280,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat10 );
TEST_VMRL_OP( 10281,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 10285,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat15 );
TEST_VMRL_OP( 10291,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 10292,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 10306,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat36 );
TEST_VMRL_OP( 10307,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat37 );
TEST_VMRL_OP( 10315,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat45 );
TEST_VMRL_OP( 10346,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat11 );
TEST_VMRL_OP( 10353,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 10354,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 10370,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat35 );
TEST_VMRL_OP( 10386,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat51 );
TEST_VMRL_OP( 10404,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 10420,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 10435,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat35 );
TEST_VMRL_OP( 10438,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat38 );
TEST_VMRL_OP( 10446,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat46 );
TEST_VMRL_OP( 10479,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat14 );
TEST_VMRL_OP( 10508,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat43 );
TEST_VMRL_OP( 10512,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat47 );
TEST_VMRL_OP( 10516,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat51 );
TEST_VMRL_OP( 10523,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat58 );
TEST_VMRL_OP( 10528,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat63 );
TEST_VMRL_OP( 10541,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 10551,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 10568,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat38 );
TEST_VMRL_OP( 10590,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat60 );
TEST_VMRL_OP( 10619,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat24 );
TEST_VMRL_OP( 10642,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat47 );
TEST_VMRL_OP( 10652,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat57 );
TEST_VMRL_OP( 10660,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat0 );
TEST_VMRL_OP( 10672,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat12 );
TEST_VMRL_OP( 10680,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat20 );
TEST_VMRL_OP( 10725,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat0 );
TEST_VMRL_OP( 10744,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat19 );
TEST_VMRL_OP( 10778,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat53 );
TEST_VMRL_OP( 10800,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat10 );
TEST_VMRL_OP( 10851,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat61 );
TEST_VMRL_OP( 10857,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat2 );
TEST_VMRL_OP( 10860,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat5 );
TEST_VMRL_OP( 10871,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat16 );
TEST_VMRL_OP( 10876,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat21 );
TEST_VMRL_OP( 10878,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat23 );
TEST_VMRL_OP( 10921,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat1 );
TEST_VMRL_OP( 10923,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat3 );
TEST_VMRL_OP( 10931,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat11 );
TEST_VMRL_OP( 10948,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat28 );
TEST_VMRL_OP( 10973,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat53 );
TEST_VMRL_OP( 10979,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat59 );
TEST_VMRL_OP( 10982,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat62 );
TEST_VMRL_OP( 10983,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat63 );
TEST_VMRL_OP( 10986,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat1 );
TEST_VMRL_OP( 11019,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat34 );
TEST_VMRL_OP( 11030,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat45 );
TEST_VMRL_OP( 11063,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat13 );
TEST_VMRL_OP( 11080,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat30 );
TEST_VMRL_OP( 11086,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat36 );
TEST_VMRL_OP( 11088,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat38 );
TEST_VMRL_OP( 11133,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat18 );
TEST_VMRL_OP( 11154,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat39 );
TEST_VMRL_OP( 11161,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat46 );
TEST_VMRL_OP( 11182,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat2 );
TEST_VMRL_OP( 11187,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat7 );
TEST_VMRL_OP( 11223,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat43 );
TEST_VMRL_OP( 11284,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat39 );
TEST_VMRL_OP( 11285,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat40 );
TEST_VMRL_OP( 11297,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat52 );
TEST_VMRL_OP( 11299,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat54 );
TEST_VMRL_OP( 11341,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat31 );
TEST_VMRL_OP( 11370,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat60 );
TEST_VMRL_OP( 11375,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat0 );
TEST_VMRL_OP( 11388,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat13 );
TEST_VMRL_OP( 11401,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat26 );
TEST_VMRL_OP( 11423,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat48 );
TEST_VMRL_OP( 11424,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat49 );
TEST_VMRL_OP( 11446,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat6 );
TEST_VMRL_OP( 11458,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat18 );
TEST_VMRL_OP( 11488,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat48 );
TEST_VMRL_OP( 11512,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat7 );
TEST_VMRL_OP( 11545,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat40 );
TEST_VMRL_OP( 11574,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat4 );
TEST_VMRL_OP( 11577,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat7 );
TEST_VMRL_OP( 11587,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat17 );
TEST_VMRL_OP( 11590,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat20 );
TEST_VMRL_OP( 11662,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat27 );
TEST_VMRL_OP( 11694,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat59 );
TEST_VMRL_OP( 11696,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat61 );
TEST_VMRL_OP( 11707,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat7 );
TEST_VMRL_OP( 11793,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat28 );
TEST_VMRL_OP( 11795,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat30 );
TEST_VMRL_OP( 11797,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat32 );
TEST_VMRL_OP( 11802,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat37 );
TEST_VMRL_OP( 11804,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat39 );
TEST_VMRL_OP( 11818,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat53 );
TEST_VMRL_OP( 11842,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat12 );
TEST_VMRL_OP( 11869,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat39 );
TEST_VMRL_OP( 11871,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat41 );
TEST_VMRL_OP( 11876,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat46 );
TEST_VMRL_OP( 11909,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat14 );
TEST_VMRL_OP( 11920,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat25 );
TEST_VMRL_OP( 11939,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat44 );
TEST_VMRL_OP( 11950,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat55 );
TEST_VMRL_OP( 11966,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat6 );
TEST_VMRL_OP( 11973,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat13 );
TEST_VMRL_OP( 11987,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat27 );
TEST_VMRL_OP( 12014,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 12040,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat15 );
TEST_VMRL_OP( 12042,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat17 );
TEST_VMRL_OP( 12091,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat1 );
TEST_VMRL_OP( 12103,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat13 );
TEST_VMRL_OP( 12112,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat22 );
TEST_VMRL_OP( 12166,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat11 );
TEST_VMRL_OP( 12170,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat15 );
TEST_VMRL_OP( 12184,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat29 );
TEST_VMRL_OP( 12188,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat33 );
TEST_VMRL_OP( 12192,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat37 );
TEST_VMRL_OP( 12198,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat43 );
TEST_VMRL_OP( 12200,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat45 );
TEST_VMRL_OP( 12205,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat50 );
TEST_VMRL_OP( 12207,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat52 );
TEST_VMRL_OP( 12228,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat8 );
TEST_VMRL_OP( 12260,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat40 );
TEST_VMRL_OP( 12279,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat59 );
TEST_VMRL_OP( 12289,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat4 );
TEST_VMRL_OP( 12291,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat6 );
TEST_VMRL_OP( 12307,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat22 );
TEST_VMRL_OP( 12333,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat48 );
TEST_VMRL_OP( 12350,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat0 );
TEST_VMRL_OP( 12356,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat6 );
TEST_VMRL_OP( 12374,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat24 );
TEST_VMRL_OP( 12397,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat47 );
TEST_VMRL_OP( 12410,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 12435,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat20 );
TEST_VMRL_OP( 12438,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat23 );
TEST_VMRL_OP( 12475,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat60 );
TEST_VMRL_OP( 12496,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat16 );
TEST_VMRL_OP( 12534,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat54 );
TEST_VMRL_OP( 12553,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat8 );
TEST_VMRL_OP( 12626,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat16 );
TEST_VMRL_OP( 12655,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat45 );
TEST_VMRL_OP( 12663,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat53 );
TEST_VMRL_OP( 12671,  vmandnot.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat61 );
TEST_VMRL_OP( 12694,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 12715,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat40 );
TEST_VMRL_OP( 12732,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat57 );
TEST_VMRL_OP( 12746,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 12772,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 12784,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat44 );
TEST_VMRL_OP( 12811,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 12842,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat37 );
TEST_VMRL_OP( 12852,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat47 );
TEST_VMRL_OP( 12858,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat53 );
TEST_VMRL_OP( 12868,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat63 );
TEST_VMRL_OP( 12881,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 12891,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat21 );
TEST_VMRL_OP( 12905,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat35 );
TEST_VMRL_OP( 12927,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat57 );
TEST_VMRL_OP( 12935,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 12945,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 12962,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat27 );
TEST_VMRL_OP( 12964,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat29 );
TEST_VMRL_OP( 13019,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 13020,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 13059,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat59 );
TEST_VMRL_OP( 13064,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat64 );
TEST_VMRL_OP( 13073,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 13078,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 13093,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 13097,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 13131,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 13150,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 13160,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 13175,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat45 );
TEST_VMRL_OP( 13176,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat46 );
TEST_VMRL_OP( 13233,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat38 );
TEST_VMRL_OP( 13255,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat60 );
TEST_VMRL_OP( 13256,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat61 );
TEST_VMRL_OP( 13270,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 13291,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 13311,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat51 );
TEST_VMRL_OP( 13313,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat53 );
TEST_VMRL_OP( 13316,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat56 );
TEST_VMRL_OP( 13355,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 13370,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat45 );
TEST_VMRL_OP( 13389,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat64 );
TEST_VMRL_OP( 13408,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 13420,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 13424,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat34 );
TEST_VMRL_OP( 13431,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat41 );
TEST_VMRL_OP( 13438,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat48 );
TEST_VMRL_OP( 13460,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 13473,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat18 );
TEST_VMRL_OP( 13502,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat47 );
TEST_VMRL_OP( 13522,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 13572,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat52 );
TEST_VMRL_OP( 13582,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat62 );
TEST_VMRL_OP( 13609,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 13616,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat31 );
TEST_VMRL_OP( 13624,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat39 );
TEST_VMRL_OP( 13628,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat43 );
TEST_VMRL_OP( 13629,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat44 );
TEST_VMRL_OP( 13632,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat47 );
TEST_VMRL_OP( 13641,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat56 );
TEST_VMRL_OP( 13658,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 13722,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 13776,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat61 );
TEST_VMRL_OP( 13786,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 13791,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat11 );
TEST_VMRL_OP( 13809,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 13822,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat42 );
TEST_VMRL_OP( 13833,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat53 );
TEST_VMRL_OP( 13853,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 13861,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat16 );
TEST_VMRL_OP( 13864,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 13896,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat51 );
TEST_VMRL_OP( 13913,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 13917,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 13950,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat40 );
TEST_VMRL_OP( 13966,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat56 );
TEST_VMRL_OP( 13975,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 13989,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 14024,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat49 );
TEST_VMRL_OP( 14028,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat53 );
TEST_VMRL_OP( 14054,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat14 );
TEST_VMRL_OP( 14059,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 14065,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat25 );
TEST_VMRL_OP( 14099,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat59 );
TEST_VMRL_OP( 14113,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat8 );
TEST_VMRL_OP( 14117,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 14126,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 14144,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat39 );
TEST_VMRL_OP( 14174,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 14180,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat10 );
TEST_VMRL_OP( 14217,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat47 );
TEST_VMRL_OP( 14218,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat48 );
TEST_VMRL_OP( 14231,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat61 );
TEST_VMRL_OP( 14257,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 14261,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat26 );
TEST_VMRL_OP( 14263,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 14286,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat51 );
TEST_VMRL_OP( 14288,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat53 );
TEST_VMRL_OP( 14331,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat31 );
TEST_VMRL_OP( 14332,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 14430,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat0 );
TEST_VMRL_OP( 14433,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 14454,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 14465,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat35 );
TEST_VMRL_OP( 14470,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat40 );
TEST_VMRL_OP( 14474,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat44 );
TEST_VMRL_OP( 14538,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat43 );
TEST_VMRL_OP( 14539,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat44 );
TEST_VMRL_OP( 14548,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat53 );
TEST_VMRL_OP( 14558,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat63 );
TEST_VMRL_OP( 14565,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 14575,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 14597,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat37 );
TEST_VMRL_OP( 14642,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 14664,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat39 );
TEST_VMRL_OP( 14677,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat52 );
TEST_VMRL_OP( 14679,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat54 );
TEST_VMRL_OP( 14680,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat55 );
TEST_VMRL_OP( 14688,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat63 );
TEST_VMRL_OP( 14699,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat9 );
TEST_VMRL_OP( 14709,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat19 );
TEST_VMRL_OP( 14739,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat49 );
TEST_VMRL_OP( 14741,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat51 );
TEST_VMRL_OP( 14773,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 14774,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat19 );
TEST_VMRL_OP( 14778,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 14781,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 14786,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 14820,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat0 );
TEST_VMRL_OP( 14826,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat6 );
TEST_VMRL_OP( 14837,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat17 );
TEST_VMRL_OP( 14838,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat18 );
TEST_VMRL_OP( 14856,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat36 );
TEST_VMRL_OP( 14872,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat52 );
TEST_VMRL_OP( 14889,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat4 );
TEST_VMRL_OP( 14907,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat22 );
TEST_VMRL_OP( 14933,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat48 );
TEST_VMRL_OP( 14962,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat12 );
TEST_VMRL_OP( 14978,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat28 );
TEST_VMRL_OP( 14997,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat47 );
TEST_VMRL_OP( 14999,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat49 );
TEST_VMRL_OP( 15057,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat42 );
TEST_VMRL_OP( 15062,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat47 );
TEST_VMRL_OP( 15076,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat61 );
TEST_VMRL_OP( 15081,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat1 );
TEST_VMRL_OP( 15085,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat5 );
TEST_VMRL_OP( 15111,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat31 );
TEST_VMRL_OP( 15127,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat47 );
TEST_VMRL_OP( 15205,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat38, walking_ones_dat60 );
TEST_VMRL_OP( 15212,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat2 );
TEST_VMRL_OP( 15216,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat6 );
TEST_VMRL_OP( 15233,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat23 );
TEST_VMRL_OP( 15236,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat26 );
TEST_VMRL_OP( 15248,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat38 );
TEST_VMRL_OP( 15249,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 15251,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat41 );
TEST_VMRL_OP( 15292,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat17 );
TEST_VMRL_OP( 15294,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat19 );
TEST_VMRL_OP( 15331,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat56 );
TEST_VMRL_OP( 15368,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat28 );
TEST_VMRL_OP( 15384,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat44 );
TEST_VMRL_OP( 15386,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat46 );
TEST_VMRL_OP( 15435,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat30 );
TEST_VMRL_OP( 15442,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat37 );
TEST_VMRL_OP( 15450,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat45 );
TEST_VMRL_OP( 15485,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat15 );
TEST_VMRL_OP( 15492,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat22 );
TEST_VMRL_OP( 15524,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat54 );
TEST_VMRL_OP( 15531,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat61 );
TEST_VMRL_OP( 15533,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat63 );
TEST_VMRL_OP( 15571,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat36 );
TEST_VMRL_OP( 15584,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat49 );
TEST_VMRL_OP( 15590,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat55 );
TEST_VMRL_OP( 15620,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat20 );
TEST_VMRL_OP( 15632,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat32 );
TEST_VMRL_OP( 15665,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat0 );
TEST_VMRL_OP( 15670,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat5 );
TEST_VMRL_OP( 15695,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat30 );
TEST_VMRL_OP( 15709,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat44 );
TEST_VMRL_OP( 15727,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat62 );
TEST_VMRL_OP( 15763,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat33 );
TEST_VMRL_OP( 15775,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat45 );
TEST_VMRL_OP( 15776,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat46 );
TEST_VMRL_OP( 15812,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat17 );
TEST_VMRL_OP( 15820,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat25 );
TEST_VMRL_OP( 15829,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat34 );
TEST_VMRL_OP( 15844,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat49 );
TEST_VMRL_OP( 15861,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat1 );
TEST_VMRL_OP( 15887,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat27 );
TEST_VMRL_OP( 15890,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat30 );
TEST_VMRL_OP( 15912,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat52 );
TEST_VMRL_OP( 15993,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat3 );
TEST_VMRL_OP( 15994,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat4 );
TEST_VMRL_OP( 16063,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat8 );
TEST_VMRL_OP( 16069,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat14 );
TEST_VMRL_OP( 16076,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat21 );
TEST_VMRL_OP( 16079,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat24 );
TEST_VMRL_OP( 16080,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat25 );
TEST_VMRL_OP( 16083,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat28 );
TEST_VMRL_OP( 16128,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat8 );
TEST_VMRL_OP( 16159,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat39 );
TEST_VMRL_OP( 16202,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat17 );
TEST_VMRL_OP( 16208,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat23 );
TEST_VMRL_OP( 16213,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat28 );
TEST_VMRL_OP( 16224,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat39 );
TEST_VMRL_OP( 16233,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat48 );
TEST_VMRL_OP( 16250,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat0 );
TEST_VMRL_OP( 16272,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat22 );
TEST_VMRL_OP( 16276,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat26 );
TEST_VMRL_OP( 16285,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat35 );
TEST_VMRL_OP( 16306,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat56 );
TEST_VMRL_OP( 16311,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat61 );
TEST_VMRL_OP( 16319,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat4 );
TEST_VMRL_OP( 16321,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat6 );
TEST_VMRL_OP( 16346,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat31 );
TEST_VMRL_OP( 16374,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat59 );
TEST_VMRL_OP( 16377,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat62 );
TEST_VMRL_OP( 16401,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat21 );
TEST_VMRL_OP( 16424,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat44 );
TEST_VMRL_OP( 16425,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat45 );
TEST_VMRL_OP( 16466,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat21 );
TEST_VMRL_OP( 16488,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat43 );
TEST_VMRL_OP( 16496,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat51 );
TEST_VMRL_OP( 16539,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat29 );
TEST_VMRL_OP( 16570,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat60 );
TEST_VMRL_OP( 16615,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat40 );
TEST_VMRL_OP( 16619,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat44 );
TEST_VMRL_OP( 16632,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat57 );
TEST_VMRL_OP( 16634,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat59 );
TEST_VMRL_OP( 16664,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat24 );
TEST_VMRL_OP( 16666,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat26 );
TEST_VMRL_OP( 16694,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat54 );
TEST_VMRL_OP( 16697,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat57 );
TEST_VMRL_OP( 16726,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat62, walking_ones_dat21 );
TEST_VMRL_OP( 16786,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat16 );
TEST_VMRL_OP( 16799,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat29 );
TEST_VMRL_OP( 16876,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat41 );
TEST_VMRL_OP( 16879,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat44 );
TEST_VMRL_OP( 16890,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat55 );
TEST_VMRL_OP( 16900,  vmandnot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmandnot.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33975,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33976,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33977,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33978,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33979,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33980,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33981,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33982,  vmandnot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
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
    

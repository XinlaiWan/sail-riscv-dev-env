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
    # vmnand.S
    #-----------------------------------------------------------------------------
    #
    # Test vmnand instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmnand)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmnand tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 24,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 31,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 41,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_ones_dat41 );
TEST_VMRL_OP( 64,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_ones_dat64 );
TEST_VMRL_OP( 70,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 73,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 101,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_ones_dat36 );
TEST_VMRL_OP( 120,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_ones_dat55 );
TEST_VMRL_OP( 152,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 161,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_ones_dat31 );
TEST_VMRL_OP( 190,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_ones_dat60 );
TEST_VMRL_OP( 192,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_ones_dat62 );
TEST_VMRL_OP( 197,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 202,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 215,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_ones_dat20 );
TEST_VMRL_OP( 234,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_ones_dat39 );
TEST_VMRL_OP( 239,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_ones_dat44 );
TEST_VMRL_OP( 245,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_ones_dat50 );
TEST_VMRL_OP( 264,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 279,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 285,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 286,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 302,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_ones_dat42 );
TEST_VMRL_OP( 311,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_ones_dat51 );
TEST_VMRL_OP( 324,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_ones_dat64 );
TEST_VMRL_OP( 325,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 331,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 350,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_ones_dat25 );
TEST_VMRL_OP( 353,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 409,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_ones_dat19 );
TEST_VMRL_OP( 412,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 421,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 433,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_ones_dat43 );
TEST_VMRL_OP( 442,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_ones_dat52 );
TEST_VMRL_OP( 455,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 466,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 529,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 536,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 576,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_ones_dat56 );
TEST_VMRL_OP( 579,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_ones_dat59 );
TEST_VMRL_OP( 594,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 605,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_ones_dat20 );
TEST_VMRL_OP( 613,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_ones_dat28 );
TEST_VMRL_OP( 658,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 678,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat28 );
TEST_VMRL_OP( 680,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 681,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 688,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat38 );
TEST_VMRL_OP( 706,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat56 );
TEST_VMRL_OP( 712,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat62 );
TEST_VMRL_OP( 714,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_ones_dat64 );
TEST_VMRL_OP( 744,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_ones_dat29 );
TEST_VMRL_OP( 748,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_ones_dat33 );
TEST_VMRL_OP( 749,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_ones_dat34 );
TEST_VMRL_OP( 750,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_ones_dat35 );
TEST_VMRL_OP( 763,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_ones_dat48 );
TEST_VMRL_OP( 805,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_ones_dat25 );
TEST_VMRL_OP( 835,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_ones_dat55 );
TEST_VMRL_OP( 842,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_ones_dat62 );
TEST_VMRL_OP( 846,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 889,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_ones_dat44 );
TEST_VMRL_OP( 894,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_ones_dat49 );
TEST_VMRL_OP( 923,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 924,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 971,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_ones_dat61 );
TEST_VMRL_OP( 1037,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat15, walking_ones_dat62 );
TEST_VMRL_OP( 1047,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1145,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_ones_dat40 );
TEST_VMRL_OP( 1152,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_ones_dat47 );
TEST_VMRL_OP( 1156,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_ones_dat51 );
TEST_VMRL_OP( 1161,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_ones_dat56 );
TEST_VMRL_OP( 1198,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 1224,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_ones_dat54 );
TEST_VMRL_OP( 1239,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_ones_dat4 );
TEST_VMRL_OP( 1281,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_ones_dat46 );
TEST_VMRL_OP( 1282,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_ones_dat47 );
TEST_VMRL_OP( 1375,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_ones_dat10 );
TEST_VMRL_OP( 1380,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 1393,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_ones_dat28 );
TEST_VMRL_OP( 1396,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 1398,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_ones_dat33 );
TEST_VMRL_OP( 1404,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_ones_dat39 );
TEST_VMRL_OP( 1458,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 1459,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 1480,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_ones_dat50 );
TEST_VMRL_OP( 1482,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_ones_dat52 );
TEST_VMRL_OP( 1483,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_ones_dat53 );
TEST_VMRL_OP( 1485,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_ones_dat55 );
TEST_VMRL_OP( 1493,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_ones_dat63 );
TEST_VMRL_OP( 1501,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 1514,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 1561,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 1585,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 1591,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_ones_dat31 );
TEST_VMRL_OP( 1608,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_ones_dat48 );
TEST_VMRL_OP( 1627,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 1631,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 1640,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 1664,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_ones_dat39 );
TEST_VMRL_OP( 1666,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_ones_dat41 );
TEST_VMRL_OP( 1669,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_ones_dat44 );
TEST_VMRL_OP( 1675,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_ones_dat50 );
TEST_VMRL_OP( 1714,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 1721,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 1735,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_ones_dat45 );
TEST_VMRL_OP( 1742,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_ones_dat52 );
TEST_VMRL_OP( 1745,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_ones_dat55 );
TEST_VMRL_OP( 1752,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_ones_dat62 );
TEST_VMRL_OP( 1758,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 1772,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_ones_dat17 );
TEST_VMRL_OP( 1784,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 1800,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_ones_dat45 );
TEST_VMRL_OP( 1816,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_ones_dat61 );
TEST_VMRL_OP( 1862,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_ones_dat42 );
TEST_VMRL_OP( 1889,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_ones_dat4 );
TEST_VMRL_OP( 1893,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 1901,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 1903,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 1911,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 1941,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_ones_dat56 );
TEST_VMRL_OP( 1992,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat30, walking_ones_dat42 );
TEST_VMRL_OP( 2030,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 2102,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 2121,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_ones_dat41 );
TEST_VMRL_OP( 2124,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_ones_dat44 );
TEST_VMRL_OP( 2154,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_ones_dat9 );
TEST_VMRL_OP( 2155,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_ones_dat10 );
TEST_VMRL_OP( 2185,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_ones_dat40 );
TEST_VMRL_OP( 2226,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_ones_dat16 );
TEST_VMRL_OP( 2249,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_ones_dat39 );
TEST_VMRL_OP( 2256,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_ones_dat46 );
TEST_VMRL_OP( 2262,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_ones_dat52 );
TEST_VMRL_OP( 2271,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_ones_dat61 );
TEST_VMRL_OP( 2291,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_ones_dat16 );
TEST_VMRL_OP( 2309,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_ones_dat34 );
TEST_VMRL_OP( 2345,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_ones_dat5 );
TEST_VMRL_OP( 2364,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_ones_dat24 );
TEST_VMRL_OP( 2372,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_ones_dat32 );
TEST_VMRL_OP( 2379,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_ones_dat39 );
TEST_VMRL_OP( 2412,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat7 );
TEST_VMRL_OP( 2415,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat10 );
TEST_VMRL_OP( 2419,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat14 );
TEST_VMRL_OP( 2420,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat15 );
TEST_VMRL_OP( 2421,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat16 );
TEST_VMRL_OP( 2442,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 2444,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat39 );
TEST_VMRL_OP( 2450,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat45 );
TEST_VMRL_OP( 2464,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_ones_dat59 );
TEST_VMRL_OP( 2496,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_ones_dat26 );
TEST_VMRL_OP( 2529,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_ones_dat59 );
TEST_VMRL_OP( 2530,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_ones_dat60 );
TEST_VMRL_OP( 2543,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_ones_dat8 );
TEST_VMRL_OP( 2574,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 2598,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_ones_dat63 );
TEST_VMRL_OP( 2607,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_ones_dat7 );
TEST_VMRL_OP( 2623,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_ones_dat23 );
TEST_VMRL_OP( 2630,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_ones_dat30 );
TEST_VMRL_OP( 2631,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_ones_dat31 );
TEST_VMRL_OP( 2680,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_ones_dat15 );
TEST_VMRL_OP( 2712,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_ones_dat47 );
TEST_VMRL_OP( 2715,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_ones_dat50 );
TEST_VMRL_OP( 2765,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_ones_dat35 );
TEST_VMRL_OP( 2782,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_ones_dat52 );
TEST_VMRL_OP( 2787,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_ones_dat57 );
TEST_VMRL_OP( 2825,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_ones_dat30 );
TEST_VMRL_OP( 2833,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_ones_dat38 );
TEST_VMRL_OP( 2841,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_ones_dat46 );
TEST_VMRL_OP( 2864,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_ones_dat4 );
TEST_VMRL_OP( 2871,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_ones_dat11 );
TEST_VMRL_OP( 2881,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_ones_dat21 );
TEST_VMRL_OP( 2883,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_ones_dat23 );
TEST_VMRL_OP( 2885,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_ones_dat25 );
TEST_VMRL_OP( 2907,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_ones_dat47 );
TEST_VMRL_OP( 2928,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_ones_dat3 );
TEST_VMRL_OP( 2931,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_ones_dat6 );
TEST_VMRL_OP( 2933,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_ones_dat8 );
TEST_VMRL_OP( 2936,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_ones_dat11 );
TEST_VMRL_OP( 2944,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_ones_dat19 );
TEST_VMRL_OP( 2972,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_ones_dat47 );
TEST_VMRL_OP( 2984,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_ones_dat59 );
TEST_VMRL_OP( 3025,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_ones_dat35 );
TEST_VMRL_OP( 3071,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_ones_dat16 );
TEST_VMRL_OP( 3103,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_ones_dat48 );
TEST_VMRL_OP( 3112,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_ones_dat57 );
TEST_VMRL_OP( 3113,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_ones_dat58 );
TEST_VMRL_OP( 3120,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_ones_dat0 );
TEST_VMRL_OP( 3138,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_ones_dat18 );
TEST_VMRL_OP( 3163,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_ones_dat43 );
TEST_VMRL_OP( 3187,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_ones_dat2 );
TEST_VMRL_OP( 3213,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_ones_dat28 );
TEST_VMRL_OP( 3227,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_ones_dat42 );
TEST_VMRL_OP( 3246,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_ones_dat61 );
TEST_VMRL_OP( 3253,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_ones_dat3 );
TEST_VMRL_OP( 3271,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_ones_dat21 );
TEST_VMRL_OP( 3286,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_ones_dat36 );
TEST_VMRL_OP( 3310,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_ones_dat60 );
TEST_VMRL_OP( 3317,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_ones_dat2 );
TEST_VMRL_OP( 3323,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_ones_dat8 );
TEST_VMRL_OP( 3328,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_ones_dat13 );
TEST_VMRL_OP( 3333,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_ones_dat18 );
TEST_VMRL_OP( 3339,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_ones_dat24 );
TEST_VMRL_OP( 3358,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_ones_dat43 );
TEST_VMRL_OP( 3386,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_ones_dat6 );
TEST_VMRL_OP( 3396,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_ones_dat16 );
TEST_VMRL_OP( 3405,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_ones_dat25 );
TEST_VMRL_OP( 3411,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_ones_dat31 );
TEST_VMRL_OP( 3414,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_ones_dat34 );
TEST_VMRL_OP( 3419,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_ones_dat39 );
TEST_VMRL_OP( 3435,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_ones_dat55 );
TEST_VMRL_OP( 3483,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat53, walking_ones_dat38 );
TEST_VMRL_OP( 3498,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 3551,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_ones_dat41 );
TEST_VMRL_OP( 3552,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_ones_dat42 );
TEST_VMRL_OP( 3573,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_ones_dat63 );
TEST_VMRL_OP( 3579,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_ones_dat4 );
TEST_VMRL_OP( 3593,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_ones_dat18 );
TEST_VMRL_OP( 3605,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_ones_dat30 );
TEST_VMRL_OP( 3606,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_ones_dat31 );
TEST_VMRL_OP( 3633,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_ones_dat58 );
TEST_VMRL_OP( 3637,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_ones_dat62 );
TEST_VMRL_OP( 3638,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_ones_dat63 );
TEST_VMRL_OP( 3646,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_ones_dat6 );
TEST_VMRL_OP( 3667,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_ones_dat27 );
TEST_VMRL_OP( 3670,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_ones_dat30 );
TEST_VMRL_OP( 3673,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_ones_dat33 );
TEST_VMRL_OP( 3717,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_ones_dat12 );
TEST_VMRL_OP( 3718,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_ones_dat13 );
TEST_VMRL_OP( 3741,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_ones_dat36 );
TEST_VMRL_OP( 3814,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_ones_dat44 );
TEST_VMRL_OP( 3831,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_ones_dat61 );
TEST_VMRL_OP( 3865,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_ones_dat30 );
TEST_VMRL_OP( 3871,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_ones_dat36 );
TEST_VMRL_OP( 3875,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_ones_dat40 );
TEST_VMRL_OP( 3882,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_ones_dat47 );
TEST_VMRL_OP( 3911,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_ones_dat11 );
TEST_VMRL_OP( 3924,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_ones_dat24 );
TEST_VMRL_OP( 3948,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_ones_dat48 );
TEST_VMRL_OP( 3955,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_ones_dat55 );
TEST_VMRL_OP( 3969,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_ones_dat4 );
TEST_VMRL_OP( 4021,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_ones_dat56 );
TEST_VMRL_OP( 4047,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_ones_dat17 );
TEST_VMRL_OP( 4096,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_ones_dat1 );
TEST_VMRL_OP( 4114,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_ones_dat19 );
TEST_VMRL_OP( 4118,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_ones_dat23 );
TEST_VMRL_OP( 4128,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_ones_dat33 );
TEST_VMRL_OP( 4154,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_ones_dat59 );
TEST_VMRL_OP( 4202,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_ones_dat42 );
TEST_VMRL_OP( 4214,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_ones_dat54 );
TEST_VMRL_OP( 4234,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 4253,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat28 );
TEST_VMRL_OP( 4254,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 4256,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 4274,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat49 );
TEST_VMRL_OP( 4279,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat54 );
TEST_VMRL_OP( 4300,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 4320,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 4333,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat43 );
TEST_VMRL_OP( 4347,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat57 );
TEST_VMRL_OP( 4385,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 4406,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat51 );
TEST_VMRL_OP( 4414,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat59 );
TEST_VMRL_OP( 4429,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 4495,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 4530,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat45 );
TEST_VMRL_OP( 4567,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 4572,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 4573,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 4579,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat29 );
TEST_VMRL_OP( 4599,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat49 );
TEST_VMRL_OP( 4607,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat57 );
TEST_VMRL_OP( 4610,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat60 );
TEST_VMRL_OP( 4617,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 4663,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat48 );
TEST_VMRL_OP( 4665,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat50 );
TEST_VMRL_OP( 4673,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat58 );
TEST_VMRL_OP( 4676,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat61 );
TEST_VMRL_OP( 4724,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat44 );
TEST_VMRL_OP( 4730,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat50 );
TEST_VMRL_OP( 4743,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat63 );
TEST_VMRL_OP( 4751,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 4755,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 4766,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 4771,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat26 );
TEST_VMRL_OP( 4775,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat30 );
TEST_VMRL_OP( 4790,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat45 );
TEST_VMRL_OP( 4797,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat52 );
TEST_VMRL_OP( 4821,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 4827,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat17 );
TEST_VMRL_OP( 4828,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 4829,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 4849,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat39 );
TEST_VMRL_OP( 4857,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat47 );
TEST_VMRL_OP( 4960,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 4983,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat43 );
TEST_VMRL_OP( 5021,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 5034,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat29 );
TEST_VMRL_OP( 5090,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 5094,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 5095,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat25 );
TEST_VMRL_OP( 5197,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat62 );
TEST_VMRL_OP( 5269,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 5297,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 5317,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat52 );
TEST_VMRL_OP( 5318,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat53 );
TEST_VMRL_OP( 5343,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 5366,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat36 );
TEST_VMRL_OP( 5384,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat54 );
TEST_VMRL_OP( 5399,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 5425,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 5444,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat49 );
TEST_VMRL_OP( 5447,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat52 );
TEST_VMRL_OP( 5457,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat62 );
TEST_VMRL_OP( 5468,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 5474,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 5481,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 5495,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat35 );
TEST_VMRL_OP( 5496,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat36 );
TEST_VMRL_OP( 5508,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat48 );
TEST_VMRL_OP( 5526,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 5551,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 5560,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat35 );
TEST_VMRL_OP( 5573,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat48 );
TEST_VMRL_OP( 5576,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat51 );
TEST_VMRL_OP( 5584,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat59 );
TEST_VMRL_OP( 5635,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat45 );
TEST_VMRL_OP( 5650,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat60 );
TEST_VMRL_OP( 5688,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat33 );
TEST_VMRL_OP( 5704,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat49 );
TEST_VMRL_OP( 5711,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat56 );
TEST_VMRL_OP( 5733,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 5735,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 5736,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 5743,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 5758,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat38 );
TEST_VMRL_OP( 5765,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat45 );
TEST_VMRL_OP( 5780,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat60 );
TEST_VMRL_OP( 5796,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 5855,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat5 );
TEST_VMRL_OP( 5861,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat11 );
TEST_VMRL_OP( 5876,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat26 );
TEST_VMRL_OP( 5881,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 5890,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat40 );
TEST_VMRL_OP( 5907,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat57 );
TEST_VMRL_OP( 5943,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 5973,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat58 );
TEST_VMRL_OP( 5985,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 5993,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 6007,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 6040,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat60 );
TEST_VMRL_OP( 6051,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 6058,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 6062,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 6094,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat49 );
TEST_VMRL_OP( 6109,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat64 );
TEST_VMRL_OP( 6128,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 6132,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 6135,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 6161,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat51 );
TEST_VMRL_OP( 6203,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat28 );
TEST_VMRL_OP( 6208,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat33 );
TEST_VMRL_OP( 6218,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat43 );
TEST_VMRL_OP( 6235,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat60 );
TEST_VMRL_OP( 6240,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 6246,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 6248,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat8 );
TEST_VMRL_OP( 6296,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat56 );
TEST_VMRL_OP( 6297,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat57 );
TEST_VMRL_OP( 6330,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 6346,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat41 );
TEST_VMRL_OP( 6349,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat44 );
TEST_VMRL_OP( 6357,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat52 );
TEST_VMRL_OP( 6359,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat54 );
TEST_VMRL_OP( 6380,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat10 );
TEST_VMRL_OP( 6398,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat28 );
TEST_VMRL_OP( 6404,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat34 );
TEST_VMRL_OP( 6423,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat53 );
TEST_VMRL_OP( 6430,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat60 );
TEST_VMRL_OP( 6441,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat6 );
TEST_VMRL_OP( 6449,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat14 );
TEST_VMRL_OP( 6481,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat46 );
TEST_VMRL_OP( 6485,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat50 );
TEST_VMRL_OP( 6535,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 6544,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat44 );
TEST_VMRL_OP( 6558,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat58 );
TEST_VMRL_OP( 6567,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat2 );
TEST_VMRL_OP( 6573,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat8 );
TEST_VMRL_OP( 6577,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat12 );
TEST_VMRL_OP( 6595,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat30 );
TEST_VMRL_OP( 6597,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat32 );
TEST_VMRL_OP( 6608,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat43 );
TEST_VMRL_OP( 6624,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat59 );
TEST_VMRL_OP( 6634,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat4 );
TEST_VMRL_OP( 6648,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat18 );
TEST_VMRL_OP( 6686,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat56 );
TEST_VMRL_OP( 6687,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat57 );
TEST_VMRL_OP( 6708,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat13 );
TEST_VMRL_OP( 6713,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat18 );
TEST_VMRL_OP( 6714,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat19 );
TEST_VMRL_OP( 6716,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat21 );
TEST_VMRL_OP( 6733,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 6748,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat53 );
TEST_VMRL_OP( 6787,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat27 );
TEST_VMRL_OP( 6814,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat54 );
TEST_VMRL_OP( 6819,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat59 );
TEST_VMRL_OP( 6831,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat6 );
TEST_VMRL_OP( 6843,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat18 );
TEST_VMRL_OP( 6857,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat32 );
TEST_VMRL_OP( 6916,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat26 );
TEST_VMRL_OP( 6950,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat60 );
TEST_VMRL_OP( 6958,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat3 );
TEST_VMRL_OP( 6994,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat39 );
TEST_VMRL_OP( 7026,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat6 );
TEST_VMRL_OP( 7036,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat16 );
TEST_VMRL_OP( 7063,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 7117,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat32 );
TEST_VMRL_OP( 7118,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat33 );
TEST_VMRL_OP( 7129,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 7133,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat48 );
TEST_VMRL_OP( 7148,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat63 );
TEST_VMRL_OP( 7228,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat13 );
TEST_VMRL_OP( 7232,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat17 );
TEST_VMRL_OP( 7236,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat21 );
TEST_VMRL_OP( 7263,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat48 );
TEST_VMRL_OP( 7275,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat60 );
TEST_VMRL_OP( 7280,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat0 );
TEST_VMRL_OP( 7298,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat18 );
TEST_VMRL_OP( 7308,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat28 );
TEST_VMRL_OP( 7311,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat31 );
TEST_VMRL_OP( 7326,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat46 );
TEST_VMRL_OP( 7333,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat53 );
TEST_VMRL_OP( 7338,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat58 );
TEST_VMRL_OP( 7343,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat63 );
TEST_VMRL_OP( 7365,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat20 );
TEST_VMRL_OP( 7388,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat43 );
TEST_VMRL_OP( 7403,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat58 );
TEST_VMRL_OP( 7413,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat3 );
TEST_VMRL_OP( 7441,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat31 );
TEST_VMRL_OP( 7460,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat50 );
TEST_VMRL_OP( 7483,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat8 );
TEST_VMRL_OP( 7492,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat17 );
TEST_VMRL_OP( 7503,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat28 );
TEST_VMRL_OP( 7504,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat29 );
TEST_VMRL_OP( 7505,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat30 );
TEST_VMRL_OP( 7530,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat55 );
TEST_VMRL_OP( 7548,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat8 );
TEST_VMRL_OP( 7555,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat15 );
TEST_VMRL_OP( 7557,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat17 );
TEST_VMRL_OP( 7572,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat32 );
TEST_VMRL_OP( 7585,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat45 );
TEST_VMRL_OP( 7594,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat54 );
TEST_VMRL_OP( 7603,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat63 );
TEST_VMRL_OP( 7630,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat25 );
TEST_VMRL_OP( 7650,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat45 );
TEST_VMRL_OP( 7670,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat0 );
TEST_VMRL_OP( 7684,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat14 );
TEST_VMRL_OP( 7685,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat15 );
TEST_VMRL_OP( 7686,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat16 );
TEST_VMRL_OP( 7689,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat19 );
TEST_VMRL_OP( 7733,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat63 );
TEST_VMRL_OP( 7797,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_zeros_dat62 );
TEST_VMRL_OP( 7800,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_zeros_dat0 );
TEST_VMRL_OP( 7804,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat4 );
TEST_VMRL_OP( 7834,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat34 );
TEST_VMRL_OP( 7852,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat52 );
TEST_VMRL_OP( 7867,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat2 );
TEST_VMRL_OP( 7875,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat10 );
TEST_VMRL_OP( 7883,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat18 );
TEST_VMRL_OP( 7900,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat35 );
TEST_VMRL_OP( 7925,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat60 );
TEST_VMRL_OP( 7952,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat22 );
TEST_VMRL_OP( 7954,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat24 );
TEST_VMRL_OP( 7966,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat36 );
TEST_VMRL_OP( 7995,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat0 );
TEST_VMRL_OP( 7999,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat4 );
TEST_VMRL_OP( 8022,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat27 );
TEST_VMRL_OP( 8027,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat32 );
TEST_VMRL_OP( 8030,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat35 );
TEST_VMRL_OP( 8046,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat51 );
TEST_VMRL_OP( 8054,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat59 );
TEST_VMRL_OP( 8100,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat40 );
TEST_VMRL_OP( 8120,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat60 );
TEST_VMRL_OP( 8126,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat1 );
TEST_VMRL_OP( 8197,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat7 );
TEST_VMRL_OP( 8214,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat24 );
TEST_VMRL_OP( 8234,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat44 );
TEST_VMRL_OP( 8237,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat47 );
TEST_VMRL_OP( 8251,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 8268,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat13 );
TEST_VMRL_OP( 8272,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat17 );
TEST_VMRL_OP( 8283,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat28 );
TEST_VMRL_OP( 8319,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat64 );
TEST_VMRL_OP( 8322,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat2 );
TEST_VMRL_OP( 8326,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat6 );
TEST_VMRL_OP( 8330,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat10 );
TEST_VMRL_OP( 8358,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat38 );
TEST_VMRL_OP( 8373,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat53 );
TEST_VMRL_OP( 8380,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat60 );
TEST_VMRL_OP( 8398,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat13 );
TEST_VMRL_OP( 8434,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat49 );
TEST_VMRL_OP( 8459,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 8479,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 8503,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat53 );
TEST_VMRL_OP( 8509,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat59 );
TEST_VMRL_OP( 8548,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat33 );
TEST_VMRL_OP( 8604,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 8623,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat43 );
TEST_VMRL_OP( 8646,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 8661,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 8685,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat40 );
TEST_VMRL_OP( 8694,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat49 );
TEST_VMRL_OP( 8708,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat63 );
TEST_VMRL_OP( 8720,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 8728,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 8759,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat49 );
TEST_VMRL_OP( 8769,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat59 );
TEST_VMRL_OP( 8789,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 8798,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 8799,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 8848,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 8877,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat37 );
TEST_VMRL_OP( 8886,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat46 );
TEST_VMRL_OP( 8892,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat52 );
TEST_VMRL_OP( 8903,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat63 );
TEST_VMRL_OP( 8934,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 8935,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 8955,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat50 );
TEST_VMRL_OP( 8957,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat52 );
TEST_VMRL_OP( 8964,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat59 );
TEST_VMRL_OP( 8994,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 9001,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 9007,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat37 );
TEST_VMRL_OP( 9009,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat39 );
TEST_VMRL_OP( 9021,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat51 );
TEST_VMRL_OP( 9095,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat60 );
TEST_VMRL_OP( 9121,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 9132,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 9148,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat48 );
TEST_VMRL_OP( 9154,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat54 );
TEST_VMRL_OP( 9164,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat64 );
TEST_VMRL_OP( 9207,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat42 );
TEST_VMRL_OP( 9215,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat50 );
TEST_VMRL_OP( 9222,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat57 );
TEST_VMRL_OP( 9248,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat18 );
TEST_VMRL_OP( 9283,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat53 );
TEST_VMRL_OP( 9290,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat60 );
TEST_VMRL_OP( 9315,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 9333,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat38 );
TEST_VMRL_OP( 9346,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat51 );
TEST_VMRL_OP( 9399,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat39 );
TEST_VMRL_OP( 9402,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat42 );
TEST_VMRL_OP( 9412,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat52 );
TEST_VMRL_OP( 9431,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 9472,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat47 );
TEST_VMRL_OP( 9511,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 9571,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 9605,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat50 );
TEST_VMRL_OP( 9629,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat9 );
TEST_VMRL_OP( 9644,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat24 );
TEST_VMRL_OP( 9679,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat59 );
TEST_VMRL_OP( 9685,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat0 );
TEST_VMRL_OP( 9693,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 9708,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 9714,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat29 );
TEST_VMRL_OP( 9726,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat41 );
TEST_VMRL_OP( 9744,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat59 );
TEST_VMRL_OP( 9758,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 9803,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat53 );
TEST_VMRL_OP( 9815,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat0 );
TEST_VMRL_OP( 9837,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 9906,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 9922,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat42 );
TEST_VMRL_OP( 9930,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat50 );
TEST_VMRL_OP( 9932,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat52 );
TEST_VMRL_OP( 9952,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 9961,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 9970,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 9974,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat29 );
TEST_VMRL_OP( 9989,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat44 );
TEST_VMRL_OP( 10024,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat14 );
TEST_VMRL_OP( 10059,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat49 );
TEST_VMRL_OP( 10060,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat50 );
TEST_VMRL_OP( 10066,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat56 );
TEST_VMRL_OP( 10096,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 10099,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 10117,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat42 );
TEST_VMRL_OP( 10133,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat58 );
TEST_VMRL_OP( 10220,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 10238,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat33 );
TEST_VMRL_OP( 10240,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat35 );
TEST_VMRL_OP( 10246,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat41 );
TEST_VMRL_OP( 10258,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat53 );
TEST_VMRL_OP( 10316,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat46 );
TEST_VMRL_OP( 10317,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat47 );
TEST_VMRL_OP( 10333,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat63 );
TEST_VMRL_OP( 10341,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat6 );
TEST_VMRL_OP( 10346,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat11 );
TEST_VMRL_OP( 10347,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat12 );
TEST_VMRL_OP( 10374,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat39 );
TEST_VMRL_OP( 10430,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 10435,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat35 );
TEST_VMRL_OP( 10438,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat38 );
TEST_VMRL_OP( 10490,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 10498,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat33 );
TEST_VMRL_OP( 10501,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat36 );
TEST_VMRL_OP( 10506,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat41 );
TEST_VMRL_OP( 10550,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 10552,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 10557,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 10565,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat35 );
TEST_VMRL_OP( 10571,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat41 );
TEST_VMRL_OP( 10576,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat46 );
TEST_VMRL_OP( 10586,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat56 );
TEST_VMRL_OP( 10630,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat35 );
TEST_VMRL_OP( 10664,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat4 );
TEST_VMRL_OP( 10683,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat23 );
TEST_VMRL_OP( 10686,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat26 );
TEST_VMRL_OP( 10733,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat8 );
TEST_VMRL_OP( 10738,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat13 );
TEST_VMRL_OP( 10750,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat25 );
TEST_VMRL_OP( 10778,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat53 );
TEST_VMRL_OP( 10782,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat57 );
TEST_VMRL_OP( 10796,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat6 );
TEST_VMRL_OP( 10809,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat19 );
TEST_VMRL_OP( 10810,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat20 );
TEST_VMRL_OP( 10837,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat47 );
TEST_VMRL_OP( 10838,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat48 );
TEST_VMRL_OP( 10856,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat1 );
TEST_VMRL_OP( 10897,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat42 );
TEST_VMRL_OP( 10899,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat44 );
TEST_VMRL_OP( 10906,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat51 );
TEST_VMRL_OP( 10914,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat59 );
TEST_VMRL_OP( 10926,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat6 );
TEST_VMRL_OP( 10945,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat25 );
TEST_VMRL_OP( 10948,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat28 );
TEST_VMRL_OP( 10955,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat35 );
TEST_VMRL_OP( 10974,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat54 );
TEST_VMRL_OP( 10982,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat62 );
TEST_VMRL_OP( 10996,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat11 );
TEST_VMRL_OP( 11003,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat18 );
TEST_VMRL_OP( 11050,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat0 );
TEST_VMRL_OP( 11064,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat14 );
TEST_VMRL_OP( 11079,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat29 );
TEST_VMRL_OP( 11115,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat0 );
TEST_VMRL_OP( 11153,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat38 );
TEST_VMRL_OP( 11193,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat13 );
TEST_VMRL_OP( 11197,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat17 );
TEST_VMRL_OP( 11199,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat19 );
TEST_VMRL_OP( 11230,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat50 );
TEST_VMRL_OP( 11252,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat7 );
TEST_VMRL_OP( 11259,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat14 );
TEST_VMRL_OP( 11266,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat21 );
TEST_VMRL_OP( 11300,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat55 );
TEST_VMRL_OP( 11325,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat15 );
TEST_VMRL_OP( 11332,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat22 );
TEST_VMRL_OP( 11349,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat39 );
TEST_VMRL_OP( 11383,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat8 );
TEST_VMRL_OP( 11387,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat12 );
TEST_VMRL_OP( 11397,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat22 );
TEST_VMRL_OP( 11400,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat25 );
TEST_VMRL_OP( 11405,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat30 );
TEST_VMRL_OP( 11424,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat49 );
TEST_VMRL_OP( 11451,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat11 );
TEST_VMRL_OP( 11463,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat23 );
TEST_VMRL_OP( 11468,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat28 );
TEST_VMRL_OP( 11471,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat31 );
TEST_VMRL_OP( 11542,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat37 );
TEST_VMRL_OP( 11609,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat39 );
TEST_VMRL_OP( 11613,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat43 );
TEST_VMRL_OP( 11627,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat57 );
TEST_VMRL_OP( 11628,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat58 );
TEST_VMRL_OP( 11648,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat13 );
TEST_VMRL_OP( 11653,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat18 );
TEST_VMRL_OP( 11657,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat22 );
TEST_VMRL_OP( 11669,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat34 );
TEST_VMRL_OP( 11679,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat44 );
TEST_VMRL_OP( 11681,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat46 );
TEST_VMRL_OP( 11684,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 11710,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat10 );
TEST_VMRL_OP( 11712,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat12 );
TEST_VMRL_OP( 11742,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat42 );
TEST_VMRL_OP( 11749,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat49 );
TEST_VMRL_OP( 11751,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat51 );
TEST_VMRL_OP( 11760,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat60 );
TEST_VMRL_OP( 11768,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat3 );
TEST_VMRL_OP( 11775,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat10 );
TEST_VMRL_OP( 11782,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat17 );
TEST_VMRL_OP( 11816,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 11857,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat27 );
TEST_VMRL_OP( 11873,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat43 );
TEST_VMRL_OP( 11876,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat46 );
TEST_VMRL_OP( 11887,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat57 );
TEST_VMRL_OP( 11952,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat57 );
TEST_VMRL_OP( 11961,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat1 );
TEST_VMRL_OP( 11979,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat19 );
TEST_VMRL_OP( 11989,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat29 );
TEST_VMRL_OP( 11991,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat31 );
TEST_VMRL_OP( 12054,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat29 );
TEST_VMRL_OP( 12063,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat38 );
TEST_VMRL_OP( 12069,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat44 );
TEST_VMRL_OP( 12074,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat49 );
TEST_VMRL_OP( 12075,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat50 );
TEST_VMRL_OP( 12083,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat58 );
TEST_VMRL_OP( 12085,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat60 );
TEST_VMRL_OP( 12129,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat39 );
TEST_VMRL_OP( 12132,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat42 );
TEST_VMRL_OP( 12155,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat0 );
TEST_VMRL_OP( 12176,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat21 );
TEST_VMRL_OP( 12179,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat24 );
TEST_VMRL_OP( 12215,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat60 );
TEST_VMRL_OP( 12227,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat7 );
TEST_VMRL_OP( 12235,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat15 );
TEST_VMRL_OP( 12244,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat24 );
TEST_VMRL_OP( 12277,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat57 );
TEST_VMRL_OP( 12294,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat9 );
TEST_VMRL_OP( 12342,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat57 );
TEST_VMRL_OP( 12348,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat63 );
TEST_VMRL_OP( 12378,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat28 );
TEST_VMRL_OP( 12392,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat42 );
TEST_VMRL_OP( 12415,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat0 );
TEST_VMRL_OP( 12419,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat4 );
TEST_VMRL_OP( 12423,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat8 );
TEST_VMRL_OP( 12451,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat36 );
TEST_VMRL_OP( 12474,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat59 );
TEST_VMRL_OP( 12494,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat14 );
TEST_VMRL_OP( 12523,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat43 );
TEST_VMRL_OP( 12526,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat46 );
TEST_VMRL_OP( 12544,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat64 );
TEST_VMRL_OP( 12591,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat46 );
TEST_VMRL_OP( 12637,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat27 );
TEST_VMRL_OP( 12642,  vmnand.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat32 );
TEST_VMRL_OP( 12691,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 12738,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat63 );
TEST_VMRL_OP( 12752,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 12755,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 12773,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat33 );
TEST_VMRL_OP( 12782,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat42 );
TEST_VMRL_OP( 12793,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat53 );
TEST_VMRL_OP( 12799,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat59 );
TEST_VMRL_OP( 12815,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 12821,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 12836,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat31 );
TEST_VMRL_OP( 12848,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat43 );
TEST_VMRL_OP( 12856,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat51 );
TEST_VMRL_OP( 12859,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat54 );
TEST_VMRL_OP( 12866,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat61 );
TEST_VMRL_OP( 12878,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 12883,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 12905,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat35 );
TEST_VMRL_OP( 12929,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat59 );
TEST_VMRL_OP( 12965,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat30 );
TEST_VMRL_OP( 12975,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat40 );
TEST_VMRL_OP( 12981,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat46 );
TEST_VMRL_OP( 12993,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat58 );
TEST_VMRL_OP( 13012,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 13055,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat55 );
TEST_VMRL_OP( 13062,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat62 );
TEST_VMRL_OP( 13098,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat33 );
TEST_VMRL_OP( 13111,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat46 );
TEST_VMRL_OP( 13112,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat47 );
TEST_VMRL_OP( 13136,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 13150,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 13165,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat35 );
TEST_VMRL_OP( 13175,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat45 );
TEST_VMRL_OP( 13249,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat54 );
TEST_VMRL_OP( 13262,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 13286,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat26 );
TEST_VMRL_OP( 13290,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat30 );
TEST_VMRL_OP( 13312,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat52 );
TEST_VMRL_OP( 13313,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat53 );
TEST_VMRL_OP( 13320,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat60 );
TEST_VMRL_OP( 13327,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 13333,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 13355,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 13376,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat51 );
TEST_VMRL_OP( 13391,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 13405,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 13415,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 13426,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat36 );
TEST_VMRL_OP( 13444,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat54 );
TEST_VMRL_OP( 13457,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 13472,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat17 );
TEST_VMRL_OP( 13494,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat39 );
TEST_VMRL_OP( 13506,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat51 );
TEST_VMRL_OP( 13575,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat55 );
TEST_VMRL_OP( 13578,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat58 );
TEST_VMRL_OP( 13585,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 13590,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 13597,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 13605,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat20 );
TEST_VMRL_OP( 13620,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat35 );
TEST_VMRL_OP( 13657,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 13661,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 13672,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 13686,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat36 );
TEST_VMRL_OP( 13696,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat46 );
TEST_VMRL_OP( 13704,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat54 );
TEST_VMRL_OP( 13731,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 13733,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 13737,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat22 );
TEST_VMRL_OP( 13755,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat40 );
TEST_VMRL_OP( 13798,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 13824,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat44 );
TEST_VMRL_OP( 13879,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat34 );
TEST_VMRL_OP( 13882,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat37 );
TEST_VMRL_OP( 13906,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat61 );
TEST_VMRL_OP( 13909,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat64 );
TEST_VMRL_OP( 13910,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat0 );
TEST_VMRL_OP( 13916,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat6 );
TEST_VMRL_OP( 13929,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 13938,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 13949,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat39 );
TEST_VMRL_OP( 13959,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat49 );
TEST_VMRL_OP( 13973,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat63 );
TEST_VMRL_OP( 13987,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 14004,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 14006,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 14012,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat37 );
TEST_VMRL_OP( 14036,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat61 );
TEST_VMRL_OP( 14038,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat63 );
TEST_VMRL_OP( 14051,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 14069,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 14075,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat35 );
TEST_VMRL_OP( 14084,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat44 );
TEST_VMRL_OP( 14098,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat58 );
TEST_VMRL_OP( 14100,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat60 );
TEST_VMRL_OP( 14103,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat63 );
TEST_VMRL_OP( 14106,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat1 );
TEST_VMRL_OP( 14129,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat24 );
TEST_VMRL_OP( 14142,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat37 );
TEST_VMRL_OP( 14155,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat50 );
TEST_VMRL_OP( 14180,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat10 );
TEST_VMRL_OP( 14187,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 14198,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat28 );
TEST_VMRL_OP( 14267,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 14270,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat35 );
TEST_VMRL_OP( 14296,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat61 );
TEST_VMRL_OP( 14318,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 14362,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat62 );
TEST_VMRL_OP( 14403,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat38 );
TEST_VMRL_OP( 14425,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat60 );
TEST_VMRL_OP( 14436,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 14470,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat40 );
TEST_VMRL_OP( 14499,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 14514,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat19 );
TEST_VMRL_OP( 14519,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat24 );
TEST_VMRL_OP( 14527,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 14538,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat43 );
TEST_VMRL_OP( 14552,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat57 );
TEST_VMRL_OP( 14557,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat62 );
TEST_VMRL_OP( 14568,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 14569,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 14576,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 14598,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat38 );
TEST_VMRL_OP( 14636,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat11 );
TEST_VMRL_OP( 14645,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 14667,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat42 );
TEST_VMRL_OP( 14679,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat54 );
TEST_VMRL_OP( 14702,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat12 );
TEST_VMRL_OP( 14716,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 14730,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat40 );
TEST_VMRL_OP( 14732,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat42 );
TEST_VMRL_OP( 14746,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat56 );
TEST_VMRL_OP( 14751,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat61 );
TEST_VMRL_OP( 14753,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat63 );
TEST_VMRL_OP( 14781,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 14795,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat40 );
TEST_VMRL_OP( 14811,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat56 );
TEST_VMRL_OP( 14813,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat58 );
TEST_VMRL_OP( 14820,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_ones_dat0 );
TEST_VMRL_OP( 14836,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat16 );
TEST_VMRL_OP( 14848,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat28 );
TEST_VMRL_OP( 14944,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat59 );
TEST_VMRL_OP( 14950,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_ones_dat0 );
TEST_VMRL_OP( 14953,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat3 );
TEST_VMRL_OP( 14981,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat31 );
TEST_VMRL_OP( 14982,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat32 );
TEST_VMRL_OP( 14983,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat33 );
TEST_VMRL_OP( 14984,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat34 );
TEST_VMRL_OP( 14996,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat46 );
TEST_VMRL_OP( 15003,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat53 );
TEST_VMRL_OP( 15054,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat39 );
TEST_VMRL_OP( 15075,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat60 );
TEST_VMRL_OP( 15080,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat37, walking_ones_dat0 );
TEST_VMRL_OP( 15082,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat2 );
TEST_VMRL_OP( 15102,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat22 );
TEST_VMRL_OP( 15103,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat23 );
TEST_VMRL_OP( 15131,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat51 );
TEST_VMRL_OP( 15134,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat54 );
TEST_VMRL_OP( 15144,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat64 );
TEST_VMRL_OP( 15146,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat1 );
TEST_VMRL_OP( 15159,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat14 );
TEST_VMRL_OP( 15181,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat36 );
TEST_VMRL_OP( 15189,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat44 );
TEST_VMRL_OP( 15213,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat39, walking_ones_dat3 );
TEST_VMRL_OP( 15242,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat39, walking_ones_dat32 );
TEST_VMRL_OP( 15277,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat2 );
TEST_VMRL_OP( 15279,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat4 );
TEST_VMRL_OP( 15347,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat7 );
TEST_VMRL_OP( 15357,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat17 );
TEST_VMRL_OP( 15369,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat29 );
TEST_VMRL_OP( 15370,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat30 );
TEST_VMRL_OP( 15440,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat35 );
TEST_VMRL_OP( 15453,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat48 );
TEST_VMRL_OP( 15462,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat57 );
TEST_VMRL_OP( 15463,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat58 );
TEST_VMRL_OP( 15464,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat59 );
TEST_VMRL_OP( 15485,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat15 );
TEST_VMRL_OP( 15561,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat26 );
TEST_VMRL_OP( 15577,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat42 );
TEST_VMRL_OP( 15606,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat6 );
TEST_VMRL_OP( 15607,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat7 );
TEST_VMRL_OP( 15656,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat56 );
TEST_VMRL_OP( 15658,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat58 );
TEST_VMRL_OP( 15662,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat62 );
TEST_VMRL_OP( 15666,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat1 );
TEST_VMRL_OP( 15673,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat8 );
TEST_VMRL_OP( 15684,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat19 );
TEST_VMRL_OP( 15698,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat33 );
TEST_VMRL_OP( 15721,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat56 );
TEST_VMRL_OP( 15737,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat7 );
TEST_VMRL_OP( 15740,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat10 );
TEST_VMRL_OP( 15743,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat13 );
TEST_VMRL_OP( 15767,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat37 );
TEST_VMRL_OP( 15769,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat39 );
TEST_VMRL_OP( 15778,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat48 );
TEST_VMRL_OP( 15801,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat6 );
TEST_VMRL_OP( 15825,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat30 );
TEST_VMRL_OP( 15829,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat34 );
TEST_VMRL_OP( 15836,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat41 );
TEST_VMRL_OP( 15843,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 15848,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat53 );
TEST_VMRL_OP( 15861,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat1 );
TEST_VMRL_OP( 15879,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat19 );
TEST_VMRL_OP( 15882,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat22 );
TEST_VMRL_OP( 15894,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat34 );
TEST_VMRL_OP( 15924,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat64 );
TEST_VMRL_OP( 15946,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat21 );
TEST_VMRL_OP( 15952,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat27 );
TEST_VMRL_OP( 15959,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat34 );
TEST_VMRL_OP( 15998,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat8 );
TEST_VMRL_OP( 16004,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat14 );
TEST_VMRL_OP( 16010,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat20 );
TEST_VMRL_OP( 16022,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat32 );
TEST_VMRL_OP( 16029,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat39 );
TEST_VMRL_OP( 16032,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat42 );
TEST_VMRL_OP( 16058,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat3 );
TEST_VMRL_OP( 16085,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat30 );
TEST_VMRL_OP( 16098,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat43 );
TEST_VMRL_OP( 16125,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat5 );
TEST_VMRL_OP( 16130,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat10 );
TEST_VMRL_OP( 16142,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat22 );
TEST_VMRL_OP( 16160,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat40 );
TEST_VMRL_OP( 16164,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat44 );
TEST_VMRL_OP( 16165,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat45 );
TEST_VMRL_OP( 16171,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat51 );
TEST_VMRL_OP( 16188,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat3 );
TEST_VMRL_OP( 16189,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat4 );
TEST_VMRL_OP( 16229,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat44 );
TEST_VMRL_OP( 16267,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat17 );
TEST_VMRL_OP( 16290,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat40 );
TEST_VMRL_OP( 16360,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat45 );
TEST_VMRL_OP( 16376,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat61 );
TEST_VMRL_OP( 16377,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat62 );
TEST_VMRL_OP( 16399,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat19 );
TEST_VMRL_OP( 16406,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat26 );
TEST_VMRL_OP( 16465,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat20 );
TEST_VMRL_OP( 16486,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat41 );
TEST_VMRL_OP( 16502,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat57 );
TEST_VMRL_OP( 16540,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat30 );
TEST_VMRL_OP( 16571,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat61 );
TEST_VMRL_OP( 16584,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat9 );
TEST_VMRL_OP( 16603,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat28 );
TEST_VMRL_OP( 16604,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat29 );
TEST_VMRL_OP( 16614,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat39 );
TEST_VMRL_OP( 16616,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat41 );
TEST_VMRL_OP( 16635,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 16662,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat22 );
TEST_VMRL_OP( 16672,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat32 );
TEST_VMRL_OP( 16674,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat34 );
TEST_VMRL_OP( 16735,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat30 );
TEST_VMRL_OP( 16739,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat34 );
TEST_VMRL_OP( 16747,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat42 );
TEST_VMRL_OP( 16764,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat59 );
TEST_VMRL_OP( 16769,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat64 );
TEST_VMRL_OP( 16795,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat25 );
TEST_VMRL_OP( 16798,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat28 );
TEST_VMRL_OP( 16805,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat35 );
TEST_VMRL_OP( 16877,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat42 );
TEST_VMRL_OP( 16886,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat51 );
TEST_VMRL_OP( 16900,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmnand.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmnand.mm,  64,  0x0000000000000040, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33975,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33976,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33977,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33978,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33979,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33980,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33981,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33982,  vmnand.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
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
    

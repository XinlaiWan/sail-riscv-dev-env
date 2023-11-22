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
    # vmor.S
    #-----------------------------------------------------------------------------
    #
    # Test vmor instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmor)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmor tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 10,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 29,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 42,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat42 );
TEST_VMRL_OP( 55,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat55 );
TEST_VMRL_OP( 119,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat54 );
TEST_VMRL_OP( 143,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 147,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 149,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 151,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 154,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 166,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat36 );
TEST_VMRL_OP( 182,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat52 );
TEST_VMRL_OP( 183,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat53 );
TEST_VMRL_OP( 199,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 227,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 270,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 286,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 287,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat27 );
TEST_VMRL_OP( 299,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat39 );
TEST_VMRL_OP( 313,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat53 );
TEST_VMRL_OP( 321,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat61 );
TEST_VMRL_OP( 334,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 337,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 343,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat18 );
TEST_VMRL_OP( 344,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 354,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat29 );
TEST_VMRL_OP( 369,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat44 );
TEST_VMRL_OP( 377,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat52 );
TEST_VMRL_OP( 385,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat60 );
TEST_VMRL_OP( 416,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 417,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 424,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat34 );
TEST_VMRL_OP( 428,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat38 );
TEST_VMRL_OP( 441,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat51 );
TEST_VMRL_OP( 444,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat54 );
TEST_VMRL_OP( 475,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 476,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat21 );
TEST_VMRL_OP( 482,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 512,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat57 );
TEST_VMRL_OP( 534,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 544,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 551,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 553,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat33 );
TEST_VMRL_OP( 558,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat38 );
TEST_VMRL_OP( 581,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat61 );
TEST_VMRL_OP( 598,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 629,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat44 );
TEST_VMRL_OP( 657,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 680,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 688,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat38 );
TEST_VMRL_OP( 706,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat56 );
TEST_VMRL_OP( 759,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat44 );
TEST_VMRL_OP( 772,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat57 );
TEST_VMRL_OP( 780,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 808,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 816,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat36 );
TEST_VMRL_OP( 817,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat37 );
TEST_VMRL_OP( 860,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 925,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 953,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat43 );
TEST_VMRL_OP( 956,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat46 );
TEST_VMRL_OP( 967,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat57 );
TEST_VMRL_OP( 1033,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat58 );
TEST_VMRL_OP( 1057,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat17 );
TEST_VMRL_OP( 1077,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat37 );
TEST_VMRL_OP( 1088,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat48 );
TEST_VMRL_OP( 1135,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 1140,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat35 );
TEST_VMRL_OP( 1141,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat36 );
TEST_VMRL_OP( 1158,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat53 );
TEST_VMRL_OP( 1170,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat0 );
TEST_VMRL_OP( 1193,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 1194,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 1217,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat47 );
TEST_VMRL_OP( 1221,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat51 );
TEST_VMRL_OP( 1234,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat64 );
TEST_VMRL_OP( 1257,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 1284,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat49 );
TEST_VMRL_OP( 1301,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 1324,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 1360,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat60 );
TEST_VMRL_OP( 1402,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat37 );
TEST_VMRL_OP( 1418,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat53 );
TEST_VMRL_OP( 1421,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat56 );
TEST_VMRL_OP( 1437,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat7 );
TEST_VMRL_OP( 1478,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat48 );
TEST_VMRL_OP( 1500,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 1520,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 1564,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat4 );
TEST_VMRL_OP( 1575,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat15 );
TEST_VMRL_OP( 1582,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 1588,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 1603,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat43 );
TEST_VMRL_OP( 1604,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat44 );
TEST_VMRL_OP( 1607,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat47 );
TEST_VMRL_OP( 1613,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat53 );
TEST_VMRL_OP( 1640,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 1646,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat21 );
TEST_VMRL_OP( 1662,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat37 );
TEST_VMRL_OP( 1686,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat61 );
TEST_VMRL_OP( 1747,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat57 );
TEST_VMRL_OP( 1763,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat8 );
TEST_VMRL_OP( 1791,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat36 );
TEST_VMRL_OP( 1796,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat41 );
TEST_VMRL_OP( 1835,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 1837,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 1856,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat36 );
TEST_VMRL_OP( 1858,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat38 );
TEST_VMRL_OP( 1861,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat41 );
TEST_VMRL_OP( 1866,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat46 );
TEST_VMRL_OP( 1905,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 1924,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat39 );
TEST_VMRL_OP( 1931,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat46 );
TEST_VMRL_OP( 1940,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat55 );
TEST_VMRL_OP( 1947,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat62 );
TEST_VMRL_OP( 1973,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 2008,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat58 );
TEST_VMRL_OP( 2011,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat61 );
TEST_VMRL_OP( 2023,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat8 );
TEST_VMRL_OP( 2033,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 2042,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 2056,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat41 );
TEST_VMRL_OP( 2067,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat52 );
TEST_VMRL_OP( 2075,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat60 );
TEST_VMRL_OP( 2095,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 2164,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_ones_dat19 );
TEST_VMRL_OP( 2195,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_ones_dat50 );
TEST_VMRL_OP( 2198,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_ones_dat53 );
TEST_VMRL_OP( 2242,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_ones_dat32 );
TEST_VMRL_OP( 2266,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_ones_dat56 );
TEST_VMRL_OP( 2270,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_ones_dat60 );
TEST_VMRL_OP( 2275,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat35, walking_ones_dat0 );
TEST_VMRL_OP( 2319,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat35, walking_ones_dat44 );
TEST_VMRL_OP( 2324,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat35, walking_ones_dat49 );
TEST_VMRL_OP( 2327,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat35, walking_ones_dat52 );
TEST_VMRL_OP( 2350,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_ones_dat10 );
TEST_VMRL_OP( 2416,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat11 );
TEST_VMRL_OP( 2439,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat34 );
TEST_VMRL_OP( 2465,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat60 );
TEST_VMRL_OP( 2475,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat5 );
TEST_VMRL_OP( 2488,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat18 );
TEST_VMRL_OP( 2497,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat27 );
TEST_VMRL_OP( 2507,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat37 );
TEST_VMRL_OP( 2533,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat63 );
TEST_VMRL_OP( 2535,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat39, walking_ones_dat0 );
TEST_VMRL_OP( 2538,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat3 );
TEST_VMRL_OP( 2539,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat4 );
TEST_VMRL_OP( 2545,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat10 );
TEST_VMRL_OP( 2562,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat27 );
TEST_VMRL_OP( 2564,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat29 );
TEST_VMRL_OP( 2617,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_ones_dat17 );
TEST_VMRL_OP( 2658,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_ones_dat58 );
TEST_VMRL_OP( 2680,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat15 );
TEST_VMRL_OP( 2692,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat27 );
TEST_VMRL_OP( 2693,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat28 );
TEST_VMRL_OP( 2697,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat32 );
TEST_VMRL_OP( 2712,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat47 );
TEST_VMRL_OP( 2754,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_ones_dat24 );
TEST_VMRL_OP( 2766,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_ones_dat36 );
TEST_VMRL_OP( 2804,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat43, walking_ones_dat9 );
TEST_VMRL_OP( 2843,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat43, walking_ones_dat48 );
TEST_VMRL_OP( 2869,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat9 );
TEST_VMRL_OP( 2884,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat24 );
TEST_VMRL_OP( 2896,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat36 );
TEST_VMRL_OP( 2902,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat42 );
TEST_VMRL_OP( 2914,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat54 );
TEST_VMRL_OP( 2918,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat58 );
TEST_VMRL_OP( 2921,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat61 );
TEST_VMRL_OP( 2944,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_ones_dat19 );
TEST_VMRL_OP( 2957,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_ones_dat32 );
TEST_VMRL_OP( 3003,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_ones_dat13 );
TEST_VMRL_OP( 3039,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_ones_dat49 );
TEST_VMRL_OP( 3090,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_ones_dat35 );
TEST_VMRL_OP( 3120,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat48, walking_ones_dat0 );
TEST_VMRL_OP( 3136,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat16 );
TEST_VMRL_OP( 3164,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat44 );
TEST_VMRL_OP( 3167,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat47 );
TEST_VMRL_OP( 3171,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat51 );
TEST_VMRL_OP( 3179,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat59 );
TEST_VMRL_OP( 3180,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat60 );
TEST_VMRL_OP( 3183,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat63 );
TEST_VMRL_OP( 3190,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat5 );
TEST_VMRL_OP( 3208,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat23 );
TEST_VMRL_OP( 3210,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat25 );
TEST_VMRL_OP( 3212,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat27 );
TEST_VMRL_OP( 3215,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat30 );
TEST_VMRL_OP( 3219,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat34 );
TEST_VMRL_OP( 3241,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat56 );
TEST_VMRL_OP( 3244,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat59 );
TEST_VMRL_OP( 3251,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat1 );
TEST_VMRL_OP( 3277,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat27 );
TEST_VMRL_OP( 3282,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat32 );
TEST_VMRL_OP( 3294,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat44 );
TEST_VMRL_OP( 3298,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat48 );
TEST_VMRL_OP( 3301,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat51 );
TEST_VMRL_OP( 3304,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat54 );
TEST_VMRL_OP( 3332,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat17 );
TEST_VMRL_OP( 3358,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat43 );
TEST_VMRL_OP( 3367,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat52 );
TEST_VMRL_OP( 3385,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat5 );
TEST_VMRL_OP( 3418,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat38 );
TEST_VMRL_OP( 3424,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat44 );
TEST_VMRL_OP( 3437,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat57 );
TEST_VMRL_OP( 3438,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat58 );
TEST_VMRL_OP( 3456,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat11 );
TEST_VMRL_OP( 3481,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat36 );
TEST_VMRL_OP( 3534,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat24 );
TEST_VMRL_OP( 3568,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat58 );
TEST_VMRL_OP( 3592,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat17 );
TEST_VMRL_OP( 3610,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat35 );
TEST_VMRL_OP( 3612,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat37 );
TEST_VMRL_OP( 3633,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat58 );
TEST_VMRL_OP( 3656,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_ones_dat16 );
TEST_VMRL_OP( 3685,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_ones_dat45 );
TEST_VMRL_OP( 3686,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_ones_dat46 );
TEST_VMRL_OP( 3720,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat15 );
TEST_VMRL_OP( 3738,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat33 );
TEST_VMRL_OP( 3741,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat36 );
TEST_VMRL_OP( 3745,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat40 );
TEST_VMRL_OP( 3756,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat51 );
TEST_VMRL_OP( 3772,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_ones_dat2 );
TEST_VMRL_OP( 3799,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_ones_dat29 );
TEST_VMRL_OP( 3813,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_ones_dat43 );
TEST_VMRL_OP( 3841,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat6 );
TEST_VMRL_OP( 3865,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat30 );
TEST_VMRL_OP( 3872,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat37 );
TEST_VMRL_OP( 3875,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat40 );
TEST_VMRL_OP( 3880,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat45 );
TEST_VMRL_OP( 3890,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat55 );
TEST_VMRL_OP( 3914,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_ones_dat14 );
TEST_VMRL_OP( 3916,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_ones_dat16 );
TEST_VMRL_OP( 3923,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_ones_dat23 );
TEST_VMRL_OP( 3935,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_ones_dat35 );
TEST_VMRL_OP( 3936,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_ones_dat36 );
TEST_VMRL_OP( 3960,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 3990,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat25 );
TEST_VMRL_OP( 4001,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat36 );
TEST_VMRL_OP( 4019,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat54 );
TEST_VMRL_OP( 4044,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat14 );
TEST_VMRL_OP( 4069,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat39 );
TEST_VMRL_OP( 4072,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat42 );
TEST_VMRL_OP( 4087,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat57 );
TEST_VMRL_OP( 4093,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat63 );
TEST_VMRL_OP( 4096,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat1 );
TEST_VMRL_OP( 4105,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat10 );
TEST_VMRL_OP( 4107,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat12 );
TEST_VMRL_OP( 4148,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat53 );
TEST_VMRL_OP( 4172,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat12 );
TEST_VMRL_OP( 4185,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat25 );
TEST_VMRL_OP( 4186,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat26 );
TEST_VMRL_OP( 4191,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat31 );
TEST_VMRL_OP( 4211,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat51 );
TEST_VMRL_OP( 4215,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat55 );
TEST_VMRL_OP( 4216,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat56 );
TEST_VMRL_OP( 4232,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 4233,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 4242,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 4265,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat40 );
TEST_VMRL_OP( 4278,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat53 );
TEST_VMRL_OP( 4312,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat22 );
TEST_VMRL_OP( 4319,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat29 );
TEST_VMRL_OP( 4332,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat42 );
TEST_VMRL_OP( 4344,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat54 );
TEST_VMRL_OP( 4350,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat60 );
TEST_VMRL_OP( 4376,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 4390,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat35 );
TEST_VMRL_OP( 4398,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat43 );
TEST_VMRL_OP( 4410,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat55 );
TEST_VMRL_OP( 4422,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 4463,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat43 );
TEST_VMRL_OP( 4464,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat44 );
TEST_VMRL_OP( 4484,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat64 );
TEST_VMRL_OP( 4510,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 4511,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 4530,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat45 );
TEST_VMRL_OP( 4537,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat52 );
TEST_VMRL_OP( 4539,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat54 );
TEST_VMRL_OP( 4575,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 4590,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat5, walking_zeros_dat40 );
TEST_VMRL_OP( 4627,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 4637,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 4640,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 4641,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 4653,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat38 );
TEST_VMRL_OP( 4668,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat53 );
TEST_VMRL_OP( 4670,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat55 );
TEST_VMRL_OP( 4674,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat59 );
TEST_VMRL_OP( 4698,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 4700,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 4703,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat23 );
TEST_VMRL_OP( 4721,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat41 );
TEST_VMRL_OP( 4723,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat43 );
TEST_VMRL_OP( 4730,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat50 );
TEST_VMRL_OP( 4753,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4761,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 4765,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat20 );
TEST_VMRL_OP( 4818,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 4819,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4824,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 4827,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat9, walking_zeros_dat17 );
TEST_VMRL_OP( 4853,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat9, walking_zeros_dat43 );
TEST_VMRL_OP( 4875,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 4879,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 4890,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 4909,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat34 );
TEST_VMRL_OP( 4923,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat48 );
TEST_VMRL_OP( 4949,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 4968,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat11, walking_zeros_dat28 );
TEST_VMRL_OP( 4974,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat11, walking_zeros_dat34 );
TEST_VMRL_OP( 5004,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat11, walking_zeros_dat64 );
TEST_VMRL_OP( 5008,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 5024,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 5043,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat12, walking_zeros_dat38 );
TEST_VMRL_OP( 5097,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 5123,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat53 );
TEST_VMRL_OP( 5131,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat61 );
TEST_VMRL_OP( 5136,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 5137,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 5142,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 5185,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat50 );
TEST_VMRL_OP( 5188,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat53 );
TEST_VMRL_OP( 5207,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 5225,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 5264,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat15, walking_zeros_dat64 );
TEST_VMRL_OP( 5267,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 5279,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 5353,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat23 );
TEST_VMRL_OP( 5363,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat33 );
TEST_VMRL_OP( 5380,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat50 );
TEST_VMRL_OP( 5385,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat55 );
TEST_VMRL_OP( 5389,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat59 );
TEST_VMRL_OP( 5399,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 5414,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat19 );
TEST_VMRL_OP( 5417,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 5437,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat42 );
TEST_VMRL_OP( 5446,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat51 );
TEST_VMRL_OP( 5456,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat61 );
TEST_VMRL_OP( 5498,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat19, walking_zeros_dat38 );
TEST_VMRL_OP( 5513,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat19, walking_zeros_dat53 );
TEST_VMRL_OP( 5543,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 5580,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat55 );
TEST_VMRL_OP( 5585,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat60 );
TEST_VMRL_OP( 5589,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat64 );
TEST_VMRL_OP( 5604,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 5612,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 5633,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_zeros_dat43 );
TEST_VMRL_OP( 5638,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_zeros_dat48 );
TEST_VMRL_OP( 5641,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_zeros_dat51 );
TEST_VMRL_OP( 5674,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 5684,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 5708,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat53 );
TEST_VMRL_OP( 5709,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat54 );
TEST_VMRL_OP( 5737,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 5745,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 5767,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat23, walking_zeros_dat47 );
TEST_VMRL_OP( 5789,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 5794,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat9 );
TEST_VMRL_OP( 5803,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 5821,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat36 );
TEST_VMRL_OP( 5822,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat37 );
TEST_VMRL_OP( 5823,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat38 );
TEST_VMRL_OP( 5832,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat47 );
TEST_VMRL_OP( 5837,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat52 );
TEST_VMRL_OP( 5842,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat57 );
TEST_VMRL_OP( 5869,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 5897,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat47 );
TEST_VMRL_OP( 5910,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat60 );
TEST_VMRL_OP( 5911,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat61 );
TEST_VMRL_OP( 6034,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat54 );
TEST_VMRL_OP( 6056,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 6058,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 6062,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 6069,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 6086,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat41 );
TEST_VMRL_OP( 6107,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat62 );
TEST_VMRL_OP( 6128,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 6145,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat29, walking_zeros_dat35 );
TEST_VMRL_OP( 6158,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat29, walking_zeros_dat48 );
TEST_VMRL_OP( 6171,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat29, walking_zeros_dat61 );
TEST_VMRL_OP( 6182,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat7 );
TEST_VMRL_OP( 6184,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 6189,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 6190,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 6195,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 6196,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 6205,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 6226,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat51 );
TEST_VMRL_OP( 6257,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_zeros_dat17 );
TEST_VMRL_OP( 6259,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 6267,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 6276,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_zeros_dat36 );
TEST_VMRL_OP( 6298,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_zeros_dat58 );
TEST_VMRL_OP( 6337,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 6344,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat32, walking_zeros_dat39 );
TEST_VMRL_OP( 6354,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat32, walking_zeros_dat49 );
TEST_VMRL_OP( 6382,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat12 );
TEST_VMRL_OP( 6383,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat13 );
TEST_VMRL_OP( 6393,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat23 );
TEST_VMRL_OP( 6404,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat34 );
TEST_VMRL_OP( 6412,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat42 );
TEST_VMRL_OP( 6418,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat48 );
TEST_VMRL_OP( 6424,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat54 );
TEST_VMRL_OP( 6482,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat34, walking_zeros_dat47 );
TEST_VMRL_OP( 6503,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat3 );
TEST_VMRL_OP( 6513,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat13 );
TEST_VMRL_OP( 6514,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat14 );
TEST_VMRL_OP( 6525,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat25 );
TEST_VMRL_OP( 6528,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat28 );
TEST_VMRL_OP( 6542,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat42 );
TEST_VMRL_OP( 6558,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat58 );
TEST_VMRL_OP( 6563,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat63 );
TEST_VMRL_OP( 6566,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat36, walking_zeros_dat1 );
TEST_VMRL_OP( 6618,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat36, walking_zeros_dat53 );
TEST_VMRL_OP( 6627,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat36, walking_zeros_dat62 );
TEST_VMRL_OP( 6646,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat37, walking_zeros_dat16 );
TEST_VMRL_OP( 6664,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat37, walking_zeros_dat34 );
TEST_VMRL_OP( 6665,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat37, walking_zeros_dat35 );
TEST_VMRL_OP( 6713,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat18 );
TEST_VMRL_OP( 6732,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat37 );
TEST_VMRL_OP( 6739,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat44 );
TEST_VMRL_OP( 6744,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat49 );
TEST_VMRL_OP( 6752,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat57 );
TEST_VMRL_OP( 6753,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat58 );
TEST_VMRL_OP( 6767,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat39, walking_zeros_dat7 );
TEST_VMRL_OP( 6802,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat39, walking_zeros_dat42 );
TEST_VMRL_OP( 6865,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 6893,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat3 );
TEST_VMRL_OP( 6914,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat24 );
TEST_VMRL_OP( 6923,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat33 );
TEST_VMRL_OP( 6924,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat34 );
TEST_VMRL_OP( 6947,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat57 );
TEST_VMRL_OP( 6954,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat64 );
TEST_VMRL_OP( 6981,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat42, walking_zeros_dat26 );
TEST_VMRL_OP( 6998,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat42, walking_zeros_dat43 );
TEST_VMRL_OP( 7000,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat42, walking_zeros_dat45 );
TEST_VMRL_OP( 7033,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat43, walking_zeros_dat13 );
TEST_VMRL_OP( 7037,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat43, walking_zeros_dat17 );
TEST_VMRL_OP( 7045,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat43, walking_zeros_dat25 );
TEST_VMRL_OP( 7047,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat43, walking_zeros_dat27 );
TEST_VMRL_OP( 7092,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat7 );
TEST_VMRL_OP( 7101,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat16 );
TEST_VMRL_OP( 7114,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat29 );
TEST_VMRL_OP( 7136,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat51 );
TEST_VMRL_OP( 7146,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat61 );
TEST_VMRL_OP( 7153,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat45, walking_zeros_dat3 );
TEST_VMRL_OP( 7157,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat45, walking_zeros_dat7 );
TEST_VMRL_OP( 7170,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat45, walking_zeros_dat20 );
TEST_VMRL_OP( 7186,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat45, walking_zeros_dat36 );
TEST_VMRL_OP( 7239,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat24 );
TEST_VMRL_OP( 7242,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat27 );
TEST_VMRL_OP( 7251,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat36 );
TEST_VMRL_OP( 7252,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat37 );
TEST_VMRL_OP( 7259,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat44 );
TEST_VMRL_OP( 7269,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat54 );
TEST_VMRL_OP( 7270,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat55 );
TEST_VMRL_OP( 7281,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat1 );
TEST_VMRL_OP( 7293,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat13 );
TEST_VMRL_OP( 7301,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat21 );
TEST_VMRL_OP( 7332,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat52 );
TEST_VMRL_OP( 7351,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat6 );
TEST_VMRL_OP( 7372,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat27 );
TEST_VMRL_OP( 7373,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat28 );
TEST_VMRL_OP( 7376,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat31 );
TEST_VMRL_OP( 7400,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat55 );
TEST_VMRL_OP( 7410,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_zeros_dat0 );
TEST_VMRL_OP( 7421,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_zeros_dat11 );
TEST_VMRL_OP( 7444,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_zeros_dat34 );
TEST_VMRL_OP( 7459,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 7464,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_zeros_dat54 );
TEST_VMRL_OP( 7518,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat50, walking_zeros_dat43 );
TEST_VMRL_OP( 7531,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat50, walking_zeros_dat56 );
TEST_VMRL_OP( 7533,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat50, walking_zeros_dat58 );
TEST_VMRL_OP( 7561,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat21 );
TEST_VMRL_OP( 7573,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat33 );
TEST_VMRL_OP( 7583,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat43 );
TEST_VMRL_OP( 7586,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat46 );
TEST_VMRL_OP( 7600,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat60 );
TEST_VMRL_OP( 7609,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat4 );
TEST_VMRL_OP( 7628,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat23 );
TEST_VMRL_OP( 7636,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat31 );
TEST_VMRL_OP( 7648,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat43 );
TEST_VMRL_OP( 7654,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat49 );
TEST_VMRL_OP( 7657,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 7680,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat53, walking_zeros_dat10 );
TEST_VMRL_OP( 7769,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat34 );
TEST_VMRL_OP( 7773,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat38 );
TEST_VMRL_OP( 7787,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat52 );
TEST_VMRL_OP( 7794,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat59 );
TEST_VMRL_OP( 7810,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat10 );
TEST_VMRL_OP( 7815,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat15 );
TEST_VMRL_OP( 7817,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat17 );
TEST_VMRL_OP( 7820,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat20 );
TEST_VMRL_OP( 7824,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat24 );
TEST_VMRL_OP( 7834,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat34 );
TEST_VMRL_OP( 7843,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat43 );
TEST_VMRL_OP( 7845,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat45 );
TEST_VMRL_OP( 7874,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat56, walking_zeros_dat9 );
TEST_VMRL_OP( 7912,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat56, walking_zeros_dat47 );
TEST_VMRL_OP( 7930,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat57, walking_zeros_dat0 );
TEST_VMRL_OP( 7934,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat57, walking_zeros_dat4 );
TEST_VMRL_OP( 7977,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat57, walking_zeros_dat47 );
TEST_VMRL_OP( 8043,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat48 );
TEST_VMRL_OP( 8059,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat64 );
TEST_VMRL_OP( 8072,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat12 );
TEST_VMRL_OP( 8074,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat14 );
TEST_VMRL_OP( 8077,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat17 );
TEST_VMRL_OP( 8079,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat19 );
TEST_VMRL_OP( 8121,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat61 );
TEST_VMRL_OP( 8196,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat61, walking_zeros_dat6 );
TEST_VMRL_OP( 8210,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat61, walking_zeros_dat20 );
TEST_VMRL_OP( 8218,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat61, walking_zeros_dat28 );
TEST_VMRL_OP( 8221,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat61, walking_zeros_dat31 );
TEST_VMRL_OP( 8258,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat3 );
TEST_VMRL_OP( 8275,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat20 );
TEST_VMRL_OP( 8294,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat39 );
TEST_VMRL_OP( 8323,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat3 );
TEST_VMRL_OP( 8337,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat17 );
TEST_VMRL_OP( 8341,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat21 );
TEST_VMRL_OP( 8362,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat42 );
TEST_VMRL_OP( 8372,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat52 );
TEST_VMRL_OP( 8412,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat64, walking_zeros_dat27 );
TEST_VMRL_OP( 8415,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat64, walking_zeros_dat30 );
TEST_VMRL_OP( 8454,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 8456,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 8464,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 8466,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 8470,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 8471,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 8495,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat45 );
TEST_VMRL_OP( 8504,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat54 );
TEST_VMRL_OP( 8523,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 8548,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat33 );
TEST_VMRL_OP( 8561,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat46 );
TEST_VMRL_OP( 8567,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat52 );
TEST_VMRL_OP( 8579,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat64 );
TEST_VMRL_OP( 8583,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 8593,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 8598,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat18 );
TEST_VMRL_OP( 8623,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat43 );
TEST_VMRL_OP( 8691,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat46 );
TEST_VMRL_OP( 8714,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 8741,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 8755,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat45 );
TEST_VMRL_OP( 8762,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat52 );
TEST_VMRL_OP( 8769,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat59 );
TEST_VMRL_OP( 8772,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat62 );
TEST_VMRL_OP( 8791,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 8840,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 8864,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 8875,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat35 );
TEST_VMRL_OP( 8883,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat43 );
TEST_VMRL_OP( 8894,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat54 );
TEST_VMRL_OP( 8895,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat55 );
TEST_VMRL_OP( 8896,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat56 );
TEST_VMRL_OP( 8914,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 8918,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 8919,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 8939,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat34 );
TEST_VMRL_OP( 8975,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 8984,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 8988,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 9012,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat42 );
TEST_VMRL_OP( 9017,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat47 );
TEST_VMRL_OP( 9038,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 9112,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 9120,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 9128,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 9138,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat38 );
TEST_VMRL_OP( 9148,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat48 );
TEST_VMRL_OP( 9205,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat40 );
TEST_VMRL_OP( 9209,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat44 );
TEST_VMRL_OP( 9220,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat55 );
TEST_VMRL_OP( 9231,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 9249,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 9284,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat54 );
TEST_VMRL_OP( 9305,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 9307,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 9314,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 9315,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 9367,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 9368,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 9373,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 9396,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat36 );
TEST_VMRL_OP( 9407,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat47 );
TEST_VMRL_OP( 9422,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat62 );
TEST_VMRL_OP( 9432,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 9439,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 9457,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 9462,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat37 );
TEST_VMRL_OP( 9546,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat56 );
TEST_VMRL_OP( 9547,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat57 );
TEST_VMRL_OP( 9552,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat62 );
TEST_VMRL_OP( 9554,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat64 );
TEST_VMRL_OP( 9568,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 9584,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 9587,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 9592,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat37 );
TEST_VMRL_OP( 9594,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat39 );
TEST_VMRL_OP( 9596,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat41 );
TEST_VMRL_OP( 9600,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat45 );
TEST_VMRL_OP( 9614,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat59 );
TEST_VMRL_OP( 9642,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 9688,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 9693,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 9702,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 9720,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat35 );
TEST_VMRL_OP( 9723,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat38 );
TEST_VMRL_OP( 9740,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat55 );
TEST_VMRL_OP( 9753,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat3 );
TEST_VMRL_OP( 9772,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat22 );
TEST_VMRL_OP( 9784,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat34 );
TEST_VMRL_OP( 9807,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat57 );
TEST_VMRL_OP( 9811,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat61 );
TEST_VMRL_OP( 9831,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 9839,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 9853,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat38 );
TEST_VMRL_OP( 9869,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat54 );
TEST_VMRL_OP( 9889,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 9929,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat49 );
TEST_VMRL_OP( 9933,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat53 );
TEST_VMRL_OP( 9941,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat61 );
TEST_VMRL_OP( 9954,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 9955,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat10 );
TEST_VMRL_OP( 9957,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat12 );
TEST_VMRL_OP( 9984,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat39 );
TEST_VMRL_OP( 9992,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat47 );
TEST_VMRL_OP( 10012,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 10034,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 10039,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat29 );
TEST_VMRL_OP( 10044,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat34 );
TEST_VMRL_OP( 10068,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat58 );
TEST_VMRL_OP( 10084,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 10085,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 10088,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 10106,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 10121,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat46 );
TEST_VMRL_OP( 10135,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat60 );
TEST_VMRL_OP( 10137,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat62 );
TEST_VMRL_OP( 10141,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat1 );
TEST_VMRL_OP( 10151,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 10157,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 10165,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat25 );
TEST_VMRL_OP( 10171,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 10186,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat46 );
TEST_VMRL_OP( 10230,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat25 );
TEST_VMRL_OP( 10233,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 10248,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat43 );
TEST_VMRL_OP( 10253,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat48 );
TEST_VMRL_OP( 10255,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat50 );
TEST_VMRL_OP( 10259,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat54 );
TEST_VMRL_OP( 10264,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat59 );
TEST_VMRL_OP( 10269,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat64 );
TEST_VMRL_OP( 10270,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat0 );
TEST_VMRL_OP( 10281,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 10283,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 10297,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat27 );
TEST_VMRL_OP( 10306,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat36 );
TEST_VMRL_OP( 10317,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat47 );
TEST_VMRL_OP( 10319,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat49 );
TEST_VMRL_OP( 10344,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat9 );
TEST_VMRL_OP( 10350,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat15 );
TEST_VMRL_OP( 10372,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat37 );
TEST_VMRL_OP( 10373,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat38 );
TEST_VMRL_OP( 10393,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat58 );
TEST_VMRL_OP( 10409,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 10411,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 10414,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 10441,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat41 );
TEST_VMRL_OP( 10488,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat23 );
TEST_VMRL_OP( 10498,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat33 );
TEST_VMRL_OP( 10507,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat42 );
TEST_VMRL_OP( 10513,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat48 );
TEST_VMRL_OP( 10523,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat58 );
TEST_VMRL_OP( 10529,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat64 );
TEST_VMRL_OP( 10540,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat10 );
TEST_VMRL_OP( 10552,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 10599,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat4 );
TEST_VMRL_OP( 10601,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat6 );
TEST_VMRL_OP( 10628,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 10633,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat38 );
TEST_VMRL_OP( 10640,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat45 );
TEST_VMRL_OP( 10650,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat55 );
TEST_VMRL_OP( 10694,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 10712,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat52 );
TEST_VMRL_OP( 10722,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat62 );
TEST_VMRL_OP( 10725,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat0 );
TEST_VMRL_OP( 10753,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat28 );
TEST_VMRL_OP( 10763,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat38 );
TEST_VMRL_OP( 10801,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat11 );
TEST_VMRL_OP( 10836,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat46 );
TEST_VMRL_OP( 10839,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat49 );
TEST_VMRL_OP( 10857,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat2 );
TEST_VMRL_OP( 10872,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat17 );
TEST_VMRL_OP( 10876,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat21 );
TEST_VMRL_OP( 10888,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat33 );
TEST_VMRL_OP( 10889,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat34 );
TEST_VMRL_OP( 10898,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat43 );
TEST_VMRL_OP( 10918,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat63 );
TEST_VMRL_OP( 10965,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat45 );
TEST_VMRL_OP( 10972,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat52 );
TEST_VMRL_OP( 10977,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat57 );
TEST_VMRL_OP( 10987,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat2 );
TEST_VMRL_OP( 10997,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat12 );
TEST_VMRL_OP( 11025,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat40 );
TEST_VMRL_OP( 11048,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat63 );
TEST_VMRL_OP( 11123,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat8 );
TEST_VMRL_OP( 11155,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat40 );
TEST_VMRL_OP( 11162,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat47 );
TEST_VMRL_OP( 11165,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat50 );
TEST_VMRL_OP( 11171,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat56 );
TEST_VMRL_OP( 11195,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat15 );
TEST_VMRL_OP( 11199,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat19 );
TEST_VMRL_OP( 11213,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat33 );
TEST_VMRL_OP( 11232,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat52 );
TEST_VMRL_OP( 11279,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat34 );
TEST_VMRL_OP( 11280,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat35 );
TEST_VMRL_OP( 11317,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat7 );
TEST_VMRL_OP( 11341,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat31 );
TEST_VMRL_OP( 11359,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat49 );
TEST_VMRL_OP( 11394,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat19 );
TEST_VMRL_OP( 11436,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat61 );
TEST_VMRL_OP( 11442,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat2 );
TEST_VMRL_OP( 11510,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat5 );
TEST_VMRL_OP( 11550,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat45 );
TEST_VMRL_OP( 11553,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat48 );
TEST_VMRL_OP( 11577,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat7 );
TEST_VMRL_OP( 11599,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat29 );
TEST_VMRL_OP( 11636,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat1 );
TEST_VMRL_OP( 11677,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat42 );
TEST_VMRL_OP( 11695,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat60 );
TEST_VMRL_OP( 11723,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat23 );
TEST_VMRL_OP( 11738,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat38 );
TEST_VMRL_OP( 11751,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat51 );
TEST_VMRL_OP( 11769,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat4 );
TEST_VMRL_OP( 11784,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat19 );
TEST_VMRL_OP( 11827,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat62 );
TEST_VMRL_OP( 11843,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat13 );
TEST_VMRL_OP( 11854,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat24 );
TEST_VMRL_OP( 11885,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat55 );
TEST_VMRL_OP( 11906,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat11 );
TEST_VMRL_OP( 11910,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat15 );
TEST_VMRL_OP( 11925,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat30 );
TEST_VMRL_OP( 11939,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat44 );
TEST_VMRL_OP( 11941,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat46 );
TEST_VMRL_OP( 11942,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat47 );
TEST_VMRL_OP( 11944,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat49 );
TEST_VMRL_OP( 11953,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat58 );
TEST_VMRL_OP( 11956,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat61 );
TEST_VMRL_OP( 11982,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat22 );
TEST_VMRL_OP( 11997,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat37 );
TEST_VMRL_OP( 12030,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat5 );
TEST_VMRL_OP( 12036,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat11 );
TEST_VMRL_OP( 12055,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat30 );
TEST_VMRL_OP( 12152,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat62 );
TEST_VMRL_OP( 12153,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat63 );
TEST_VMRL_OP( 12173,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat18 );
TEST_VMRL_OP( 12175,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat20 );
TEST_VMRL_OP( 12189,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat34 );
TEST_VMRL_OP( 12216,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat61 );
TEST_VMRL_OP( 12252,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat32 );
TEST_VMRL_OP( 12263,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat43 );
TEST_VMRL_OP( 12273,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat53 );
TEST_VMRL_OP( 12297,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat12 );
TEST_VMRL_OP( 12330,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat45 );
TEST_VMRL_OP( 12388,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat38 );
TEST_VMRL_OP( 12392,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat42 );
TEST_VMRL_OP( 12403,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat53 );
TEST_VMRL_OP( 12419,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat4 );
TEST_VMRL_OP( 12423,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat8 );
TEST_VMRL_OP( 12470,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat55 );
TEST_VMRL_OP( 12486,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat6 );
TEST_VMRL_OP( 12496,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat16 );
TEST_VMRL_OP( 12521,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat41 );
TEST_VMRL_OP( 12553,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat8 );
TEST_VMRL_OP( 12572,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat27 );
TEST_VMRL_OP( 12584,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat39 );
TEST_VMRL_OP( 12589,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat44 );
TEST_VMRL_OP( 12595,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat50 );
TEST_VMRL_OP( 12648,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat38 );
TEST_VMRL_OP( 12669,  vmor.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat59 );
TEST_VMRL_OP( 12681,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 12812,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 12829,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 12850,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat45 );
TEST_VMRL_OP( 12877,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 12886,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 12888,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 12913,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat43 );
TEST_VMRL_OP( 12916,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat46 );
TEST_VMRL_OP( 12944,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 12951,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 13018,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat18 );
TEST_VMRL_OP( 13040,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat40 );
TEST_VMRL_OP( 13049,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat49 );
TEST_VMRL_OP( 13055,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat55 );
TEST_VMRL_OP( 13068,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 13118,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat53 );
TEST_VMRL_OP( 13119,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat54 );
TEST_VMRL_OP( 13135,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 13142,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 13143,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 13171,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat41 );
TEST_VMRL_OP( 13183,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat53 );
TEST_VMRL_OP( 13210,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 13212,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 13237,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat42 );
TEST_VMRL_OP( 13245,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat50 );
TEST_VMRL_OP( 13250,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat55 );
TEST_VMRL_OP( 13288,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat28 );
TEST_VMRL_OP( 13297,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat37 );
TEST_VMRL_OP( 13361,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat36 );
TEST_VMRL_OP( 13394,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 13416,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 13422,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 13438,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat48 );
TEST_VMRL_OP( 13474,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 13504,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat49 );
TEST_VMRL_OP( 13506,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat51 );
TEST_VMRL_OP( 13507,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat52 );
TEST_VMRL_OP( 13510,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat55 );
TEST_VMRL_OP( 13514,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat59 );
TEST_VMRL_OP( 13516,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat61 );
TEST_VMRL_OP( 13526,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 13531,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 13533,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 13537,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat17 );
TEST_VMRL_OP( 13550,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 13563,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat43 );
TEST_VMRL_OP( 13590,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 13612,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 13644,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat59 );
TEST_VMRL_OP( 13671,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 13678,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 13693,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat43 );
TEST_VMRL_OP( 13703,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat53 );
TEST_VMRL_OP( 13720,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 13725,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 13810,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 13844,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat64 );
TEST_VMRL_OP( 13863,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 13873,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 13897,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat52 );
TEST_VMRL_OP( 13901,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat56 );
TEST_VMRL_OP( 13969,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat59 );
TEST_VMRL_OP( 13974,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat64 );
TEST_VMRL_OP( 14003,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat28 );
TEST_VMRL_OP( 14012,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat37 );
TEST_VMRL_OP( 14013,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat38 );
TEST_VMRL_OP( 14016,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat41 );
TEST_VMRL_OP( 14017,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat42 );
TEST_VMRL_OP( 14031,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat56 );
TEST_VMRL_OP( 14036,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat61 );
TEST_VMRL_OP( 14041,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 14043,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 14046,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat6 );
TEST_VMRL_OP( 14055,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 14106,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat1 );
TEST_VMRL_OP( 14117,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 14126,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 14136,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat31 );
TEST_VMRL_OP( 14152,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat47 );
TEST_VMRL_OP( 14165,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat60 );
TEST_VMRL_OP( 14176,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 14185,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 14187,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 14203,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat33 );
TEST_VMRL_OP( 14219,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat49 );
TEST_VMRL_OP( 14258,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat23 );
TEST_VMRL_OP( 14261,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat26 );
TEST_VMRL_OP( 14278,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat43 );
TEST_VMRL_OP( 14284,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat49 );
TEST_VMRL_OP( 14304,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat4 );
TEST_VMRL_OP( 14341,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat41 );
TEST_VMRL_OP( 14353,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat53 );
TEST_VMRL_OP( 14361,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat61 );
TEST_VMRL_OP( 14368,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat3 );
TEST_VMRL_OP( 14377,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat12 );
TEST_VMRL_OP( 14379,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 14390,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 14408,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat43 );
TEST_VMRL_OP( 14446,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 14454,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 14470,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat40 );
TEST_VMRL_OP( 14488,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat58 );
TEST_VMRL_OP( 14515,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 14518,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 14527,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 14551,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat56 );
TEST_VMRL_OP( 14567,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat7 );
TEST_VMRL_OP( 14593,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat33 );
TEST_VMRL_OP( 14619,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat59 );
TEST_VMRL_OP( 14642,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 14660,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat35 );
TEST_VMRL_OP( 14675,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat50 );
TEST_VMRL_OP( 14735,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat45 );
TEST_VMRL_OP( 14739,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat49 );
TEST_VMRL_OP( 14743,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat53 );
TEST_VMRL_OP( 14778,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 14800,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat45 );
TEST_VMRL_OP( 14818,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat63 );
TEST_VMRL_OP( 14869,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat49 );
TEST_VMRL_OP( 14880,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat60 );
TEST_VMRL_OP( 14883,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat63 );
TEST_VMRL_OP( 14936,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat51 );
TEST_VMRL_OP( 14967,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat17 );
TEST_VMRL_OP( 14983,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat33 );
TEST_VMRL_OP( 15006,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat56 );
TEST_VMRL_OP( 15010,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat60 );
TEST_VMRL_OP( 15021,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat6 );
TEST_VMRL_OP( 15032,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat17 );
TEST_VMRL_OP( 15034,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat19 );
TEST_VMRL_OP( 15037,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat22 );
TEST_VMRL_OP( 15063,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat48 );
TEST_VMRL_OP( 15093,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat13 );
TEST_VMRL_OP( 15114,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat34 );
TEST_VMRL_OP( 15124,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat44 );
TEST_VMRL_OP( 15131,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat51 );
TEST_VMRL_OP( 15140,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat60 );
TEST_VMRL_OP( 15181,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat36 );
TEST_VMRL_OP( 15189,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat44 );
TEST_VMRL_OP( 15190,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat45 );
TEST_VMRL_OP( 15207,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat62 );
TEST_VMRL_OP( 15260,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat39, walking_ones_dat50 );
TEST_VMRL_OP( 15294,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat19 );
TEST_VMRL_OP( 15295,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat20 );
TEST_VMRL_OP( 15311,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat36 );
TEST_VMRL_OP( 15314,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat39 );
TEST_VMRL_OP( 15323,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat48 );
TEST_VMRL_OP( 15338,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat63 );
TEST_VMRL_OP( 15340,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat0 );
TEST_VMRL_OP( 15373,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat33 );
TEST_VMRL_OP( 15381,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 15405,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat0 );
TEST_VMRL_OP( 15445,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat40 );
TEST_VMRL_OP( 15450,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat45 );
TEST_VMRL_OP( 15451,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat46 );
TEST_VMRL_OP( 15461,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat56 );
TEST_VMRL_OP( 15464,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat59 );
TEST_VMRL_OP( 15466,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat61 );
TEST_VMRL_OP( 15514,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat44 );
TEST_VMRL_OP( 15534,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat64 );
TEST_VMRL_OP( 15561,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat26 );
TEST_VMRL_OP( 15596,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat61 );
TEST_VMRL_OP( 15630,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat30 );
TEST_VMRL_OP( 15636,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat36 );
TEST_VMRL_OP( 15650,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat50 );
TEST_VMRL_OP( 15669,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat4 );
TEST_VMRL_OP( 15682,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat17 );
TEST_VMRL_OP( 15684,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat19 );
TEST_VMRL_OP( 15705,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat40 );
TEST_VMRL_OP( 15713,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat48 );
TEST_VMRL_OP( 15715,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat50 );
TEST_VMRL_OP( 15738,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat8 );
TEST_VMRL_OP( 15753,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat23 );
TEST_VMRL_OP( 15762,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat32 );
TEST_VMRL_OP( 15772,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat42 );
TEST_VMRL_OP( 15776,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat46 );
TEST_VMRL_OP( 15779,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat49 );
TEST_VMRL_OP( 15780,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat50 );
TEST_VMRL_OP( 15794,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat64 );
TEST_VMRL_OP( 15796,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat1 );
TEST_VMRL_OP( 15806,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat11 );
TEST_VMRL_OP( 15810,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat15 );
TEST_VMRL_OP( 15817,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat22 );
TEST_VMRL_OP( 15821,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat26 );
TEST_VMRL_OP( 15828,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat33 );
TEST_VMRL_OP( 15838,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat43 );
TEST_VMRL_OP( 15848,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat53 );
TEST_VMRL_OP( 15855,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat60 );
TEST_VMRL_OP( 15856,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat61 );
TEST_VMRL_OP( 15903,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat43 );
TEST_VMRL_OP( 15904,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat44 );
TEST_VMRL_OP( 15937,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat12 );
TEST_VMRL_OP( 15939,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat14 );
TEST_VMRL_OP( 15971,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat46 );
TEST_VMRL_OP( 15985,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat60 );
TEST_VMRL_OP( 15992,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat2 );
TEST_VMRL_OP( 16009,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat19 );
TEST_VMRL_OP( 16016,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat26 );
TEST_VMRL_OP( 16021,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat31 );
TEST_VMRL_OP( 16036,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat46 );
TEST_VMRL_OP( 16044,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat54 );
TEST_VMRL_OP( 16066,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat11 );
TEST_VMRL_OP( 16078,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat23 );
TEST_VMRL_OP( 16080,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat25 );
TEST_VMRL_OP( 16082,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat27 );
TEST_VMRL_OP( 16090,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat35 );
TEST_VMRL_OP( 16094,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat39 );
TEST_VMRL_OP( 16108,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat53 );
TEST_VMRL_OP( 16118,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat63 );
TEST_VMRL_OP( 16122,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat2 );
TEST_VMRL_OP( 16141,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat21 );
TEST_VMRL_OP( 16170,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat50 );
TEST_VMRL_OP( 16215,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat30 );
TEST_VMRL_OP( 16311,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat61 );
TEST_VMRL_OP( 16313,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat63 );
TEST_VMRL_OP( 16321,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat6 );
TEST_VMRL_OP( 16364,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat49 );
TEST_VMRL_OP( 16366,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat51 );
TEST_VMRL_OP( 16372,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat57 );
TEST_VMRL_OP( 16383,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat3 );
TEST_VMRL_OP( 16391,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat11 );
TEST_VMRL_OP( 16409,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat29 );
TEST_VMRL_OP( 16420,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat40 );
TEST_VMRL_OP( 16426,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat46 );
TEST_VMRL_OP( 16472,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat27 );
TEST_VMRL_OP( 16473,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat28 );
TEST_VMRL_OP( 16486,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat41 );
TEST_VMRL_OP( 16507,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat62 );
TEST_VMRL_OP( 16588,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat13 );
TEST_VMRL_OP( 16592,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat17 );
TEST_VMRL_OP( 16614,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat39 );
TEST_VMRL_OP( 16661,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat21 );
TEST_VMRL_OP( 16672,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat32 );
TEST_VMRL_OP( 16680,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat40 );
TEST_VMRL_OP( 16702,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat62 );
TEST_VMRL_OP( 16705,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat0 );
TEST_VMRL_OP( 16709,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat4 );
TEST_VMRL_OP( 16713,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat8 );
TEST_VMRL_OP( 16734,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat29 );
TEST_VMRL_OP( 16737,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat32 );
TEST_VMRL_OP( 16745,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat40 );
TEST_VMRL_OP( 16753,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat48 );
TEST_VMRL_OP( 16759,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat54 );
TEST_VMRL_OP( 16785,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat15 );
TEST_VMRL_OP( 16803,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat33 );
TEST_VMRL_OP( 16806,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat36 );
TEST_VMRL_OP( 16811,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat41 );
TEST_VMRL_OP( 16842,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat7 );
TEST_VMRL_OP( 16845,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat10 );
TEST_VMRL_OP( 16863,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat28 );
TEST_VMRL_OP( 16870,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat35 );
TEST_VMRL_OP( 16877,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat42 );
TEST_VMRL_OP( 16889,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat54 );
TEST_VMRL_OP( 16892,  vmor.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat57 );
TEST_VMRL_OP( 16900,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmor.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33975,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33976,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33977,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33978,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33979,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33980,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33981,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33982,  vmor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
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
    

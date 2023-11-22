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
    # vmornot.S
    #-----------------------------------------------------------------------------
    #
    # Test vmornot instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmornot)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmornot tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 30,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 96,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 129,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_ones_dat64 );
TEST_VMRL_OP( 144,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 171,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_ones_dat41 );
TEST_VMRL_OP( 180,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_ones_dat50 );
TEST_VMRL_OP( 191,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_ones_dat61 );
TEST_VMRL_OP( 211,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 219,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 257,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_ones_dat62 );
TEST_VMRL_OP( 294,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_ones_dat34 );
TEST_VMRL_OP( 315,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_ones_dat55 );
TEST_VMRL_OP( 332,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 346,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 352,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 360,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_ones_dat35 );
TEST_VMRL_OP( 371,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_ones_dat46 );
TEST_VMRL_OP( 372,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_ones_dat47 );
TEST_VMRL_OP( 374,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_ones_dat49 );
TEST_VMRL_OP( 422,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 424,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_ones_dat34 );
TEST_VMRL_OP( 440,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_ones_dat50 );
TEST_VMRL_OP( 444,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_ones_dat54 );
TEST_VMRL_OP( 460,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 464,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 481,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 497,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_ones_dat42 );
TEST_VMRL_OP( 500,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_ones_dat45 );
TEST_VMRL_OP( 541,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 551,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 583,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_ones_dat63 );
TEST_VMRL_OP( 584,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_ones_dat64 );
TEST_VMRL_OP( 589,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 594,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 661,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 669,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 683,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_ones_dat33 );
TEST_VMRL_OP( 725,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 758,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_ones_dat43 );
TEST_VMRL_OP( 760,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_ones_dat45 );
TEST_VMRL_OP( 771,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_ones_dat56 );
TEST_VMRL_OP( 792,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 798,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_ones_dat18 );
TEST_VMRL_OP( 811,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 812,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_ones_dat32 );
TEST_VMRL_OP( 817,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_ones_dat37 );
TEST_VMRL_OP( 824,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_ones_dat44 );
TEST_VMRL_OP( 839,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_ones_dat59 );
TEST_VMRL_OP( 904,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_ones_dat59 );
TEST_VMRL_OP( 915,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 961,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_ones_dat51 );
TEST_VMRL_OP( 970,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_ones_dat60 );
TEST_VMRL_OP( 1016,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_ones_dat41 );
TEST_VMRL_OP( 1020,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_ones_dat45 );
TEST_VMRL_OP( 1049,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1050,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1052,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_ones_dat27 );
TEST_VMRL_OP( 1068,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 1070,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_ones_dat30 );
TEST_VMRL_OP( 1132,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_ones_dat27 );
TEST_VMRL_OP( 1146,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_ones_dat41 );
TEST_VMRL_OP( 1157,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_ones_dat52 );
TEST_VMRL_OP( 1195,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 1223,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_ones_dat53 );
TEST_VMRL_OP( 1224,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_ones_dat54 );
TEST_VMRL_OP( 1265,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 1272,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_ones_dat37 );
TEST_VMRL_OP( 1302,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_ones_dat2 );
TEST_VMRL_OP( 1303,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_ones_dat3 );
TEST_VMRL_OP( 1340,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_ones_dat40 );
TEST_VMRL_OP( 1395,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 1396,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 1405,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_ones_dat40 );
TEST_VMRL_OP( 1416,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_ones_dat51 );
TEST_VMRL_OP( 1444,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 1450,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_ones_dat20 );
TEST_VMRL_OP( 1509,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 1514,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 1534,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_ones_dat39 );
TEST_VMRL_OP( 1584,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 1585,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 1609,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_ones_dat49 );
TEST_VMRL_OP( 1610,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_ones_dat50 );
TEST_VMRL_OP( 1620,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_ones_dat60 );
TEST_VMRL_OP( 1630,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 1677,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_ones_dat52 );
TEST_VMRL_OP( 1684,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_ones_dat59 );
TEST_VMRL_OP( 1686,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_ones_dat61 );
TEST_VMRL_OP( 1696,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_ones_dat6 );
TEST_VMRL_OP( 1718,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 1747,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_ones_dat57 );
TEST_VMRL_OP( 1749,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_ones_dat59 );
TEST_VMRL_OP( 1773,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 1807,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_ones_dat52 );
TEST_VMRL_OP( 1825,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 1837,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 1838,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 1862,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_ones_dat42 );
TEST_VMRL_OP( 1879,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_ones_dat59 );
TEST_VMRL_OP( 1898,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 1900,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 1959,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 1982,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_ones_dat32 );
TEST_VMRL_OP( 1996,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_ones_dat46 );
TEST_VMRL_OP( 2003,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_ones_dat53 );
TEST_VMRL_OP( 2036,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_ones_dat21 );
TEST_VMRL_OP( 2039,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 2047,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_ones_dat32 );
TEST_VMRL_OP( 2062,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_ones_dat47 );
TEST_VMRL_OP( 2089,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 2116,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_ones_dat36 );
TEST_VMRL_OP( 2119,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_ones_dat39 );
TEST_VMRL_OP( 2146,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_ones_dat1 );
TEST_VMRL_OP( 2169,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_ones_dat24 );
TEST_VMRL_OP( 2181,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_ones_dat36 );
TEST_VMRL_OP( 2198,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_ones_dat53 );
TEST_VMRL_OP( 2201,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_ones_dat56 );
TEST_VMRL_OP( 2210,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_ones_dat0 );
TEST_VMRL_OP( 2215,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_ones_dat5 );
TEST_VMRL_OP( 2217,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_ones_dat7 );
TEST_VMRL_OP( 2235,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_ones_dat25 );
TEST_VMRL_OP( 2247,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_ones_dat37 );
TEST_VMRL_OP( 2267,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_ones_dat57 );
TEST_VMRL_OP( 2269,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_ones_dat59 );
TEST_VMRL_OP( 2289,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_ones_dat14 );
TEST_VMRL_OP( 2297,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_ones_dat22 );
TEST_VMRL_OP( 2313,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_ones_dat38 );
TEST_VMRL_OP( 2316,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_ones_dat41 );
TEST_VMRL_OP( 2322,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_ones_dat47 );
TEST_VMRL_OP( 2329,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_ones_dat54 );
TEST_VMRL_OP( 2334,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_ones_dat59 );
TEST_VMRL_OP( 2362,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_ones_dat22 );
TEST_VMRL_OP( 2371,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_ones_dat31 );
TEST_VMRL_OP( 2382,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_ones_dat42 );
TEST_VMRL_OP( 2386,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_ones_dat46 );
TEST_VMRL_OP( 2391,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_ones_dat51 );
TEST_VMRL_OP( 2472,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat2 );
TEST_VMRL_OP( 2485,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat15 );
TEST_VMRL_OP( 2491,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat21 );
TEST_VMRL_OP( 2499,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat29 );
TEST_VMRL_OP( 2506,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat36 );
TEST_VMRL_OP( 2517,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat47 );
TEST_VMRL_OP( 2527,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat57 );
TEST_VMRL_OP( 2534,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_ones_dat64 );
TEST_VMRL_OP( 2536,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat1 );
TEST_VMRL_OP( 2540,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat5 );
TEST_VMRL_OP( 2549,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat14 );
TEST_VMRL_OP( 2551,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat16 );
TEST_VMRL_OP( 2555,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat20 );
TEST_VMRL_OP( 2563,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat28 );
TEST_VMRL_OP( 2569,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat34 );
TEST_VMRL_OP( 2588,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat53 );
TEST_VMRL_OP( 2597,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_ones_dat62 );
TEST_VMRL_OP( 2616,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_ones_dat16 );
TEST_VMRL_OP( 2629,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_ones_dat29 );
TEST_VMRL_OP( 2653,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_ones_dat53 );
TEST_VMRL_OP( 2680,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_ones_dat15 );
TEST_VMRL_OP( 2708,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_ones_dat43 );
TEST_VMRL_OP( 2722,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_ones_dat57 );
TEST_VMRL_OP( 2725,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_ones_dat60 );
TEST_VMRL_OP( 2771,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_ones_dat41 );
TEST_VMRL_OP( 2775,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_ones_dat45 );
TEST_VMRL_OP( 2791,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_ones_dat61 );
TEST_VMRL_OP( 2796,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_ones_dat1 );
TEST_VMRL_OP( 2820,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_ones_dat25 );
TEST_VMRL_OP( 2836,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_ones_dat41 );
TEST_VMRL_OP( 2845,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_ones_dat50 );
TEST_VMRL_OP( 2869,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_ones_dat9 );
TEST_VMRL_OP( 2876,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_ones_dat16 );
TEST_VMRL_OP( 2892,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_ones_dat32 );
TEST_VMRL_OP( 2898,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_ones_dat38 );
TEST_VMRL_OP( 2924,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_ones_dat64 );
TEST_VMRL_OP( 2972,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_ones_dat47 );
TEST_VMRL_OP( 3001,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_ones_dat11 );
TEST_VMRL_OP( 3006,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_ones_dat16 );
TEST_VMRL_OP( 3030,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_ones_dat40 );
TEST_VMRL_OP( 3046,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_ones_dat56 );
TEST_VMRL_OP( 3053,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_ones_dat63 );
TEST_VMRL_OP( 3064,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_ones_dat9 );
TEST_VMRL_OP( 3065,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_ones_dat10 );
TEST_VMRL_OP( 3071,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_ones_dat16 );
TEST_VMRL_OP( 3076,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_ones_dat21 );
TEST_VMRL_OP( 3085,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_ones_dat30 );
TEST_VMRL_OP( 3099,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_ones_dat44 );
TEST_VMRL_OP( 3131,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_ones_dat11 );
TEST_VMRL_OP( 3166,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_ones_dat46 );
TEST_VMRL_OP( 3170,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_ones_dat50 );
TEST_VMRL_OP( 3171,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_ones_dat51 );
TEST_VMRL_OP( 3234,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 3241,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_ones_dat56 );
TEST_VMRL_OP( 3278,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_ones_dat28 );
TEST_VMRL_OP( 3296,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_ones_dat46 );
TEST_VMRL_OP( 3309,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_ones_dat59 );
TEST_VMRL_OP( 3336,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_ones_dat21 );
TEST_VMRL_OP( 3338,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_ones_dat23 );
TEST_VMRL_OP( 3373,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_ones_dat58 );
TEST_VMRL_OP( 3376,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_ones_dat61 );
TEST_VMRL_OP( 3392,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_ones_dat12 );
TEST_VMRL_OP( 3406,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_ones_dat26 );
TEST_VMRL_OP( 3407,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_ones_dat27 );
TEST_VMRL_OP( 3415,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_ones_dat35 );
TEST_VMRL_OP( 3418,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_ones_dat38 );
TEST_VMRL_OP( 3426,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_ones_dat46 );
TEST_VMRL_OP( 3445,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_ones_dat0 );
TEST_VMRL_OP( 3459,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_ones_dat14 );
TEST_VMRL_OP( 3486,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_ones_dat41 );
TEST_VMRL_OP( 3492,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_ones_dat47 );
TEST_VMRL_OP( 3508,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_ones_dat63 );
TEST_VMRL_OP( 3543,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_ones_dat33 );
TEST_VMRL_OP( 3544,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_ones_dat34 );
TEST_VMRL_OP( 3554,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_ones_dat44 );
TEST_VMRL_OP( 3569,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_ones_dat59 );
TEST_VMRL_OP( 3582,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_ones_dat7 );
TEST_VMRL_OP( 3590,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_ones_dat15 );
TEST_VMRL_OP( 3591,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_ones_dat16 );
TEST_VMRL_OP( 3623,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_ones_dat48 );
TEST_VMRL_OP( 3628,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_ones_dat53 );
TEST_VMRL_OP( 3636,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_ones_dat61 );
TEST_VMRL_OP( 3661,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_ones_dat21 );
TEST_VMRL_OP( 3687,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_ones_dat47 );
TEST_VMRL_OP( 3698,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_ones_dat58 );
TEST_VMRL_OP( 3712,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_ones_dat7 );
TEST_VMRL_OP( 3719,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_ones_dat14 );
TEST_VMRL_OP( 3730,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_ones_dat25 );
TEST_VMRL_OP( 3731,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_ones_dat26 );
TEST_VMRL_OP( 3743,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_ones_dat38 );
TEST_VMRL_OP( 3752,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_ones_dat47 );
TEST_VMRL_OP( 3776,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_ones_dat6 );
TEST_VMRL_OP( 3788,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_ones_dat18 );
TEST_VMRL_OP( 3799,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_ones_dat29 );
TEST_VMRL_OP( 3813,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_ones_dat43 );
TEST_VMRL_OP( 3839,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_ones_dat4 );
TEST_VMRL_OP( 3854,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_ones_dat19 );
TEST_VMRL_OP( 3868,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_ones_dat33 );
TEST_VMRL_OP( 3887,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_ones_dat52 );
TEST_VMRL_OP( 3901,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat1 );
TEST_VMRL_OP( 3902,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat2 );
TEST_VMRL_OP( 3910,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat10 );
TEST_VMRL_OP( 3920,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat20 );
TEST_VMRL_OP( 3932,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat32 );
TEST_VMRL_OP( 3950,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat50 );
TEST_VMRL_OP( 3961,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat61 );
TEST_VMRL_OP( 3964,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_ones_dat64 );
TEST_VMRL_OP( 4015,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_ones_dat50 );
TEST_VMRL_OP( 4019,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_ones_dat54 );
TEST_VMRL_OP( 4031,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_ones_dat1 );
TEST_VMRL_OP( 4054,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_ones_dat24 );
TEST_VMRL_OP( 4066,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_ones_dat36 );
TEST_VMRL_OP( 4081,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_ones_dat51 );
TEST_VMRL_OP( 4119,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_ones_dat24 );
TEST_VMRL_OP( 4175,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_ones_dat15 );
TEST_VMRL_OP( 4191,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_ones_dat31 );
TEST_VMRL_OP( 4192,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_ones_dat32 );
TEST_VMRL_OP( 4218,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_ones_dat58 );
TEST_VMRL_OP( 4250,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat25 );
TEST_VMRL_OP( 4299,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 4350,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat60 );
TEST_VMRL_OP( 4362,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 4394,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_zeros_dat39 );
TEST_VMRL_OP( 4417,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_zeros_dat62 );
TEST_VMRL_OP( 4419,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat2, walking_zeros_dat64 );
TEST_VMRL_OP( 4435,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 4438,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 4439,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 4468,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_zeros_dat48 );
TEST_VMRL_OP( 4477,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat3, walking_zeros_dat57 );
TEST_VMRL_OP( 4493,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 4496,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 4521,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat36 );
TEST_VMRL_OP( 4533,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat48 );
TEST_VMRL_OP( 4556,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 4562,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 4565,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 4582,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 4583,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat33 );
TEST_VMRL_OP( 4597,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat47 );
TEST_VMRL_OP( 4608,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat58 );
TEST_VMRL_OP( 4627,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 4633,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat18 );
TEST_VMRL_OP( 4646,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 4656,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat41 );
TEST_VMRL_OP( 4669,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat54 );
TEST_VMRL_OP( 4673,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat58 );
TEST_VMRL_OP( 4677,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat62 );
TEST_VMRL_OP( 4687,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4694,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 4721,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_zeros_dat41 );
TEST_VMRL_OP( 4724,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_zeros_dat44 );
TEST_VMRL_OP( 4731,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat7, walking_zeros_dat51 );
TEST_VMRL_OP( 4745,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 4763,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 4783,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat38 );
TEST_VMRL_OP( 4789,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat44 );
TEST_VMRL_OP( 4794,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat49 );
TEST_VMRL_OP( 4795,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat50 );
TEST_VMRL_OP( 4833,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 4842,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 4855,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat45 );
TEST_VMRL_OP( 4865,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat55 );
TEST_VMRL_OP( 4882,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 4906,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 4935,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat60 );
TEST_VMRL_OP( 4936,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat61 );
TEST_VMRL_OP( 4939,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat64 );
TEST_VMRL_OP( 4942,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 4946,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 4995,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat55 );
TEST_VMRL_OP( 4998,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat58 );
TEST_VMRL_OP( 5003,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat63 );
TEST_VMRL_OP( 5004,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat64 );
TEST_VMRL_OP( 5009,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 5022,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat17 );
TEST_VMRL_OP( 5101,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 5113,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat43 );
TEST_VMRL_OP( 5115,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat45 );
TEST_VMRL_OP( 5124,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat54 );
TEST_VMRL_OP( 5136,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 5146,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 5156,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat21 );
TEST_VMRL_OP( 5177,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat42 );
TEST_VMRL_OP( 5181,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat46 );
TEST_VMRL_OP( 5210,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 5225,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 5255,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat15, walking_zeros_dat55 );
TEST_VMRL_OP( 5352,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 5359,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 5362,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 5363,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat33 );
TEST_VMRL_OP( 5364,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat34 );
TEST_VMRL_OP( 5409,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_zeros_dat14 );
TEST_VMRL_OP( 5418,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 5430,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_zeros_dat35 );
TEST_VMRL_OP( 5441,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_zeros_dat46 );
TEST_VMRL_OP( 5458,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat18, walking_zeros_dat63 );
TEST_VMRL_OP( 5461,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 5475,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 5485,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 5519,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat59 );
TEST_VMRL_OP( 5524,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat64 );
TEST_VMRL_OP( 5586,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat20, walking_zeros_dat61 );
TEST_VMRL_OP( 5636,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat46 );
TEST_VMRL_OP( 5654,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat64 );
TEST_VMRL_OP( 5659,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 5674,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 5683,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat22, walking_zeros_dat28 );
TEST_VMRL_OP( 5736,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 5737,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 5746,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 5755,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat35 );
TEST_VMRL_OP( 5759,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat39 );
TEST_VMRL_OP( 5773,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat53 );
TEST_VMRL_OP( 5784,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat64 );
TEST_VMRL_OP( 5789,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 5790,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 5804,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 5824,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat39 );
TEST_VMRL_OP( 5864,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 5866,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat16 );
TEST_VMRL_OP( 5886,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat36 );
TEST_VMRL_OP( 5889,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat39 );
TEST_VMRL_OP( 5896,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat46 );
TEST_VMRL_OP( 5900,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat50 );
TEST_VMRL_OP( 5902,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat52 );
TEST_VMRL_OP( 5907,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat57 );
TEST_VMRL_OP( 5913,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat63 );
TEST_VMRL_OP( 5927,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 5939,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 5946,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 5951,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat36 );
TEST_VMRL_OP( 6010,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat27, walking_zeros_dat30 );
TEST_VMRL_OP( 6048,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 6082,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_zeros_dat37 );
TEST_VMRL_OP( 6091,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_zeros_dat46 );
TEST_VMRL_OP( 6108,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_zeros_dat63 );
TEST_VMRL_OP( 6113,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 6127,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 6186,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 6209,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat34 );
TEST_VMRL_OP( 6211,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat36 );
TEST_VMRL_OP( 6236,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat61 );
TEST_VMRL_OP( 6256,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 6286,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat46 );
TEST_VMRL_OP( 6287,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat47 );
TEST_VMRL_OP( 6292,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat52 );
TEST_VMRL_OP( 6296,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat56 );
TEST_VMRL_OP( 6298,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat58 );
TEST_VMRL_OP( 6333,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 6338,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat33 );
TEST_VMRL_OP( 6386,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat16 );
TEST_VMRL_OP( 6393,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat23 );
TEST_VMRL_OP( 6400,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat30 );
TEST_VMRL_OP( 6420,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat50 );
TEST_VMRL_OP( 6443,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat34, walking_zeros_dat8 );
TEST_VMRL_OP( 6481,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat34, walking_zeros_dat46 );
TEST_VMRL_OP( 6491,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat34, walking_zeros_dat56 );
TEST_VMRL_OP( 6501,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat1 );
TEST_VMRL_OP( 6505,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat5 );
TEST_VMRL_OP( 6518,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat18 );
TEST_VMRL_OP( 6533,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat33 );
TEST_VMRL_OP( 6559,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat59 );
TEST_VMRL_OP( 6563,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat63 );
TEST_VMRL_OP( 6586,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat21 );
TEST_VMRL_OP( 6595,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat30 );
TEST_VMRL_OP( 6653,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_zeros_dat23 );
TEST_VMRL_OP( 6668,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_zeros_dat38 );
TEST_VMRL_OP( 6672,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_zeros_dat42 );
TEST_VMRL_OP( 6675,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat37, walking_zeros_dat45 );
TEST_VMRL_OP( 6712,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_zeros_dat17 );
TEST_VMRL_OP( 6720,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_zeros_dat25 );
TEST_VMRL_OP( 6730,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat38, walking_zeros_dat35 );
TEST_VMRL_OP( 6773,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat39, walking_zeros_dat13 );
TEST_VMRL_OP( 6793,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat39, walking_zeros_dat33 );
TEST_VMRL_OP( 6806,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat39, walking_zeros_dat46 );
TEST_VMRL_OP( 6814,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat39, walking_zeros_dat54 );
TEST_VMRL_OP( 6845,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat20 );
TEST_VMRL_OP( 6854,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat29 );
TEST_VMRL_OP( 6885,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat60 );
TEST_VMRL_OP( 6901,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat11 );
TEST_VMRL_OP( 6911,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat21 );
TEST_VMRL_OP( 6915,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat25 );
TEST_VMRL_OP( 6923,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat33 );
TEST_VMRL_OP( 6949,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat59 );
TEST_VMRL_OP( 6951,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat61 );
TEST_VMRL_OP( 6980,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_zeros_dat25 );
TEST_VMRL_OP( 7017,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat42, walking_zeros_dat62 );
TEST_VMRL_OP( 7072,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat43, walking_zeros_dat52 );
TEST_VMRL_OP( 7104,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat19 );
TEST_VMRL_OP( 7117,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat32 );
TEST_VMRL_OP( 7129,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 7138,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat53 );
TEST_VMRL_OP( 7145,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat60 );
TEST_VMRL_OP( 7191,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat41 );
TEST_VMRL_OP( 7200,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat50 );
TEST_VMRL_OP( 7214,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat64 );
TEST_VMRL_OP( 7226,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat11 );
TEST_VMRL_OP( 7242,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat27 );
TEST_VMRL_OP( 7246,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat31 );
TEST_VMRL_OP( 7259,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat44 );
TEST_VMRL_OP( 7267,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat52 );
TEST_VMRL_OP( 7280,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat0 );
TEST_VMRL_OP( 7309,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_zeros_dat29 );
TEST_VMRL_OP( 7327,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 7335,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat47, walking_zeros_dat55 );
TEST_VMRL_OP( 7395,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat48, walking_zeros_dat50 );
TEST_VMRL_OP( 7434,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat24 );
TEST_VMRL_OP( 7435,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat25 );
TEST_VMRL_OP( 7443,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat33 );
TEST_VMRL_OP( 7450,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat40 );
TEST_VMRL_OP( 7459,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 7474,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat64 );
TEST_VMRL_OP( 7476,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat1 );
TEST_VMRL_OP( 7515,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat40 );
TEST_VMRL_OP( 7536,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat61 );
TEST_VMRL_OP( 7540,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat0 );
TEST_VMRL_OP( 7566,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat26 );
TEST_VMRL_OP( 7578,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat38 );
TEST_VMRL_OP( 7581,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat41 );
TEST_VMRL_OP( 7621,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat16 );
TEST_VMRL_OP( 7626,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat21 );
TEST_VMRL_OP( 7627,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat22 );
TEST_VMRL_OP( 7638,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat33 );
TEST_VMRL_OP( 7646,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat41 );
TEST_VMRL_OP( 7675,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat5 );
TEST_VMRL_OP( 7679,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat9 );
TEST_VMRL_OP( 7690,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat20 );
TEST_VMRL_OP( 7695,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat25 );
TEST_VMRL_OP( 7727,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat57 );
TEST_VMRL_OP( 7739,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat4 );
TEST_VMRL_OP( 7750,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat15 );
TEST_VMRL_OP( 7759,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat24 );
TEST_VMRL_OP( 7767,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat32 );
TEST_VMRL_OP( 7789,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 7794,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat59 );
TEST_VMRL_OP( 7828,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat28 );
TEST_VMRL_OP( 7873,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat8 );
TEST_VMRL_OP( 7874,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat9 );
TEST_VMRL_OP( 7878,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat13 );
TEST_VMRL_OP( 7893,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat28 );
TEST_VMRL_OP( 7899,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat34 );
TEST_VMRL_OP( 7969,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat39 );
TEST_VMRL_OP( 7979,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat49 );
TEST_VMRL_OP( 8007,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_zeros_dat12 );
TEST_VMRL_OP( 8022,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_zeros_dat27 );
TEST_VMRL_OP( 8047,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_zeros_dat52 );
TEST_VMRL_OP( 8091,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat31 );
TEST_VMRL_OP( 8103,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat43 );
TEST_VMRL_OP( 8113,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat53 );
TEST_VMRL_OP( 8150,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat25 );
TEST_VMRL_OP( 8165,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat40 );
TEST_VMRL_OP( 8203,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat13 );
TEST_VMRL_OP( 8211,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat21 );
TEST_VMRL_OP( 8225,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat35 );
TEST_VMRL_OP( 8226,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat36 );
TEST_VMRL_OP( 8260,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat5 );
TEST_VMRL_OP( 8270,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat15 );
TEST_VMRL_OP( 8274,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat19 );
TEST_VMRL_OP( 8317,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 8340,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_zeros_dat20 );
TEST_VMRL_OP( 8347,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_zeros_dat27 );
TEST_VMRL_OP( 8360,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_zeros_dat40 );
TEST_VMRL_OP( 8361,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat63, walking_zeros_dat41 );
TEST_VMRL_OP( 8393,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat8 );
TEST_VMRL_OP( 8395,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat10 );
TEST_VMRL_OP( 8396,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat11 );
TEST_VMRL_OP( 8439,  vmornot.mm,  64,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat54 );
TEST_VMRL_OP( 8451,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 8455,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 8479,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 8485,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat35 );
TEST_VMRL_OP( 8500,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat50 );
TEST_VMRL_OP( 8519,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 8529,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 8534,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 8536,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 8552,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat37 );
TEST_VMRL_OP( 8577,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat62 );
TEST_VMRL_OP( 8587,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 8599,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat19 );
TEST_VMRL_OP( 8728,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 8732,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 8755,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat45 );
TEST_VMRL_OP( 8768,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat58 );
TEST_VMRL_OP( 8780,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 8839,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat64 );
TEST_VMRL_OP( 8840,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 8847,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 8851,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 8865,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 8911,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 8931,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat26 );
TEST_VMRL_OP( 8960,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat55 );
TEST_VMRL_OP( 8961,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat56 );
TEST_VMRL_OP( 8977,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 8983,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 8985,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 9002,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 9016,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat46 );
TEST_VMRL_OP( 9032,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat62 );
TEST_VMRL_OP( 9036,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 9037,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 9051,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 9054,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 9068,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat33 );
TEST_VMRL_OP( 9082,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat47 );
TEST_VMRL_OP( 9155,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat55 );
TEST_VMRL_OP( 9209,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat44 );
TEST_VMRL_OP( 9219,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat54 );
TEST_VMRL_OP( 9225,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat60 );
TEST_VMRL_OP( 9230,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 9250,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 9251,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat21 );
TEST_VMRL_OP( 9257,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 9309,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 9329,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat34 );
TEST_VMRL_OP( 9361,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 9373,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 9374,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 9378,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat18 );
TEST_VMRL_OP( 9436,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 9485,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat60 );
TEST_VMRL_OP( 9497,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 9498,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 9537,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat47 );
TEST_VMRL_OP( 9541,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat51 );
TEST_VMRL_OP( 9543,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat53 );
TEST_VMRL_OP( 9545,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat55 );
TEST_VMRL_OP( 9579,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat24 );
TEST_VMRL_OP( 9623,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat3 );
TEST_VMRL_OP( 9643,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 9657,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat37 );
TEST_VMRL_OP( 9683,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat63 );
TEST_VMRL_OP( 9698,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 9734,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat49 );
TEST_VMRL_OP( 9737,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat52 );
TEST_VMRL_OP( 9753,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat3 );
TEST_VMRL_OP( 9759,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 9762,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 9767,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 9776,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 9799,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat49 );
TEST_VMRL_OP( 9813,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat63 );
TEST_VMRL_OP( 9820,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat5 );
TEST_VMRL_OP( 9826,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat11 );
TEST_VMRL_OP( 9829,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 9832,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 9854,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat39 );
TEST_VMRL_OP( 9873,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat58 );
TEST_VMRL_OP( 9889,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 9891,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 9910,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 9911,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 9954,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 9965,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 10032,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 10048,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat38 );
TEST_VMRL_OP( 10052,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat42 );
TEST_VMRL_OP( 10060,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat50 );
TEST_VMRL_OP( 10062,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat52 );
TEST_VMRL_OP( 10084,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 10096,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 10102,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 10106,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 10107,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 10108,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat33 );
TEST_VMRL_OP( 10113,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat38 );
TEST_VMRL_OP( 10119,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat44 );
TEST_VMRL_OP( 10154,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 10190,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat50 );
TEST_VMRL_OP( 10223,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 10226,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 10249,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat44 );
TEST_VMRL_OP( 10276,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 10284,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 10297,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat27 );
TEST_VMRL_OP( 10299,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 10302,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 10307,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat37 );
TEST_VMRL_OP( 10324,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat54 );
TEST_VMRL_OP( 10338,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 10358,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 10362,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 10369,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat34 );
TEST_VMRL_OP( 10381,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat46 );
TEST_VMRL_OP( 10389,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat54 );
TEST_VMRL_OP( 10429,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 10473,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat8 );
TEST_VMRL_OP( 10474,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 10513,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat48 );
TEST_VMRL_OP( 10525,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat60 );
TEST_VMRL_OP( 10541,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 10550,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 10557,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 10579,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat49 );
TEST_VMRL_OP( 10589,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat59 );
TEST_VMRL_OP( 10616,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat21 );
TEST_VMRL_OP( 10619,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat24 );
TEST_VMRL_OP( 10642,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat47 );
TEST_VMRL_OP( 10645,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat50 );
TEST_VMRL_OP( 10662,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat2 );
TEST_VMRL_OP( 10719,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat59 );
TEST_VMRL_OP( 10722,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat62 );
TEST_VMRL_OP( 10742,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat17 );
TEST_VMRL_OP( 10761,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat36 );
TEST_VMRL_OP( 10764,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat39 );
TEST_VMRL_OP( 10775,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat50 );
TEST_VMRL_OP( 10784,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat59 );
TEST_VMRL_OP( 10837,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat47 );
TEST_VMRL_OP( 10851,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat61 );
TEST_VMRL_OP( 10860,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat5 );
TEST_VMRL_OP( 10870,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat15 );
TEST_VMRL_OP( 10892,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 10923,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat3 );
TEST_VMRL_OP( 10938,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat18 );
TEST_VMRL_OP( 10948,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat28 );
TEST_VMRL_OP( 10958,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 10959,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat39 );
TEST_VMRL_OP( 10963,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat43 );
TEST_VMRL_OP( 10985,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat0 );
TEST_VMRL_OP( 11005,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat20 );
TEST_VMRL_OP( 11008,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat23 );
TEST_VMRL_OP( 11034,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat49 );
TEST_VMRL_OP( 11059,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat9 );
TEST_VMRL_OP( 11063,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat13 );
TEST_VMRL_OP( 11073,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat23 );
TEST_VMRL_OP( 11089,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat39 );
TEST_VMRL_OP( 11137,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat22 );
TEST_VMRL_OP( 11163,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat48 );
TEST_VMRL_OP( 11175,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat60 );
TEST_VMRL_OP( 11200,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat20 );
TEST_VMRL_OP( 11222,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 11225,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat45 );
TEST_VMRL_OP( 11241,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat61 );
TEST_VMRL_OP( 11267,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat22 );
TEST_VMRL_OP( 11307,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat62 );
TEST_VMRL_OP( 11321,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat11 );
TEST_VMRL_OP( 11356,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat46 );
TEST_VMRL_OP( 11384,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat9 );
TEST_VMRL_OP( 11389,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat14 );
TEST_VMRL_OP( 11398,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat23 );
TEST_VMRL_OP( 11436,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat61 );
TEST_VMRL_OP( 11439,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat64 );
TEST_VMRL_OP( 11458,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat18 );
TEST_VMRL_OP( 11470,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat30 );
TEST_VMRL_OP( 11473,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat33 );
TEST_VMRL_OP( 11485,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat45 );
TEST_VMRL_OP( 11499,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat59 );
TEST_VMRL_OP( 11506,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat1 );
TEST_VMRL_OP( 11549,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat44 );
TEST_VMRL_OP( 11573,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat3 );
TEST_VMRL_OP( 11584,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat14 );
TEST_VMRL_OP( 11597,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat27 );
TEST_VMRL_OP( 11599,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat29 );
TEST_VMRL_OP( 11608,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat38 );
TEST_VMRL_OP( 11633,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat63 );
TEST_VMRL_OP( 11636,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat1 );
TEST_VMRL_OP( 11672,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat37 );
TEST_VMRL_OP( 11689,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat54 );
TEST_VMRL_OP( 11698,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat63 );
TEST_VMRL_OP( 11713,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat13 );
TEST_VMRL_OP( 11740,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat40 );
TEST_VMRL_OP( 11745,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat45 );
TEST_VMRL_OP( 11757,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat57 );
TEST_VMRL_OP( 11759,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat59 );
TEST_VMRL_OP( 11781,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat16 );
TEST_VMRL_OP( 11796,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat31 );
TEST_VMRL_OP( 11815,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat50 );
TEST_VMRL_OP( 11828,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat63 );
TEST_VMRL_OP( 11829,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat64 );
TEST_VMRL_OP( 11888,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat58 );
TEST_VMRL_OP( 11889,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat59 );
TEST_VMRL_OP( 11896,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat1 );
TEST_VMRL_OP( 11956,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat61 );
TEST_VMRL_OP( 11980,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat20 );
TEST_VMRL_OP( 12016,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat56 );
TEST_VMRL_OP( 12024,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat64 );
TEST_VMRL_OP( 12037,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat12 );
TEST_VMRL_OP( 12057,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat32 );
TEST_VMRL_OP( 12066,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat41 );
TEST_VMRL_OP( 12081,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat56 );
TEST_VMRL_OP( 12090,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat0 );
TEST_VMRL_OP( 12105,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat15 );
TEST_VMRL_OP( 12124,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat34 );
TEST_VMRL_OP( 12177,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat22 );
TEST_VMRL_OP( 12178,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat23 );
TEST_VMRL_OP( 12195,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat40 );
TEST_VMRL_OP( 12258,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat38 );
TEST_VMRL_OP( 12259,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat39 );
TEST_VMRL_OP( 12268,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat48 );
TEST_VMRL_OP( 12285,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat0 );
TEST_VMRL_OP( 12296,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat11 );
TEST_VMRL_OP( 12313,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat28 );
TEST_VMRL_OP( 12322,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat37 );
TEST_VMRL_OP( 12350,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat0 );
TEST_VMRL_OP( 12354,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat4 );
TEST_VMRL_OP( 12364,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat14 );
TEST_VMRL_OP( 12381,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat31 );
TEST_VMRL_OP( 12427,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat12 );
TEST_VMRL_OP( 12437,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat22 );
TEST_VMRL_OP( 12445,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat30 );
TEST_VMRL_OP( 12450,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat35 );
TEST_VMRL_OP( 12501,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat21 );
TEST_VMRL_OP( 12507,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat27 );
TEST_VMRL_OP( 12509,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat29 );
TEST_VMRL_OP( 12517,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat37 );
TEST_VMRL_OP( 12536,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat56 );
TEST_VMRL_OP( 12543,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat63 );
TEST_VMRL_OP( 12551,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat6 );
TEST_VMRL_OP( 12558,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat13 );
TEST_VMRL_OP( 12567,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat22 );
TEST_VMRL_OP( 12609,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat64 );
TEST_VMRL_OP( 12640,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat30 );
TEST_VMRL_OP( 12644,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat34 );
TEST_VMRL_OP( 12654,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat44 );
TEST_VMRL_OP( 12657,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat47 );
TEST_VMRL_OP( 12660,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat50 );
TEST_VMRL_OP( 12706,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 12712,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat37 );
TEST_VMRL_OP( 12716,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat41 );
TEST_VMRL_OP( 12760,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 12761,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 12770,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 12775,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat35 );
TEST_VMRL_OP( 12779,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat39 );
TEST_VMRL_OP( 12786,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat46 );
TEST_VMRL_OP( 12803,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat63 );
TEST_VMRL_OP( 12806,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 12816,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 12857,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat52 );
TEST_VMRL_OP( 12865,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat60 );
TEST_VMRL_OP( 12881,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 12892,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 12915,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat45 );
TEST_VMRL_OP( 12917,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat47 );
TEST_VMRL_OP( 12920,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat50 );
TEST_VMRL_OP( 12940,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 12975,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat40 );
TEST_VMRL_OP( 13014,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 13016,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 13035,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat35 );
TEST_VMRL_OP( 13037,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat37 );
TEST_VMRL_OP( 13092,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 13096,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 13160,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 13173,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat43 );
TEST_VMRL_OP( 13182,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat52 );
TEST_VMRL_OP( 13200,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 13259,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat64 );
TEST_VMRL_OP( 13275,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 13276,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 13282,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 13283,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 13309,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat49 );
TEST_VMRL_OP( 13329,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 13331,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 13362,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat37 );
TEST_VMRL_OP( 13375,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat50 );
TEST_VMRL_OP( 13387,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat62 );
TEST_VMRL_OP( 13422,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 13423,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat33 );
TEST_VMRL_OP( 13456,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 13506,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat51 );
TEST_VMRL_OP( 13520,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 13524,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 13527,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 13545,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat25 );
TEST_VMRL_OP( 13562,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat42 );
TEST_VMRL_OP( 13599,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 13653,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 13668,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 13696,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat46 );
TEST_VMRL_OP( 13701,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat51 );
TEST_VMRL_OP( 13709,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat59 );
TEST_VMRL_OP( 13718,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 13786,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 13841,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat61 );
TEST_VMRL_OP( 13865,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 13880,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat35 );
TEST_VMRL_OP( 13883,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat38 );
TEST_VMRL_OP( 13896,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat51 );
TEST_VMRL_OP( 13908,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat63 );
TEST_VMRL_OP( 13919,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat9 );
TEST_VMRL_OP( 13934,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 13939,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 13942,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat32 );
TEST_VMRL_OP( 13943,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat33 );
TEST_VMRL_OP( 13952,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat42 );
TEST_VMRL_OP( 13960,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat50 );
TEST_VMRL_OP( 13965,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat55 );
TEST_VMRL_OP( 13979,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat4 );
TEST_VMRL_OP( 13993,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 13996,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 14000,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat25 );
TEST_VMRL_OP( 14015,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat40 );
TEST_VMRL_OP( 14016,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat41 );
TEST_VMRL_OP( 14021,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat46 );
TEST_VMRL_OP( 14059,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 14061,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 14087,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat47 );
TEST_VMRL_OP( 14089,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat49 );
TEST_VMRL_OP( 14141,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat36 );
TEST_VMRL_OP( 14147,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat42 );
TEST_VMRL_OP( 14153,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat48 );
TEST_VMRL_OP( 14174,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 14188,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat18 );
TEST_VMRL_OP( 14195,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 14199,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 14211,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat41 );
TEST_VMRL_OP( 14253,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 14260,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 14267,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 14277,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat42 );
TEST_VMRL_OP( 14286,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat51 );
TEST_VMRL_OP( 14298,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat63 );
TEST_VMRL_OP( 14334,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat34 );
TEST_VMRL_OP( 14349,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat49 );
TEST_VMRL_OP( 14389,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 14419,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat54 );
TEST_VMRL_OP( 14422,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat57 );
TEST_VMRL_OP( 14434,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 14446,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 14464,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat34 );
TEST_VMRL_OP( 14482,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat52 );
TEST_VMRL_OP( 14491,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat61 );
TEST_VMRL_OP( 14528,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat33 );
TEST_VMRL_OP( 14537,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat42 );
TEST_VMRL_OP( 14586,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 14589,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 14591,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat31 );
TEST_VMRL_OP( 14672,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat47 );
TEST_VMRL_OP( 14674,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat49 );
TEST_VMRL_OP( 14695,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 14710,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 14729,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat39 );
TEST_VMRL_OP( 14735,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat45 );
TEST_VMRL_OP( 14757,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 14766,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat11 );
TEST_VMRL_OP( 14775,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 14777,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 14791,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat36 );
TEST_VMRL_OP( 14821,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat1 );
TEST_VMRL_OP( 14823,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat3 );
TEST_VMRL_OP( 14826,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat6 );
TEST_VMRL_OP( 14830,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat10 );
TEST_VMRL_OP( 14835,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat15 );
TEST_VMRL_OP( 14836,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat16 );
TEST_VMRL_OP( 14844,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat24 );
TEST_VMRL_OP( 14882,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat62 );
TEST_VMRL_OP( 14908,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat23 );
TEST_VMRL_OP( 14911,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat26 );
TEST_VMRL_OP( 14912,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat27 );
TEST_VMRL_OP( 14918,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat33 );
TEST_VMRL_OP( 14940,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat55 );
TEST_VMRL_OP( 14946,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat61 );
TEST_VMRL_OP( 14963,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat13 );
TEST_VMRL_OP( 14969,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat19 );
TEST_VMRL_OP( 14970,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat20 );
TEST_VMRL_OP( 14973,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat23 );
TEST_VMRL_OP( 14980,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat30 );
TEST_VMRL_OP( 15029,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat14 );
TEST_VMRL_OP( 15032,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat17 );
TEST_VMRL_OP( 15070,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat55 );
TEST_VMRL_OP( 15087,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat7 );
TEST_VMRL_OP( 15089,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat9 );
TEST_VMRL_OP( 15118,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat38 );
TEST_VMRL_OP( 15128,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat48 );
TEST_VMRL_OP( 15140,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat60 );
TEST_VMRL_OP( 15174,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat29 );
TEST_VMRL_OP( 15179,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat34 );
TEST_VMRL_OP( 15214,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat4 );
TEST_VMRL_OP( 15219,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat9 );
TEST_VMRL_OP( 15230,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat20 );
TEST_VMRL_OP( 15235,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat25 );
TEST_VMRL_OP( 15237,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat27 );
TEST_VMRL_OP( 15268,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat58 );
TEST_VMRL_OP( 15283,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat8 );
TEST_VMRL_OP( 15325,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat50 );
TEST_VMRL_OP( 15330,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat55 );
TEST_VMRL_OP( 15338,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat63 );
TEST_VMRL_OP( 15365,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat25 );
TEST_VMRL_OP( 15411,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat6 );
TEST_VMRL_OP( 15418,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat13 );
TEST_VMRL_OP( 15429,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat24 );
TEST_VMRL_OP( 15443,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat38 );
TEST_VMRL_OP( 15453,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat48 );
TEST_VMRL_OP( 15460,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat55 );
TEST_VMRL_OP( 15469,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat64 );
TEST_VMRL_OP( 15507,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat37 );
TEST_VMRL_OP( 15517,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat47 );
TEST_VMRL_OP( 15518,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat48 );
TEST_VMRL_OP( 15523,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat53 );
TEST_VMRL_OP( 15546,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat11 );
TEST_VMRL_OP( 15583,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat48 );
TEST_VMRL_OP( 15591,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat56 );
TEST_VMRL_OP( 15598,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat63 );
TEST_VMRL_OP( 15666,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat1 );
TEST_VMRL_OP( 15687,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat22 );
TEST_VMRL_OP( 15701,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat36 );
TEST_VMRL_OP( 15703,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat38 );
TEST_VMRL_OP( 15707,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat42 );
TEST_VMRL_OP( 15735,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat5 );
TEST_VMRL_OP( 15753,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat23 );
TEST_VMRL_OP( 15785,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat55 );
TEST_VMRL_OP( 15789,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat59 );
TEST_VMRL_OP( 15832,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat37 );
TEST_VMRL_OP( 15859,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat64 );
TEST_VMRL_OP( 15924,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat64 );
TEST_VMRL_OP( 15937,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat12 );
TEST_VMRL_OP( 15964,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat39 );
TEST_VMRL_OP( 15972,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat47 );
TEST_VMRL_OP( 16005,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat15 );
TEST_VMRL_OP( 16015,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat25 );
TEST_VMRL_OP( 16019,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat29 );
TEST_VMRL_OP( 16027,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat37 );
TEST_VMRL_OP( 16031,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat41 );
TEST_VMRL_OP( 16068,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat13 );
TEST_VMRL_OP( 16073,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat18 );
TEST_VMRL_OP( 16074,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat19 );
TEST_VMRL_OP( 16080,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat25 );
TEST_VMRL_OP( 16091,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat36 );
TEST_VMRL_OP( 16105,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat50 );
TEST_VMRL_OP( 16106,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat51 );
TEST_VMRL_OP( 16121,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat1 );
TEST_VMRL_OP( 16125,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat5 );
TEST_VMRL_OP( 16140,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat20 );
TEST_VMRL_OP( 16150,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat30 );
TEST_VMRL_OP( 16151,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat31 );
TEST_VMRL_OP( 16168,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat48 );
TEST_VMRL_OP( 16171,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat51 );
TEST_VMRL_OP( 16193,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat8 );
TEST_VMRL_OP( 16205,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat20 );
TEST_VMRL_OP( 16224,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat39 );
TEST_VMRL_OP( 16232,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat47 );
TEST_VMRL_OP( 16238,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat53 );
TEST_VMRL_OP( 16244,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat59 );
TEST_VMRL_OP( 16254,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat4 );
TEST_VMRL_OP( 16255,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat5 );
TEST_VMRL_OP( 16269,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat19 );
TEST_VMRL_OP( 16279,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat29 );
TEST_VMRL_OP( 16286,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat36 );
TEST_VMRL_OP( 16322,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat7 );
TEST_VMRL_OP( 16327,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat12 );
TEST_VMRL_OP( 16344,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat29 );
TEST_VMRL_OP( 16348,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat33 );
TEST_VMRL_OP( 16365,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat50 );
TEST_VMRL_OP( 16376,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat61 );
TEST_VMRL_OP( 16384,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat4 );
TEST_VMRL_OP( 16418,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat38 );
TEST_VMRL_OP( 16494,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat49 );
TEST_VMRL_OP( 16508,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat63 );
TEST_VMRL_OP( 16509,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat64 );
TEST_VMRL_OP( 16546,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat36 );
TEST_VMRL_OP( 16573,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat63 );
TEST_VMRL_OP( 16576,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat1 );
TEST_VMRL_OP( 16577,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat2 );
TEST_VMRL_OP( 16614,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat39 );
TEST_VMRL_OP( 16618,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat43 );
TEST_VMRL_OP( 16631,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat56 );
TEST_VMRL_OP( 16635,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 16642,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat2 );
TEST_VMRL_OP( 16651,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat11 );
TEST_VMRL_OP( 16658,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat18 );
TEST_VMRL_OP( 16663,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat23 );
TEST_VMRL_OP( 16677,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat37 );
TEST_VMRL_OP( 16678,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat38 );
TEST_VMRL_OP( 16714,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat9 );
TEST_VMRL_OP( 16753,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat48 );
TEST_VMRL_OP( 16754,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat49 );
TEST_VMRL_OP( 16788,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat18 );
TEST_VMRL_OP( 16811,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat41 );
TEST_VMRL_OP( 16827,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat57 );
TEST_VMRL_OP( 16832,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat62 );
TEST_VMRL_OP( 16836,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat1 );
TEST_VMRL_OP( 16849,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat14 );
TEST_VMRL_OP( 16855,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat20 );
TEST_VMRL_OP( 16860,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat25 );
TEST_VMRL_OP( 16880,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat45 );
TEST_VMRL_OP( 16882,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat47 );
TEST_VMRL_OP( 16900,  vmornot.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmornot.mm,  64,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmornot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33975,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33976,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33977,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33978,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33979,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33980,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33981,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33982,  vmornot.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
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
    

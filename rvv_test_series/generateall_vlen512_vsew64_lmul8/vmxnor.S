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
    # vmxnor.S
    #-----------------------------------------------------------------------------
    #
    # Test vmxnor instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmxnor)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmxnor tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 12,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 13,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 23,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 26,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_ones_dat26 );
TEST_VMRL_OP( 66,  vmxnor.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 70,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 75,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 82,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_ones_dat17 );
TEST_VMRL_OP( 88,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 120,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_ones_dat55 );
TEST_VMRL_OP( 149,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 166,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_ones_dat36 );
TEST_VMRL_OP( 177,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_ones_dat47 );
TEST_VMRL_OP( 196,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 234,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_ones_dat39 );
TEST_VMRL_OP( 254,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_ones_dat59 );
TEST_VMRL_OP( 263,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 294,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_ones_dat34 );
TEST_VMRL_OP( 311,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_ones_dat51 );
TEST_VMRL_OP( 316,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_ones_dat56 );
TEST_VMRL_OP( 322,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_ones_dat62 );
TEST_VMRL_OP( 342,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_ones_dat17 );
TEST_VMRL_OP( 343,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_ones_dat18 );
TEST_VMRL_OP( 366,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_ones_dat41 );
TEST_VMRL_OP( 388,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_ones_dat63 );
TEST_VMRL_OP( 396,  vmxnor.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 404,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 410,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_ones_dat20 );
TEST_VMRL_OP( 427,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_ones_dat37 );
TEST_VMRL_OP( 429,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_ones_dat39 );
TEST_VMRL_OP( 433,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_ones_dat43 );
TEST_VMRL_OP( 443,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_ones_dat53 );
TEST_VMRL_OP( 482,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 483,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 486,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 582,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_ones_dat62 );
TEST_VMRL_OP( 607,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 611,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_ones_dat26 );
TEST_VMRL_OP( 616,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 644,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_ones_dat59 );
TEST_VMRL_OP( 650,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 677,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 679,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 692,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_ones_dat42 );
TEST_VMRL_OP( 693,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_ones_dat43 );
TEST_VMRL_OP( 708,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_ones_dat58 );
TEST_VMRL_OP( 741,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 768,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_ones_dat53 );
TEST_VMRL_OP( 791,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 797,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_ones_dat17 );
TEST_VMRL_OP( 806,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_ones_dat26 );
TEST_VMRL_OP( 820,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_ones_dat40 );
TEST_VMRL_OP( 822,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_ones_dat42 );
TEST_VMRL_OP( 849,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 880,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat13, walking_ones_dat35 );
TEST_VMRL_OP( 898,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat13, walking_ones_dat53 );
TEST_VMRL_OP( 906,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat13, walking_ones_dat61 );
TEST_VMRL_OP( 942,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 944,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_ones_dat34 );
TEST_VMRL_OP( 996,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 1028,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_ones_dat53 );
TEST_VMRL_OP( 1042,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 1058,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 1063,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_ones_dat23 );
TEST_VMRL_OP( 1085,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_ones_dat45 );
TEST_VMRL_OP( 1105,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 1162,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_ones_dat57 );
TEST_VMRL_OP( 1163,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_ones_dat58 );
TEST_VMRL_OP( 1196,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 1249,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 1273,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_ones_dat38 );
TEST_VMRL_OP( 1275,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_ones_dat40 );
TEST_VMRL_OP( 1287,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_ones_dat52 );
TEST_VMRL_OP( 1305,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_ones_dat5 );
TEST_VMRL_OP( 1310,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 1365,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 1388,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 1404,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_ones_dat39 );
TEST_VMRL_OP( 1426,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_ones_dat61 );
TEST_VMRL_OP( 1436,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 1479,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_ones_dat49 );
TEST_VMRL_OP( 1486,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_ones_dat56 );
TEST_VMRL_OP( 1500,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 1535,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_ones_dat40 );
TEST_VMRL_OP( 1551,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_ones_dat56 );
TEST_VMRL_OP( 1563,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 1649,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_ones_dat24 );
TEST_VMRL_OP( 1684,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_ones_dat59 );
TEST_VMRL_OP( 1699,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 1707,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 1708,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 1711,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_ones_dat21 );
TEST_VMRL_OP( 1733,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_ones_dat43 );
TEST_VMRL_OP( 1772,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_ones_dat17 );
TEST_VMRL_OP( 1778,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_ones_dat23 );
TEST_VMRL_OP( 1783,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_ones_dat28 );
TEST_VMRL_OP( 1785,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 1792,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_ones_dat37 );
TEST_VMRL_OP( 1798,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_ones_dat43 );
TEST_VMRL_OP( 1804,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_ones_dat49 );
TEST_VMRL_OP( 1821,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_ones_dat1 );
TEST_VMRL_OP( 1827,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 1833,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 1841,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 1846,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 1861,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_ones_dat41 );
TEST_VMRL_OP( 1888,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 1895,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 1906,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_ones_dat21 );
TEST_VMRL_OP( 1921,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_ones_dat36 );
TEST_VMRL_OP( 1930,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_ones_dat45 );
TEST_VMRL_OP( 1931,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_ones_dat46 );
TEST_VMRL_OP( 1936,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_ones_dat51 );
TEST_VMRL_OP( 1956,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_ones_dat6 );
TEST_VMRL_OP( 1980,  vmxnor.mm,  64,  0x0000000000000040, walking_ones_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 2005,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_ones_dat55 );
TEST_VMRL_OP( 2011,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_ones_dat61 );
TEST_VMRL_OP( 2017,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 2024,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_ones_dat9 );
TEST_VMRL_OP( 2046,  vmxnor.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 2065,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_ones_dat50 );
TEST_VMRL_OP( 2069,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_ones_dat54 );
TEST_VMRL_OP( 2071,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_ones_dat56 );
TEST_VMRL_OP( 2111,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 2113,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_ones_dat33 );
TEST_VMRL_OP( 2142,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_ones_dat62 );
TEST_VMRL_OP( 2157,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_ones_dat12 );
TEST_VMRL_OP( 2169,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_ones_dat24 );
TEST_VMRL_OP( 2170,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_ones_dat25 );
TEST_VMRL_OP( 2174,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_ones_dat29 );
TEST_VMRL_OP( 2233,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_ones_dat23 );
TEST_VMRL_OP( 2237,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_ones_dat27 );
TEST_VMRL_OP( 2241,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_ones_dat31 );
TEST_VMRL_OP( 2277,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat2 );
TEST_VMRL_OP( 2300,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat25 );
TEST_VMRL_OP( 2306,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat31 );
TEST_VMRL_OP( 2322,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat47 );
TEST_VMRL_OP( 2325,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat50 );
TEST_VMRL_OP( 2328,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat53 );
TEST_VMRL_OP( 2329,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat54 );
TEST_VMRL_OP( 2337,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_ones_dat62 );
TEST_VMRL_OP( 2343,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_ones_dat3 );
TEST_VMRL_OP( 2360,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_ones_dat20 );
TEST_VMRL_OP( 2364,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_ones_dat24 );
TEST_VMRL_OP( 2379,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_ones_dat39 );
TEST_VMRL_OP( 2413,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_ones_dat8 );
TEST_VMRL_OP( 2417,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_ones_dat12 );
TEST_VMRL_OP( 2421,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_ones_dat16 );
TEST_VMRL_OP( 2431,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_ones_dat26 );
TEST_VMRL_OP( 2445,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_ones_dat40 );
TEST_VMRL_OP( 2447,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_ones_dat42 );
TEST_VMRL_OP( 2484,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_ones_dat14 );
TEST_VMRL_OP( 2492,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_ones_dat22 );
TEST_VMRL_OP( 2494,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_ones_dat24 );
TEST_VMRL_OP( 2531,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_ones_dat61 );
TEST_VMRL_OP( 2532,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_ones_dat62 );
TEST_VMRL_OP( 2543,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat8 );
TEST_VMRL_OP( 2544,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat9 );
TEST_VMRL_OP( 2545,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat10 );
TEST_VMRL_OP( 2560,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat25 );
TEST_VMRL_OP( 2572,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat37 );
TEST_VMRL_OP( 2581,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat46 );
TEST_VMRL_OP( 2583,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat48 );
TEST_VMRL_OP( 2588,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat53 );
TEST_VMRL_OP( 2596,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat61 );
TEST_VMRL_OP( 2599,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_ones_dat64 );
TEST_VMRL_OP( 2637,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_ones_dat37 );
TEST_VMRL_OP( 2649,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_ones_dat49 );
TEST_VMRL_OP( 2651,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_ones_dat51 );
TEST_VMRL_OP( 2661,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_ones_dat61 );
TEST_VMRL_OP( 2684,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_ones_dat19 );
TEST_VMRL_OP( 2701,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_ones_dat36 );
TEST_VMRL_OP( 2710,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_ones_dat45 );
TEST_VMRL_OP( 2712,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_ones_dat47 );
TEST_VMRL_OP( 2718,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_ones_dat53 );
TEST_VMRL_OP( 2734,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_ones_dat4 );
TEST_VMRL_OP( 2739,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_ones_dat9 );
TEST_VMRL_OP( 2749,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_ones_dat19 );
TEST_VMRL_OP( 2804,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_ones_dat9 );
TEST_VMRL_OP( 2808,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_ones_dat13 );
TEST_VMRL_OP( 2833,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_ones_dat38 );
TEST_VMRL_OP( 2840,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_ones_dat45 );
TEST_VMRL_OP( 2857,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_ones_dat62 );
TEST_VMRL_OP( 2862,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_ones_dat2 );
TEST_VMRL_OP( 2868,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_ones_dat8 );
TEST_VMRL_OP( 2872,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_ones_dat12 );
TEST_VMRL_OP( 2904,  vmxnor.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 2931,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_ones_dat6 );
TEST_VMRL_OP( 2961,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_ones_dat36 );
TEST_VMRL_OP( 2968,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_ones_dat43 );
TEST_VMRL_OP( 2994,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_ones_dat4 );
TEST_VMRL_OP( 2996,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_ones_dat6 );
TEST_VMRL_OP( 2998,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_ones_dat8 );
TEST_VMRL_OP( 3001,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_ones_dat11 );
TEST_VMRL_OP( 3026,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_ones_dat36 );
TEST_VMRL_OP( 3030,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat46, walking_ones_dat40 );
TEST_VMRL_OP( 3109,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_ones_dat54 );
TEST_VMRL_OP( 3149,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_ones_dat29 );
TEST_VMRL_OP( 3198,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_ones_dat13 );
TEST_VMRL_OP( 3215,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_ones_dat30 );
TEST_VMRL_OP( 3252,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_ones_dat2 );
TEST_VMRL_OP( 3350,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_ones_dat35 );
TEST_VMRL_OP( 3375,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_ones_dat60 );
TEST_VMRL_OP( 3380,  vmxnor.mm,  64,  0x000000000000003f, walking_ones_dat52, walking_ones_dat0 );
TEST_VMRL_OP( 3394,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_ones_dat14 );
TEST_VMRL_OP( 3449,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_ones_dat4 );
TEST_VMRL_OP( 3470,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_ones_dat25 );
TEST_VMRL_OP( 3475,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_ones_dat30 );
TEST_VMRL_OP( 3489,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_ones_dat44 );
TEST_VMRL_OP( 3525,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_ones_dat15 );
TEST_VMRL_OP( 3573,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_ones_dat63 );
TEST_VMRL_OP( 3597,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_ones_dat22 );
TEST_VMRL_OP( 3604,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_ones_dat29 );
TEST_VMRL_OP( 3672,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat56, walking_ones_dat32 );
TEST_VMRL_OP( 3715,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_ones_dat10 );
TEST_VMRL_OP( 3718,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_ones_dat13 );
TEST_VMRL_OP( 3724,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_ones_dat19 );
TEST_VMRL_OP( 3744,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_ones_dat39 );
TEST_VMRL_OP( 3772,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat58, walking_ones_dat2 );
TEST_VMRL_OP( 3786,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat58, walking_ones_dat16 );
TEST_VMRL_OP( 3830,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat58, walking_ones_dat60 );
TEST_VMRL_OP( 3853,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat59, walking_ones_dat18 );
TEST_VMRL_OP( 3860,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat59, walking_ones_dat25 );
TEST_VMRL_OP( 3867,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat59, walking_ones_dat32 );
TEST_VMRL_OP( 3935,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat60, walking_ones_dat35 );
TEST_VMRL_OP( 3942,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat60, walking_ones_dat42 );
TEST_VMRL_OP( 3982,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_ones_dat17 );
TEST_VMRL_OP( 3989,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_ones_dat24 );
TEST_VMRL_OP( 3998,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_ones_dat33 );
TEST_VMRL_OP( 4006,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_ones_dat41 );
TEST_VMRL_OP( 4032,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_ones_dat2 );
TEST_VMRL_OP( 4039,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_ones_dat9 );
TEST_VMRL_OP( 4050,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_ones_dat20 );
TEST_VMRL_OP( 4066,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_ones_dat36 );
TEST_VMRL_OP( 4077,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_ones_dat47 );
TEST_VMRL_OP( 4088,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_ones_dat58 );
TEST_VMRL_OP( 4127,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_ones_dat32 );
TEST_VMRL_OP( 4135,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_ones_dat40 );
TEST_VMRL_OP( 4137,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_ones_dat42 );
TEST_VMRL_OP( 4144,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_ones_dat49 );
TEST_VMRL_OP( 4148,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_ones_dat53 );
TEST_VMRL_OP( 4180,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_ones_dat20 );
TEST_VMRL_OP( 4192,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_ones_dat32 );
TEST_VMRL_OP( 4193,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_ones_dat33 );
TEST_VMRL_OP( 4198,  vmxnor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_ones_dat38 );
TEST_VMRL_OP( 4288,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat63 );
TEST_VMRL_OP( 4313,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 4315,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat25 );
TEST_VMRL_OP( 4324,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat34 );
TEST_VMRL_OP( 4352,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat62 );
TEST_VMRL_OP( 4357,  vmxnor.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4358,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 4362,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 4363,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 4381,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 4382,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 4385,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 4395,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat40 );
TEST_VMRL_OP( 4439,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 4443,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 4465,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat45 );
TEST_VMRL_OP( 4470,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat50 );
TEST_VMRL_OP( 4486,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 4487,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 4495,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 4510,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 4541,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat56 );
TEST_VMRL_OP( 4595,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat45 );
TEST_VMRL_OP( 4603,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat53 );
TEST_VMRL_OP( 4605,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat55 );
TEST_VMRL_OP( 4639,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 4641,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 4644,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 4659,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat44 );
TEST_VMRL_OP( 4706,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat26 );
TEST_VMRL_OP( 4711,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 4727,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat47 );
TEST_VMRL_OP( 4767,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 4779,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat34 );
TEST_VMRL_OP( 4783,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat38 );
TEST_VMRL_OP( 4793,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat48 );
TEST_VMRL_OP( 4833,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 4860,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat50 );
TEST_VMRL_OP( 4861,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat51 );
TEST_VMRL_OP( 4878,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 4882,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 4884,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 4892,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat17 );
TEST_VMRL_OP( 4941,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 4957,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 4978,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat38 );
TEST_VMRL_OP( 4987,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat47 );
TEST_VMRL_OP( 5000,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat60 );
TEST_VMRL_OP( 5008,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 5011,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 5060,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat55 );
TEST_VMRL_OP( 5067,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat62 );
TEST_VMRL_OP( 5070,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 5072,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 5074,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 5077,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 5087,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 5089,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 5102,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat32 );
TEST_VMRL_OP( 5103,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat33 );
TEST_VMRL_OP( 5126,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat56 );
TEST_VMRL_OP( 5178,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat43 );
TEST_VMRL_OP( 5238,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat38 );
TEST_VMRL_OP( 5253,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat53 );
TEST_VMRL_OP( 5258,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat58 );
TEST_VMRL_OP( 5293,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 5297,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 5302,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat37 );
TEST_VMRL_OP( 5306,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat41 );
TEST_VMRL_OP( 5310,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat45 );
TEST_VMRL_OP( 5330,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat0 );
TEST_VMRL_OP( 5348,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 5350,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 5353,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat23 );
TEST_VMRL_OP( 5397,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat2 );
TEST_VMRL_OP( 5426,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat31 );
TEST_VMRL_OP( 5433,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat38 );
TEST_VMRL_OP( 5435,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat40 );
TEST_VMRL_OP( 5441,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat46 );
TEST_VMRL_OP( 5466,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 5475,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 5488,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat28 );
TEST_VMRL_OP( 5489,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat29 );
TEST_VMRL_OP( 5502,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat42 );
TEST_VMRL_OP( 5503,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat43 );
TEST_VMRL_OP( 5534,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 5537,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 5541,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 5574,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat49 );
TEST_VMRL_OP( 5580,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat55 );
TEST_VMRL_OP( 5598,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 5625,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat35 );
TEST_VMRL_OP( 5643,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat53 );
TEST_VMRL_OP( 5679,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat24 );
TEST_VMRL_OP( 5686,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 5719,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat64 );
TEST_VMRL_OP( 5724,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat4 );
TEST_VMRL_OP( 5802,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 5807,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 5844,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat59 );
TEST_VMRL_OP( 5869,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 5871,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 5882,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 5901,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat51 );
TEST_VMRL_OP( 5905,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat55 );
TEST_VMRL_OP( 5917,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 5920,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 5932,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 5948,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat33 );
TEST_VMRL_OP( 5955,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat40 );
TEST_VMRL_OP( 5964,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat49 );
TEST_VMRL_OP( 5979,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat64 );
TEST_VMRL_OP( 5994,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 6026,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat46 );
TEST_VMRL_OP( 6032,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat52 );
TEST_VMRL_OP( 6036,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat56 );
TEST_VMRL_OP( 6060,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat15 );
TEST_VMRL_OP( 6064,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 6068,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 6072,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat27 );
TEST_VMRL_OP( 6099,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat54 );
TEST_VMRL_OP( 6120,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 6126,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 6128,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 6132,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 6140,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 6156,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat46 );
TEST_VMRL_OP( 6175,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 6209,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat34 );
TEST_VMRL_OP( 6214,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat39 );
TEST_VMRL_OP( 6221,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat46 );
TEST_VMRL_OP( 6246,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 6293,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat53 );
TEST_VMRL_OP( 6313,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat8 );
TEST_VMRL_OP( 6317,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 6337,  vmxnor.mm,  64,  0x0000000000000040, walking_zeros_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 6355,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat50 );
TEST_VMRL_OP( 6370,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat0 );
TEST_VMRL_OP( 6407,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat37 );
TEST_VMRL_OP( 6446,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat11 );
TEST_VMRL_OP( 6458,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat23 );
TEST_VMRL_OP( 6462,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat27 );
TEST_VMRL_OP( 6486,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat51 );
TEST_VMRL_OP( 6488,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat53 );
TEST_VMRL_OP( 6543,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat43 );
TEST_VMRL_OP( 6562,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat62 );
TEST_VMRL_OP( 6597,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat32 );
TEST_VMRL_OP( 6626,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat61 );
TEST_VMRL_OP( 6645,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat15 );
TEST_VMRL_OP( 6651,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat21 );
TEST_VMRL_OP( 6677,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat47 );
TEST_VMRL_OP( 6709,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat14 );
TEST_VMRL_OP( 6711,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat16 );
TEST_VMRL_OP( 6747,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat52 );
TEST_VMRL_OP( 6750,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat55 );
TEST_VMRL_OP( 6772,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat12 );
TEST_VMRL_OP( 6775,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat15 );
TEST_VMRL_OP( 6781,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat21 );
TEST_VMRL_OP( 6788,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat28 );
TEST_VMRL_OP( 6801,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat41 );
TEST_VMRL_OP( 6810,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat50 );
TEST_VMRL_OP( 6854,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat29 );
TEST_VMRL_OP( 6859,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat34 );
TEST_VMRL_OP( 6925,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat35 );
TEST_VMRL_OP( 6934,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat44 );
TEST_VMRL_OP( 6964,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat9 );
TEST_VMRL_OP( 6972,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat17 );
TEST_VMRL_OP( 6987,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat32 );
TEST_VMRL_OP( 6996,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat41 );
TEST_VMRL_OP( 6999,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat44 );
TEST_VMRL_OP( 7000,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat45 );
TEST_VMRL_OP( 7008,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat53 );
TEST_VMRL_OP( 7026,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat6 );
TEST_VMRL_OP( 7032,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat12 );
TEST_VMRL_OP( 7097,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat12 );
TEST_VMRL_OP( 7102,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat17 );
TEST_VMRL_OP( 7149,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat64 );
TEST_VMRL_OP( 7175,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat25 );
TEST_VMRL_OP( 7184,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat34 );
TEST_VMRL_OP( 7191,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat41 );
TEST_VMRL_OP( 7196,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat46 );
TEST_VMRL_OP( 7201,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat51 );
TEST_VMRL_OP( 7208,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat58 );
TEST_VMRL_OP( 7211,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat61 );
TEST_VMRL_OP( 7238,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat23 );
TEST_VMRL_OP( 7274,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat59 );
TEST_VMRL_OP( 7276,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat61 );
TEST_VMRL_OP( 7311,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat31 );
TEST_VMRL_OP( 7319,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat39 );
TEST_VMRL_OP( 7332,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat52 );
TEST_VMRL_OP( 7353,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat8 );
TEST_VMRL_OP( 7368,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat23 );
TEST_VMRL_OP( 7378,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat33 );
TEST_VMRL_OP( 7410,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat0 );
TEST_VMRL_OP( 7420,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat10 );
TEST_VMRL_OP( 7446,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat36 );
TEST_VMRL_OP( 7471,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat61 );
TEST_VMRL_OP( 7492,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat17 );
TEST_VMRL_OP( 7493,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat18 );
TEST_VMRL_OP( 7496,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat21 );
TEST_VMRL_OP( 7510,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat35 );
TEST_VMRL_OP( 7553,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat13 );
TEST_VMRL_OP( 7575,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat35 );
TEST_VMRL_OP( 7588,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat48 );
TEST_VMRL_OP( 7592,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat52 );
TEST_VMRL_OP( 7621,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat16 );
TEST_VMRL_OP( 7639,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat34 );
TEST_VMRL_OP( 7649,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat44 );
TEST_VMRL_OP( 7700,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat30 );
TEST_VMRL_OP( 7704,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat34 );
TEST_VMRL_OP( 7717,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat47 );
TEST_VMRL_OP( 7730,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat60 );
TEST_VMRL_OP( 7738,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat3 );
TEST_VMRL_OP( 7745,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat10 );
TEST_VMRL_OP( 7752,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat17 );
TEST_VMRL_OP( 7766,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat31 );
TEST_VMRL_OP( 7771,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat36 );
TEST_VMRL_OP( 7776,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat41 );
TEST_VMRL_OP( 7782,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat47 );
TEST_VMRL_OP( 7790,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat55 );
TEST_VMRL_OP( 7838,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat38 );
TEST_VMRL_OP( 7850,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat50 );
TEST_VMRL_OP( 7855,  vmxnor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 7865,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat0 );
TEST_VMRL_OP( 7872,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat7 );
TEST_VMRL_OP( 7898,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat33 );
TEST_VMRL_OP( 7930,  vmxnor.mm,  64,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat0 );
TEST_VMRL_OP( 7947,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat17 );
TEST_VMRL_OP( 7960,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat30 );
TEST_VMRL_OP( 8010,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat15 );
TEST_VMRL_OP( 8041,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat46 );
TEST_VMRL_OP( 8052,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat57 );
TEST_VMRL_OP( 8085,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat25 );
TEST_VMRL_OP( 8099,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat39 );
TEST_VMRL_OP( 8121,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat61 );
TEST_VMRL_OP( 8124,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat64 );
TEST_VMRL_OP( 8148,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat23 );
TEST_VMRL_OP( 8173,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat48 );
TEST_VMRL_OP( 8178,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat53 );
TEST_VMRL_OP( 8184,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat59 );
TEST_VMRL_OP( 8225,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat35 );
TEST_VMRL_OP( 8227,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat37 );
TEST_VMRL_OP( 8231,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat41 );
TEST_VMRL_OP( 8240,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat50 );
TEST_VMRL_OP( 8288,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat33 );
TEST_VMRL_OP( 8358,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat38 );
TEST_VMRL_OP( 8362,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat42 );
TEST_VMRL_OP( 8395,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat10 );
TEST_VMRL_OP( 8437,  vmxnor.mm,  64,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat52 );
TEST_VMRL_OP( 8462,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 8470,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 8481,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 8517,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 8518,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 8537,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat22 );
TEST_VMRL_OP( 8570,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat55 );
TEST_VMRL_OP( 8585,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 8597,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 8602,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 8662,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 8681,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat36 );
TEST_VMRL_OP( 8699,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat54 );
TEST_VMRL_OP( 8709,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat64 );
TEST_VMRL_OP( 8724,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 8758,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat48 );
TEST_VMRL_OP( 8771,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat61 );
TEST_VMRL_OP( 8779,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 8783,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 8789,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 8797,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 8814,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat39 );
TEST_VMRL_OP( 8819,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat44 );
TEST_VMRL_OP( 8823,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat48 );
TEST_VMRL_OP( 8829,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat54 );
TEST_VMRL_OP( 8838,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat63 );
TEST_VMRL_OP( 8853,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 8926,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat21 );
TEST_VMRL_OP( 8945,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat40 );
TEST_VMRL_OP( 8962,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat57 );
TEST_VMRL_OP( 8973,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 8986,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 8990,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat20 );
TEST_VMRL_OP( 8993,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 8999,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 9041,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 9042,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 9072,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat37 );
TEST_VMRL_OP( 9097,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat62 );
TEST_VMRL_OP( 9125,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat25 );
TEST_VMRL_OP( 9126,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 9147,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat47 );
TEST_VMRL_OP( 9151,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat51 );
TEST_VMRL_OP( 9158,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat58 );
TEST_VMRL_OP( 9167,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 9182,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 9190,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 9191,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 9193,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat28 );
TEST_VMRL_OP( 9200,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat35 );
TEST_VMRL_OP( 9219,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat54 );
TEST_VMRL_OP( 9245,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 9274,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat44 );
TEST_VMRL_OP( 9322,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 9337,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat42 );
TEST_VMRL_OP( 9344,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat49 );
TEST_VMRL_OP( 9376,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 9434,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 9451,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat26 );
TEST_VMRL_OP( 9460,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat35 );
TEST_VMRL_OP( 9462,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat37 );
TEST_VMRL_OP( 9476,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat51 );
TEST_VMRL_OP( 9479,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat54 );
TEST_VMRL_OP( 9491,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 9531,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat41 );
TEST_VMRL_OP( 9539,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat49 );
TEST_VMRL_OP( 9549,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat59 );
TEST_VMRL_OP( 9556,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 9557,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 9560,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat5 );
TEST_VMRL_OP( 9595,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat40 );
TEST_VMRL_OP( 9627,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 9628,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 9677,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat57 );
TEST_VMRL_OP( 9691,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 9694,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 9699,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 9702,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 9710,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 9726,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat41 );
TEST_VMRL_OP( 9752,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat2 );
TEST_VMRL_OP( 9768,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 9791,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat41 );
TEST_VMRL_OP( 9808,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat58 );
TEST_VMRL_OP( 9840,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 9848,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat33 );
TEST_VMRL_OP( 9858,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat43 );
TEST_VMRL_OP( 9859,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat44 );
TEST_VMRL_OP( 9860,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat45 );
TEST_VMRL_OP( 9862,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat47 );
TEST_VMRL_OP( 9875,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat60 );
TEST_VMRL_OP( 9891,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 9945,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 9958,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 9971,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 9973,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat28 );
TEST_VMRL_OP( 10000,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat55 );
TEST_VMRL_OP( 10009,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat64 );
TEST_VMRL_OP( 10021,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 10027,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 10044,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat34 );
TEST_VMRL_OP( 10056,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat46 );
TEST_VMRL_OP( 10057,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat47 );
TEST_VMRL_OP( 10062,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat52 );
TEST_VMRL_OP( 10069,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat59 );
TEST_VMRL_OP( 10099,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 10111,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat36 );
TEST_VMRL_OP( 10113,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat38 );
TEST_VMRL_OP( 10118,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat43 );
TEST_VMRL_OP( 10154,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 10164,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 10176,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat36 );
TEST_VMRL_OP( 10189,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat49 );
TEST_VMRL_OP( 10200,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat60 );
TEST_VMRL_OP( 10219,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 10227,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 10253,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat48 );
TEST_VMRL_OP( 10257,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat52 );
TEST_VMRL_OP( 10279,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat9 );
TEST_VMRL_OP( 10281,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 10286,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 10302,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 10319,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat49 );
TEST_VMRL_OP( 10334,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat64 );
TEST_VMRL_OP( 10358,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 10375,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat40 );
TEST_VMRL_OP( 10378,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat43 );
TEST_VMRL_OP( 10394,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat59 );
TEST_VMRL_OP( 10409,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 10415,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 10428,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat28 );
TEST_VMRL_OP( 10499,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat34 );
TEST_VMRL_OP( 10505,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat40 );
TEST_VMRL_OP( 10512,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat47 );
TEST_VMRL_OP( 10525,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat60 );
TEST_VMRL_OP( 10537,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat7 );
TEST_VMRL_OP( 10562,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 10569,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat39 );
TEST_VMRL_OP( 10600,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat5 );
TEST_VMRL_OP( 10602,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat7 );
TEST_VMRL_OP( 10607,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat12 );
TEST_VMRL_OP( 10616,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat21 );
TEST_VMRL_OP( 10625,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat30 );
TEST_VMRL_OP( 10634,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat39 );
TEST_VMRL_OP( 10650,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat55 );
TEST_VMRL_OP( 10664,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_zeros_dat4 );
TEST_VMRL_OP( 10677,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_zeros_dat17 );
TEST_VMRL_OP( 10694,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 10700,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_zeros_dat40 );
TEST_VMRL_OP( 10744,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat35, walking_zeros_dat19 );
TEST_VMRL_OP( 10779,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat35, walking_zeros_dat54 );
TEST_VMRL_OP( 10796,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_zeros_dat6 );
TEST_VMRL_OP( 10810,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_zeros_dat20 );
TEST_VMRL_OP( 10816,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_zeros_dat26 );
TEST_VMRL_OP( 10869,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat14 );
TEST_VMRL_OP( 10870,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat15 );
TEST_VMRL_OP( 10878,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat23 );
TEST_VMRL_OP( 10900,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat45 );
TEST_VMRL_OP( 10907,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat52 );
TEST_VMRL_OP( 10943,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_zeros_dat23 );
TEST_VMRL_OP( 10968,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_zeros_dat48 );
TEST_VMRL_OP( 10984,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_zeros_dat64 );
TEST_VMRL_OP( 10991,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat6 );
TEST_VMRL_OP( 11011,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat26 );
TEST_VMRL_OP( 11014,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat29 );
TEST_VMRL_OP( 11034,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat49 );
TEST_VMRL_OP( 11044,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat59 );
TEST_VMRL_OP( 11045,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat60 );
TEST_VMRL_OP( 11055,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_zeros_dat5 );
TEST_VMRL_OP( 11101,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_zeros_dat51 );
TEST_VMRL_OP( 11113,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_zeros_dat63 );
TEST_VMRL_OP( 11133,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat18 );
TEST_VMRL_OP( 11147,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat32 );
TEST_VMRL_OP( 11157,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat42 );
TEST_VMRL_OP( 11167,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat52 );
TEST_VMRL_OP( 11185,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat5 );
TEST_VMRL_OP( 11188,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat8 );
TEST_VMRL_OP( 11196,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat16 );
TEST_VMRL_OP( 11206,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat26 );
TEST_VMRL_OP( 11209,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat29 );
TEST_VMRL_OP( 11210,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat30 );
TEST_VMRL_OP( 11250,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat43, walking_zeros_dat5 );
TEST_VMRL_OP( 11257,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat43, walking_zeros_dat12 );
TEST_VMRL_OP( 11294,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat43, walking_zeros_dat49 );
TEST_VMRL_OP( 11312,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat2 );
TEST_VMRL_OP( 11323,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat13 );
TEST_VMRL_OP( 11347,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat37 );
TEST_VMRL_OP( 11369,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat59 );
TEST_VMRL_OP( 11370,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat60 );
TEST_VMRL_OP( 11378,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat3 );
TEST_VMRL_OP( 11389,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat14 );
TEST_VMRL_OP( 11402,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat27 );
TEST_VMRL_OP( 11438,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat63 );
TEST_VMRL_OP( 11441,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat1 );
TEST_VMRL_OP( 11481,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat41 );
TEST_VMRL_OP( 11482,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat42 );
TEST_VMRL_OP( 11485,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat45 );
TEST_VMRL_OP( 11497,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat57 );
TEST_VMRL_OP( 11524,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat19 );
TEST_VMRL_OP( 11525,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat20 );
TEST_VMRL_OP( 11535,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat30 );
TEST_VMRL_OP( 11542,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat37 );
TEST_VMRL_OP( 11547,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat42 );
TEST_VMRL_OP( 11550,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat45 );
TEST_VMRL_OP( 11577,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_zeros_dat7 );
TEST_VMRL_OP( 11586,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_zeros_dat16 );
TEST_VMRL_OP( 11603,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_zeros_dat33 );
TEST_VMRL_OP( 11682,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat47 );
TEST_VMRL_OP( 11685,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat50 );
TEST_VMRL_OP( 11692,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat57 );
TEST_VMRL_OP( 11702,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat2 );
TEST_VMRL_OP( 11712,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat12 );
TEST_VMRL_OP( 11714,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat14 );
TEST_VMRL_OP( 11726,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat26 );
TEST_VMRL_OP( 11770,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat5 );
TEST_VMRL_OP( 11780,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat15 );
TEST_VMRL_OP( 11781,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat16 );
TEST_VMRL_OP( 11799,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat34 );
TEST_VMRL_OP( 11841,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat11 );
TEST_VMRL_OP( 11843,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat13 );
TEST_VMRL_OP( 11848,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat18 );
TEST_VMRL_OP( 11855,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat25 );
TEST_VMRL_OP( 11861,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat31 );
TEST_VMRL_OP( 11902,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat7 );
TEST_VMRL_OP( 11903,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat8 );
TEST_VMRL_OP( 11911,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat16 );
TEST_VMRL_OP( 11914,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat19 );
TEST_VMRL_OP( 11935,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat40 );
TEST_VMRL_OP( 11980,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_zeros_dat20 );
TEST_VMRL_OP( 11995,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_zeros_dat35 );
TEST_VMRL_OP( 12015,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_zeros_dat55 );
TEST_VMRL_OP( 12017,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_zeros_dat57 );
TEST_VMRL_OP( 12045,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_zeros_dat20 );
TEST_VMRL_OP( 12070,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_zeros_dat45 );
TEST_VMRL_OP( 12078,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_zeros_dat53 );
TEST_VMRL_OP( 12104,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat14 );
TEST_VMRL_OP( 12132,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat42 );
TEST_VMRL_OP( 12136,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat46 );
TEST_VMRL_OP( 12148,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat58 );
TEST_VMRL_OP( 12149,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat59 );
TEST_VMRL_OP( 12168,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_zeros_dat13 );
TEST_VMRL_OP( 12174,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_zeros_dat19 );
TEST_VMRL_OP( 12189,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_zeros_dat34 );
TEST_VMRL_OP( 12203,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_zeros_dat48 );
TEST_VMRL_OP( 12223,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat3 );
TEST_VMRL_OP( 12229,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat9 );
TEST_VMRL_OP( 12234,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat14 );
TEST_VMRL_OP( 12255,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat35 );
TEST_VMRL_OP( 12261,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat41 );
TEST_VMRL_OP( 12272,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat52 );
TEST_VMRL_OP( 12316,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_zeros_dat31 );
TEST_VMRL_OP( 12357,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_zeros_dat7 );
TEST_VMRL_OP( 12368,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_zeros_dat18 );
TEST_VMRL_OP( 12395,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_zeros_dat45 );
TEST_VMRL_OP( 12426,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_zeros_dat11 );
TEST_VMRL_OP( 12454,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_zeros_dat39 );
TEST_VMRL_OP( 12475,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_zeros_dat60 );
TEST_VMRL_OP( 12506,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat26 );
TEST_VMRL_OP( 12511,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat31 );
TEST_VMRL_OP( 12521,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat41 );
TEST_VMRL_OP( 12531,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat51 );
TEST_VMRL_OP( 12544,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat64 );
TEST_VMRL_OP( 12565,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat20 );
TEST_VMRL_OP( 12567,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat22 );
TEST_VMRL_OP( 12568,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat23 );
TEST_VMRL_OP( 12627,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat17 );
TEST_VMRL_OP( 12639,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat29 );
TEST_VMRL_OP( 12641,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat31 );
TEST_VMRL_OP( 12703,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 12704,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 12708,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat33 );
TEST_VMRL_OP( 12728,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat53 );
TEST_VMRL_OP( 12730,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat55 );
TEST_VMRL_OP( 12734,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat59 );
TEST_VMRL_OP( 12785,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat45 );
TEST_VMRL_OP( 12811,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 12815,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 12866,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat61 );
TEST_VMRL_OP( 12874,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 12909,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat39 );
TEST_VMRL_OP( 12944,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 12950,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 12977,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat42 );
TEST_VMRL_OP( 13009,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 13033,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat33 );
TEST_VMRL_OP( 13048,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat48 );
TEST_VMRL_OP( 13076,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 13095,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat30 );
TEST_VMRL_OP( 13104,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat39 );
TEST_VMRL_OP( 13132,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 13140,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 13145,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 13147,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat17 );
TEST_VMRL_OP( 13194,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat64 );
TEST_VMRL_OP( 13208,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 13212,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 13219,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 13222,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 13236,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat41 );
TEST_VMRL_OP( 13272,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 13286,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat26 );
TEST_VMRL_OP( 13298,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat38 );
TEST_VMRL_OP( 13322,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat62 );
TEST_VMRL_OP( 13343,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat18 );
TEST_VMRL_OP( 13365,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat40 );
TEST_VMRL_OP( 13368,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat43 );
TEST_VMRL_OP( 13381,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat56 );
TEST_VMRL_OP( 13388,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat63 );
TEST_VMRL_OP( 13408,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 13457,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 13463,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 13523,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 13524,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 13527,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 13536,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 13551,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat31 );
TEST_VMRL_OP( 13554,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat34 );
TEST_VMRL_OP( 13562,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat42 );
TEST_VMRL_OP( 13587,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 13596,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 13610,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 13622,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat37 );
TEST_VMRL_OP( 13631,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat46 );
TEST_VMRL_OP( 13634,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat49 );
TEST_VMRL_OP( 13637,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat52 );
TEST_VMRL_OP( 13643,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat58 );
TEST_VMRL_OP( 13651,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 13697,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat47 );
TEST_VMRL_OP( 13699,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat49 );
TEST_VMRL_OP( 13713,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat63 );
TEST_VMRL_OP( 13736,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat21 );
TEST_VMRL_OP( 13771,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat56 );
TEST_VMRL_OP( 13786,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 13791,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat11 );
TEST_VMRL_OP( 13798,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 13821,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat41 );
TEST_VMRL_OP( 13826,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat46 );
TEST_VMRL_OP( 13855,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 13870,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 13889,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat44 );
TEST_VMRL_OP( 13903,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat58 );
TEST_VMRL_OP( 13922,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 13978,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat3 );
TEST_VMRL_OP( 13985,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 14002,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat27 );
TEST_VMRL_OP( 14006,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 14007,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 14012,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat37 );
TEST_VMRL_OP( 14017,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat42 );
TEST_VMRL_OP( 14021,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat46 );
TEST_VMRL_OP( 14037,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat62 );
TEST_VMRL_OP( 14048,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat8 );
TEST_VMRL_OP( 14051,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 14060,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 14082,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat42 );
TEST_VMRL_OP( 14092,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat52 );
TEST_VMRL_OP( 14109,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat4 );
TEST_VMRL_OP( 14122,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 14127,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 14138,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat33 );
TEST_VMRL_OP( 14139,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat34 );
TEST_VMRL_OP( 14143,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat38 );
TEST_VMRL_OP( 14160,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat55 );
TEST_VMRL_OP( 14165,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat60 );
TEST_VMRL_OP( 14184,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 14200,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat30 );
TEST_VMRL_OP( 14230,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat60 );
TEST_VMRL_OP( 14231,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat61 );
TEST_VMRL_OP( 14270,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat35 );
TEST_VMRL_OP( 14282,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat47 );
TEST_VMRL_OP( 14283,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat48 );
TEST_VMRL_OP( 14300,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 14312,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 14313,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat13 );
TEST_VMRL_OP( 14330,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 14340,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat40 );
TEST_VMRL_OP( 14352,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat52 );
TEST_VMRL_OP( 14354,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat54 );
TEST_VMRL_OP( 14388,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 14397,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat32 );
TEST_VMRL_OP( 14399,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat34 );
TEST_VMRL_OP( 14452,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 14471,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat41 );
TEST_VMRL_OP( 14476,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat46 );
TEST_VMRL_OP( 14485,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat55 );
TEST_VMRL_OP( 14497,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 14509,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat14 );
TEST_VMRL_OP( 14512,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 14518,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 14521,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 14548,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat53 );
TEST_VMRL_OP( 14549,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat54 );
TEST_VMRL_OP( 14551,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat56 );
TEST_VMRL_OP( 14580,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 14592,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 14603,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat43 );
TEST_VMRL_OP( 14656,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 14704,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat14 );
TEST_VMRL_OP( 14710,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 14726,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat36 );
TEST_VMRL_OP( 14730,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat40 );
TEST_VMRL_OP( 14735,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat45 );
TEST_VMRL_OP( 14762,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat7 );
TEST_VMRL_OP( 14794,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat39 );
TEST_VMRL_OP( 14798,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat43 );
TEST_VMRL_OP( 14818,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat63 );
TEST_VMRL_OP( 14840,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat20 );
TEST_VMRL_OP( 14858,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat38 );
TEST_VMRL_OP( 14866,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat46 );
TEST_VMRL_OP( 14910,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat25 );
TEST_VMRL_OP( 14913,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat28 );
TEST_VMRL_OP( 14925,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat40 );
TEST_VMRL_OP( 14952,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat2 );
TEST_VMRL_OP( 14954,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat4 );
TEST_VMRL_OP( 15016,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat1 );
TEST_VMRL_OP( 15027,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat12 );
TEST_VMRL_OP( 15038,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat23 );
TEST_VMRL_OP( 15070,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat55 );
TEST_VMRL_OP( 15090,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat10 );
TEST_VMRL_OP( 15173,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat28 );
TEST_VMRL_OP( 15181,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat36 );
TEST_VMRL_OP( 15191,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat46 );
TEST_VMRL_OP( 15211,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat1 );
TEST_VMRL_OP( 15234,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat24 );
TEST_VMRL_OP( 15249,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 15251,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat41 );
TEST_VMRL_OP( 15293,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat18 );
TEST_VMRL_OP( 15306,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat31 );
TEST_VMRL_OP( 15318,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat43 );
TEST_VMRL_OP( 15345,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat5 );
TEST_VMRL_OP( 15355,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat15 );
TEST_VMRL_OP( 15366,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat26 );
TEST_VMRL_OP( 15374,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat34 );
TEST_VMRL_OP( 15379,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat39 );
TEST_VMRL_OP( 15392,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat52 );
TEST_VMRL_OP( 15398,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat58 );
TEST_VMRL_OP( 15400,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat60 );
TEST_VMRL_OP( 15406,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat1 );
TEST_VMRL_OP( 15414,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat9 );
TEST_VMRL_OP( 15419,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat14 );
TEST_VMRL_OP( 15431,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat26 );
TEST_VMRL_OP( 15438,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat33 );
TEST_VMRL_OP( 15441,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat36 );
TEST_VMRL_OP( 15467,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat62 );
TEST_VMRL_OP( 15483,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat13 );
TEST_VMRL_OP( 15491,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat21 );
TEST_VMRL_OP( 15519,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat49 );
TEST_VMRL_OP( 15530,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat60 );
TEST_VMRL_OP( 15532,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat62 );
TEST_VMRL_OP( 15539,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat4 );
TEST_VMRL_OP( 15547,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat12 );
TEST_VMRL_OP( 15548,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat13 );
TEST_VMRL_OP( 15568,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat33 );
TEST_VMRL_OP( 15588,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat53 );
TEST_VMRL_OP( 15633,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat45, walking_ones_dat33 );
TEST_VMRL_OP( 15636,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat45, walking_ones_dat36 );
TEST_VMRL_OP( 15644,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat45, walking_ones_dat44 );
TEST_VMRL_OP( 15645,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 15656,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat45, walking_ones_dat56 );
TEST_VMRL_OP( 15669,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat4 );
TEST_VMRL_OP( 15673,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat8 );
TEST_VMRL_OP( 15678,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat13 );
TEST_VMRL_OP( 15681,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat16 );
TEST_VMRL_OP( 15684,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat19 );
TEST_VMRL_OP( 15690,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat25 );
TEST_VMRL_OP( 15748,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat18 );
TEST_VMRL_OP( 15764,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat34 );
TEST_VMRL_OP( 15773,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat43 );
TEST_VMRL_OP( 15795,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat0 );
TEST_VMRL_OP( 15811,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat16 );
TEST_VMRL_OP( 15845,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat50 );
TEST_VMRL_OP( 15860,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat0 );
TEST_VMRL_OP( 15872,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat12 );
TEST_VMRL_OP( 15876,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat16 );
TEST_VMRL_OP( 15896,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat36 );
TEST_VMRL_OP( 15974,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat49 );
TEST_VMRL_OP( 15980,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat55 );
TEST_VMRL_OP( 15992,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat2 );
TEST_VMRL_OP( 15996,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat6 );
TEST_VMRL_OP( 16006,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat16 );
TEST_VMRL_OP( 16042,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat52 );
TEST_VMRL_OP( 16071,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat16 );
TEST_VMRL_OP( 16089,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat34 );
TEST_VMRL_OP( 16098,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat43 );
TEST_VMRL_OP( 16118,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat63 );
TEST_VMRL_OP( 16144,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat24 );
TEST_VMRL_OP( 16163,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat43 );
TEST_VMRL_OP( 16165,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat45 );
TEST_VMRL_OP( 16180,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat60 );
TEST_VMRL_OP( 16185,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat0 );
TEST_VMRL_OP( 16226,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat41 );
TEST_VMRL_OP( 16270,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat20 );
TEST_VMRL_OP( 16292,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat42 );
TEST_VMRL_OP( 16293,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat43 );
TEST_VMRL_OP( 16299,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat49 );
TEST_VMRL_OP( 16308,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat58 );
TEST_VMRL_OP( 16317,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat2 );
TEST_VMRL_OP( 16332,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat17 );
TEST_VMRL_OP( 16359,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat44 );
TEST_VMRL_OP( 16396,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat16 );
TEST_VMRL_OP( 16401,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat21 );
TEST_VMRL_OP( 16408,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat28 );
TEST_VMRL_OP( 16423,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat43 );
TEST_VMRL_OP( 16434,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat54 );
TEST_VMRL_OP( 16455,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat10 );
TEST_VMRL_OP( 16467,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat22 );
TEST_VMRL_OP( 16509,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat64 );
TEST_VMRL_OP( 16514,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat4 );
TEST_VMRL_OP( 16536,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat26 );
TEST_VMRL_OP( 16546,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat36 );
TEST_VMRL_OP( 16554,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat44 );
TEST_VMRL_OP( 16574,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat64 );
TEST_VMRL_OP( 16583,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat8 );
TEST_VMRL_OP( 16595,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat20 );
TEST_VMRL_OP( 16598,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat23 );
TEST_VMRL_OP( 16608,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat33 );
TEST_VMRL_OP( 16622,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat47 );
TEST_VMRL_OP( 16632,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat57 );
TEST_VMRL_OP( 16653,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat13 );
TEST_VMRL_OP( 16689,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat49 );
TEST_VMRL_OP( 16711,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat6 );
TEST_VMRL_OP( 16743,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat38 );
TEST_VMRL_OP( 16748,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat43 );
TEST_VMRL_OP( 16749,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat44 );
TEST_VMRL_OP( 16794,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat24 );
TEST_VMRL_OP( 16796,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat26 );
TEST_VMRL_OP( 16800,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat30 );
TEST_VMRL_OP( 16802,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat32 );
TEST_VMRL_OP( 16860,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat25 );
TEST_VMRL_OP( 16900,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33975,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33976,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33977,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33978,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33979,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33980,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33981,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33982,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

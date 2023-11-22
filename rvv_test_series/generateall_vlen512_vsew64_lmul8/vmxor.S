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
    # vmxor.S
    #-----------------------------------------------------------------------------
    #
    # Test vmxor instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmxor)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmxor tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 35,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat35 );
TEST_VMRL_OP( 52,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat52 );
TEST_VMRL_OP( 76,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 78,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 81,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 101,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat36 );
TEST_VMRL_OP( 118,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat53 );
TEST_VMRL_OP( 124,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat59 );
TEST_VMRL_OP( 164,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat34 );
TEST_VMRL_OP( 165,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat35 );
TEST_VMRL_OP( 166,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat36 );
TEST_VMRL_OP( 195,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 200,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 205,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 206,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 207,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 209,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 224,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 236,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat41 );
TEST_VMRL_OP( 242,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat47 );
TEST_VMRL_OP( 275,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 307,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat47 );
TEST_VMRL_OP( 311,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat51 );
TEST_VMRL_OP( 330,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 349,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat24 );
TEST_VMRL_OP( 359,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat34 );
TEST_VMRL_OP( 368,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat43 );
TEST_VMRL_OP( 375,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat50 );
TEST_VMRL_OP( 385,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat60 );
TEST_VMRL_OP( 394,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 397,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 409,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat19 );
TEST_VMRL_OP( 418,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 421,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 433,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat43 );
TEST_VMRL_OP( 440,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat50 );
TEST_VMRL_OP( 445,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat55 );
TEST_VMRL_OP( 453,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat63 );
TEST_VMRL_OP( 473,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 486,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 490,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat35 );
TEST_VMRL_OP( 521,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 534,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 573,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat53 );
TEST_VMRL_OP( 594,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 596,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 603,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 610,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 632,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat47 );
TEST_VMRL_OP( 642,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat57 );
TEST_VMRL_OP( 649,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat64 );
TEST_VMRL_OP( 675,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 705,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat55 );
TEST_VMRL_OP( 712,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat62 );
TEST_VMRL_OP( 740,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 748,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat33 );
TEST_VMRL_OP( 755,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat40 );
TEST_VMRL_OP( 764,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat49 );
TEST_VMRL_OP( 796,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 806,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat26 );
TEST_VMRL_OP( 808,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 818,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat38 );
TEST_VMRL_OP( 851,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 861,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 902,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat57 );
TEST_VMRL_OP( 911,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 925,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 932,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 938,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 956,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat46 );
TEST_VMRL_OP( 968,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat58 );
TEST_VMRL_OP( 973,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat63 );
TEST_VMRL_OP( 985,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 1016,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat41 );
TEST_VMRL_OP( 1055,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 1070,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat30 );
TEST_VMRL_OP( 1081,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat41 );
TEST_VMRL_OP( 1109,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 1114,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat9 );
TEST_VMRL_OP( 1132,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat27 );
TEST_VMRL_OP( 1148,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat43 );
TEST_VMRL_OP( 1159,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat54 );
TEST_VMRL_OP( 1161,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat56 );
TEST_VMRL_OP( 1168,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat63 );
TEST_VMRL_OP( 1176,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 1197,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 1203,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat33 );
TEST_VMRL_OP( 1223,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat53 );
TEST_VMRL_OP( 1233,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat63 );
TEST_VMRL_OP( 1252,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 1282,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat47 );
TEST_VMRL_OP( 1289,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat54 );
TEST_VMRL_OP( 1329,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 1355,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat55 );
TEST_VMRL_OP( 1370,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 1403,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat38 );
TEST_VMRL_OP( 1429,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat64 );
TEST_VMRL_OP( 1453,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 1457,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 1488,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat58 );
TEST_VMRL_OP( 1522,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat27 );
TEST_VMRL_OP( 1525,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat30 );
TEST_VMRL_OP( 1534,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat39 );
TEST_VMRL_OP( 1577,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 1591,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat31 );
TEST_VMRL_OP( 1602,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat42 );
TEST_VMRL_OP( 1616,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat56 );
TEST_VMRL_OP( 1635,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 1643,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 1692,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 1729,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat39 );
TEST_VMRL_OP( 1748,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat58 );
TEST_VMRL_OP( 1770,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat15 );
TEST_VMRL_OP( 1773,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 1798,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat43 );
TEST_VMRL_OP( 1805,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat50 );
TEST_VMRL_OP( 1808,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat53 );
TEST_VMRL_OP( 1849,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 1935,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat50 );
TEST_VMRL_OP( 1939,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat54 );
TEST_VMRL_OP( 1945,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat60 );
TEST_VMRL_OP( 1952,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 1958,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 2014,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat64 );
TEST_VMRL_OP( 2057,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat42 );
TEST_VMRL_OP( 2104,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 2122,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat42 );
TEST_VMRL_OP( 2131,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat51 );
TEST_VMRL_OP( 2133,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat53 );
TEST_VMRL_OP( 2147,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_ones_dat2 );
TEST_VMRL_OP( 2170,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat33, walking_ones_dat25 );
TEST_VMRL_OP( 2214,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_ones_dat4 );
TEST_VMRL_OP( 2230,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_ones_dat20 );
TEST_VMRL_OP( 2247,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat34, walking_ones_dat37 );
TEST_VMRL_OP( 2291,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat35, walking_ones_dat16 );
TEST_VMRL_OP( 2342,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_ones_dat2 );
TEST_VMRL_OP( 2364,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_ones_dat24 );
TEST_VMRL_OP( 2369,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_ones_dat29 );
TEST_VMRL_OP( 2372,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_ones_dat32 );
TEST_VMRL_OP( 2382,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat36, walking_ones_dat42 );
TEST_VMRL_OP( 2405,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat37, walking_ones_dat0 );
TEST_VMRL_OP( 2416,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat11 );
TEST_VMRL_OP( 2418,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat13 );
TEST_VMRL_OP( 2447,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat42 );
TEST_VMRL_OP( 2454,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat49 );
TEST_VMRL_OP( 2463,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat37, walking_ones_dat58 );
TEST_VMRL_OP( 2476,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat6 );
TEST_VMRL_OP( 2477,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat7 );
TEST_VMRL_OP( 2483,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat13 );
TEST_VMRL_OP( 2512,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat42 );
TEST_VMRL_OP( 2513,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat43 );
TEST_VMRL_OP( 2514,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat44 );
TEST_VMRL_OP( 2517,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat38, walking_ones_dat47 );
TEST_VMRL_OP( 2571,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat36 );
TEST_VMRL_OP( 2581,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat46 );
TEST_VMRL_OP( 2586,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat51 );
TEST_VMRL_OP( 2591,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat56 );
TEST_VMRL_OP( 2595,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat39, walking_ones_dat60 );
TEST_VMRL_OP( 2624,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_ones_dat24 );
TEST_VMRL_OP( 2651,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_ones_dat51 );
TEST_VMRL_OP( 2654,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_ones_dat54 );
TEST_VMRL_OP( 2657,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat40, walking_ones_dat57 );
TEST_VMRL_OP( 2679,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat14 );
TEST_VMRL_OP( 2683,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat18 );
TEST_VMRL_OP( 2703,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat41, walking_ones_dat38 );
TEST_VMRL_OP( 2751,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_ones_dat21 );
TEST_VMRL_OP( 2756,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_ones_dat26 );
TEST_VMRL_OP( 2768,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_ones_dat38 );
TEST_VMRL_OP( 2785,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat42, walking_ones_dat55 );
TEST_VMRL_OP( 2823,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat43, walking_ones_dat28 );
TEST_VMRL_OP( 2833,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat43, walking_ones_dat38 );
TEST_VMRL_OP( 2861,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat1 );
TEST_VMRL_OP( 2910,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat44, walking_ones_dat50 );
TEST_VMRL_OP( 2944,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_ones_dat19 );
TEST_VMRL_OP( 2949,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_ones_dat24 );
TEST_VMRL_OP( 2957,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_ones_dat32 );
TEST_VMRL_OP( 2975,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_ones_dat50 );
TEST_VMRL_OP( 2977,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat45, walking_ones_dat52 );
TEST_VMRL_OP( 3004,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_ones_dat14 );
TEST_VMRL_OP( 3025,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_ones_dat35 );
TEST_VMRL_OP( 3033,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_ones_dat43 );
TEST_VMRL_OP( 3048,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat46, walking_ones_dat58 );
TEST_VMRL_OP( 3082,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_ones_dat27 );
TEST_VMRL_OP( 3103,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_ones_dat48 );
TEST_VMRL_OP( 3115,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_ones_dat60 );
TEST_VMRL_OP( 3116,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat47, walking_ones_dat61 );
TEST_VMRL_OP( 3144,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat48, walking_ones_dat24 );
TEST_VMRL_OP( 3185,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat49, walking_ones_dat0 );
TEST_VMRL_OP( 3196,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat11 );
TEST_VMRL_OP( 3229,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat44 );
TEST_VMRL_OP( 3230,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat45 );
TEST_VMRL_OP( 3238,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat53 );
TEST_VMRL_OP( 3247,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat49, walking_ones_dat62 );
TEST_VMRL_OP( 3258,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat8 );
TEST_VMRL_OP( 3298,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat50, walking_ones_dat48 );
TEST_VMRL_OP( 3330,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat15 );
TEST_VMRL_OP( 3340,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat25 );
TEST_VMRL_OP( 3347,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat32 );
TEST_VMRL_OP( 3361,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat46 );
TEST_VMRL_OP( 3377,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat51, walking_ones_dat62 );
TEST_VMRL_OP( 3401,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat21 );
TEST_VMRL_OP( 3402,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat22 );
TEST_VMRL_OP( 3417,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat37 );
TEST_VMRL_OP( 3425,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat45 );
TEST_VMRL_OP( 3429,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat49 );
TEST_VMRL_OP( 3430,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat50 );
TEST_VMRL_OP( 3432,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 3444,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat52, walking_ones_dat64 );
TEST_VMRL_OP( 3445,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat53, walking_ones_dat0 );
TEST_VMRL_OP( 3449,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat4 );
TEST_VMRL_OP( 3451,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat6 );
TEST_VMRL_OP( 3459,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat14 );
TEST_VMRL_OP( 3463,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat18 );
TEST_VMRL_OP( 3472,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat27 );
TEST_VMRL_OP( 3476,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat31 );
TEST_VMRL_OP( 3486,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat53, walking_ones_dat41 );
TEST_VMRL_OP( 3512,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat2 );
TEST_VMRL_OP( 3520,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat10 );
TEST_VMRL_OP( 3524,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat14 );
TEST_VMRL_OP( 3526,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat16 );
TEST_VMRL_OP( 3534,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat24 );
TEST_VMRL_OP( 3542,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat54, walking_ones_dat32 );
TEST_VMRL_OP( 3577,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat2 );
TEST_VMRL_OP( 3585,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat10 );
TEST_VMRL_OP( 3590,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat15 );
TEST_VMRL_OP( 3591,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat16 );
TEST_VMRL_OP( 3613,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat38 );
TEST_VMRL_OP( 3621,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat46 );
TEST_VMRL_OP( 3633,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat55, walking_ones_dat58 );
TEST_VMRL_OP( 3648,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_ones_dat8 );
TEST_VMRL_OP( 3693,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_ones_dat53 );
TEST_VMRL_OP( 3700,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_ones_dat60 );
TEST_VMRL_OP( 3701,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat56, walking_ones_dat61 );
TEST_VMRL_OP( 3706,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat1 );
TEST_VMRL_OP( 3707,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat2 );
TEST_VMRL_OP( 3708,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat3 );
TEST_VMRL_OP( 3731,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat26 );
TEST_VMRL_OP( 3742,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat37 );
TEST_VMRL_OP( 3748,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat43 );
TEST_VMRL_OP( 3763,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat57, walking_ones_dat58 );
TEST_VMRL_OP( 3820,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat58, walking_ones_dat50 );
TEST_VMRL_OP( 3838,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat3 );
TEST_VMRL_OP( 3878,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat59, walking_ones_dat43 );
TEST_VMRL_OP( 3937,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat60, walking_ones_dat37 );
TEST_VMRL_OP( 3972,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat7 );
TEST_VMRL_OP( 3976,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat11 );
TEST_VMRL_OP( 3986,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat21 );
TEST_VMRL_OP( 3989,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat24 );
TEST_VMRL_OP( 3994,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat29 );
TEST_VMRL_OP( 3999,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat61, walking_ones_dat34 );
TEST_VMRL_OP( 4055,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat25 );
TEST_VMRL_OP( 4077,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat47 );
TEST_VMRL_OP( 4083,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat62, walking_ones_dat53 );
TEST_VMRL_OP( 4125,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat30 );
TEST_VMRL_OP( 4131,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat36 );
TEST_VMRL_OP( 4137,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat42 );
TEST_VMRL_OP( 4142,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat47 );
TEST_VMRL_OP( 4156,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat63, walking_ones_dat61 );
TEST_VMRL_OP( 4164,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat4 );
TEST_VMRL_OP( 4183,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat23 );
TEST_VMRL_OP( 4200,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat40 );
TEST_VMRL_OP( 4214,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat64, walking_ones_dat54 );
TEST_VMRL_OP( 4233,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 4237,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 4270,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat45 );
TEST_VMRL_OP( 4304,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 4319,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat29 );
TEST_VMRL_OP( 4325,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat35 );
TEST_VMRL_OP( 4330,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat40 );
TEST_VMRL_OP( 4331,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat41 );
TEST_VMRL_OP( 4344,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat54 );
TEST_VMRL_OP( 4363,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 4405,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat50 );
TEST_VMRL_OP( 4444,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat24 );
TEST_VMRL_OP( 4472,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat52 );
TEST_VMRL_OP( 4474,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat54 );
TEST_VMRL_OP( 4488,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 4489,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4501,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 4518,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat33 );
TEST_VMRL_OP( 4527,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat42 );
TEST_VMRL_OP( 4534,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat49 );
TEST_VMRL_OP( 4549,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat64 );
TEST_VMRL_OP( 4572,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 4577,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 4609,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat59 );
TEST_VMRL_OP( 4618,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 4622,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 4626,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 4682,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 4740,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat60 );
TEST_VMRL_OP( 4745,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 4748,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 4755,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 4767,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 4769,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 4830,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat20 );
TEST_VMRL_OP( 4855,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat45 );
TEST_VMRL_OP( 4874,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat64 );
TEST_VMRL_OP( 4965,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 4966,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 4971,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 5015,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 5047,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat42 );
TEST_VMRL_OP( 5063,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat58 );
TEST_VMRL_OP( 5080,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 5127,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat57 );
TEST_VMRL_OP( 5132,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat62 );
TEST_VMRL_OP( 5166,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 5175,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat40 );
TEST_VMRL_OP( 5184,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat49 );
TEST_VMRL_OP( 5222,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 5242,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat42 );
TEST_VMRL_OP( 5254,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat54 );
TEST_VMRL_OP( 5308,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat43 );
TEST_VMRL_OP( 5317,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat52 );
TEST_VMRL_OP( 5321,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat56 );
TEST_VMRL_OP( 5337,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 5343,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 5348,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 5359,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 5410,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 5415,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat20 );
TEST_VMRL_OP( 5422,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 5441,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat46 );
TEST_VMRL_OP( 5461,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 5467,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 5488,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat28 );
TEST_VMRL_OP( 5543,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 5571,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat46 );
TEST_VMRL_OP( 5573,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat48 );
TEST_VMRL_OP( 5579,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat54 );
TEST_VMRL_OP( 5583,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat58 );
TEST_VMRL_OP( 5617,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 5620,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat30 );
TEST_VMRL_OP( 5631,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat41 );
TEST_VMRL_OP( 5659,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 5666,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 5676,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 5679,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat24 );
TEST_VMRL_OP( 5698,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat43 );
TEST_VMRL_OP( 5707,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat52 );
TEST_VMRL_OP( 5714,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat59 );
TEST_VMRL_OP( 5744,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 5766,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat46 );
TEST_VMRL_OP( 5769,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat49 );
TEST_VMRL_OP( 5792,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat7 );
TEST_VMRL_OP( 5813,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat28 );
TEST_VMRL_OP( 5822,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat37 );
TEST_VMRL_OP( 5829,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat44 );
TEST_VMRL_OP( 5866,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat16 );
TEST_VMRL_OP( 5901,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat51 );
TEST_VMRL_OP( 5918,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 5927,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 5941,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 5945,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 5947,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 5969,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat54 );
TEST_VMRL_OP( 5973,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat58 );
TEST_VMRL_OP( 5996,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 6006,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 6013,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat33 );
TEST_VMRL_OP( 6030,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat50 );
TEST_VMRL_OP( 6054,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat9 );
TEST_VMRL_OP( 6057,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat12 );
TEST_VMRL_OP( 6070,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 6120,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 6135,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 6136,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat26 );
TEST_VMRL_OP( 6137,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 6173,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat63 );
TEST_VMRL_OP( 6174,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat64 );
TEST_VMRL_OP( 6175,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 6185,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 6197,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat22 );
TEST_VMRL_OP( 6237,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat62 );
TEST_VMRL_OP( 6258,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 6273,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat33 );
TEST_VMRL_OP( 6286,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat46 );
TEST_VMRL_OP( 6288,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat48 );
TEST_VMRL_OP( 6298,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat58 );
TEST_VMRL_OP( 6322,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 6332,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 6333,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 6394,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat24 );
TEST_VMRL_OP( 6399,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat29 );
TEST_VMRL_OP( 6402,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat32 );
TEST_VMRL_OP( 6435,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat0 );
TEST_VMRL_OP( 6447,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat12 );
TEST_VMRL_OP( 6467,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat32 );
TEST_VMRL_OP( 6473,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat38 );
TEST_VMRL_OP( 6510,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat10 );
TEST_VMRL_OP( 6532,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat32 );
TEST_VMRL_OP( 6534,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat34 );
TEST_VMRL_OP( 6556,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat56 );
TEST_VMRL_OP( 6575,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat10 );
TEST_VMRL_OP( 6591,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat26 );
TEST_VMRL_OP( 6598,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat33 );
TEST_VMRL_OP( 6638,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat8 );
TEST_VMRL_OP( 6658,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat28 );
TEST_VMRL_OP( 6666,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat36 );
TEST_VMRL_OP( 6679,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat49 );
TEST_VMRL_OP( 6727,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat32 );
TEST_VMRL_OP( 6760,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat0 );
TEST_VMRL_OP( 6804,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat44 );
TEST_VMRL_OP( 6814,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat54 );
TEST_VMRL_OP( 6821,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat61 );
TEST_VMRL_OP( 6823,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat63 );
TEST_VMRL_OP( 6832,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat7 );
TEST_VMRL_OP( 6841,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat16 );
TEST_VMRL_OP( 6852,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat27 );
TEST_VMRL_OP( 6915,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat25 );
TEST_VMRL_OP( 6925,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat35 );
TEST_VMRL_OP( 6926,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat36 );
TEST_VMRL_OP( 6928,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat38 );
TEST_VMRL_OP( 6942,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat52 );
TEST_VMRL_OP( 6946,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat56 );
TEST_VMRL_OP( 6947,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat57 );
TEST_VMRL_OP( 6964,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat9 );
TEST_VMRL_OP( 6973,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat18 );
TEST_VMRL_OP( 6975,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat20 );
TEST_VMRL_OP( 7010,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat55 );
TEST_VMRL_OP( 7019,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat64 );
TEST_VMRL_OP( 7028,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat8 );
TEST_VMRL_OP( 7053,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat33 );
TEST_VMRL_OP( 7065,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat45 );
TEST_VMRL_OP( 7073,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat53 );
TEST_VMRL_OP( 7100,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat15 );
TEST_VMRL_OP( 7116,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat31 );
TEST_VMRL_OP( 7206,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat56 );
TEST_VMRL_OP( 7223,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat8 );
TEST_VMRL_OP( 7231,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat16 );
TEST_VMRL_OP( 7262,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat47 );
TEST_VMRL_OP( 7270,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat55 );
TEST_VMRL_OP( 7281,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat1 );
TEST_VMRL_OP( 7290,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat10 );
TEST_VMRL_OP( 7304,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat24 );
TEST_VMRL_OP( 7310,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat30 );
TEST_VMRL_OP( 7318,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat38 );
TEST_VMRL_OP( 7323,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat43 );
TEST_VMRL_OP( 7334,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat54 );
TEST_VMRL_OP( 7354,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat9 );
TEST_VMRL_OP( 7402,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat57 );
TEST_VMRL_OP( 7433,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat23 );
TEST_VMRL_OP( 7439,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat29 );
TEST_VMRL_OP( 7442,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat32 );
TEST_VMRL_OP( 7456,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat46 );
TEST_VMRL_OP( 7478,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat3 );
TEST_VMRL_OP( 7502,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat27 );
TEST_VMRL_OP( 7511,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat36 );
TEST_VMRL_OP( 7516,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat41 );
TEST_VMRL_OP( 7531,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat56 );
TEST_VMRL_OP( 7584,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat44 );
TEST_VMRL_OP( 7601,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat61 );
TEST_VMRL_OP( 7605,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat52, walking_zeros_dat0 );
TEST_VMRL_OP( 7635,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat30 );
TEST_VMRL_OP( 7642,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat37 );
TEST_VMRL_OP( 7693,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat23 );
TEST_VMRL_OP( 7744,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_zeros_dat9 );
TEST_VMRL_OP( 7778,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat54, walking_zeros_dat43 );
TEST_VMRL_OP( 7815,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat15 );
TEST_VMRL_OP( 7823,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat23 );
TEST_VMRL_OP( 7830,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat30 );
TEST_VMRL_OP( 7867,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat2 );
TEST_VMRL_OP( 7884,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat19 );
TEST_VMRL_OP( 7887,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat22 );
TEST_VMRL_OP( 7900,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat35 );
TEST_VMRL_OP( 7917,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat52 );
TEST_VMRL_OP( 7952,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat22 );
TEST_VMRL_OP( 7953,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat23 );
TEST_VMRL_OP( 7968,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat38 );
TEST_VMRL_OP( 7976,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat46 );
TEST_VMRL_OP( 7996,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat1 );
TEST_VMRL_OP( 8010,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat15 );
TEST_VMRL_OP( 8012,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat17 );
TEST_VMRL_OP( 8027,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat32 );
TEST_VMRL_OP( 8040,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat45 );
TEST_VMRL_OP( 8080,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat20 );
TEST_VMRL_OP( 8088,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat28 );
TEST_VMRL_OP( 8089,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat29 );
TEST_VMRL_OP( 8110,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat50 );
TEST_VMRL_OP( 8120,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat60 );
TEST_VMRL_OP( 8141,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat16 );
TEST_VMRL_OP( 8179,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat54 );
TEST_VMRL_OP( 8208,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat18 );
TEST_VMRL_OP( 8230,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat40 );
TEST_VMRL_OP( 8236,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat46 );
TEST_VMRL_OP( 8248,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat58 );
TEST_VMRL_OP( 8262,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat7 );
TEST_VMRL_OP( 8263,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat8 );
TEST_VMRL_OP( 8282,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat27 );
TEST_VMRL_OP( 8284,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat29 );
TEST_VMRL_OP( 8331,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat11 );
TEST_VMRL_OP( 8355,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat35 );
TEST_VMRL_OP( 8356,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat36 );
TEST_VMRL_OP( 8365,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat45 );
TEST_VMRL_OP( 8389,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat4 );
TEST_VMRL_OP( 8398,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat13 );
TEST_VMRL_OP( 8417,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat32 );
TEST_VMRL_OP( 8431,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat46 );
TEST_VMRL_OP( 8432,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat47 );
TEST_VMRL_OP( 8435,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat50 );
TEST_VMRL_OP( 8483,  vmxor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat33 );
TEST_VMRL_OP( 8491,  vmxor.mm,  64,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat41 );
TEST_VMRL_OP( 8518,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 8522,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 8536,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 8539,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 8562,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat47 );
TEST_VMRL_OP( 8567,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat52 );
TEST_VMRL_OP( 8571,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat56 );
TEST_VMRL_OP( 8616,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat36 );
TEST_VMRL_OP( 8644,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat64 );
TEST_VMRL_OP( 8671,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat26 );
TEST_VMRL_OP( 8682,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat37 );
TEST_VMRL_OP( 8691,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat46 );
TEST_VMRL_OP( 8694,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat49 );
TEST_VMRL_OP( 8697,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat52 );
TEST_VMRL_OP( 8722,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 8755,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat45 );
TEST_VMRL_OP( 8766,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat56 );
TEST_VMRL_OP( 8781,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 8860,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat20 );
TEST_VMRL_OP( 8861,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 8902,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat62 );
TEST_VMRL_OP( 8903,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat63 );
TEST_VMRL_OP( 8921,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 8933,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 8942,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat37 );
TEST_VMRL_OP( 8945,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat40 );
TEST_VMRL_OP( 8957,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat52 );
TEST_VMRL_OP( 9006,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat36 );
TEST_VMRL_OP( 9012,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat42 );
TEST_VMRL_OP( 9018,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat48 );
TEST_VMRL_OP( 9040,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 9057,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 9064,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat29 );
TEST_VMRL_OP( 9074,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat39 );
TEST_VMRL_OP( 9087,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat52 );
TEST_VMRL_OP( 9103,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 9133,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat33 );
TEST_VMRL_OP( 9140,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat40 );
TEST_VMRL_OP( 9144,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat44 );
TEST_VMRL_OP( 9164,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat64 );
TEST_VMRL_OP( 9174,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 9182,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 9184,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 9189,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat24 );
TEST_VMRL_OP( 9198,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat33 );
TEST_VMRL_OP( 9204,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat39 );
TEST_VMRL_OP( 9208,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat43 );
TEST_VMRL_OP( 9239,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 9245,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 9285,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat55 );
TEST_VMRL_OP( 9287,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat57 );
TEST_VMRL_OP( 9288,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat58 );
TEST_VMRL_OP( 9303,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 9364,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 9385,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 9406,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat46 );
TEST_VMRL_OP( 9431,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 9433,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 9437,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 9479,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat54 );
TEST_VMRL_OP( 9485,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat60 );
TEST_VMRL_OP( 9490,  vmxor.mm,  64,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 9510,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 9511,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 9530,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat40 );
TEST_VMRL_OP( 9556,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 9559,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 9625,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 9647,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 9666,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat46 );
TEST_VMRL_OP( 9671,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat51 );
TEST_VMRL_OP( 9679,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat59 );
TEST_VMRL_OP( 9694,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 9724,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat39 );
TEST_VMRL_OP( 9730,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat45 );
TEST_VMRL_OP( 9790,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat40 );
TEST_VMRL_OP( 9792,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat42 );
TEST_VMRL_OP( 9807,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat57 );
TEST_VMRL_OP( 9812,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat62 );
TEST_VMRL_OP( 9819,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 9833,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 9852,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat37 );
TEST_VMRL_OP( 9895,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat15 );
TEST_VMRL_OP( 9907,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat27 );
TEST_VMRL_OP( 9908,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat28 );
TEST_VMRL_OP( 9921,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat41 );
TEST_VMRL_OP( 9932,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat52 );
TEST_VMRL_OP( 9970,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 9971,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 9980,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat35 );
TEST_VMRL_OP( 9985,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat40 );
TEST_VMRL_OP( 9987,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat42 );
TEST_VMRL_OP( 10030,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat20 );
TEST_VMRL_OP( 10031,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 10041,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat31 );
TEST_VMRL_OP( 10118,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat43 );
TEST_VMRL_OP( 10123,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat48 );
TEST_VMRL_OP( 10131,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat56 );
TEST_VMRL_OP( 10143,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 10158,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 10175,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat35 );
TEST_VMRL_OP( 10186,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat46 );
TEST_VMRL_OP( 10210,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 10240,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat35 );
TEST_VMRL_OP( 10243,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat38 );
TEST_VMRL_OP( 10245,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat40 );
TEST_VMRL_OP( 10288,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat18 );
TEST_VMRL_OP( 10294,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 10334,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat64 );
TEST_VMRL_OP( 10348,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 10363,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat28 );
TEST_VMRL_OP( 10417,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 10451,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat51 );
TEST_VMRL_OP( 10470,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat5 );
TEST_VMRL_OP( 10476,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat11 );
TEST_VMRL_OP( 10492,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 10543,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 10594,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat64 );
TEST_VMRL_OP( 10610,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat15 );
TEST_VMRL_OP( 10627,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat32 );
TEST_VMRL_OP( 10645,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat50 );
TEST_VMRL_OP( 10675,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat15 );
TEST_VMRL_OP( 10677,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat17 );
TEST_VMRL_OP( 10718,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat58 );
TEST_VMRL_OP( 10733,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat8 );
TEST_VMRL_OP( 10749,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat24 );
TEST_VMRL_OP( 10776,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat51 );
TEST_VMRL_OP( 10787,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat62 );
TEST_VMRL_OP( 10796,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat6 );
TEST_VMRL_OP( 10811,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat21 );
TEST_VMRL_OP( 10813,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat23 );
TEST_VMRL_OP( 10837,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat47 );
TEST_VMRL_OP( 10853,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat63 );
TEST_VMRL_OP( 10864,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat9 );
TEST_VMRL_OP( 10912,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat57 );
TEST_VMRL_OP( 10924,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat4 );
TEST_VMRL_OP( 10966,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat46 );
TEST_VMRL_OP( 10987,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat2 );
TEST_VMRL_OP( 10990,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat5 );
TEST_VMRL_OP( 11010,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat25 );
TEST_VMRL_OP( 11074,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat24 );
TEST_VMRL_OP( 11075,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat25 );
TEST_VMRL_OP( 11088,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat38 );
TEST_VMRL_OP( 11093,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat43 );
TEST_VMRL_OP( 11125,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat10 );
TEST_VMRL_OP( 11140,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat25 );
TEST_VMRL_OP( 11150,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat35 );
TEST_VMRL_OP( 11178,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat63 );
TEST_VMRL_OP( 11228,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat48 );
TEST_VMRL_OP( 11233,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat53 );
TEST_VMRL_OP( 11235,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat55 );
TEST_VMRL_OP( 11251,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat6 );
TEST_VMRL_OP( 11275,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat30 );
TEST_VMRL_OP( 11290,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat45 );
TEST_VMRL_OP( 11320,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat10 );
TEST_VMRL_OP( 11325,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat15 );
TEST_VMRL_OP( 11349,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat39 );
TEST_VMRL_OP( 11398,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat23 );
TEST_VMRL_OP( 11402,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat27 );
TEST_VMRL_OP( 11406,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat31 );
TEST_VMRL_OP( 11411,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat36 );
TEST_VMRL_OP( 11433,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat58 );
TEST_VMRL_OP( 11537,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat32 );
TEST_VMRL_OP( 11549,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat44 );
TEST_VMRL_OP( 11550,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat45 );
TEST_VMRL_OP( 11559,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat54 );
TEST_VMRL_OP( 11569,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat64 );
TEST_VMRL_OP( 11574,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat4 );
TEST_VMRL_OP( 11578,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat8 );
TEST_VMRL_OP( 11614,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat44 );
TEST_VMRL_OP( 11630,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat60 );
TEST_VMRL_OP( 11660,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat25 );
TEST_VMRL_OP( 11672,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat37 );
TEST_VMRL_OP( 11686,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat51 );
TEST_VMRL_OP( 11699,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat64 );
TEST_VMRL_OP( 11716,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat16 );
TEST_VMRL_OP( 11720,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat20 );
TEST_VMRL_OP( 11738,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat38 );
TEST_VMRL_OP( 11747,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat47 );
TEST_VMRL_OP( 11756,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat56 );
TEST_VMRL_OP( 11757,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat57 );
TEST_VMRL_OP( 11769,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat4 );
TEST_VMRL_OP( 11774,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat9 );
TEST_VMRL_OP( 11786,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat21 );
TEST_VMRL_OP( 11788,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat23 );
TEST_VMRL_OP( 11796,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat31 );
TEST_VMRL_OP( 11827,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat62 );
TEST_VMRL_OP( 11828,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat63 );
TEST_VMRL_OP( 11831,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat1 );
TEST_VMRL_OP( 11863,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat33 );
TEST_VMRL_OP( 11878,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat48 );
TEST_VMRL_OP( 11914,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat19 );
TEST_VMRL_OP( 11946,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat51 );
TEST_VMRL_OP( 11965,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat5 );
TEST_VMRL_OP( 12007,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat47 );
TEST_VMRL_OP( 12010,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat50 );
TEST_VMRL_OP( 12039,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat14 );
TEST_VMRL_OP( 12043,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat18 );
TEST_VMRL_OP( 12067,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat42 );
TEST_VMRL_OP( 12072,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat47 );
TEST_VMRL_OP( 12098,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat8 );
TEST_VMRL_OP( 12144,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat54 );
TEST_VMRL_OP( 12171,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat16 );
TEST_VMRL_OP( 12232,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat12 );
TEST_VMRL_OP( 12285,  vmxor.mm,  64,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat0 );
TEST_VMRL_OP( 12371,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat21 );
TEST_VMRL_OP( 12412,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat62 );
TEST_VMRL_OP( 12438,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat23 );
TEST_VMRL_OP( 12440,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat25 );
TEST_VMRL_OP( 12449,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat34 );
TEST_VMRL_OP( 12464,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat49 );
TEST_VMRL_OP( 12499,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat19 );
TEST_VMRL_OP( 12519,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat39 );
TEST_VMRL_OP( 12586,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat41 );
TEST_VMRL_OP( 12593,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat48 );
TEST_VMRL_OP( 12629,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat19 );
TEST_VMRL_OP( 12646,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat36 );
TEST_VMRL_OP( 12651,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat41 );
TEST_VMRL_OP( 12658,  vmxor.mm,  64,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat48 );
TEST_VMRL_OP( 12717,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat42 );
TEST_VMRL_OP( 12719,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat44 );
TEST_VMRL_OP( 12735,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat60 );
TEST_VMRL_OP( 12748,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 12769,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 12772,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 12773,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_ones_dat33 );
TEST_VMRL_OP( 12780,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_ones_dat40 );
TEST_VMRL_OP( 12795,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat1, walking_ones_dat55 );
TEST_VMRL_OP( 12821,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 12824,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 12866,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat2, walking_ones_dat61 );
TEST_VMRL_OP( 12875,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 12886,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 12888,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 12895,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 12913,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat43 );
TEST_VMRL_OP( 12917,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat47 );
TEST_VMRL_OP( 12919,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat49 );
TEST_VMRL_OP( 12928,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat58 );
TEST_VMRL_OP( 12932,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat62 );
TEST_VMRL_OP( 12942,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 12957,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 13005,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 13011,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 13028,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 13029,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat29 );
TEST_VMRL_OP( 13030,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat30 );
TEST_VMRL_OP( 13031,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 13047,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat47 );
TEST_VMRL_OP( 13059,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat59 );
TEST_VMRL_OP( 13080,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 13114,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_ones_dat49 );
TEST_VMRL_OP( 13128,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat6, walking_ones_dat63 );
TEST_VMRL_OP( 13133,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 13160,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 13173,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat7, walking_ones_dat43 );
TEST_VMRL_OP( 13207,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 13208,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 13252,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat57 );
TEST_VMRL_OP( 13262,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 13275,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 13287,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 13297,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat37 );
TEST_VMRL_OP( 13316,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat56 );
TEST_VMRL_OP( 13317,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat57 );
TEST_VMRL_OP( 13322,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat62 );
TEST_VMRL_OP( 13337,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 13405,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 13414,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 13476,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 13493,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat38 );
TEST_VMRL_OP( 13498,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat43 );
TEST_VMRL_OP( 13503,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat48 );
TEST_VMRL_OP( 13526,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 13536,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 13553,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat13, walking_ones_dat33 );
TEST_VMRL_OP( 13635,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat14, walking_ones_dat50 );
TEST_VMRL_OP( 13653,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 13659,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 13678,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 13726,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 13750,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat35 );
TEST_VMRL_OP( 13754,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat39 );
TEST_VMRL_OP( 13775,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat60 );
TEST_VMRL_OP( 13778,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat63 );
TEST_VMRL_OP( 13786,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 13813,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_ones_dat33 );
TEST_VMRL_OP( 13826,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat17, walking_ones_dat46 );
TEST_VMRL_OP( 13866,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 13873,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 13886,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat41 );
TEST_VMRL_OP( 13907,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat62 );
TEST_VMRL_OP( 13951,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat19, walking_ones_dat41 );
TEST_VMRL_OP( 14022,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_ones_dat47 );
TEST_VMRL_OP( 14034,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat20, walking_ones_dat59 );
TEST_VMRL_OP( 14056,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 14060,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 14061,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 14079,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat39 );
TEST_VMRL_OP( 14104,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat64 );
TEST_VMRL_OP( 14112,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat7 );
TEST_VMRL_OP( 14115,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 14121,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat16 );
TEST_VMRL_OP( 14122,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 14137,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat32 );
TEST_VMRL_OP( 14147,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat42 );
TEST_VMRL_OP( 14148,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat43 );
TEST_VMRL_OP( 14166,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat61 );
TEST_VMRL_OP( 14170,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 14173,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat3 );
TEST_VMRL_OP( 14196,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 14204,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat34 );
TEST_VMRL_OP( 14215,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat45 );
TEST_VMRL_OP( 14220,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat50 );
TEST_VMRL_OP( 14229,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat59 );
TEST_VMRL_OP( 14269,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat24, walking_ones_dat34 );
TEST_VMRL_OP( 14312,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 14322,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat22 );
TEST_VMRL_OP( 14335,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat35 );
TEST_VMRL_OP( 14364,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat64 );
TEST_VMRL_OP( 14382,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 14387,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 14411,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat46 );
TEST_VMRL_OP( 14420,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat55 );
TEST_VMRL_OP( 14424,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat59 );
TEST_VMRL_OP( 14472,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat27, walking_ones_dat42 );
TEST_VMRL_OP( 14493,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat27, walking_ones_dat63 );
TEST_VMRL_OP( 14495,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 14518,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 14543,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat28, walking_ones_dat48 );
TEST_VMRL_OP( 14561,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 14603,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_ones_dat43 );
TEST_VMRL_OP( 14613,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat29, walking_ones_dat53 );
TEST_VMRL_OP( 14662,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat37 );
TEST_VMRL_OP( 14684,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat59 );
TEST_VMRL_OP( 14689,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat64 );
TEST_VMRL_OP( 14750,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat60 );
TEST_VMRL_OP( 14778,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 14804,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat32, walking_ones_dat49 );
TEST_VMRL_OP( 14822,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat2 );
TEST_VMRL_OP( 14825,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat5 );
TEST_VMRL_OP( 14830,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat10 );
TEST_VMRL_OP( 14843,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat23 );
TEST_VMRL_OP( 14845,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat25 );
TEST_VMRL_OP( 14895,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_ones_dat10 );
TEST_VMRL_OP( 14900,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_ones_dat15 );
TEST_VMRL_OP( 14908,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_ones_dat23 );
TEST_VMRL_OP( 14916,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat34, walking_ones_dat31 );
TEST_VMRL_OP( 14973,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_ones_dat23 );
TEST_VMRL_OP( 14980,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat35, walking_ones_dat30 );
TEST_VMRL_OP( 15030,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_ones_dat15 );
TEST_VMRL_OP( 15039,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_ones_dat24 );
TEST_VMRL_OP( 15044,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_ones_dat29 );
TEST_VMRL_OP( 15051,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 15056,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_ones_dat41 );
TEST_VMRL_OP( 15077,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat36, walking_ones_dat62 );
TEST_VMRL_OP( 15109,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat29 );
TEST_VMRL_OP( 15119,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat39 );
TEST_VMRL_OP( 15126,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat46 );
TEST_VMRL_OP( 15156,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_ones_dat11 );
TEST_VMRL_OP( 15163,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_ones_dat18 );
TEST_VMRL_OP( 15174,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat38, walking_ones_dat29 );
TEST_VMRL_OP( 15221,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_ones_dat11 );
TEST_VMRL_OP( 15224,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_ones_dat14 );
TEST_VMRL_OP( 15263,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat39, walking_ones_dat53 );
TEST_VMRL_OP( 15281,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat6 );
TEST_VMRL_OP( 15284,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat9 );
TEST_VMRL_OP( 15314,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat39 );
TEST_VMRL_OP( 15324,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat49 );
TEST_VMRL_OP( 15329,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat54 );
TEST_VMRL_OP( 15336,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat61 );
TEST_VMRL_OP( 15361,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat41, walking_ones_dat21 );
TEST_VMRL_OP( 15369,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat41, walking_ones_dat29 );
TEST_VMRL_OP( 15406,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat1 );
TEST_VMRL_OP( 15411,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat6 );
TEST_VMRL_OP( 15423,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat18 );
TEST_VMRL_OP( 15441,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat36 );
TEST_VMRL_OP( 15448,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat43 );
TEST_VMRL_OP( 15450,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat45 );
TEST_VMRL_OP( 15492,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_ones_dat22 );
TEST_VMRL_OP( 15497,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_ones_dat27 );
TEST_VMRL_OP( 15509,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_ones_dat39 );
TEST_VMRL_OP( 15510,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_ones_dat40 );
TEST_VMRL_OP( 15521,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_ones_dat51 );
TEST_VMRL_OP( 15524,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_ones_dat54 );
TEST_VMRL_OP( 15534,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat43, walking_ones_dat64 );
TEST_VMRL_OP( 15557,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_ones_dat22 );
TEST_VMRL_OP( 15564,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_ones_dat29 );
TEST_VMRL_OP( 15571,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_ones_dat36 );
TEST_VMRL_OP( 15573,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_ones_dat38 );
TEST_VMRL_OP( 15581,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_ones_dat46 );
TEST_VMRL_OP( 15586,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat44, walking_ones_dat51 );
TEST_VMRL_OP( 15614,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_ones_dat14 );
TEST_VMRL_OP( 15619,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat45, walking_ones_dat19 );
TEST_VMRL_OP( 15677,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_ones_dat12 );
TEST_VMRL_OP( 15688,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_ones_dat23 );
TEST_VMRL_OP( 15722,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat46, walking_ones_dat57 );
TEST_VMRL_OP( 15735,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat5 );
TEST_VMRL_OP( 15753,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat23 );
TEST_VMRL_OP( 15758,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat28 );
TEST_VMRL_OP( 15766,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat36 );
TEST_VMRL_OP( 15778,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat48 );
TEST_VMRL_OP( 15780,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat50 );
TEST_VMRL_OP( 15800,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat5 );
TEST_VMRL_OP( 15801,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat6 );
TEST_VMRL_OP( 15806,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat11 );
TEST_VMRL_OP( 15810,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat15 );
TEST_VMRL_OP( 15820,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat25 );
TEST_VMRL_OP( 15833,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat38 );
TEST_VMRL_OP( 15840,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat45 );
TEST_VMRL_OP( 15850,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat55 );
TEST_VMRL_OP( 15851,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat56 );
TEST_VMRL_OP( 15856,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat61 );
TEST_VMRL_OP( 15863,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat3 );
TEST_VMRL_OP( 15867,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat7 );
TEST_VMRL_OP( 15883,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat23 );
TEST_VMRL_OP( 15895,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat35 );
TEST_VMRL_OP( 15897,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat37 );
TEST_VMRL_OP( 15920,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat60 );
TEST_VMRL_OP( 15953,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_ones_dat28 );
TEST_VMRL_OP( 15967,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat50, walking_ones_dat42 );
TEST_VMRL_OP( 16014,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_ones_dat24 );
TEST_VMRL_OP( 16029,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_ones_dat39 );
TEST_VMRL_OP( 16034,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_ones_dat44 );
TEST_VMRL_OP( 16037,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_ones_dat47 );
TEST_VMRL_OP( 16047,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat51, walking_ones_dat57 );
TEST_VMRL_OP( 16074,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat19 );
TEST_VMRL_OP( 16095,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat40 );
TEST_VMRL_OP( 16097,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat42 );
TEST_VMRL_OP( 16105,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat50 );
TEST_VMRL_OP( 16109,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat54 );
TEST_VMRL_OP( 16166,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_ones_dat46 );
TEST_VMRL_OP( 16174,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat53, walking_ones_dat54 );
TEST_VMRL_OP( 16208,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_ones_dat23 );
TEST_VMRL_OP( 16247,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat54, walking_ones_dat62 );
TEST_VMRL_OP( 16270,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat20 );
TEST_VMRL_OP( 16292,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat42 );
TEST_VMRL_OP( 16299,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat49 );
TEST_VMRL_OP( 16317,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat2 );
TEST_VMRL_OP( 16320,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat5 );
TEST_VMRL_OP( 16339,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat24 );
TEST_VMRL_OP( 16342,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat27 );
TEST_VMRL_OP( 16364,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat49 );
TEST_VMRL_OP( 16387,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat7 );
TEST_VMRL_OP( 16395,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat15 );
TEST_VMRL_OP( 16397,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat17 );
TEST_VMRL_OP( 16416,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat36 );
TEST_VMRL_OP( 16417,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat37 );
TEST_VMRL_OP( 16425,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat45 );
TEST_VMRL_OP( 16445,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat0 );
TEST_VMRL_OP( 16450,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat5 );
TEST_VMRL_OP( 16455,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat10 );
TEST_VMRL_OP( 16459,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat14 );
TEST_VMRL_OP( 16474,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat29 );
TEST_VMRL_OP( 16480,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat35 );
TEST_VMRL_OP( 16487,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat42 );
TEST_VMRL_OP( 16514,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_ones_dat4 );
TEST_VMRL_OP( 16547,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_ones_dat37 );
TEST_VMRL_OP( 16558,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_ones_dat48 );
TEST_VMRL_OP( 16562,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_ones_dat52 );
TEST_VMRL_OP( 16574,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat59, walking_ones_dat64 );
TEST_VMRL_OP( 16582,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat7 );
TEST_VMRL_OP( 16589,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat14 );
TEST_VMRL_OP( 16602,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat27 );
TEST_VMRL_OP( 16605,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat30 );
TEST_VMRL_OP( 16614,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat39 );
TEST_VMRL_OP( 16617,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat42 );
TEST_VMRL_OP( 16621,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat46 );
TEST_VMRL_OP( 16627,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat52 );
TEST_VMRL_OP( 16629,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat54 );
TEST_VMRL_OP( 16639,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat64 );
TEST_VMRL_OP( 16651,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat11 );
TEST_VMRL_OP( 16654,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat14 );
TEST_VMRL_OP( 16663,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat23 );
TEST_VMRL_OP( 16665,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat25 );
TEST_VMRL_OP( 16668,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat28 );
TEST_VMRL_OP( 16671,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat31 );
TEST_VMRL_OP( 16677,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat37 );
TEST_VMRL_OP( 16698,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat58 );
TEST_VMRL_OP( 16705,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat0 );
TEST_VMRL_OP( 16710,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat5 );
TEST_VMRL_OP( 16712,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat7 );
TEST_VMRL_OP( 16721,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat16 );
TEST_VMRL_OP( 16728,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat23 );
TEST_VMRL_OP( 16735,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat30 );
TEST_VMRL_OP( 16751,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat46 );
TEST_VMRL_OP( 16755,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat50 );
TEST_VMRL_OP( 16766,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat61 );
TEST_VMRL_OP( 16775,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat5 );
TEST_VMRL_OP( 16812,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat42 );
TEST_VMRL_OP( 16814,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat44 );
TEST_VMRL_OP( 16828,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat58 );
TEST_VMRL_OP( 16832,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat62 );
TEST_VMRL_OP( 16886,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat64, walking_ones_dat51 );
TEST_VMRL_OP( 16893,  vmxor.mm,  64,  0x000000000000003e, walking_zeros_dat64, walking_ones_dat58 );
TEST_VMRL_OP( 16900,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmxor.mm,  64,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmxor.mm,  64,  0x0000000000000040, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33975,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33976,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33977,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33978,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33979,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33980,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33981,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33982,  vmxor.mm,  64,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
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
    

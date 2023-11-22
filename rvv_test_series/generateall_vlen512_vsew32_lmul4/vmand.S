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
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v20, v16, 1; \
                inst v14, v1, v20; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_21( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v21, v16, 1; \
                inst v14, v1, v21; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_22( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v22, v16, 1; \
                inst v14, v1, v22; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_23( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v23, v16, 1; \
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
TEST_VMRL_OP( 7,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 22,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat22 );
TEST_VMRL_OP( 24,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 32,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat32 );
TEST_VMRL_OP( 60,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat60 );
TEST_VMRL_OP( 65,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 81,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 85,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 88,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 103,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat38 );
TEST_VMRL_OP( 112,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat47 );
TEST_VMRL_OP( 147,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 155,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 156,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat26 );
TEST_VMRL_OP( 161,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat31 );
TEST_VMRL_OP( 188,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat58 );
TEST_VMRL_OP( 194,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat64 );
TEST_VMRL_OP( 209,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 211,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 219,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 244,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat49 );
TEST_VMRL_OP( 248,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat53 );
TEST_VMRL_OP( 313,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat53 );
TEST_VMRL_OP( 319,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat59 );
TEST_VMRL_OP( 333,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 346,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 358,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat33 );
TEST_VMRL_OP( 406,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 409,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat19 );
TEST_VMRL_OP( 423,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat33 );
TEST_VMRL_OP( 428,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat38 );
TEST_VMRL_OP( 462,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 491,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat36 );
TEST_VMRL_OP( 495,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat40 );
TEST_VMRL_OP( 502,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat47 );
TEST_VMRL_OP( 510,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat55 );
TEST_VMRL_OP( 567,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat47 );
TEST_VMRL_OP( 572,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat52 );
TEST_VMRL_OP( 619,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat34 );
TEST_VMRL_OP( 630,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat45 );
TEST_VMRL_OP( 636,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat51 );
TEST_VMRL_OP( 720,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 732,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat17 );
TEST_VMRL_OP( 763,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat48 );
TEST_VMRL_OP( 799,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 822,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat42 );
TEST_VMRL_OP( 837,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat57 );
TEST_VMRL_OP( 861,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 887,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat42 );
TEST_VMRL_OP( 906,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat61 );
TEST_VMRL_OP( 931,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 940,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat30 );
TEST_VMRL_OP( 957,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat47 );
TEST_VMRL_OP( 973,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat63 );
TEST_VMRL_OP( 978,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 1023,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat48 );
TEST_VMRL_OP( 1083,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat43 );
TEST_VMRL_OP( 1097,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat57 );
TEST_VMRL_OP( 1098,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat58 );
TEST_VMRL_OP( 1110,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat5 );
TEST_VMRL_OP( 1118,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat13 );
TEST_VMRL_OP( 1140,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat35 );
TEST_VMRL_OP( 1159,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat54 );
TEST_VMRL_OP( 1210,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat40 );
TEST_VMRL_OP( 1251,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat16 );
TEST_VMRL_OP( 1294,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat59 );
TEST_VMRL_OP( 1295,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat60 );
TEST_VMRL_OP( 1341,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_ones_dat41 );
TEST_VMRL_OP( 1363,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_ones_dat63 );
TEST_VMRL_OP( 1387,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat22 );
TEST_VMRL_OP( 1406,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat41 );
TEST_VMRL_OP( 1416,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat51 );
TEST_VMRL_OP( 1417,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat52 );
TEST_VMRL_OP( 1432,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 1442,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 1445,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 1464,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat34 );
TEST_VMRL_OP( 1473,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat43 );
TEST_VMRL_OP( 1474,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat44 );
TEST_VMRL_OP( 1533,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat38 );
TEST_VMRL_OP( 1541,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat46 );
TEST_VMRL_OP( 1580,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 1651,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 1657,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 1661,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat36 );
TEST_VMRL_OP( 1696,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat6 );
TEST_VMRL_OP( 1699,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 1724,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat34 );
TEST_VMRL_OP( 1726,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat36 );
TEST_VMRL_OP( 1738,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat48 );
TEST_VMRL_OP( 1746,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat56 );
TEST_VMRL_OP( 1760,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 1761,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 1819,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat64 );
TEST_VMRL_OP( 1827,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 1829,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat9 );
TEST_VMRL_OP( 1839,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat19 );
TEST_VMRL_OP( 1858,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat38 );
TEST_VMRL_OP( 1861,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat41 );
TEST_VMRL_OP( 1871,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat51 );
TEST_VMRL_OP( 1872,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat52 );
TEST_VMRL_OP( 1882,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat62 );
TEST_VMRL_OP( 1895,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 1908,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 1921,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat36 );
TEST_VMRL_OP( 1940,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat55 );
TEST_VMRL_OP( 1959,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 1962,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 1967,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 1980,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 2001,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat51 );
TEST_VMRL_OP( 2011,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat61 );
TEST_VMRL_OP( 2044,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 2053,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat38 );
TEST_VMRL_OP( 2065,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat50 );
TEST_VMRL_OP( 2069,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat54 );
TEST_VMRL_OP( 2075,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat60 );
TEST_VMRL_OP( 2094,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 2118,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat38 );
TEST_VMRL_OP( 2126,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat46 );
TEST_VMRL_OP( 2130,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat50 );
TEST_VMRL_OP( 2131,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat51 );
TEST_VMRL_OP( 2142,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat62 );
TEST_VMRL_OP( 2157,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat33, walking_ones_dat12 );
TEST_VMRL_OP( 2163,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat33, walking_ones_dat18 );
TEST_VMRL_OP( 2184,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat33, walking_ones_dat39 );
TEST_VMRL_OP( 2189,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat33, walking_ones_dat44 );
TEST_VMRL_OP( 2243,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat34, walking_ones_dat33 );
TEST_VMRL_OP( 2296,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat35, walking_ones_dat21 );
TEST_VMRL_OP( 2304,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat35, walking_ones_dat29 );
TEST_VMRL_OP( 2329,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat35, walking_ones_dat54 );
TEST_VMRL_OP( 2334,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat35, walking_ones_dat59 );
TEST_VMRL_OP( 2336,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat35, walking_ones_dat61 );
TEST_VMRL_OP( 2340,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat36, walking_ones_dat0 );
TEST_VMRL_OP( 2341,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat36, walking_ones_dat1 );
TEST_VMRL_OP( 2358,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat36, walking_ones_dat18 );
TEST_VMRL_OP( 2410,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat5 );
TEST_VMRL_OP( 2415,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat10 );
TEST_VMRL_OP( 2416,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat11 );
TEST_VMRL_OP( 2422,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat17 );
TEST_VMRL_OP( 2426,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat21 );
TEST_VMRL_OP( 2427,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat22 );
TEST_VMRL_OP( 2431,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat26 );
TEST_VMRL_OP( 2436,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat31 );
TEST_VMRL_OP( 2443,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat38 );
TEST_VMRL_OP( 2447,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_ones_dat42 );
TEST_VMRL_OP( 2476,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_ones_dat6 );
TEST_VMRL_OP( 2495,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_ones_dat25 );
TEST_VMRL_OP( 2496,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_ones_dat26 );
TEST_VMRL_OP( 2508,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 2515,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_ones_dat45 );
TEST_VMRL_OP( 2526,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_ones_dat56 );
TEST_VMRL_OP( 2528,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_ones_dat58 );
TEST_VMRL_OP( 2540,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat39, walking_ones_dat5 );
TEST_VMRL_OP( 2556,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat39, walking_ones_dat21 );
TEST_VMRL_OP( 2557,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat39, walking_ones_dat22 );
TEST_VMRL_OP( 2573,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat39, walking_ones_dat38 );
TEST_VMRL_OP( 2613,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat13 );
TEST_VMRL_OP( 2614,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat14 );
TEST_VMRL_OP( 2619,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat19 );
TEST_VMRL_OP( 2630,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat30 );
TEST_VMRL_OP( 2639,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat39 );
TEST_VMRL_OP( 2646,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat46 );
TEST_VMRL_OP( 2679,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat41, walking_ones_dat14 );
TEST_VMRL_OP( 2741,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat42, walking_ones_dat11 );
TEST_VMRL_OP( 2743,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat42, walking_ones_dat13 );
TEST_VMRL_OP( 2781,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat42, walking_ones_dat51 );
TEST_VMRL_OP( 2806,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_ones_dat11 );
TEST_VMRL_OP( 2809,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_ones_dat14 );
TEST_VMRL_OP( 2812,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_ones_dat17 );
TEST_VMRL_OP( 2828,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_ones_dat33 );
TEST_VMRL_OP( 2835,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_ones_dat40 );
TEST_VMRL_OP( 2865,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat44, walking_ones_dat5 );
TEST_VMRL_OP( 2880,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat44, walking_ones_dat20 );
TEST_VMRL_OP( 2931,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat45, walking_ones_dat6 );
TEST_VMRL_OP( 2943,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat45, walking_ones_dat18 );
TEST_VMRL_OP( 2951,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat45, walking_ones_dat26 );
TEST_VMRL_OP( 3006,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_ones_dat16 );
TEST_VMRL_OP( 3014,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_ones_dat24 );
TEST_VMRL_OP( 3020,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_ones_dat30 );
TEST_VMRL_OP( 3044,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_ones_dat54 );
TEST_VMRL_OP( 3054,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_ones_dat64 );
TEST_VMRL_OP( 3094,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat47, walking_ones_dat39 );
TEST_VMRL_OP( 3109,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat47, walking_ones_dat54 );
TEST_VMRL_OP( 3123,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat48, walking_ones_dat3 );
TEST_VMRL_OP( 3138,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat48, walking_ones_dat18 );
TEST_VMRL_OP( 3149,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat48, walking_ones_dat29 );
TEST_VMRL_OP( 3187,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat49, walking_ones_dat2 );
TEST_VMRL_OP( 3189,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat49, walking_ones_dat4 );
TEST_VMRL_OP( 3195,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat49, walking_ones_dat10 );
TEST_VMRL_OP( 3210,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat49, walking_ones_dat25 );
TEST_VMRL_OP( 3234,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 3246,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat49, walking_ones_dat61 );
TEST_VMRL_OP( 3257,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat50, walking_ones_dat7 );
TEST_VMRL_OP( 3258,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat50, walking_ones_dat8 );
TEST_VMRL_OP( 3310,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat50, walking_ones_dat60 );
TEST_VMRL_OP( 3318,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat51, walking_ones_dat3 );
TEST_VMRL_OP( 3320,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat51, walking_ones_dat5 );
TEST_VMRL_OP( 3321,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat51, walking_ones_dat6 );
TEST_VMRL_OP( 3326,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat51, walking_ones_dat11 );
TEST_VMRL_OP( 3381,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat52, walking_ones_dat1 );
TEST_VMRL_OP( 3409,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat52, walking_ones_dat29 );
TEST_VMRL_OP( 3419,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat52, walking_ones_dat39 );
TEST_VMRL_OP( 3438,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat52, walking_ones_dat58 );
TEST_VMRL_OP( 3443,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat52, walking_ones_dat63 );
TEST_VMRL_OP( 3448,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_ones_dat3 );
TEST_VMRL_OP( 3464,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_ones_dat19 );
TEST_VMRL_OP( 3471,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_ones_dat26 );
TEST_VMRL_OP( 3472,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_ones_dat27 );
TEST_VMRL_OP( 3489,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_ones_dat44 );
TEST_VMRL_OP( 3512,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_ones_dat2 );
TEST_VMRL_OP( 3515,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_ones_dat5 );
TEST_VMRL_OP( 3541,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_ones_dat31 );
TEST_VMRL_OP( 3555,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_ones_dat45 );
TEST_VMRL_OP( 3559,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_ones_dat49 );
TEST_VMRL_OP( 3564,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 3573,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_ones_dat63 );
TEST_VMRL_OP( 3586,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat55, walking_ones_dat11 );
TEST_VMRL_OP( 3588,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat55, walking_ones_dat13 );
TEST_VMRL_OP( 3618,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat55, walking_ones_dat43 );
TEST_VMRL_OP( 3644,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat56, walking_ones_dat4 );
TEST_VMRL_OP( 3654,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat56, walking_ones_dat14 );
TEST_VMRL_OP( 3677,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat56, walking_ones_dat37 );
TEST_VMRL_OP( 3696,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 3726,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat21 );
TEST_VMRL_OP( 3728,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat23 );
TEST_VMRL_OP( 3734,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat29 );
TEST_VMRL_OP( 3737,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat32 );
TEST_VMRL_OP( 3751,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat46 );
TEST_VMRL_OP( 3752,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat47 );
TEST_VMRL_OP( 3760,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat55 );
TEST_VMRL_OP( 3768,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_ones_dat63 );
TEST_VMRL_OP( 3770,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat0 );
TEST_VMRL_OP( 3771,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat1 );
TEST_VMRL_OP( 3774,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat4 );
TEST_VMRL_OP( 3786,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat16 );
TEST_VMRL_OP( 3793,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat23 );
TEST_VMRL_OP( 3808,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat38 );
TEST_VMRL_OP( 3816,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat46 );
TEST_VMRL_OP( 3825,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_ones_dat55 );
TEST_VMRL_OP( 3842,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat59, walking_ones_dat7 );
TEST_VMRL_OP( 3852,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat59, walking_ones_dat17 );
TEST_VMRL_OP( 3874,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat59, walking_ones_dat39 );
TEST_VMRL_OP( 3903,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_ones_dat3 );
TEST_VMRL_OP( 3918,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_ones_dat18 );
TEST_VMRL_OP( 3930,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_ones_dat30 );
TEST_VMRL_OP( 3938,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_ones_dat38 );
TEST_VMRL_OP( 3941,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_ones_dat41 );
TEST_VMRL_OP( 3950,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_ones_dat50 );
TEST_VMRL_OP( 3960,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 3973,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat61, walking_ones_dat8 );
TEST_VMRL_OP( 3983,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat61, walking_ones_dat18 );
TEST_VMRL_OP( 3998,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat61, walking_ones_dat33 );
TEST_VMRL_OP( 4016,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat61, walking_ones_dat51 );
TEST_VMRL_OP( 4035,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_ones_dat5 );
TEST_VMRL_OP( 4038,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_ones_dat8 );
TEST_VMRL_OP( 4043,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_ones_dat13 );
TEST_VMRL_OP( 4049,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_ones_dat19 );
TEST_VMRL_OP( 4075,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_ones_dat45 );
TEST_VMRL_OP( 4087,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_ones_dat57 );
TEST_VMRL_OP( 4094,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_ones_dat64 );
TEST_VMRL_OP( 4109,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat63, walking_ones_dat14 );
TEST_VMRL_OP( 4110,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat63, walking_ones_dat15 );
TEST_VMRL_OP( 4140,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat63, walking_ones_dat45 );
TEST_VMRL_OP( 4141,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat63, walking_ones_dat46 );
TEST_VMRL_OP( 4157,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat63, walking_ones_dat62 );
TEST_VMRL_OP( 4169,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat64, walking_ones_dat9 );
TEST_VMRL_OP( 4186,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat64, walking_ones_dat26 );
TEST_VMRL_OP( 4204,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat64, walking_ones_dat44 );
TEST_VMRL_OP( 4211,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat64, walking_ones_dat51 );
TEST_VMRL_OP( 4232,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 4244,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 4254,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 4292,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 4295,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 4311,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 4322,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 4377,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 4389,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat34 );
TEST_VMRL_OP( 4406,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat51 );
TEST_VMRL_OP( 4423,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4424,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 4434,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 4441,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 4483,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat63 );
TEST_VMRL_OP( 4515,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat30 );
TEST_VMRL_OP( 4531,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat46 );
TEST_VMRL_OP( 4533,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat48 );
TEST_VMRL_OP( 4539,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat54 );
TEST_VMRL_OP( 4546,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat61 );
TEST_VMRL_OP( 4551,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 4555,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4558,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 4561,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 4585,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat35 );
TEST_VMRL_OP( 4601,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat51 );
TEST_VMRL_OP( 4609,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat59 );
TEST_VMRL_OP( 4657,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat42 );
TEST_VMRL_OP( 4662,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat47 );
TEST_VMRL_OP( 4673,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat58 );
TEST_VMRL_OP( 4682,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 4685,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 4714,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat34 );
TEST_VMRL_OP( 4728,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat48 );
TEST_VMRL_OP( 4737,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_zeros_dat57 );
TEST_VMRL_OP( 4781,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat36 );
TEST_VMRL_OP( 4784,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat39 );
TEST_VMRL_OP( 4792,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat47 );
TEST_VMRL_OP( 4795,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat50 );
TEST_VMRL_OP( 4797,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat52 );
TEST_VMRL_OP( 4833,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 4842,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 4849,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat39 );
TEST_VMRL_OP( 4852,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat42 );
TEST_VMRL_OP( 4854,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat44 );
TEST_VMRL_OP( 4857,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat47 );
TEST_VMRL_OP( 4899,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 4945,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 4950,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 4951,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4959,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 4966,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 4989,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat49 );
TEST_VMRL_OP( 4994,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat54 );
TEST_VMRL_OP( 5000,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat60 );
TEST_VMRL_OP( 5017,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 5035,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 5038,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat33 );
TEST_VMRL_OP( 5068,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat63 );
TEST_VMRL_OP( 5078,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 5090,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 5105,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat35 );
TEST_VMRL_OP( 5117,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat47 );
TEST_VMRL_OP( 5118,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat48 );
TEST_VMRL_OP( 5135,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 5139,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 5209,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 5211,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 5263,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat63 );
TEST_VMRL_OP( 5282,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat17 );
TEST_VMRL_OP( 5289,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat24 );
TEST_VMRL_OP( 5341,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 5342,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat12 );
TEST_VMRL_OP( 5377,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat47 );
TEST_VMRL_OP( 5383,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat53 );
TEST_VMRL_OP( 5386,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat56 );
TEST_VMRL_OP( 5439,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat44 );
TEST_VMRL_OP( 5442,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat47 );
TEST_VMRL_OP( 5472,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 5496,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat36 );
TEST_VMRL_OP( 5501,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat41 );
TEST_VMRL_OP( 5523,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat63 );
TEST_VMRL_OP( 5525,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 5566,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat41 );
TEST_VMRL_OP( 5570,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat45 );
TEST_VMRL_OP( 5580,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat55 );
TEST_VMRL_OP( 5586,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat61 );
TEST_VMRL_OP( 5603,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 5604,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 5611,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 5630,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat40 );
TEST_VMRL_OP( 5650,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat60 );
TEST_VMRL_OP( 5684,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 5698,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat43 );
TEST_VMRL_OP( 5699,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat44 );
TEST_VMRL_OP( 5777,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat57 );
TEST_VMRL_OP( 5782,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat62 );
TEST_VMRL_OP( 5785,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat0 );
TEST_VMRL_OP( 5792,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat7 );
TEST_VMRL_OP( 5797,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 5824,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat39 );
TEST_VMRL_OP( 5827,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat42 );
TEST_VMRL_OP( 5857,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 5862,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat12 );
TEST_VMRL_OP( 5882,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 5883,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat33 );
TEST_VMRL_OP( 5920,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 5945,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 5953,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat38 );
TEST_VMRL_OP( 5968,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat53 );
TEST_VMRL_OP( 5970,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat55 );
TEST_VMRL_OP( 5987,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 5990,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat10 );
TEST_VMRL_OP( 5997,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat17 );
TEST_VMRL_OP( 6043,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat63 );
TEST_VMRL_OP( 6051,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 6055,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat10 );
TEST_VMRL_OP( 6060,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat15 );
TEST_VMRL_OP( 6061,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 6062,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 6120,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 6130,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 6147,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat37 );
TEST_VMRL_OP( 6153,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat43 );
TEST_VMRL_OP( 6176,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 6228,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat53 );
TEST_VMRL_OP( 6235,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat60 );
TEST_VMRL_OP( 6297,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat57 );
TEST_VMRL_OP( 6302,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat62 );
TEST_VMRL_OP( 6313,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat8 );
TEST_VMRL_OP( 6336,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat31 );
TEST_VMRL_OP( 6346,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat41 );
TEST_VMRL_OP( 6393,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat23 );
TEST_VMRL_OP( 6394,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat24 );
TEST_VMRL_OP( 6399,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat29 );
TEST_VMRL_OP( 6463,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat28 );
TEST_VMRL_OP( 6476,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat41 );
TEST_VMRL_OP( 6480,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat45 );
TEST_VMRL_OP( 6509,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat9 );
TEST_VMRL_OP( 6539,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat39 );
TEST_VMRL_OP( 6585,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat20 );
TEST_VMRL_OP( 6608,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat43 );
TEST_VMRL_OP( 6609,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat44 );
TEST_VMRL_OP( 6671,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat41 );
TEST_VMRL_OP( 6687,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat57 );
TEST_VMRL_OP( 6688,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat58 );
TEST_VMRL_OP( 6697,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat2 );
TEST_VMRL_OP( 6771,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat11 );
TEST_VMRL_OP( 6780,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat20 );
TEST_VMRL_OP( 6784,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat24 );
TEST_VMRL_OP( 6797,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat37 );
TEST_VMRL_OP( 6798,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat38 );
TEST_VMRL_OP( 6820,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat60 );
TEST_VMRL_OP( 6833,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat8 );
TEST_VMRL_OP( 6862,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat37 );
TEST_VMRL_OP( 6876,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat51 );
TEST_VMRL_OP( 6887,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat62 );
TEST_VMRL_OP( 6921,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat31 );
TEST_VMRL_OP( 6924,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat34 );
TEST_VMRL_OP( 6935,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat45 );
TEST_VMRL_OP( 6939,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat49 );
TEST_VMRL_OP( 6949,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat59 );
TEST_VMRL_OP( 6955,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_zeros_dat0 );
TEST_VMRL_OP( 6967,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat12 );
TEST_VMRL_OP( 6968,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat13 );
TEST_VMRL_OP( 6998,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat43 );
TEST_VMRL_OP( 7018,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat63 );
TEST_VMRL_OP( 7035,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat15 );
TEST_VMRL_OP( 7048,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat28 );
TEST_VMRL_OP( 7076,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat56 );
TEST_VMRL_OP( 7082,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat62 );
TEST_VMRL_OP( 7095,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat10 );
TEST_VMRL_OP( 7105,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat20 );
TEST_VMRL_OP( 7110,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat25 );
TEST_VMRL_OP( 7129,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 7135,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat50 );
TEST_VMRL_OP( 7172,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat22 );
TEST_VMRL_OP( 7182,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat32 );
TEST_VMRL_OP( 7197,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat47 );
TEST_VMRL_OP( 7211,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat61 );
TEST_VMRL_OP( 7251,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat36 );
TEST_VMRL_OP( 7277,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat62 );
TEST_VMRL_OP( 7296,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat16 );
TEST_VMRL_OP( 7303,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat23 );
TEST_VMRL_OP( 7315,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat35 );
TEST_VMRL_OP( 7326,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat46 );
TEST_VMRL_OP( 7363,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat18 );
TEST_VMRL_OP( 7395,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat50 );
TEST_VMRL_OP( 7431,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat21 );
TEST_VMRL_OP( 7440,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat30 );
TEST_VMRL_OP( 7447,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat37 );
TEST_VMRL_OP( 7493,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat18 );
TEST_VMRL_OP( 7515,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat40 );
TEST_VMRL_OP( 7516,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat41 );
TEST_VMRL_OP( 7543,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat3 );
TEST_VMRL_OP( 7548,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat8 );
TEST_VMRL_OP( 7557,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat17 );
TEST_VMRL_OP( 7584,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat44 );
TEST_VMRL_OP( 7625,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat20 );
TEST_VMRL_OP( 7657,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 7669,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat64 );
TEST_VMRL_OP( 7687,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat17 );
TEST_VMRL_OP( 7704,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat34 );
TEST_VMRL_OP( 7734,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat64 );
TEST_VMRL_OP( 7751,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat16 );
TEST_VMRL_OP( 7784,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat54, walking_zeros_dat49 );
TEST_VMRL_OP( 7789,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 7826,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat26 );
TEST_VMRL_OP( 7834,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat34 );
TEST_VMRL_OP( 7848,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat48 );
TEST_VMRL_OP( 7896,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat31 );
TEST_VMRL_OP( 7955,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat25 );
TEST_VMRL_OP( 7980,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat50 );
TEST_VMRL_OP( 7986,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat56 );
TEST_VMRL_OP( 8000,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat5 );
TEST_VMRL_OP( 8007,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat12 );
TEST_VMRL_OP( 8070,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat10 );
TEST_VMRL_OP( 8107,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat47 );
TEST_VMRL_OP( 8112,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat52 );
TEST_VMRL_OP( 8131,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat6 );
TEST_VMRL_OP( 8143,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat18 );
TEST_VMRL_OP( 8144,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat19 );
TEST_VMRL_OP( 8166,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat41 );
TEST_VMRL_OP( 8168,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat43 );
TEST_VMRL_OP( 8172,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat47 );
TEST_VMRL_OP( 8205,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat15 );
TEST_VMRL_OP( 8211,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat21 );
TEST_VMRL_OP( 8213,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat23 );
TEST_VMRL_OP( 8218,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat28 );
TEST_VMRL_OP( 8250,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat60 );
TEST_VMRL_OP( 8253,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat63 );
TEST_VMRL_OP( 8255,  vmand.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat0 );
TEST_VMRL_OP( 8305,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat50 );
TEST_VMRL_OP( 8313,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat58 );
TEST_VMRL_OP( 8323,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat3 );
TEST_VMRL_OP( 8341,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat21 );
TEST_VMRL_OP( 8360,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat40 );
TEST_VMRL_OP( 8376,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat56 );
TEST_VMRL_OP( 8391,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat6 );
TEST_VMRL_OP( 8398,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat13 );
TEST_VMRL_OP( 8442,  vmand.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat57 );
TEST_VMRL_OP( 8450,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 8455,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 8503,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat53 );
TEST_VMRL_OP( 8508,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat58 );
TEST_VMRL_OP( 8562,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat47 );
TEST_VMRL_OP( 8594,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 8595,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 8603,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 8613,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat33 );
TEST_VMRL_OP( 8653,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 8665,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 8677,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat32 );
TEST_VMRL_OP( 8680,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat35 );
TEST_VMRL_OP( 8685,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat40 );
TEST_VMRL_OP( 8725,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 8735,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 8753,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat43 );
TEST_VMRL_OP( 8772,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat62 );
TEST_VMRL_OP( 8793,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat18 );
TEST_VMRL_OP( 8796,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat21 );
TEST_VMRL_OP( 8822,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat47 );
TEST_VMRL_OP( 8826,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat51 );
TEST_VMRL_OP( 8836,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat61 );
TEST_VMRL_OP( 8862,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 8895,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat55 );
TEST_VMRL_OP( 8898,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat58 );
TEST_VMRL_OP( 8926,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat21 );
TEST_VMRL_OP( 8930,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat25 );
TEST_VMRL_OP( 8949,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat44 );
TEST_VMRL_OP( 8951,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat46 );
TEST_VMRL_OP( 8958,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat53 );
TEST_VMRL_OP( 8963,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat58 );
TEST_VMRL_OP( 8978,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 8998,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 9006,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat36 );
TEST_VMRL_OP( 9027,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat57 );
TEST_VMRL_OP( 9028,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat58 );
TEST_VMRL_OP( 9060,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 9071,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat36 );
TEST_VMRL_OP( 9094,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat59 );
TEST_VMRL_OP( 9111,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 9119,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat19 );
TEST_VMRL_OP( 9133,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat33 );
TEST_VMRL_OP( 9134,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat34 );
TEST_VMRL_OP( 9141,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat41 );
TEST_VMRL_OP( 9148,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat48 );
TEST_VMRL_OP( 9151,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat51 );
TEST_VMRL_OP( 9185,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 9191,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 9208,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat43 );
TEST_VMRL_OP( 9226,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat61 );
TEST_VMRL_OP( 9236,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 9249,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 9257,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 9260,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 9261,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 9263,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat33 );
TEST_VMRL_OP( 9309,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 9315,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 9326,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 9349,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat54 );
TEST_VMRL_OP( 9384,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 9429,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 9450,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 9465,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat40 );
TEST_VMRL_OP( 9468,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat43 );
TEST_VMRL_OP( 9469,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat44 );
TEST_VMRL_OP( 9470,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat45 );
TEST_VMRL_OP( 9471,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat46 );
TEST_VMRL_OP( 9507,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat17 );
TEST_VMRL_OP( 9509,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 9514,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat24 );
TEST_VMRL_OP( 9529,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat39 );
TEST_VMRL_OP( 9557,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 9567,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat12 );
TEST_VMRL_OP( 9606,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat51 );
TEST_VMRL_OP( 9621,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat1 );
TEST_VMRL_OP( 9656,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat36 );
TEST_VMRL_OP( 9681,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat61 );
TEST_VMRL_OP( 9743,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat58 );
TEST_VMRL_OP( 9796,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat46 );
TEST_VMRL_OP( 9798,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat48 );
TEST_VMRL_OP( 9829,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 9839,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 9867,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat52 );
TEST_VMRL_OP( 9874,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat59 );
TEST_VMRL_OP( 9920,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat40 );
TEST_VMRL_OP( 10032,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 10044,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat34 );
TEST_VMRL_OP( 10145,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 10188,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat48 );
TEST_VMRL_OP( 10212,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 10214,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 10227,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 10274,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat4 );
TEST_VMRL_OP( 10278,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 10369,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat34 );
TEST_VMRL_OP( 10375,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat40 );
TEST_VMRL_OP( 10385,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat50 );
TEST_VMRL_OP( 10480,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 10586,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat56 );
TEST_VMRL_OP( 10600,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat33, walking_zeros_dat5 );
TEST_VMRL_OP( 10604,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat33, walking_zeros_dat9 );
TEST_VMRL_OP( 10620,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat33, walking_zeros_dat25 );
TEST_VMRL_OP( 10662,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_zeros_dat2 );
TEST_VMRL_OP( 10670,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_zeros_dat10 );
TEST_VMRL_OP( 10693,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_zeros_dat33 );
TEST_VMRL_OP( 10695,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_zeros_dat35 );
TEST_VMRL_OP( 10705,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_zeros_dat45 );
TEST_VMRL_OP( 10748,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat23 );
TEST_VMRL_OP( 10751,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat26 );
TEST_VMRL_OP( 10769,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat44 );
TEST_VMRL_OP( 10776,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat51 );
TEST_VMRL_OP( 10814,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat24 );
TEST_VMRL_OP( 10842,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat36, walking_zeros_dat52 );
TEST_VMRL_OP( 10857,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat2 );
TEST_VMRL_OP( 10867,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat12 );
TEST_VMRL_OP( 10868,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat13 );
TEST_VMRL_OP( 10874,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat19 );
TEST_VMRL_OP( 10896,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat41 );
TEST_VMRL_OP( 10900,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat45 );
TEST_VMRL_OP( 10906,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_zeros_dat51 );
TEST_VMRL_OP( 10922,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_zeros_dat2 );
TEST_VMRL_OP( 10925,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_zeros_dat5 );
TEST_VMRL_OP( 10939,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_zeros_dat19 );
TEST_VMRL_OP( 10993,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat8 );
TEST_VMRL_OP( 11033,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat48 );
TEST_VMRL_OP( 11048,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat39, walking_zeros_dat63 );
TEST_VMRL_OP( 11054,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat40, walking_zeros_dat4 );
TEST_VMRL_OP( 11086,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat40, walking_zeros_dat36 );
TEST_VMRL_OP( 11092,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat40, walking_zeros_dat42 );
TEST_VMRL_OP( 11112,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat40, walking_zeros_dat62 );
TEST_VMRL_OP( 11120,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat5 );
TEST_VMRL_OP( 11125,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat10 );
TEST_VMRL_OP( 11157,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat42 );
TEST_VMRL_OP( 11159,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat44 );
TEST_VMRL_OP( 11169,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_zeros_dat54 );
TEST_VMRL_OP( 11192,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat12 );
TEST_VMRL_OP( 11199,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat19 );
TEST_VMRL_OP( 11204,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat24 );
TEST_VMRL_OP( 11205,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat25 );
TEST_VMRL_OP( 11209,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat29 );
TEST_VMRL_OP( 11230,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_zeros_dat50 );
TEST_VMRL_OP( 11271,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_zeros_dat26 );
TEST_VMRL_OP( 11276,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_zeros_dat31 );
TEST_VMRL_OP( 11304,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_zeros_dat59 );
TEST_VMRL_OP( 11308,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_zeros_dat63 );
TEST_VMRL_OP( 11313,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat3 );
TEST_VMRL_OP( 11324,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat14 );
TEST_VMRL_OP( 11355,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat45 );
TEST_VMRL_OP( 11360,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat50 );
TEST_VMRL_OP( 11371,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_zeros_dat61 );
TEST_VMRL_OP( 11384,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat45, walking_zeros_dat9 );
TEST_VMRL_OP( 11395,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat45, walking_zeros_dat20 );
TEST_VMRL_OP( 11458,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat18 );
TEST_VMRL_OP( 11481,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat41 );
TEST_VMRL_OP( 11493,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat53 );
TEST_VMRL_OP( 11496,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat46, walking_zeros_dat56 );
TEST_VMRL_OP( 11509,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat47, walking_zeros_dat4 );
TEST_VMRL_OP( 11525,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat47, walking_zeros_dat20 );
TEST_VMRL_OP( 11527,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat47, walking_zeros_dat22 );
TEST_VMRL_OP( 11555,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat47, walking_zeros_dat50 );
TEST_VMRL_OP( 11564,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat47, walking_zeros_dat59 );
TEST_VMRL_OP( 11579,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat9 );
TEST_VMRL_OP( 11587,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat17 );
TEST_VMRL_OP( 11589,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat19 );
TEST_VMRL_OP( 11603,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat33 );
TEST_VMRL_OP( 11612,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat42 );
TEST_VMRL_OP( 11615,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_zeros_dat45 );
TEST_VMRL_OP( 11635,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat0 );
TEST_VMRL_OP( 11643,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat49, walking_zeros_dat8 );
TEST_VMRL_OP( 11702,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat2 );
TEST_VMRL_OP( 11704,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat4 );
TEST_VMRL_OP( 11708,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat8 );
TEST_VMRL_OP( 11728,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat28 );
TEST_VMRL_OP( 11732,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat32 );
TEST_VMRL_OP( 11751,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat51 );
TEST_VMRL_OP( 11753,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat53 );
TEST_VMRL_OP( 11763,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_zeros_dat63 );
TEST_VMRL_OP( 11765,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_zeros_dat0 );
TEST_VMRL_OP( 11770,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_zeros_dat5 );
TEST_VMRL_OP( 11780,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_zeros_dat15 );
TEST_VMRL_OP( 11797,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_zeros_dat32 );
TEST_VMRL_OP( 11832,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat2 );
TEST_VMRL_OP( 11887,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat52, walking_zeros_dat57 );
TEST_VMRL_OP( 11904,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_zeros_dat9 );
TEST_VMRL_OP( 11921,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_zeros_dat26 );
TEST_VMRL_OP( 11922,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_zeros_dat27 );
TEST_VMRL_OP( 11926,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_zeros_dat31 );
TEST_VMRL_OP( 11960,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat0 );
TEST_VMRL_OP( 11963,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat3 );
TEST_VMRL_OP( 11995,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat35 );
TEST_VMRL_OP( 12003,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat43 );
TEST_VMRL_OP( 12004,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_zeros_dat44 );
TEST_VMRL_OP( 12038,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat13 );
TEST_VMRL_OP( 12083,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat58 );
TEST_VMRL_OP( 12089,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat55, walking_zeros_dat64 );
TEST_VMRL_OP( 12131,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_zeros_dat41 );
TEST_VMRL_OP( 12159,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_zeros_dat4 );
TEST_VMRL_OP( 12160,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_zeros_dat5 );
TEST_VMRL_OP( 12163,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_zeros_dat8 );
TEST_VMRL_OP( 12182,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_zeros_dat27 );
TEST_VMRL_OP( 12212,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 12233,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat13 );
TEST_VMRL_OP( 12237,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat17 );
TEST_VMRL_OP( 12240,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat58, walking_zeros_dat20 );
TEST_VMRL_OP( 12296,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat11 );
TEST_VMRL_OP( 12321,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat36 );
TEST_VMRL_OP( 12329,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat59, walking_zeros_dat44 );
TEST_VMRL_OP( 12361,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat11 );
TEST_VMRL_OP( 12364,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat14 );
TEST_VMRL_OP( 12373,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat23 );
TEST_VMRL_OP( 12396,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat46 );
TEST_VMRL_OP( 12406,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat56 );
TEST_VMRL_OP( 12407,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_zeros_dat57 );
TEST_VMRL_OP( 12420,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_zeros_dat5 );
TEST_VMRL_OP( 12434,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_zeros_dat19 );
TEST_VMRL_OP( 12453,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_zeros_dat38 );
TEST_VMRL_OP( 12481,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat1 );
TEST_VMRL_OP( 12503,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat23 );
TEST_VMRL_OP( 12507,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat27 );
TEST_VMRL_OP( 12515,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_zeros_dat35 );
TEST_VMRL_OP( 12545,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat0 );
TEST_VMRL_OP( 12554,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat9 );
TEST_VMRL_OP( 12563,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat18 );
TEST_VMRL_OP( 12569,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat24 );
TEST_VMRL_OP( 12584,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat39 );
TEST_VMRL_OP( 12588,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat43 );
TEST_VMRL_OP( 12596,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_zeros_dat51 );
TEST_VMRL_OP( 12612,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat2 );
TEST_VMRL_OP( 12613,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat3 );
TEST_VMRL_OP( 12624,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat14 );
TEST_VMRL_OP( 12697,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat22 );
TEST_VMRL_OP( 12718,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat43 );
TEST_VMRL_OP( 12722,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat47 );
TEST_VMRL_OP( 12725,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat50 );
TEST_VMRL_OP( 12794,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat54 );
TEST_VMRL_OP( 12821,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 12839,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat34 );
TEST_VMRL_OP( 12859,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat54 );
TEST_VMRL_OP( 12863,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat58 );
TEST_VMRL_OP( 12864,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat59 );
TEST_VMRL_OP( 12866,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat61 );
TEST_VMRL_OP( 12877,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 12894,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 12910,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat40 );
TEST_VMRL_OP( 12946,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 12968,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat33 );
TEST_VMRL_OP( 12987,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat52 );
TEST_VMRL_OP( 12995,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat60 );
TEST_VMRL_OP( 13031,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 13043,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat43 );
TEST_VMRL_OP( 13065,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 13071,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 13076,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 13077,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 13080,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 13102,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat37 );
TEST_VMRL_OP( 13112,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat47 );
TEST_VMRL_OP( 13142,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 13156,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 13175,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat45 );
TEST_VMRL_OP( 13208,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 13211,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 13212,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 13221,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 13260,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 13263,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 13273,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 13357,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 13362,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat37 );
TEST_VMRL_OP( 13418,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 13424,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat34 );
TEST_VMRL_OP( 13448,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat58 );
TEST_VMRL_OP( 13470,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 13501,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat46 );
TEST_VMRL_OP( 13505,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat50 );
TEST_VMRL_OP( 13508,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat53 );
TEST_VMRL_OP( 13520,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 13542,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat22 );
TEST_VMRL_OP( 13547,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat27 );
TEST_VMRL_OP( 13563,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat43 );
TEST_VMRL_OP( 13577,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat57 );
TEST_VMRL_OP( 13584,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat64 );
TEST_VMRL_OP( 13586,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 13590,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 13607,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 13627,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat42 );
TEST_VMRL_OP( 13668,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 13672,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 13684,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat34 );
TEST_VMRL_OP( 13696,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat46 );
TEST_VMRL_OP( 13700,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat50 );
TEST_VMRL_OP( 13715,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 13784,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 13803,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 13809,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 13811,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 13840,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat60 );
TEST_VMRL_OP( 13843,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat63 );
TEST_VMRL_OP( 13886,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat41 );
TEST_VMRL_OP( 13907,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat62 );
TEST_VMRL_OP( 13909,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat64 );
TEST_VMRL_OP( 13929,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 13930,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 13932,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 13945,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat35 );
TEST_VMRL_OP( 13956,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat46 );
TEST_VMRL_OP( 13979,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat4 );
TEST_VMRL_OP( 13996,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 14045,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 14055,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 14067,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat27 );
TEST_VMRL_OP( 14082,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat42 );
TEST_VMRL_OP( 14087,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat47 );
TEST_VMRL_OP( 14097,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat57 );
TEST_VMRL_OP( 14123,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 14126,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 14130,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 14145,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat40 );
TEST_VMRL_OP( 14159,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat54 );
TEST_VMRL_OP( 14170,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 14192,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 14202,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 14221,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat51 );
TEST_VMRL_OP( 14239,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat4 );
TEST_VMRL_OP( 14245,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat10 );
TEST_VMRL_OP( 14255,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 14303,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 14317,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 14354,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat54 );
TEST_VMRL_OP( 14356,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat56 );
TEST_VMRL_OP( 14370,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 14403,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat38 );
TEST_VMRL_OP( 14428,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat63 );
TEST_VMRL_OP( 14439,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 14453,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat23 );
TEST_VMRL_OP( 14466,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat36 );
TEST_VMRL_OP( 14521,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 14528,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat33 );
TEST_VMRL_OP( 14531,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat36 );
TEST_VMRL_OP( 14552,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat57 );
TEST_VMRL_OP( 14583,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 14590,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 14601,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat41 );
TEST_VMRL_OP( 14702,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat12 );
TEST_VMRL_OP( 14708,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 14759,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 14813,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat58 );
TEST_VMRL_OP( 14816,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat61 );
TEST_VMRL_OP( 14822,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat2 );
TEST_VMRL_OP( 14840,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat20 );
TEST_VMRL_OP( 14875,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat55 );
TEST_VMRL_OP( 14879,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat59 );
TEST_VMRL_OP( 14883,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat63 );
TEST_VMRL_OP( 14898,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat13 );
TEST_VMRL_OP( 14899,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat14 );
TEST_VMRL_OP( 14912,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat27 );
TEST_VMRL_OP( 14913,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat28 );
TEST_VMRL_OP( 14938,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat53 );
TEST_VMRL_OP( 14943,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat58 );
TEST_VMRL_OP( 14958,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat8 );
TEST_VMRL_OP( 14961,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat11 );
TEST_VMRL_OP( 14976,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat26 );
TEST_VMRL_OP( 14990,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat40 );
TEST_VMRL_OP( 15048,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat33 );
TEST_VMRL_OP( 15053,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat38 );
TEST_VMRL_OP( 15064,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat49 );
TEST_VMRL_OP( 15094,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat14 );
TEST_VMRL_OP( 15105,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat25 );
TEST_VMRL_OP( 15113,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat33 );
TEST_VMRL_OP( 15119,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat39 );
TEST_VMRL_OP( 15126,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat46 );
TEST_VMRL_OP( 15134,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat54 );
TEST_VMRL_OP( 15138,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat58 );
TEST_VMRL_OP( 15161,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat16 );
TEST_VMRL_OP( 15173,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat28 );
TEST_VMRL_OP( 15187,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat42 );
TEST_VMRL_OP( 15201,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat56 );
TEST_VMRL_OP( 15216,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat6 );
TEST_VMRL_OP( 15225,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat15 );
TEST_VMRL_OP( 15243,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat33 );
TEST_VMRL_OP( 15266,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat56 );
TEST_VMRL_OP( 15277,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat2 );
TEST_VMRL_OP( 15309,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat34 );
TEST_VMRL_OP( 15313,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat38 );
TEST_VMRL_OP( 15317,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat42 );
TEST_VMRL_OP( 15351,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat11 );
TEST_VMRL_OP( 15356,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat16 );
TEST_VMRL_OP( 15379,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat39 );
TEST_VMRL_OP( 15398,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat58 );
TEST_VMRL_OP( 15436,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat31 );
TEST_VMRL_OP( 15463,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat58 );
TEST_VMRL_OP( 15472,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat2 );
TEST_VMRL_OP( 15477,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat7 );
TEST_VMRL_OP( 15493,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat23 );
TEST_VMRL_OP( 15525,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat55 );
TEST_VMRL_OP( 15528,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat58 );
TEST_VMRL_OP( 15536,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat1 );
TEST_VMRL_OP( 15545,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat10 );
TEST_VMRL_OP( 15578,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat43 );
TEST_VMRL_OP( 15616,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat16 );
TEST_VMRL_OP( 15625,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat25 );
TEST_VMRL_OP( 15628,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat28 );
TEST_VMRL_OP( 15636,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat36 );
TEST_VMRL_OP( 15659,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat59 );
TEST_VMRL_OP( 15665,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat0 );
TEST_VMRL_OP( 15703,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat38 );
TEST_VMRL_OP( 15719,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat54 );
TEST_VMRL_OP( 15725,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat60 );
TEST_VMRL_OP( 15727,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat62 );
TEST_VMRL_OP( 15821,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat26 );
TEST_VMRL_OP( 15837,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat42 );
TEST_VMRL_OP( 15840,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat45 );
TEST_VMRL_OP( 15844,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat49 );
TEST_VMRL_OP( 15849,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat54 );
TEST_VMRL_OP( 15858,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat63 );
TEST_VMRL_OP( 15864,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat4 );
TEST_VMRL_OP( 15891,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat31 );
TEST_VMRL_OP( 15899,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat39 );
TEST_VMRL_OP( 15909,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 15913,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat53 );
TEST_VMRL_OP( 15927,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat2 );
TEST_VMRL_OP( 15972,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat47 );
TEST_VMRL_OP( 15979,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat54 );
TEST_VMRL_OP( 15986,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat61 );
TEST_VMRL_OP( 15999,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat9 );
TEST_VMRL_OP( 16006,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat16 );
TEST_VMRL_OP( 16012,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat22 );
TEST_VMRL_OP( 16041,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 16054,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat64 );
TEST_VMRL_OP( 16056,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat1 );
TEST_VMRL_OP( 16118,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat63 );
TEST_VMRL_OP( 16154,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat34 );
TEST_VMRL_OP( 16188,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat3 );
TEST_VMRL_OP( 16203,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat18 );
TEST_VMRL_OP( 16223,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat38 );
TEST_VMRL_OP( 16238,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat53 );
TEST_VMRL_OP( 16246,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat61 );
TEST_VMRL_OP( 16261,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat11 );
TEST_VMRL_OP( 16262,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat12 );
TEST_VMRL_OP( 16275,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat25 );
TEST_VMRL_OP( 16287,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat37 );
TEST_VMRL_OP( 16294,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat44 );
TEST_VMRL_OP( 16309,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat59 );
TEST_VMRL_OP( 16324,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat9 );
TEST_VMRL_OP( 16337,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat22 );
TEST_VMRL_OP( 16338,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat23 );
TEST_VMRL_OP( 16344,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat29 );
TEST_VMRL_OP( 16347,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat32 );
TEST_VMRL_OP( 16356,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat41 );
TEST_VMRL_OP( 16360,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat45 );
TEST_VMRL_OP( 16364,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat49 );
TEST_VMRL_OP( 16386,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat6 );
TEST_VMRL_OP( 16400,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat20 );
TEST_VMRL_OP( 16444,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat64 );
TEST_VMRL_OP( 16447,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat2 );
TEST_VMRL_OP( 16457,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat12 );
TEST_VMRL_OP( 16499,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat54 );
TEST_VMRL_OP( 16506,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat61 );
TEST_VMRL_OP( 16536,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat26 );
TEST_VMRL_OP( 16547,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat37 );
TEST_VMRL_OP( 16551,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat41 );
TEST_VMRL_OP( 16568,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat58 );
TEST_VMRL_OP( 16575,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat0 );
TEST_VMRL_OP( 16591,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat16 );
TEST_VMRL_OP( 16597,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat22 );
TEST_VMRL_OP( 16606,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat31 );
TEST_VMRL_OP( 16617,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat42 );
TEST_VMRL_OP( 16658,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat18 );
TEST_VMRL_OP( 16671,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat31 );
TEST_VMRL_OP( 16675,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat35 );
TEST_VMRL_OP( 16693,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat53 );
TEST_VMRL_OP( 16704,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat64 );
TEST_VMRL_OP( 16723,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat18 );
TEST_VMRL_OP( 16757,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat52 );
TEST_VMRL_OP( 16759,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat54 );
TEST_VMRL_OP( 16766,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat61 );
TEST_VMRL_OP( 16785,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat15 );
TEST_VMRL_OP( 16790,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat20 );
TEST_VMRL_OP( 16802,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat32 );
TEST_VMRL_OP( 16805,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat35 );
TEST_VMRL_OP( 16821,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat51 );
TEST_VMRL_OP( 16827,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat57 );
TEST_VMRL_OP( 16853,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat18 );
TEST_VMRL_OP( 16855,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat20 );
TEST_VMRL_OP( 16876,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat41 );
TEST_VMRL_OP( 16883,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat48 );
TEST_VMRL_OP( 16894,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat59 );
TEST_VMRL_OP( 16900,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 33975,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 33976,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 33977,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 33978,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33979,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33980,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33981,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33982,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33983,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33984,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33985,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33986,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat33:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat34:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat35:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat36:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat37:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat38:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat39:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0
	.word	0x0

walking_ones_dat40:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0
	.word	0x0

walking_ones_dat41:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x0

walking_ones_dat42:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat43:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat44:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat45:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat46:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat47:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat48:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat49:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat50:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat51:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat52:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat53:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat54:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat55:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat56:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat57:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat58:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat59:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat60:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat61:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat62:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat63:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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

walking_ones_dat64:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat33:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat34:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat35:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat36:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat37:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat38:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat39:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1
	.word	0x1

walking_zeros_dat40:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1
	.word	0x1

walking_zeros_dat41:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
	.word	0x1

walking_zeros_dat42:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat43:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat44:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat45:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat46:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat47:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat48:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat49:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat50:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat51:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat52:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat53:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat54:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat55:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat56:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat57:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat58:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat59:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat60:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat61:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat62:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat63:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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

walking_zeros_dat64:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
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
    

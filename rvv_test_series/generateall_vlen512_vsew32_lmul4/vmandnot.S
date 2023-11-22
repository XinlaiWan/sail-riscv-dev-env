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
TEST_VMRL_OP( 7,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 46,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat46 );
TEST_VMRL_OP( 78,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 117,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat52 );
TEST_VMRL_OP( 126,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat61 );
TEST_VMRL_OP( 151,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 185,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat55 );
TEST_VMRL_OP( 192,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat62 );
TEST_VMRL_OP( 246,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat51 );
TEST_VMRL_OP( 292,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 366,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat41 );
TEST_VMRL_OP( 422,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 444,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat54 );
TEST_VMRL_OP( 488,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat33 );
TEST_VMRL_OP( 502,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat47 );
TEST_VMRL_OP( 512,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat57 );
TEST_VMRL_OP( 537,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 555,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat35 );
TEST_VMRL_OP( 570,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat50 );
TEST_VMRL_OP( 579,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat59 );
TEST_VMRL_OP( 594,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 600,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 669,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 675,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 676,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 677,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 701,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat51 );
TEST_VMRL_OP( 712,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat62 );
TEST_VMRL_OP( 743,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 752,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat37 );
TEST_VMRL_OP( 764,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat49 );
TEST_VMRL_OP( 794,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 800,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat20 );
TEST_VMRL_OP( 818,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat38 );
TEST_VMRL_OP( 822,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat42 );
TEST_VMRL_OP( 828,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat48 );
TEST_VMRL_OP( 860,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 904,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat59 );
TEST_VMRL_OP( 918,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 925,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 926,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 928,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 929,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat19 );
TEST_VMRL_OP( 974,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat64 );
TEST_VMRL_OP( 987,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 990,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1006,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat31 );
TEST_VMRL_OP( 1034,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat59 );
TEST_VMRL_OP( 1059,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat19 );
TEST_VMRL_OP( 1066,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 1070,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat30 );
TEST_VMRL_OP( 1109,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 1123,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 1124,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 1148,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat43 );
TEST_VMRL_OP( 1155,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat50 );
TEST_VMRL_OP( 1167,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat62 );
TEST_VMRL_OP( 1211,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat41 );
TEST_VMRL_OP( 1221,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat51 );
TEST_VMRL_OP( 1242,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 1262,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 1274,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat39 );
TEST_VMRL_OP( 1277,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat42 );
TEST_VMRL_OP( 1308,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 1334,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat34 );
TEST_VMRL_OP( 1349,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat49 );
TEST_VMRL_OP( 1371,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat6 );
TEST_VMRL_OP( 1372,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat7 );
TEST_VMRL_OP( 1381,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 1385,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 1387,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat22 );
TEST_VMRL_OP( 1402,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat37 );
TEST_VMRL_OP( 1410,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat45 );
TEST_VMRL_OP( 1412,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat47 );
TEST_VMRL_OP( 1420,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat55 );
TEST_VMRL_OP( 1428,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat63 );
TEST_VMRL_OP( 1433,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 1468,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat38 );
TEST_VMRL_OP( 1472,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat42 );
TEST_VMRL_OP( 1479,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat49 );
TEST_VMRL_OP( 1486,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat56 );
TEST_VMRL_OP( 1496,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat1 );
TEST_VMRL_OP( 1500,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 1506,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat11 );
TEST_VMRL_OP( 1507,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 1521,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 1537,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat42 );
TEST_VMRL_OP( 1543,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat48 );
TEST_VMRL_OP( 1558,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat63 );
TEST_VMRL_OP( 1575,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat15 );
TEST_VMRL_OP( 1588,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 1598,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat38 );
TEST_VMRL_OP( 1610,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat50 );
TEST_VMRL_OP( 1618,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat58 );
TEST_VMRL_OP( 1623,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat63 );
TEST_VMRL_OP( 1637,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 1655,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 1657,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 1689,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat64 );
TEST_VMRL_OP( 1711,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat21 );
TEST_VMRL_OP( 1712,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 1741,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat51 );
TEST_VMRL_OP( 1756,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 1769,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 1780,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat25 );
TEST_VMRL_OP( 1805,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat50 );
TEST_VMRL_OP( 1841,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 1849,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 1883,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat63 );
TEST_VMRL_OP( 1970,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 1981,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 1986,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat36 );
TEST_VMRL_OP( 2012,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat62 );
TEST_VMRL_OP( 2038,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat23 );
TEST_VMRL_OP( 2062,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat47 );
TEST_VMRL_OP( 2072,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat57 );
TEST_VMRL_OP( 2076,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat61 );
TEST_VMRL_OP( 2078,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat63 );
TEST_VMRL_OP( 2113,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat33 );
TEST_VMRL_OP( 2122,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat42 );
TEST_VMRL_OP( 2138,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat58 );
TEST_VMRL_OP( 2151,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat33, walking_ones_dat6 );
TEST_VMRL_OP( 2186,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat33, walking_ones_dat41 );
TEST_VMRL_OP( 2189,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat33, walking_ones_dat44 );
TEST_VMRL_OP( 2194,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat33, walking_ones_dat49 );
TEST_VMRL_OP( 2219,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_ones_dat9 );
TEST_VMRL_OP( 2235,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_ones_dat25 );
TEST_VMRL_OP( 2246,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_ones_dat36 );
TEST_VMRL_OP( 2249,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_ones_dat39 );
TEST_VMRL_OP( 2263,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_ones_dat53 );
TEST_VMRL_OP( 2265,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_ones_dat55 );
TEST_VMRL_OP( 2267,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat34, walking_ones_dat57 );
TEST_VMRL_OP( 2285,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_ones_dat10 );
TEST_VMRL_OP( 2286,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_ones_dat11 );
TEST_VMRL_OP( 2336,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_ones_dat61 );
TEST_VMRL_OP( 2340,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat36, walking_ones_dat0 );
TEST_VMRL_OP( 2354,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat36, walking_ones_dat14 );
TEST_VMRL_OP( 2376,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 2384,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat36, walking_ones_dat44 );
TEST_VMRL_OP( 2387,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat36, walking_ones_dat47 );
TEST_VMRL_OP( 2391,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat36, walking_ones_dat51 );
TEST_VMRL_OP( 2399,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat36, walking_ones_dat59 );
TEST_VMRL_OP( 2425,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat20 );
TEST_VMRL_OP( 2428,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat23 );
TEST_VMRL_OP( 2439,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat34 );
TEST_VMRL_OP( 2447,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat42 );
TEST_VMRL_OP( 2453,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat48 );
TEST_VMRL_OP( 2460,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat55 );
TEST_VMRL_OP( 2467,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat62 );
TEST_VMRL_OP( 2468,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat37, walking_ones_dat63 );
TEST_VMRL_OP( 2473,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_ones_dat3 );
TEST_VMRL_OP( 2479,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_ones_dat9 );
TEST_VMRL_OP( 2495,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_ones_dat25 );
TEST_VMRL_OP( 2505,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_ones_dat35 );
TEST_VMRL_OP( 2532,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat38, walking_ones_dat62 );
TEST_VMRL_OP( 2572,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat39, walking_ones_dat37 );
TEST_VMRL_OP( 2587,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat39, walking_ones_dat52 );
TEST_VMRL_OP( 2633,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat40, walking_ones_dat33 );
TEST_VMRL_OP( 2640,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 2644,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat40, walking_ones_dat44 );
TEST_VMRL_OP( 2655,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat40, walking_ones_dat55 );
TEST_VMRL_OP( 2676,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_ones_dat11 );
TEST_VMRL_OP( 2679,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_ones_dat14 );
TEST_VMRL_OP( 2688,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_ones_dat23 );
TEST_VMRL_OP( 2712,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_ones_dat47 );
TEST_VMRL_OP( 2722,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat41, walking_ones_dat57 );
TEST_VMRL_OP( 2733,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_ones_dat3 );
TEST_VMRL_OP( 2734,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_ones_dat4 );
TEST_VMRL_OP( 2736,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_ones_dat6 );
TEST_VMRL_OP( 2752,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_ones_dat22 );
TEST_VMRL_OP( 2770,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat42, walking_ones_dat40 );
TEST_VMRL_OP( 2795,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_ones_dat0 );
TEST_VMRL_OP( 2811,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat16 );
TEST_VMRL_OP( 2836,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat41 );
TEST_VMRL_OP( 2837,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat42 );
TEST_VMRL_OP( 2841,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat46 );
TEST_VMRL_OP( 2842,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat47 );
TEST_VMRL_OP( 2847,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat52 );
TEST_VMRL_OP( 2854,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat59 );
TEST_VMRL_OP( 2859,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat43, walking_ones_dat64 );
TEST_VMRL_OP( 2863,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_ones_dat3 );
TEST_VMRL_OP( 2869,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_ones_dat9 );
TEST_VMRL_OP( 2877,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_ones_dat17 );
TEST_VMRL_OP( 2888,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_ones_dat28 );
TEST_VMRL_OP( 2893,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_ones_dat33 );
TEST_VMRL_OP( 2920,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat44, walking_ones_dat60 );
TEST_VMRL_OP( 2928,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat45, walking_ones_dat3 );
TEST_VMRL_OP( 2948,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat45, walking_ones_dat23 );
TEST_VMRL_OP( 2978,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat45, walking_ones_dat53 );
TEST_VMRL_OP( 3034,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat46, walking_ones_dat44 );
TEST_VMRL_OP( 3043,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat46, walking_ones_dat53 );
TEST_VMRL_OP( 3078,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat47, walking_ones_dat23 );
TEST_VMRL_OP( 3081,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat47, walking_ones_dat26 );
TEST_VMRL_OP( 3123,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_ones_dat3 );
TEST_VMRL_OP( 3129,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_ones_dat9 );
TEST_VMRL_OP( 3139,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_ones_dat19 );
TEST_VMRL_OP( 3156,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_ones_dat36 );
TEST_VMRL_OP( 3158,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_ones_dat38 );
TEST_VMRL_OP( 3159,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_ones_dat39 );
TEST_VMRL_OP( 3164,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat48, walking_ones_dat44 );
TEST_VMRL_OP( 3190,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat49, walking_ones_dat5 );
TEST_VMRL_OP( 3227,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat49, walking_ones_dat42 );
TEST_VMRL_OP( 3249,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat49, walking_ones_dat64 );
TEST_VMRL_OP( 3309,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_ones_dat59 );
TEST_VMRL_OP( 3311,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat50, walking_ones_dat61 );
TEST_VMRL_OP( 3331,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_ones_dat16 );
TEST_VMRL_OP( 3357,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_ones_dat42 );
TEST_VMRL_OP( 3362,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_ones_dat47 );
TEST_VMRL_OP( 3364,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_ones_dat49 );
TEST_VMRL_OP( 3371,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat51, walking_ones_dat56 );
TEST_VMRL_OP( 3441,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat52, walking_ones_dat61 );
TEST_VMRL_OP( 3459,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_ones_dat14 );
TEST_VMRL_OP( 3461,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_ones_dat16 );
TEST_VMRL_OP( 3496,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_ones_dat51 );
TEST_VMRL_OP( 3498,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 3505,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_ones_dat60 );
TEST_VMRL_OP( 3506,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat53, walking_ones_dat61 );
TEST_VMRL_OP( 3520,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_ones_dat10 );
TEST_VMRL_OP( 3539,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_ones_dat29 );
TEST_VMRL_OP( 3544,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_ones_dat34 );
TEST_VMRL_OP( 3567,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat54, walking_ones_dat57 );
TEST_VMRL_OP( 3575,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat55, walking_ones_dat0 );
TEST_VMRL_OP( 3577,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat55, walking_ones_dat2 );
TEST_VMRL_OP( 3595,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat55, walking_ones_dat20 );
TEST_VMRL_OP( 3621,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat55, walking_ones_dat46 );
TEST_VMRL_OP( 3646,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat6 );
TEST_VMRL_OP( 3658,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat18 );
TEST_VMRL_OP( 3670,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat30 );
TEST_VMRL_OP( 3679,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat39 );
TEST_VMRL_OP( 3680,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat40 );
TEST_VMRL_OP( 3698,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat58 );
TEST_VMRL_OP( 3702,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat56, walking_ones_dat62 );
TEST_VMRL_OP( 3709,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat4 );
TEST_VMRL_OP( 3713,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat8 );
TEST_VMRL_OP( 3723,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat18 );
TEST_VMRL_OP( 3728,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat23 );
TEST_VMRL_OP( 3730,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat25 );
TEST_VMRL_OP( 3733,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat28 );
TEST_VMRL_OP( 3735,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat30 );
TEST_VMRL_OP( 3738,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat33 );
TEST_VMRL_OP( 3757,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat52 );
TEST_VMRL_OP( 3789,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat58, walking_ones_dat19 );
TEST_VMRL_OP( 3800,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat58, walking_ones_dat30 );
TEST_VMRL_OP( 3806,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat58, walking_ones_dat36 );
TEST_VMRL_OP( 3838,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat59, walking_ones_dat3 );
TEST_VMRL_OP( 3850,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat59, walking_ones_dat15 );
TEST_VMRL_OP( 3851,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat59, walking_ones_dat16 );
TEST_VMRL_OP( 3880,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat59, walking_ones_dat45 );
TEST_VMRL_OP( 3914,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_ones_dat14 );
TEST_VMRL_OP( 3919,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_ones_dat19 );
TEST_VMRL_OP( 3925,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_ones_dat25 );
TEST_VMRL_OP( 3934,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_ones_dat34 );
TEST_VMRL_OP( 3954,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_ones_dat54 );
TEST_VMRL_OP( 3956,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat60, walking_ones_dat56 );
TEST_VMRL_OP( 3972,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_ones_dat7 );
TEST_VMRL_OP( 3973,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_ones_dat8 );
TEST_VMRL_OP( 3982,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_ones_dat17 );
TEST_VMRL_OP( 3983,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_ones_dat18 );
TEST_VMRL_OP( 4004,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat61, walking_ones_dat39 );
TEST_VMRL_OP( 4026,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 4034,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_ones_dat4 );
TEST_VMRL_OP( 4052,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_ones_dat22 );
TEST_VMRL_OP( 4053,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_ones_dat23 );
TEST_VMRL_OP( 4054,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_ones_dat24 );
TEST_VMRL_OP( 4082,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat62, walking_ones_dat52 );
TEST_VMRL_OP( 4132,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat63, walking_ones_dat37 );
TEST_VMRL_OP( 4203,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat64, walking_ones_dat43 );
TEST_VMRL_OP( 4213,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat64, walking_ones_dat53 );
TEST_VMRL_OP( 4225,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4252,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 4256,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 4309,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 4313,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 4315,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat25 );
TEST_VMRL_OP( 4336,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat46 );
TEST_VMRL_OP( 4338,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat48 );
TEST_VMRL_OP( 4346,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat56 );
TEST_VMRL_OP( 4348,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat58 );
TEST_VMRL_OP( 4355,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 4361,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 4362,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 4428,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 4468,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat48 );
TEST_VMRL_OP( 4479,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat59 );
TEST_VMRL_OP( 4491,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 4499,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 4511,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 4517,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 4530,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat45 );
TEST_VMRL_OP( 4603,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat53 );
TEST_VMRL_OP( 4606,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat56 );
TEST_VMRL_OP( 4621,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4632,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat17 );
TEST_VMRL_OP( 4637,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 4650,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat35 );
TEST_VMRL_OP( 4653,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat38 );
TEST_VMRL_OP( 4694,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 4712,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 4713,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat33 );
TEST_VMRL_OP( 4718,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat38 );
TEST_VMRL_OP( 4728,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat48 );
TEST_VMRL_OP( 4729,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat49 );
TEST_VMRL_OP( 4759,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 4811,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 4815,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 4818,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 4822,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 4837,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 4854,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat44 );
TEST_VMRL_OP( 4867,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat57 );
TEST_VMRL_OP( 4869,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat59 );
TEST_VMRL_OP( 4882,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 4903,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 4917,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat42 );
TEST_VMRL_OP( 4931,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat56 );
TEST_VMRL_OP( 4934,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat59 );
TEST_VMRL_OP( 4971,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 4974,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat34 );
TEST_VMRL_OP( 4975,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat35 );
TEST_VMRL_OP( 4983,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat43 );
TEST_VMRL_OP( 5012,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 5053,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat48 );
TEST_VMRL_OP( 5054,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat49 );
TEST_VMRL_OP( 5056,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat51 );
TEST_VMRL_OP( 5078,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 5084,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 5089,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 5106,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat36 );
TEST_VMRL_OP( 5115,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat45 );
TEST_VMRL_OP( 5119,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat49 );
TEST_VMRL_OP( 5121,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat51 );
TEST_VMRL_OP( 5134,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat64 );
TEST_VMRL_OP( 5163,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 5194,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat59 );
TEST_VMRL_OP( 5235,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat35 );
TEST_VMRL_OP( 5237,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat37 );
TEST_VMRL_OP( 5277,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 5288,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat23 );
TEST_VMRL_OP( 5344,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 5358,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat28 );
TEST_VMRL_OP( 5362,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 5434,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat39 );
TEST_VMRL_OP( 5480,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat20 );
TEST_VMRL_OP( 5486,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 5494,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat34 );
TEST_VMRL_OP( 5516,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat56 );
TEST_VMRL_OP( 5520,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat60 );
TEST_VMRL_OP( 5523,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat63 );
TEST_VMRL_OP( 5526,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 5532,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 5562,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat37 );
TEST_VMRL_OP( 5580,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat55 );
TEST_VMRL_OP( 5583,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat58 );
TEST_VMRL_OP( 5585,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat60 );
TEST_VMRL_OP( 5587,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat62 );
TEST_VMRL_OP( 5611,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 5618,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 5627,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat37 );
TEST_VMRL_OP( 5632,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat42 );
TEST_VMRL_OP( 5638,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat48 );
TEST_VMRL_OP( 5646,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat56 );
TEST_VMRL_OP( 5660,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 5664,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 5667,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 5668,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 5693,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat38 );
TEST_VMRL_OP( 5701,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat46 );
TEST_VMRL_OP( 5720,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 5738,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 5743,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 5759,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat39 );
TEST_VMRL_OP( 5764,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat44 );
TEST_VMRL_OP( 5790,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 5829,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat44 );
TEST_VMRL_OP( 5851,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 5908,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat58 );
TEST_VMRL_OP( 5910,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat60 );
TEST_VMRL_OP( 5914,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat64 );
TEST_VMRL_OP( 5921,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 5927,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 5936,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 5942,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 5949,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat34 );
TEST_VMRL_OP( 5968,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat53 );
TEST_VMRL_OP( 6001,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 6004,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 6024,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat44 );
TEST_VMRL_OP( 6029,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat49 );
TEST_VMRL_OP( 6061,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 6076,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 6093,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat48 );
TEST_VMRL_OP( 6107,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat62 );
TEST_VMRL_OP( 6109,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat64 );
TEST_VMRL_OP( 6127,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 6128,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 6131,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 6162,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat52 );
TEST_VMRL_OP( 6176,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 6211,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat36 );
TEST_VMRL_OP( 6228,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat53 );
TEST_VMRL_OP( 6242,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 6247,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat7 );
TEST_VMRL_OP( 6269,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 6271,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 6292,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat52 );
TEST_VMRL_OP( 6301,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat61 );
TEST_VMRL_OP( 6325,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 6359,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat54 );
TEST_VMRL_OP( 6387,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat17 );
TEST_VMRL_OP( 6388,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat18 );
TEST_VMRL_OP( 6390,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat20 );
TEST_VMRL_OP( 6394,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat24 );
TEST_VMRL_OP( 6397,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat27 );
TEST_VMRL_OP( 6406,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat36 );
TEST_VMRL_OP( 6432,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_zeros_dat62 );
TEST_VMRL_OP( 6450,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat15 );
TEST_VMRL_OP( 6452,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat17 );
TEST_VMRL_OP( 6473,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_zeros_dat38 );
TEST_VMRL_OP( 6503,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat3 );
TEST_VMRL_OP( 6538,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat38 );
TEST_VMRL_OP( 6555,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_zeros_dat55 );
TEST_VMRL_OP( 6594,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat29 );
TEST_VMRL_OP( 6595,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat30 );
TEST_VMRL_OP( 6598,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat33 );
TEST_VMRL_OP( 6603,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat38 );
TEST_VMRL_OP( 6625,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_zeros_dat60 );
TEST_VMRL_OP( 6648,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat18 );
TEST_VMRL_OP( 6653,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat23 );
TEST_VMRL_OP( 6685,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat55 );
TEST_VMRL_OP( 6693,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_zeros_dat63 );
TEST_VMRL_OP( 6709,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat14 );
TEST_VMRL_OP( 6717,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat22 );
TEST_VMRL_OP( 6730,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat35 );
TEST_VMRL_OP( 6751,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat56 );
TEST_VMRL_OP( 6754,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_zeros_dat59 );
TEST_VMRL_OP( 6776,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat16 );
TEST_VMRL_OP( 6785,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat25 );
TEST_VMRL_OP( 6791,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat31 );
TEST_VMRL_OP( 6796,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat36 );
TEST_VMRL_OP( 6813,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat53 );
TEST_VMRL_OP( 6886,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat40, walking_zeros_dat61 );
TEST_VMRL_OP( 6890,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat0 );
TEST_VMRL_OP( 6894,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat4 );
TEST_VMRL_OP( 6900,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat10 );
TEST_VMRL_OP( 6904,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat14 );
TEST_VMRL_OP( 6932,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat42 );
TEST_VMRL_OP( 6941,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_zeros_dat51 );
TEST_VMRL_OP( 6956,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat42, walking_zeros_dat1 );
TEST_VMRL_OP( 7010,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat42, walking_zeros_dat55 );
TEST_VMRL_OP( 7017,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat42, walking_zeros_dat62 );
TEST_VMRL_OP( 7034,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_zeros_dat14 );
TEST_VMRL_OP( 7035,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_zeros_dat15 );
TEST_VMRL_OP( 7067,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_zeros_dat47 );
TEST_VMRL_OP( 7092,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_zeros_dat7 );
TEST_VMRL_OP( 7105,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_zeros_dat20 );
TEST_VMRL_OP( 7110,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_zeros_dat25 );
TEST_VMRL_OP( 7232,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_zeros_dat17 );
TEST_VMRL_OP( 7249,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_zeros_dat34 );
TEST_VMRL_OP( 7281,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat1 );
TEST_VMRL_OP( 7285,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat5 );
TEST_VMRL_OP( 7286,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat6 );
TEST_VMRL_OP( 7288,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat8 );
TEST_VMRL_OP( 7301,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat21 );
TEST_VMRL_OP( 7331,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_zeros_dat51 );
TEST_VMRL_OP( 7356,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat11 );
TEST_VMRL_OP( 7367,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat22 );
TEST_VMRL_OP( 7383,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat38 );
TEST_VMRL_OP( 7399,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_zeros_dat54 );
TEST_VMRL_OP( 7412,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat2 );
TEST_VMRL_OP( 7414,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat4 );
TEST_VMRL_OP( 7417,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat7 );
TEST_VMRL_OP( 7449,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_zeros_dat39 );
TEST_VMRL_OP( 7481,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat6 );
TEST_VMRL_OP( 7493,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat18 );
TEST_VMRL_OP( 7522,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_zeros_dat47 );
TEST_VMRL_OP( 7580,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat40 );
TEST_VMRL_OP( 7599,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_zeros_dat59 );
TEST_VMRL_OP( 7623,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat52, walking_zeros_dat18 );
TEST_VMRL_OP( 7625,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat52, walking_zeros_dat20 );
TEST_VMRL_OP( 7685,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat15 );
TEST_VMRL_OP( 7691,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat21 );
TEST_VMRL_OP( 7709,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat39 );
TEST_VMRL_OP( 7719,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat49 );
TEST_VMRL_OP( 7728,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_zeros_dat58 );
TEST_VMRL_OP( 7739,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_zeros_dat4 );
TEST_VMRL_OP( 7784,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_zeros_dat49 );
TEST_VMRL_OP( 7848,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_zeros_dat48 );
TEST_VMRL_OP( 7871,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat6 );
TEST_VMRL_OP( 7883,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat18 );
TEST_VMRL_OP( 7894,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat29 );
TEST_VMRL_OP( 7904,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat39 );
TEST_VMRL_OP( 7927,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_zeros_dat62 );
TEST_VMRL_OP( 7935,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat5 );
TEST_VMRL_OP( 7942,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat12 );
TEST_VMRL_OP( 7972,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat42 );
TEST_VMRL_OP( 7978,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_zeros_dat48 );
TEST_VMRL_OP( 7987,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 7995,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat0 );
TEST_VMRL_OP( 8009,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat14 );
TEST_VMRL_OP( 8060,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat0 );
TEST_VMRL_OP( 8077,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat17 );
TEST_VMRL_OP( 8101,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat41 );
TEST_VMRL_OP( 8106,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat46 );
TEST_VMRL_OP( 8115,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_zeros_dat55 );
TEST_VMRL_OP( 8151,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_zeros_dat26 );
TEST_VMRL_OP( 8152,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_zeros_dat27 );
TEST_VMRL_OP( 8154,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_zeros_dat29 );
TEST_VMRL_OP( 8181,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_zeros_dat56 );
TEST_VMRL_OP( 8193,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_zeros_dat3 );
TEST_VMRL_OP( 8200,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_zeros_dat10 );
TEST_VMRL_OP( 8226,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_zeros_dat36 );
TEST_VMRL_OP( 8233,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_zeros_dat43 );
TEST_VMRL_OP( 8268,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_zeros_dat13 );
TEST_VMRL_OP( 8295,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_zeros_dat40 );
TEST_VMRL_OP( 8314,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_zeros_dat59 );
TEST_VMRL_OP( 8325,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_zeros_dat5 );
TEST_VMRL_OP( 8375,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_zeros_dat55 );
TEST_VMRL_OP( 8407,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat22 );
TEST_VMRL_OP( 8415,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat30 );
TEST_VMRL_OP( 8427,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_zeros_dat42 );
TEST_VMRL_OP( 8450,  vmandnot.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 8451,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 8481,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 8492,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat42 );
TEST_VMRL_OP( 8545,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 8566,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat51 );
TEST_VMRL_OP( 8583,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 8598,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat18 );
TEST_VMRL_OP( 8611,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 8626,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat46 );
TEST_VMRL_OP( 8641,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat61 );
TEST_VMRL_OP( 8644,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat64 );
TEST_VMRL_OP( 8665,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 8687,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat42 );
TEST_VMRL_OP( 8689,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat44 );
TEST_VMRL_OP( 8697,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat52 );
TEST_VMRL_OP( 8715,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 8732,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 8733,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 8736,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 8738,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat28 );
TEST_VMRL_OP( 8755,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat45 );
TEST_VMRL_OP( 8773,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat63 );
TEST_VMRL_OP( 8788,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 8798,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 8813,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat38 );
TEST_VMRL_OP( 8821,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat46 );
TEST_VMRL_OP( 8835,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat60 );
TEST_VMRL_OP( 8856,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 8863,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat23 );
TEST_VMRL_OP( 8874,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat34 );
TEST_VMRL_OP( 8876,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat36 );
TEST_VMRL_OP( 8888,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat48 );
TEST_VMRL_OP( 8923,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 8949,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat44 );
TEST_VMRL_OP( 8954,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat49 );
TEST_VMRL_OP( 8958,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat53 );
TEST_VMRL_OP( 8968,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat7, walking_zeros_dat63 );
TEST_VMRL_OP( 8971,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 8984,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 9017,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat47 );
TEST_VMRL_OP( 9064,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat29 );
TEST_VMRL_OP( 9091,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat56 );
TEST_VMRL_OP( 9104,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 9121,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 9128,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 9141,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat41 );
TEST_VMRL_OP( 9146,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat46 );
TEST_VMRL_OP( 9147,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat47 );
TEST_VMRL_OP( 9155,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat55 );
TEST_VMRL_OP( 9159,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat59 );
TEST_VMRL_OP( 9165,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 9171,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 9175,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 9198,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat33 );
TEST_VMRL_OP( 9201,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat36 );
TEST_VMRL_OP( 9204,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat39 );
TEST_VMRL_OP( 9211,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat46 );
TEST_VMRL_OP( 9214,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat49 );
TEST_VMRL_OP( 9218,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat53 );
TEST_VMRL_OP( 9231,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 9267,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat37 );
TEST_VMRL_OP( 9271,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat41 );
TEST_VMRL_OP( 9281,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat51 );
TEST_VMRL_OP( 9300,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 9309,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 9342,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat47 );
TEST_VMRL_OP( 9346,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat51 );
TEST_VMRL_OP( 9431,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 9442,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 9446,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 9469,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat44 );
TEST_VMRL_OP( 9476,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat51 );
TEST_VMRL_OP( 9480,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat55 );
TEST_VMRL_OP( 9485,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat60 );
TEST_VMRL_OP( 9532,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat42 );
TEST_VMRL_OP( 9545,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat55 );
TEST_VMRL_OP( 9548,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat58 );
TEST_VMRL_OP( 9552,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat16, walking_zeros_dat62 );
TEST_VMRL_OP( 9567,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat12 );
TEST_VMRL_OP( 9609,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat54 );
TEST_VMRL_OP( 9636,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat16 );
TEST_VMRL_OP( 9681,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat61 );
TEST_VMRL_OP( 9683,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat63 );
TEST_VMRL_OP( 9695,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 9700,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 9703,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat18 );
TEST_VMRL_OP( 9716,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 9737,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat52 );
TEST_VMRL_OP( 9774,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 9778,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 9804,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat54 );
TEST_VMRL_OP( 9823,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 9824,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 9841,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat26 );
TEST_VMRL_OP( 9861,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat46 );
TEST_VMRL_OP( 9869,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat54 );
TEST_VMRL_OP( 9900,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat20 );
TEST_VMRL_OP( 9938,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat58 );
TEST_VMRL_OP( 9964,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 9977,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 10005,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat60 );
TEST_VMRL_OP( 10018,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 10029,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 10047,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat37 );
TEST_VMRL_OP( 10052,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat42 );
TEST_VMRL_OP( 10088,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 10151,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 10164,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 10237,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 10242,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat37 );
TEST_VMRL_OP( 10268,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat63 );
TEST_VMRL_OP( 10286,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 10287,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 10305,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat35 );
TEST_VMRL_OP( 10309,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat39 );
TEST_VMRL_OP( 10316,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat46 );
TEST_VMRL_OP( 10341,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat6 );
TEST_VMRL_OP( 10348,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 10363,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat28 );
TEST_VMRL_OP( 10365,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 10419,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 10431,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 10453,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat53 );
TEST_VMRL_OP( 10459,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat59 );
TEST_VMRL_OP( 10532,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 10544,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat14 );
TEST_VMRL_OP( 10567,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat37 );
TEST_VMRL_OP( 10613,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat18 );
TEST_VMRL_OP( 10614,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat19 );
TEST_VMRL_OP( 10652,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat57 );
TEST_VMRL_OP( 10667,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat7 );
TEST_VMRL_OP( 10673,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat13 );
TEST_VMRL_OP( 10691,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat31 );
TEST_VMRL_OP( 10718,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat58 );
TEST_VMRL_OP( 10727,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat2 );
TEST_VMRL_OP( 10741,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat16 );
TEST_VMRL_OP( 10776,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat51 );
TEST_VMRL_OP( 10777,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat52 );
TEST_VMRL_OP( 10785,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat60 );
TEST_VMRL_OP( 10818,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat28 );
TEST_VMRL_OP( 10827,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat37 );
TEST_VMRL_OP( 10872,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat17 );
TEST_VMRL_OP( 10904,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat49 );
TEST_VMRL_OP( 10915,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat60 );
TEST_VMRL_OP( 10923,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat3 );
TEST_VMRL_OP( 10931,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat11 );
TEST_VMRL_OP( 10936,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat16 );
TEST_VMRL_OP( 10939,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat19 );
TEST_VMRL_OP( 10942,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat22 );
TEST_VMRL_OP( 10944,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat24 );
TEST_VMRL_OP( 10974,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat54 );
TEST_VMRL_OP( 11010,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat25 );
TEST_VMRL_OP( 11051,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat1 );
TEST_VMRL_OP( 11055,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat5 );
TEST_VMRL_OP( 11057,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat7 );
TEST_VMRL_OP( 11082,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat32 );
TEST_VMRL_OP( 11098,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat48 );
TEST_VMRL_OP( 11099,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat49 );
TEST_VMRL_OP( 11103,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat53 );
TEST_VMRL_OP( 11147,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat32 );
TEST_VMRL_OP( 11151,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat36 );
TEST_VMRL_OP( 11159,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat44 );
TEST_VMRL_OP( 11172,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat57 );
TEST_VMRL_OP( 11179,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat64 );
TEST_VMRL_OP( 11187,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat7 );
TEST_VMRL_OP( 11189,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat9 );
TEST_VMRL_OP( 11230,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat50 );
TEST_VMRL_OP( 11276,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat31 );
TEST_VMRL_OP( 11290,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat43, walking_zeros_dat45 );
TEST_VMRL_OP( 11312,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat2 );
TEST_VMRL_OP( 11322,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat12 );
TEST_VMRL_OP( 11364,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat54 );
TEST_VMRL_OP( 11369,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat59 );
TEST_VMRL_OP( 11387,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat12 );
TEST_VMRL_OP( 11420,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 11426,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat51 );
TEST_VMRL_OP( 11434,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat59 );
TEST_VMRL_OP( 11446,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat6 );
TEST_VMRL_OP( 11481,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat41 );
TEST_VMRL_OP( 11500,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat60 );
TEST_VMRL_OP( 11504,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat64 );
TEST_VMRL_OP( 11509,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat4 );
TEST_VMRL_OP( 11535,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat30 );
TEST_VMRL_OP( 11567,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat62 );
TEST_VMRL_OP( 11570,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat0 );
TEST_VMRL_OP( 11574,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat4 );
TEST_VMRL_OP( 11585,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat15 );
TEST_VMRL_OP( 11589,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat19 );
TEST_VMRL_OP( 11601,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat31 );
TEST_VMRL_OP( 11612,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat42 );
TEST_VMRL_OP( 11622,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat52 );
TEST_VMRL_OP( 11630,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat60 );
TEST_VMRL_OP( 11650,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat15 );
TEST_VMRL_OP( 11655,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat20 );
TEST_VMRL_OP( 11670,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat35 );
TEST_VMRL_OP( 11678,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat43 );
TEST_VMRL_OP( 11684,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 11708,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat8 );
TEST_VMRL_OP( 11711,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat11 );
TEST_VMRL_OP( 11732,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat32 );
TEST_VMRL_OP( 11735,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat35 );
TEST_VMRL_OP( 11739,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat39 );
TEST_VMRL_OP( 11801,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat36 );
TEST_VMRL_OP( 11803,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat38 );
TEST_VMRL_OP( 11804,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat39 );
TEST_VMRL_OP( 11844,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat14 );
TEST_VMRL_OP( 11867,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat37 );
TEST_VMRL_OP( 11881,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat51 );
TEST_VMRL_OP( 11887,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat57 );
TEST_VMRL_OP( 11889,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat59 );
TEST_VMRL_OP( 11926,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat31 );
TEST_VMRL_OP( 11927,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat32 );
TEST_VMRL_OP( 11941,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat46 );
TEST_VMRL_OP( 12001,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat41 );
TEST_VMRL_OP( 12021,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat61 );
TEST_VMRL_OP( 12030,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat5 );
TEST_VMRL_OP( 12038,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat13 );
TEST_VMRL_OP( 12045,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat20 );
TEST_VMRL_OP( 12049,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat24 );
TEST_VMRL_OP( 12104,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat14 );
TEST_VMRL_OP( 12108,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat18 );
TEST_VMRL_OP( 12132,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat42 );
TEST_VMRL_OP( 12176,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat21 );
TEST_VMRL_OP( 12184,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat29 );
TEST_VMRL_OP( 12189,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat34 );
TEST_VMRL_OP( 12202,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat47 );
TEST_VMRL_OP( 12222,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat2 );
TEST_VMRL_OP( 12238,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat18 );
TEST_VMRL_OP( 12245,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat25 );
TEST_VMRL_OP( 12247,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat27 );
TEST_VMRL_OP( 12250,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat30 );
TEST_VMRL_OP( 12276,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat56 );
TEST_VMRL_OP( 12277,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat57 );
TEST_VMRL_OP( 12297,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat12 );
TEST_VMRL_OP( 12332,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat47 );
TEST_VMRL_OP( 12340,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat55 );
TEST_VMRL_OP( 12351,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat1 );
TEST_VMRL_OP( 12379,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat29 );
TEST_VMRL_OP( 12388,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat38 );
TEST_VMRL_OP( 12402,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat52 );
TEST_VMRL_OP( 12434,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat19 );
TEST_VMRL_OP( 12461,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat46 );
TEST_VMRL_OP( 12477,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat62 );
TEST_VMRL_OP( 12491,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat11 );
TEST_VMRL_OP( 12539,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat59 );
TEST_VMRL_OP( 12568,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat23 );
TEST_VMRL_OP( 12582,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat37 );
TEST_VMRL_OP( 12585,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat40 );
TEST_VMRL_OP( 12591,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat46 );
TEST_VMRL_OP( 12595,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat50 );
TEST_VMRL_OP( 12603,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat58 );
TEST_VMRL_OP( 12608,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 12619,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat9 );
TEST_VMRL_OP( 12648,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat38 );
TEST_VMRL_OP( 12663,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat53 );
TEST_VMRL_OP( 12668,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat58 );
TEST_VMRL_OP( 12671,  vmandnot.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat61 );
TEST_VMRL_OP( 12682,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 12695,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 12709,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat34 );
TEST_VMRL_OP( 12742,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12755,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 12760,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 12765,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat25 );
TEST_VMRL_OP( 12770,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 12814,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 12823,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat18 );
TEST_VMRL_OP( 12832,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 12871,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 12907,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat37 );
TEST_VMRL_OP( 12938,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 12972,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat37 );
TEST_VMRL_OP( 12993,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat58 );
TEST_VMRL_OP( 13034,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat34 );
TEST_VMRL_OP( 13045,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat45 );
TEST_VMRL_OP( 13077,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 13083,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 13086,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 13087,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 13103,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat38 );
TEST_VMRL_OP( 13110,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat45 );
TEST_VMRL_OP( 13208,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 13219,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 13226,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 13245,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat50 );
TEST_VMRL_OP( 13247,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat52 );
TEST_VMRL_OP( 13293,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat33 );
TEST_VMRL_OP( 13333,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 13349,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 13414,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 13439,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat49 );
TEST_VMRL_OP( 13442,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat52 );
TEST_VMRL_OP( 13445,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat55 );
TEST_VMRL_OP( 13478,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 13483,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 13489,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat34 );
TEST_VMRL_OP( 13520,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 13528,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 13547,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat27 );
TEST_VMRL_OP( 13581,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat61 );
TEST_VMRL_OP( 13603,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 13626,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat41 );
TEST_VMRL_OP( 13655,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 13659,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 13660,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 13661,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 13675,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat25 );
TEST_VMRL_OP( 13690,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat40 );
TEST_VMRL_OP( 13693,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat43 );
TEST_VMRL_OP( 13729,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 13759,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat44 );
TEST_VMRL_OP( 13775,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat60 );
TEST_VMRL_OP( 13795,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 13838,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat58 );
TEST_VMRL_OP( 13842,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat62 );
TEST_VMRL_OP( 13850,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat5 );
TEST_VMRL_OP( 13857,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 13859,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 13868,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 13914,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat4 );
TEST_VMRL_OP( 13950,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat40 );
TEST_VMRL_OP( 13975,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 13976,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 13984,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat9 );
TEST_VMRL_OP( 13991,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 13994,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat19 );
TEST_VMRL_OP( 14014,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat39 );
TEST_VMRL_OP( 14029,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat54 );
TEST_VMRL_OP( 14030,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat55 );
TEST_VMRL_OP( 14035,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat60 );
TEST_VMRL_OP( 14037,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat62 );
TEST_VMRL_OP( 14052,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 14065,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat25 );
TEST_VMRL_OP( 14084,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat44 );
TEST_VMRL_OP( 14087,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat47 );
TEST_VMRL_OP( 14106,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat1 );
TEST_VMRL_OP( 14113,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat8 );
TEST_VMRL_OP( 14159,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat54 );
TEST_VMRL_OP( 14161,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat56 );
TEST_VMRL_OP( 14170,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 14213,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat43 );
TEST_VMRL_OP( 14219,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat49 );
TEST_VMRL_OP( 14226,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat56 );
TEST_VMRL_OP( 14259,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 14283,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat48 );
TEST_VMRL_OP( 14295,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat60 );
TEST_VMRL_OP( 14303,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 14323,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 14331,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat31 );
TEST_VMRL_OP( 14335,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat35 );
TEST_VMRL_OP( 14344,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat44 );
TEST_VMRL_OP( 14348,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat48 );
TEST_VMRL_OP( 14415,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat50 );
TEST_VMRL_OP( 14423,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat58 );
TEST_VMRL_OP( 14429,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat64 );
TEST_VMRL_OP( 14446,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 14462,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat32 );
TEST_VMRL_OP( 14495,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 14511,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 14570,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 14609,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat49 );
TEST_VMRL_OP( 14633,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 14637,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 14664,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat39 );
TEST_VMRL_OP( 14716,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 14721,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 14757,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 14765,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 14779,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 14784,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 14791,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat36 );
TEST_VMRL_OP( 14810,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat55 );
TEST_VMRL_OP( 14814,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat59 );
TEST_VMRL_OP( 14820,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat0 );
TEST_VMRL_OP( 14841,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat21 );
TEST_VMRL_OP( 14863,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat43 );
TEST_VMRL_OP( 14889,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat4 );
TEST_VMRL_OP( 14924,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat39 );
TEST_VMRL_OP( 14929,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat44 );
TEST_VMRL_OP( 14931,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat46 );
TEST_VMRL_OP( 14986,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat36 );
TEST_VMRL_OP( 14996,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat46 );
TEST_VMRL_OP( 15023,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat8 );
TEST_VMRL_OP( 15059,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat44 );
TEST_VMRL_OP( 15075,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat60 );
TEST_VMRL_OP( 15099,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat19 );
TEST_VMRL_OP( 15130,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat50 );
TEST_VMRL_OP( 15134,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat54 );
TEST_VMRL_OP( 15149,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat38, walking_ones_dat4 );
TEST_VMRL_OP( 15216,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat6 );
TEST_VMRL_OP( 15220,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat10 );
TEST_VMRL_OP( 15248,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat38 );
TEST_VMRL_OP( 15249,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 15260,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat50 );
TEST_VMRL_OP( 15265,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat55 );
TEST_VMRL_OP( 15267,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat57 );
TEST_VMRL_OP( 15272,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat62 );
TEST_VMRL_OP( 15286,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat11 );
TEST_VMRL_OP( 15291,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat16 );
TEST_VMRL_OP( 15296,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat21 );
TEST_VMRL_OP( 15321,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat46 );
TEST_VMRL_OP( 15327,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat52 );
TEST_VMRL_OP( 15330,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat55 );
TEST_VMRL_OP( 15335,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat60 );
TEST_VMRL_OP( 15345,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat5 );
TEST_VMRL_OP( 15402,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat62 );
TEST_VMRL_OP( 15431,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat26 );
TEST_VMRL_OP( 15432,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat27 );
TEST_VMRL_OP( 15435,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat30 );
TEST_VMRL_OP( 15436,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat31 );
TEST_VMRL_OP( 15481,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat11 );
TEST_VMRL_OP( 15485,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat15 );
TEST_VMRL_OP( 15487,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat17 );
TEST_VMRL_OP( 15502,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat32 );
TEST_VMRL_OP( 15527,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat57 );
TEST_VMRL_OP( 15542,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat7 );
TEST_VMRL_OP( 15565,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat30 );
TEST_VMRL_OP( 15588,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat53 );
TEST_VMRL_OP( 15617,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat17 );
TEST_VMRL_OP( 15648,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat48 );
TEST_VMRL_OP( 15661,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat61 );
TEST_VMRL_OP( 15673,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat8 );
TEST_VMRL_OP( 15698,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat33 );
TEST_VMRL_OP( 15701,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat36 );
TEST_VMRL_OP( 15704,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat39 );
TEST_VMRL_OP( 15728,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat63 );
TEST_VMRL_OP( 15738,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat8 );
TEST_VMRL_OP( 15742,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat12 );
TEST_VMRL_OP( 15764,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat34 );
TEST_VMRL_OP( 15775,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat45 );
TEST_VMRL_OP( 15780,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat50 );
TEST_VMRL_OP( 15782,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat52 );
TEST_VMRL_OP( 15833,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat38 );
TEST_VMRL_OP( 15853,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat58 );
TEST_VMRL_OP( 15871,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat11 );
TEST_VMRL_OP( 15882,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat22 );
TEST_VMRL_OP( 15930,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat5 );
TEST_VMRL_OP( 15945,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat20 );
TEST_VMRL_OP( 15954,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat29 );
TEST_VMRL_OP( 15974,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat49 );
TEST_VMRL_OP( 16003,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat13 );
TEST_VMRL_OP( 16056,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat1 );
TEST_VMRL_OP( 16083,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat28 );
TEST_VMRL_OP( 16086,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat31 );
TEST_VMRL_OP( 16091,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat36 );
TEST_VMRL_OP( 16097,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat42 );
TEST_VMRL_OP( 16110,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat55 );
TEST_VMRL_OP( 16112,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat57 );
TEST_VMRL_OP( 16117,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat62 );
TEST_VMRL_OP( 16121,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat1 );
TEST_VMRL_OP( 16127,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat7 );
TEST_VMRL_OP( 16135,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat15 );
TEST_VMRL_OP( 16152,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat32 );
TEST_VMRL_OP( 16154,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat34 );
TEST_VMRL_OP( 16172,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat52 );
TEST_VMRL_OP( 16226,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat41 );
TEST_VMRL_OP( 16238,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat53 );
TEST_VMRL_OP( 16253,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat3 );
TEST_VMRL_OP( 16268,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat18 );
TEST_VMRL_OP( 16310,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat60 );
TEST_VMRL_OP( 16312,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat62 );
TEST_VMRL_OP( 16339,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat24 );
TEST_VMRL_OP( 16341,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat26 );
TEST_VMRL_OP( 16358,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat43 );
TEST_VMRL_OP( 16373,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat58 );
TEST_VMRL_OP( 16423,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat43 );
TEST_VMRL_OP( 16442,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat62 );
TEST_VMRL_OP( 16461,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat16 );
TEST_VMRL_OP( 16480,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat35 );
TEST_VMRL_OP( 16483,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat38 );
TEST_VMRL_OP( 16521,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat11 );
TEST_VMRL_OP( 16589,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat14 );
TEST_VMRL_OP( 16590,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat15 );
TEST_VMRL_OP( 16617,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat42 );
TEST_VMRL_OP( 16622,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat47 );
TEST_VMRL_OP( 16686,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat46 );
TEST_VMRL_OP( 16693,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat53 );
TEST_VMRL_OP( 16702,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat62 );
TEST_VMRL_OP( 16742,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat62, walking_ones_dat37 );
TEST_VMRL_OP( 16750,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat62, walking_ones_dat45 );
TEST_VMRL_OP( 16782,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat12 );
TEST_VMRL_OP( 16818,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat48 );
TEST_VMRL_OP( 16833,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 16845,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat10 );
TEST_VMRL_OP( 16885,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat50 );
TEST_VMRL_OP( 16895,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat60 );
TEST_VMRL_OP( 16900,  vmandnot.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmandnot.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 33975,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 33976,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 33977,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 33978,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33979,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33980,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33981,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33982,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33983,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33984,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33985,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33986,  vmandnot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
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
    

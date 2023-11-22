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
TEST_VMRL_OP( 23,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 32,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_ones_dat32 );
TEST_VMRL_OP( 71,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 73,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 78,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 90,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_ones_dat25 );
TEST_VMRL_OP( 113,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_ones_dat48 );
TEST_VMRL_OP( 140,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 147,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 178,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_ones_dat48 );
TEST_VMRL_OP( 181,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_ones_dat51 );
TEST_VMRL_OP( 192,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_ones_dat62 );
TEST_VMRL_OP( 200,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 205,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 234,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_ones_dat39 );
TEST_VMRL_OP( 258,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_ones_dat63 );
TEST_VMRL_OP( 265,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 275,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 278,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 279,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 290,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_ones_dat30 );
TEST_VMRL_OP( 296,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_ones_dat36 );
TEST_VMRL_OP( 312,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_ones_dat52 );
TEST_VMRL_OP( 346,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 358,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat5, walking_ones_dat33 );
TEST_VMRL_OP( 460,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 461,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 463,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 478,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_ones_dat23 );
TEST_VMRL_OP( 483,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 493,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_ones_dat38 );
TEST_VMRL_OP( 520,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 529,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 619,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_ones_dat34 );
TEST_VMRL_OP( 625,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_ones_dat40 );
TEST_VMRL_OP( 628,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_ones_dat43 );
TEST_VMRL_OP( 645,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_ones_dat60 );
TEST_VMRL_OP( 665,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 706,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_ones_dat56 );
TEST_VMRL_OP( 713,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_ones_dat63 );
TEST_VMRL_OP( 729,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 733,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 749,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_ones_dat34 );
TEST_VMRL_OP( 765,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_ones_dat50 );
TEST_VMRL_OP( 771,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_ones_dat56 );
TEST_VMRL_OP( 814,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_ones_dat34 );
TEST_VMRL_OP( 833,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_ones_dat53 );
TEST_VMRL_OP( 837,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_ones_dat57 );
TEST_VMRL_OP( 854,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 871,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_ones_dat26 );
TEST_VMRL_OP( 872,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_ones_dat27 );
TEST_VMRL_OP( 884,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_ones_dat39 );
TEST_VMRL_OP( 905,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_ones_dat60 );
TEST_VMRL_OP( 916,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 917,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 923,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 937,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 956,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_ones_dat46 );
TEST_VMRL_OP( 971,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_ones_dat61 );
TEST_VMRL_OP( 1001,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_ones_dat26 );
TEST_VMRL_OP( 1014,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_ones_dat39 );
TEST_VMRL_OP( 1023,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_ones_dat48 );
TEST_VMRL_OP( 1025,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_ones_dat50 );
TEST_VMRL_OP( 1046,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1047,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1068,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 1086,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_ones_dat46 );
TEST_VMRL_OP( 1090,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_ones_dat50 );
TEST_VMRL_OP( 1091,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_ones_dat51 );
TEST_VMRL_OP( 1120,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 1135,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 1142,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_ones_dat37 );
TEST_VMRL_OP( 1145,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_ones_dat40 );
TEST_VMRL_OP( 1155,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_ones_dat50 );
TEST_VMRL_OP( 1157,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_ones_dat52 );
TEST_VMRL_OP( 1170,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat18, walking_ones_dat0 );
TEST_VMRL_OP( 1293,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat19, walking_ones_dat58 );
TEST_VMRL_OP( 1308,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 1317,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_ones_dat17 );
TEST_VMRL_OP( 1335,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_ones_dat35 );
TEST_VMRL_OP( 1340,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_ones_dat40 );
TEST_VMRL_OP( 1345,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_ones_dat45 );
TEST_VMRL_OP( 1363,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_ones_dat63 );
TEST_VMRL_OP( 1398,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_ones_dat33 );
TEST_VMRL_OP( 1424,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_ones_dat59 );
TEST_VMRL_OP( 1426,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_ones_dat61 );
TEST_VMRL_OP( 1446,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_ones_dat16 );
TEST_VMRL_OP( 1460,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 1466,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_ones_dat36 );
TEST_VMRL_OP( 1469,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_ones_dat39 );
TEST_VMRL_OP( 1491,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_ones_dat61 );
TEST_VMRL_OP( 1495,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 1520,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 1529,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_ones_dat34 );
TEST_VMRL_OP( 1537,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_ones_dat42 );
TEST_VMRL_OP( 1544,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_ones_dat49 );
TEST_VMRL_OP( 1558,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_ones_dat63 );
TEST_VMRL_OP( 1560,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 1561,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 1572,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 1597,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_ones_dat37 );
TEST_VMRL_OP( 1624,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_ones_dat64 );
TEST_VMRL_OP( 1635,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 1665,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_ones_dat40 );
TEST_VMRL_OP( 1714,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 1718,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 1727,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_ones_dat37 );
TEST_VMRL_OP( 1752,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_ones_dat62 );
TEST_VMRL_OP( 1756,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 1760,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 1777,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 1792,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_ones_dat37 );
TEST_VMRL_OP( 1808,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_ones_dat53 );
TEST_VMRL_OP( 1817,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_ones_dat62 );
TEST_VMRL_OP( 1826,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 1833,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 1867,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_ones_dat47 );
TEST_VMRL_OP( 1882,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_ones_dat62 );
TEST_VMRL_OP( 1886,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 1896,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 1909,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 1918,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_ones_dat33 );
TEST_VMRL_OP( 1941,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_ones_dat56 );
TEST_VMRL_OP( 1946,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_ones_dat61 );
TEST_VMRL_OP( 1954,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_ones_dat4 );
TEST_VMRL_OP( 1962,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 1983,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_ones_dat33 );
TEST_VMRL_OP( 1986,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_ones_dat36 );
TEST_VMRL_OP( 2000,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_ones_dat50 );
TEST_VMRL_OP( 2019,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 2034,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_ones_dat19 );
TEST_VMRL_OP( 2051,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_ones_dat36 );
TEST_VMRL_OP( 2056,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_ones_dat41 );
TEST_VMRL_OP( 2065,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_ones_dat50 );
TEST_VMRL_OP( 2093,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_ones_dat13 );
TEST_VMRL_OP( 2120,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_ones_dat40 );
TEST_VMRL_OP( 2148,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat3 );
TEST_VMRL_OP( 2151,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat6 );
TEST_VMRL_OP( 2156,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat11 );
TEST_VMRL_OP( 2158,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat13 );
TEST_VMRL_OP( 2160,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat15 );
TEST_VMRL_OP( 2168,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat23 );
TEST_VMRL_OP( 2173,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat28 );
TEST_VMRL_OP( 2193,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat48 );
TEST_VMRL_OP( 2196,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat51 );
TEST_VMRL_OP( 2203,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_ones_dat58 );
TEST_VMRL_OP( 2250,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat34, walking_ones_dat40 );
TEST_VMRL_OP( 2251,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat34, walking_ones_dat41 );
TEST_VMRL_OP( 2284,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_ones_dat9 );
TEST_VMRL_OP( 2285,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_ones_dat10 );
TEST_VMRL_OP( 2296,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_ones_dat21 );
TEST_VMRL_OP( 2306,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_ones_dat31 );
TEST_VMRL_OP( 2314,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_ones_dat39 );
TEST_VMRL_OP( 2331,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_ones_dat56 );
TEST_VMRL_OP( 2337,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_ones_dat62 );
TEST_VMRL_OP( 2389,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_ones_dat49 );
TEST_VMRL_OP( 2397,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_ones_dat57 );
TEST_VMRL_OP( 2405,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat0 );
TEST_VMRL_OP( 2407,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat2 );
TEST_VMRL_OP( 2421,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat16 );
TEST_VMRL_OP( 2424,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat19 );
TEST_VMRL_OP( 2449,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat44 );
TEST_VMRL_OP( 2459,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat54 );
TEST_VMRL_OP( 2461,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat56 );
TEST_VMRL_OP( 2469,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_ones_dat64 );
TEST_VMRL_OP( 2489,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_ones_dat19 );
TEST_VMRL_OP( 2503,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_ones_dat33 );
TEST_VMRL_OP( 2513,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_ones_dat43 );
TEST_VMRL_OP( 2534,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_ones_dat64 );
TEST_VMRL_OP( 2543,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_ones_dat8 );
TEST_VMRL_OP( 2561,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_ones_dat26 );
TEST_VMRL_OP( 2568,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_ones_dat33 );
TEST_VMRL_OP( 2591,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_ones_dat56 );
TEST_VMRL_OP( 2608,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_ones_dat8 );
TEST_VMRL_OP( 2625,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_ones_dat25 );
TEST_VMRL_OP( 2647,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_ones_dat47 );
TEST_VMRL_OP( 2653,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_ones_dat53 );
TEST_VMRL_OP( 2674,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_ones_dat9 );
TEST_VMRL_OP( 2685,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_ones_dat20 );
TEST_VMRL_OP( 2707,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_ones_dat42 );
TEST_VMRL_OP( 2718,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_ones_dat53 );
TEST_VMRL_OP( 2726,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_ones_dat61 );
TEST_VMRL_OP( 2744,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_ones_dat14 );
TEST_VMRL_OP( 2770,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_ones_dat40 );
TEST_VMRL_OP( 2784,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_ones_dat54 );
TEST_VMRL_OP( 2807,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_ones_dat12 );
TEST_VMRL_OP( 2825,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_ones_dat30 );
TEST_VMRL_OP( 2827,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_ones_dat32 );
TEST_VMRL_OP( 2838,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 2842,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_ones_dat47 );
TEST_VMRL_OP( 2869,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_ones_dat9 );
TEST_VMRL_OP( 2870,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_ones_dat10 );
TEST_VMRL_OP( 2879,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_ones_dat19 );
TEST_VMRL_OP( 2911,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_ones_dat51 );
TEST_VMRL_OP( 2920,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_ones_dat60 );
TEST_VMRL_OP( 2966,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_ones_dat41 );
TEST_VMRL_OP( 2975,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_ones_dat50 );
TEST_VMRL_OP( 2985,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_ones_dat60 );
TEST_VMRL_OP( 2988,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_ones_dat63 );
TEST_VMRL_OP( 2996,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_ones_dat6 );
TEST_VMRL_OP( 3000,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_ones_dat10 );
TEST_VMRL_OP( 3024,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_ones_dat34 );
TEST_VMRL_OP( 3031,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_ones_dat41 );
TEST_VMRL_OP( 3040,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_ones_dat50 );
TEST_VMRL_OP( 3062,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_ones_dat7 );
TEST_VMRL_OP( 3125,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_ones_dat5 );
TEST_VMRL_OP( 3137,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_ones_dat17 );
TEST_VMRL_OP( 3178,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_ones_dat58 );
TEST_VMRL_OP( 3185,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_ones_dat0 );
TEST_VMRL_OP( 3199,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_ones_dat14 );
TEST_VMRL_OP( 3203,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_ones_dat18 );
TEST_VMRL_OP( 3235,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_ones_dat50 );
TEST_VMRL_OP( 3252,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat2 );
TEST_VMRL_OP( 3271,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat21 );
TEST_VMRL_OP( 3277,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat27 );
TEST_VMRL_OP( 3282,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat32 );
TEST_VMRL_OP( 3283,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat33 );
TEST_VMRL_OP( 3288,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat38 );
TEST_VMRL_OP( 3299,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat49 );
TEST_VMRL_OP( 3301,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat51 );
TEST_VMRL_OP( 3309,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat59 );
TEST_VMRL_OP( 3311,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_ones_dat61 );
TEST_VMRL_OP( 3319,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_ones_dat4 );
TEST_VMRL_OP( 3336,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_ones_dat21 );
TEST_VMRL_OP( 3349,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_ones_dat34 );
TEST_VMRL_OP( 3352,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_ones_dat37 );
TEST_VMRL_OP( 3358,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_ones_dat43 );
TEST_VMRL_OP( 3360,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_ones_dat45 );
TEST_VMRL_OP( 3379,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_ones_dat64 );
TEST_VMRL_OP( 3391,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_ones_dat11 );
TEST_VMRL_OP( 3427,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_ones_dat47 );
TEST_VMRL_OP( 3464,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_ones_dat19 );
TEST_VMRL_OP( 3467,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_ones_dat22 );
TEST_VMRL_OP( 3491,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_ones_dat46 );
TEST_VMRL_OP( 3511,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_ones_dat1 );
TEST_VMRL_OP( 3514,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_ones_dat4 );
TEST_VMRL_OP( 3530,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_ones_dat20 );
TEST_VMRL_OP( 3570,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_ones_dat60 );
TEST_VMRL_OP( 3571,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_ones_dat61 );
TEST_VMRL_OP( 3575,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_ones_dat0 );
TEST_VMRL_OP( 3580,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_ones_dat5 );
TEST_VMRL_OP( 3589,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_ones_dat14 );
TEST_VMRL_OP( 3592,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_ones_dat17 );
TEST_VMRL_OP( 3594,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_ones_dat19 );
TEST_VMRL_OP( 3643,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_ones_dat3 );
TEST_VMRL_OP( 3648,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_ones_dat8 );
TEST_VMRL_OP( 3680,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_ones_dat40 );
TEST_VMRL_OP( 3682,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_ones_dat42 );
TEST_VMRL_OP( 3697,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_ones_dat57 );
TEST_VMRL_OP( 3708,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_ones_dat3 );
TEST_VMRL_OP( 3710,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_ones_dat5 );
TEST_VMRL_OP( 3739,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_ones_dat34 );
TEST_VMRL_OP( 3790,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat58, walking_ones_dat20 );
TEST_VMRL_OP( 3821,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat58, walking_ones_dat51 );
TEST_VMRL_OP( 3840,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_ones_dat5 );
TEST_VMRL_OP( 3864,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_ones_dat29 );
TEST_VMRL_OP( 3865,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_ones_dat30 );
TEST_VMRL_OP( 3966,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_ones_dat1 );
TEST_VMRL_OP( 3973,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_ones_dat8 );
TEST_VMRL_OP( 3985,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_ones_dat20 );
TEST_VMRL_OP( 4006,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_ones_dat41 );
TEST_VMRL_OP( 4012,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_ones_dat47 );
TEST_VMRL_OP( 4029,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_ones_dat64 );
TEST_VMRL_OP( 4035,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_ones_dat5 );
TEST_VMRL_OP( 4037,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_ones_dat7 );
TEST_VMRL_OP( 4050,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_ones_dat20 );
TEST_VMRL_OP( 4052,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_ones_dat22 );
TEST_VMRL_OP( 4059,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_ones_dat29 );
TEST_VMRL_OP( 4086,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_ones_dat56 );
TEST_VMRL_OP( 4116,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_ones_dat21 );
TEST_VMRL_OP( 4118,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_ones_dat23 );
TEST_VMRL_OP( 4134,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_ones_dat39 );
TEST_VMRL_OP( 4160,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_ones_dat0 );
TEST_VMRL_OP( 4161,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_ones_dat1 );
TEST_VMRL_OP( 4175,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_ones_dat15 );
TEST_VMRL_OP( 4178,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_ones_dat18 );
TEST_VMRL_OP( 4179,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_ones_dat19 );
TEST_VMRL_OP( 4181,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_ones_dat21 );
TEST_VMRL_OP( 4237,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 4280,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat55 );
TEST_VMRL_OP( 4308,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 4374,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat19 );
TEST_VMRL_OP( 4377,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 4414,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat59 );
TEST_VMRL_OP( 4434,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 4443,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 4477,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat57 );
TEST_VMRL_OP( 4485,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 4518,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat33 );
TEST_VMRL_OP( 4520,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat35 );
TEST_VMRL_OP( 4524,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat39 );
TEST_VMRL_OP( 4545,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat60 );
TEST_VMRL_OP( 4552,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 4572,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 4603,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat53 );
TEST_VMRL_OP( 4604,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat54 );
TEST_VMRL_OP( 4606,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat56 );
TEST_VMRL_OP( 4700,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 4708,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 4719,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat39 );
TEST_VMRL_OP( 4736,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat56 );
TEST_VMRL_OP( 4740,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat60 );
TEST_VMRL_OP( 4766,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 4789,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat44 );
TEST_VMRL_OP( 4799,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat54 );
TEST_VMRL_OP( 4810,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 4819,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4830,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat20 );
TEST_VMRL_OP( 4836,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 4860,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat50 );
TEST_VMRL_OP( 4874,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat64 );
TEST_VMRL_OP( 4904,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 4942,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 4950,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 4981,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat41 );
TEST_VMRL_OP( 4986,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat46 );
TEST_VMRL_OP( 4988,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat48 );
TEST_VMRL_OP( 5027,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 5028,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 5031,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat26 );
TEST_VMRL_OP( 5043,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat38 );
TEST_VMRL_OP( 5078,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 5144,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 5147,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 5150,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 5176,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat41 );
TEST_VMRL_OP( 5187,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat52 );
TEST_VMRL_OP( 5196,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat61 );
TEST_VMRL_OP( 5197,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat62 );
TEST_VMRL_OP( 5217,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 5238,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat38 );
TEST_VMRL_OP( 5257,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat57 );
TEST_VMRL_OP( 5301,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat36 );
TEST_VMRL_OP( 5314,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat49 );
TEST_VMRL_OP( 5320,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat55 );
TEST_VMRL_OP( 5336,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 5348,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 5363,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat33 );
TEST_VMRL_OP( 5381,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat51 );
TEST_VMRL_OP( 5391,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat61 );
TEST_VMRL_OP( 5405,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 5411,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat16 );
TEST_VMRL_OP( 5423,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat28 );
TEST_VMRL_OP( 5442,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat47 );
TEST_VMRL_OP( 5450,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat55 );
TEST_VMRL_OP( 5455,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat60 );
TEST_VMRL_OP( 5475,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 5485,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 5490,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 5522,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat62 );
TEST_VMRL_OP( 5551,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 5554,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 5558,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat33 );
TEST_VMRL_OP( 5583,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat58 );
TEST_VMRL_OP( 5618,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 5642,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat52 );
TEST_VMRL_OP( 5656,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 5657,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 5676,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 5687,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 5740,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 5745,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 5790,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 5791,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat6 );
TEST_VMRL_OP( 5818,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat33 );
TEST_VMRL_OP( 5822,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat37 );
TEST_VMRL_OP( 5835,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat50 );
TEST_VMRL_OP( 5837,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat52 );
TEST_VMRL_OP( 5843,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat58 );
TEST_VMRL_OP( 5846,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat61 );
TEST_VMRL_OP( 5848,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat63 );
TEST_VMRL_OP( 5859,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 5861,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat11 );
TEST_VMRL_OP( 5873,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 5938,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 5945,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 5964,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat49 );
TEST_VMRL_OP( 5977,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat62 );
TEST_VMRL_OP( 6013,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat33 );
TEST_VMRL_OP( 6019,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat39 );
TEST_VMRL_OP( 6038,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat58 );
TEST_VMRL_OP( 6054,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat9 );
TEST_VMRL_OP( 6081,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat36 );
TEST_VMRL_OP( 6096,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat51 );
TEST_VMRL_OP( 6121,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat11 );
TEST_VMRL_OP( 6130,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 6133,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 6159,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat49 );
TEST_VMRL_OP( 6165,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat55 );
TEST_VMRL_OP( 6223,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat48 );
TEST_VMRL_OP( 6224,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat49 );
TEST_VMRL_OP( 6234,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat59 );
TEST_VMRL_OP( 6237,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat62 );
TEST_VMRL_OP( 6286,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat46 );
TEST_VMRL_OP( 6287,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat47 );
TEST_VMRL_OP( 6296,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat56 );
TEST_VMRL_OP( 6307,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 6311,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 6349,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat44 );
TEST_VMRL_OP( 6364,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat59 );
TEST_VMRL_OP( 6387,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat17 );
TEST_VMRL_OP( 6390,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat20 );
TEST_VMRL_OP( 6433,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat63 );
TEST_VMRL_OP( 6455,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat20 );
TEST_VMRL_OP( 6464,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat29 );
TEST_VMRL_OP( 6476,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat41 );
TEST_VMRL_OP( 6509,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat9 );
TEST_VMRL_OP( 6522,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat22 );
TEST_VMRL_OP( 6524,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat24 );
TEST_VMRL_OP( 6532,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat32 );
TEST_VMRL_OP( 6558,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat58 );
TEST_VMRL_OP( 6582,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat17 );
TEST_VMRL_OP( 6611,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat46 );
TEST_VMRL_OP( 6648,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat18 );
TEST_VMRL_OP( 6666,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat36 );
TEST_VMRL_OP( 6670,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat40 );
TEST_VMRL_OP( 6671,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat41 );
TEST_VMRL_OP( 6689,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat59 );
TEST_VMRL_OP( 6692,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat62 );
TEST_VMRL_OP( 6697,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat2 );
TEST_VMRL_OP( 6701,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat6 );
TEST_VMRL_OP( 6702,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat7 );
TEST_VMRL_OP( 6714,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat19 );
TEST_VMRL_OP( 6729,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat34 );
TEST_VMRL_OP( 6743,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat48 );
TEST_VMRL_OP( 6747,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat52 );
TEST_VMRL_OP( 6760,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_zeros_dat0 );
TEST_VMRL_OP( 6782,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat22 );
TEST_VMRL_OP( 6820,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat60 );
TEST_VMRL_OP( 6834,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat9 );
TEST_VMRL_OP( 6838,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat13 );
TEST_VMRL_OP( 6847,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat22 );
TEST_VMRL_OP( 6854,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat29 );
TEST_VMRL_OP( 6888,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_zeros_dat63 );
TEST_VMRL_OP( 6926,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat36 );
TEST_VMRL_OP( 6933,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat43 );
TEST_VMRL_OP( 6949,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat59 );
TEST_VMRL_OP( 6951,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat61 );
TEST_VMRL_OP( 6962,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat7 );
TEST_VMRL_OP( 6984,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat29 );
TEST_VMRL_OP( 7009,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat54 );
TEST_VMRL_OP( 7034,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat14 );
TEST_VMRL_OP( 7036,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat16 );
TEST_VMRL_OP( 7047,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat27 );
TEST_VMRL_OP( 7048,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat28 );
TEST_VMRL_OP( 7084,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat64 );
TEST_VMRL_OP( 7125,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat40 );
TEST_VMRL_OP( 7140,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat55 );
TEST_VMRL_OP( 7146,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat61 );
TEST_VMRL_OP( 7165,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat15 );
TEST_VMRL_OP( 7182,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat32 );
TEST_VMRL_OP( 7187,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat37 );
TEST_VMRL_OP( 7202,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat52 );
TEST_VMRL_OP( 7207,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat57 );
TEST_VMRL_OP( 7216,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat1 );
TEST_VMRL_OP( 7226,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat11 );
TEST_VMRL_OP( 7265,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat50 );
TEST_VMRL_OP( 7281,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat1 );
TEST_VMRL_OP( 7284,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat4 );
TEST_VMRL_OP( 7285,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat5 );
TEST_VMRL_OP( 7319,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat39 );
TEST_VMRL_OP( 7363,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat18 );
TEST_VMRL_OP( 7382,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat37 );
TEST_VMRL_OP( 7387,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat42 );
TEST_VMRL_OP( 7399,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat54 );
TEST_VMRL_OP( 7401,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat56 );
TEST_VMRL_OP( 7426,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat16 );
TEST_VMRL_OP( 7429,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat19 );
TEST_VMRL_OP( 7472,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat62 );
TEST_VMRL_OP( 7492,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat17 );
TEST_VMRL_OP( 7493,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat18 );
TEST_VMRL_OP( 7510,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat35 );
TEST_VMRL_OP( 7524,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat49 );
TEST_VMRL_OP( 7552,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat12 );
TEST_VMRL_OP( 7587,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat47 );
TEST_VMRL_OP( 7609,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat4 );
TEST_VMRL_OP( 7673,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat3 );
TEST_VMRL_OP( 7705,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat35 );
TEST_VMRL_OP( 7738,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_zeros_dat3 );
TEST_VMRL_OP( 7788,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_zeros_dat53 );
TEST_VMRL_OP( 7861,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat61 );
TEST_VMRL_OP( 7868,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat3 );
TEST_VMRL_OP( 7871,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat6 );
TEST_VMRL_OP( 7878,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat13 );
TEST_VMRL_OP( 7891,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat26 );
TEST_VMRL_OP( 7909,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat44 );
TEST_VMRL_OP( 7936,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat6 );
TEST_VMRL_OP( 7973,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat43 );
TEST_VMRL_OP( 7984,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat54 );
TEST_VMRL_OP( 8034,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat39 );
TEST_VMRL_OP( 8076,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat16 );
TEST_VMRL_OP( 8083,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat23 );
TEST_VMRL_OP( 8094,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat34 );
TEST_VMRL_OP( 8115,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat55 );
TEST_VMRL_OP( 8137,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat12 );
TEST_VMRL_OP( 8145,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat20 );
TEST_VMRL_OP( 8203,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat13 );
TEST_VMRL_OP( 8233,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat43 );
TEST_VMRL_OP( 8240,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat50 );
TEST_VMRL_OP( 8267,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat12 );
TEST_VMRL_OP( 8295,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat40 );
TEST_VMRL_OP( 8299,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat44 );
TEST_VMRL_OP( 8317,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 8342,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat22 );
TEST_VMRL_OP( 8345,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat25 );
TEST_VMRL_OP( 8375,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat55 );
TEST_VMRL_OP( 8379,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat59 );
TEST_VMRL_OP( 8389,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat4 );
TEST_VMRL_OP( 8408,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat23 );
TEST_VMRL_OP( 8413,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat28 );
TEST_VMRL_OP( 8453,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 8463,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 8469,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 8482,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 8487,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat37 );
TEST_VMRL_OP( 8490,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat40 );
TEST_VMRL_OP( 8505,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat55 );
TEST_VMRL_OP( 8569,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat54 );
TEST_VMRL_OP( 8592,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 8606,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 8645,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 8652,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 8658,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 8676,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 8689,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat44 );
TEST_VMRL_OP( 8690,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat45 );
TEST_VMRL_OP( 8747,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat37 );
TEST_VMRL_OP( 8756,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat46 );
TEST_VMRL_OP( 8757,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat47 );
TEST_VMRL_OP( 8770,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat60 );
TEST_VMRL_OP( 8772,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat62 );
TEST_VMRL_OP( 8786,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 8803,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 8812,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat37 );
TEST_VMRL_OP( 8836,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat61 );
TEST_VMRL_OP( 8841,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 8847,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 8877,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat37 );
TEST_VMRL_OP( 8884,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat44 );
TEST_VMRL_OP( 8885,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat45 );
TEST_VMRL_OP( 8892,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat52 );
TEST_VMRL_OP( 8898,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat58 );
TEST_VMRL_OP( 8899,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat59 );
TEST_VMRL_OP( 8909,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 8934,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 8947,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat42 );
TEST_VMRL_OP( 8962,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat57 );
TEST_VMRL_OP( 8975,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 8986,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 8995,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat25 );
TEST_VMRL_OP( 9051,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 9077,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat42 );
TEST_VMRL_OP( 9084,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat49 );
TEST_VMRL_OP( 9115,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 9125,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat25 );
TEST_VMRL_OP( 9129,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 9139,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat39 );
TEST_VMRL_OP( 9161,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat61 );
TEST_VMRL_OP( 9162,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat62 );
TEST_VMRL_OP( 9174,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 9176,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 9208,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat43 );
TEST_VMRL_OP( 9252,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 9277,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat47 );
TEST_VMRL_OP( 9295,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 9321,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat26 );
TEST_VMRL_OP( 9334,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat39 );
TEST_VMRL_OP( 9346,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat51 );
TEST_VMRL_OP( 9363,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 9384,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 9386,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 9387,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat27 );
TEST_VMRL_OP( 9388,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 9394,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat34 );
TEST_VMRL_OP( 9402,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat42 );
TEST_VMRL_OP( 9417,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat57 );
TEST_VMRL_OP( 9423,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat63 );
TEST_VMRL_OP( 9448,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat23 );
TEST_VMRL_OP( 9461,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat36 );
TEST_VMRL_OP( 9484,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat59 );
TEST_VMRL_OP( 9507,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat17 );
TEST_VMRL_OP( 9527,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat37 );
TEST_VMRL_OP( 9538,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat48 );
TEST_VMRL_OP( 9574,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat19 );
TEST_VMRL_OP( 9596,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat41 );
TEST_VMRL_OP( 9603,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat48 );
TEST_VMRL_OP( 9616,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat61 );
TEST_VMRL_OP( 9638,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 9641,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 9658,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat38 );
TEST_VMRL_OP( 9688,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 9713,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat28 );
TEST_VMRL_OP( 9716,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 9731,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat46 );
TEST_VMRL_OP( 9734,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat49 );
TEST_VMRL_OP( 9762,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 9802,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat52 );
TEST_VMRL_OP( 9856,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat41 );
TEST_VMRL_OP( 9865,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat50 );
TEST_VMRL_OP( 9888,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat8 );
TEST_VMRL_OP( 9923,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat43 );
TEST_VMRL_OP( 9926,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat46 );
TEST_VMRL_OP( 9934,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat54 );
TEST_VMRL_OP( 9959,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat14 );
TEST_VMRL_OP( 9963,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 9968,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 9985,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat40 );
TEST_VMRL_OP( 9987,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat42 );
TEST_VMRL_OP( 9991,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat46 );
TEST_VMRL_OP( 10009,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat64 );
TEST_VMRL_OP( 10012,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 10050,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat40 );
TEST_VMRL_OP( 10057,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat47 );
TEST_VMRL_OP( 10064,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat54 );
TEST_VMRL_OP( 10069,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat59 );
TEST_VMRL_OP( 10090,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 10100,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 10130,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat55 );
TEST_VMRL_OP( 10132,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat57 );
TEST_VMRL_OP( 10148,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat8 );
TEST_VMRL_OP( 10168,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 10197,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat57 );
TEST_VMRL_OP( 10214,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 10218,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 10223,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 10226,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 10235,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat30 );
TEST_VMRL_OP( 10237,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 10254,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat49 );
TEST_VMRL_OP( 10265,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat60 );
TEST_VMRL_OP( 10282,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat12 );
TEST_VMRL_OP( 10288,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat18 );
TEST_VMRL_OP( 10290,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 10291,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 10292,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 10343,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat8 );
TEST_VMRL_OP( 10359,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 10375,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat40 );
TEST_VMRL_OP( 10399,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat64 );
TEST_VMRL_OP( 10421,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 10432,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 10438,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat38 );
TEST_VMRL_OP( 10440,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat40 );
TEST_VMRL_OP( 10445,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat45 );
TEST_VMRL_OP( 10463,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat63 );
TEST_VMRL_OP( 10469,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat4 );
TEST_VMRL_OP( 10494,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 10510,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat45 );
TEST_VMRL_OP( 10513,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat48 );
TEST_VMRL_OP( 10519,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat54 );
TEST_VMRL_OP( 10542,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 10550,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 10560,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat30 );
TEST_VMRL_OP( 10569,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat39 );
TEST_VMRL_OP( 10636,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat41 );
TEST_VMRL_OP( 10640,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat45 );
TEST_VMRL_OP( 10676,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat16 );
TEST_VMRL_OP( 10691,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat31 );
TEST_VMRL_OP( 10717,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat57 );
TEST_VMRL_OP( 10719,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat59 );
TEST_VMRL_OP( 10727,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat2 );
TEST_VMRL_OP( 10746,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat21 );
TEST_VMRL_OP( 10755,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat30 );
TEST_VMRL_OP( 10806,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat16 );
TEST_VMRL_OP( 10807,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat17 );
TEST_VMRL_OP( 10820,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat30 );
TEST_VMRL_OP( 10904,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat49 );
TEST_VMRL_OP( 10924,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat4 );
TEST_VMRL_OP( 10961,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat41 );
TEST_VMRL_OP( 10968,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat48 );
TEST_VMRL_OP( 10970,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat50 );
TEST_VMRL_OP( 10993,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat8 );
TEST_VMRL_OP( 11008,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat23 );
TEST_VMRL_OP( 11024,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 11043,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat58 );
TEST_VMRL_OP( 11075,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat25 );
TEST_VMRL_OP( 11077,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat27 );
TEST_VMRL_OP( 11089,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat39 );
TEST_VMRL_OP( 11098,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat48 );
TEST_VMRL_OP( 11108,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat58 );
TEST_VMRL_OP( 11116,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat1 );
TEST_VMRL_OP( 11119,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat4 );
TEST_VMRL_OP( 11123,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat8 );
TEST_VMRL_OP( 11145,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat30 );
TEST_VMRL_OP( 11160,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat45 );
TEST_VMRL_OP( 11163,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat48 );
TEST_VMRL_OP( 11166,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat51 );
TEST_VMRL_OP( 11172,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat57 );
TEST_VMRL_OP( 11179,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat64 );
TEST_VMRL_OP( 11203,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat23 );
TEST_VMRL_OP( 11225,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat45 );
TEST_VMRL_OP( 11233,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat53 );
TEST_VMRL_OP( 11241,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat61 );
TEST_VMRL_OP( 11248,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat3 );
TEST_VMRL_OP( 11276,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat31 );
TEST_VMRL_OP( 11299,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat54 );
TEST_VMRL_OP( 11317,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat7 );
TEST_VMRL_OP( 11332,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat22 );
TEST_VMRL_OP( 11337,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat27 );
TEST_VMRL_OP( 11340,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat30 );
TEST_VMRL_OP( 11342,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat32 );
TEST_VMRL_OP( 11351,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat41 );
TEST_VMRL_OP( 11408,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat33 );
TEST_VMRL_OP( 11464,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat24 );
TEST_VMRL_OP( 11466,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat26 );
TEST_VMRL_OP( 11505,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat0 );
TEST_VMRL_OP( 11520,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat15 );
TEST_VMRL_OP( 11546,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat41 );
TEST_VMRL_OP( 11552,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 11599,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat29 );
TEST_VMRL_OP( 11611,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat41 );
TEST_VMRL_OP( 11647,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat12 );
TEST_VMRL_OP( 11667,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat32 );
TEST_VMRL_OP( 11668,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat33 );
TEST_VMRL_OP( 11684,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 11755,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat55 );
TEST_VMRL_OP( 11767,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat2 );
TEST_VMRL_OP( 11776,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat11 );
TEST_VMRL_OP( 11786,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat21 );
TEST_VMRL_OP( 11819,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat54 );
TEST_VMRL_OP( 11827,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat62 );
TEST_VMRL_OP( 11843,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat13 );
TEST_VMRL_OP( 11850,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat20 );
TEST_VMRL_OP( 11875,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat45 );
TEST_VMRL_OP( 11923,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat28 );
TEST_VMRL_OP( 11991,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat31 );
TEST_VMRL_OP( 12038,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat13 );
TEST_VMRL_OP( 12045,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat20 );
TEST_VMRL_OP( 12048,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat23 );
TEST_VMRL_OP( 12065,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat40 );
TEST_VMRL_OP( 12081,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat56 );
TEST_VMRL_OP( 12093,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat3 );
TEST_VMRL_OP( 12115,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat25 );
TEST_VMRL_OP( 12120,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat30 );
TEST_VMRL_OP( 12121,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat31 );
TEST_VMRL_OP( 12122,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat32 );
TEST_VMRL_OP( 12142,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat52 );
TEST_VMRL_OP( 12151,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat61 );
TEST_VMRL_OP( 12152,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat62 );
TEST_VMRL_OP( 12165,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat10 );
TEST_VMRL_OP( 12214,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat59 );
TEST_VMRL_OP( 12216,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat61 );
TEST_VMRL_OP( 12228,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat8 );
TEST_VMRL_OP( 12256,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat36 );
TEST_VMRL_OP( 12259,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat39 );
TEST_VMRL_OP( 12274,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat54 );
TEST_VMRL_OP( 12287,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat2 );
TEST_VMRL_OP( 12301,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat16 );
TEST_VMRL_OP( 12302,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat17 );
TEST_VMRL_OP( 12308,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat23 );
TEST_VMRL_OP( 12333,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat48 );
TEST_VMRL_OP( 12362,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat12 );
TEST_VMRL_OP( 12365,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat15 );
TEST_VMRL_OP( 12376,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat26 );
TEST_VMRL_OP( 12404,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat54 );
TEST_VMRL_OP( 12428,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat13 );
TEST_VMRL_OP( 12490,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat10 );
TEST_VMRL_OP( 12554,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat9 );
TEST_VMRL_OP( 12555,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat10 );
TEST_VMRL_OP( 12585,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat40 );
TEST_VMRL_OP( 12587,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat42 );
TEST_VMRL_OP( 12594,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat49 );
TEST_VMRL_OP( 12611,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat1 );
TEST_VMRL_OP( 12619,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat9 );
TEST_VMRL_OP( 12636,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat26 );
TEST_VMRL_OP( 12646,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat36 );
TEST_VMRL_OP( 12656,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat46 );
TEST_VMRL_OP( 12661,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat51 );
TEST_VMRL_OP( 12670,  vmnand.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat60 );
TEST_VMRL_OP( 12681,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 12701,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat26 );
TEST_VMRL_OP( 12713,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat38 );
TEST_VMRL_OP( 12724,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat49 );
TEST_VMRL_OP( 12731,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat56 );
TEST_VMRL_OP( 12735,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat60 );
TEST_VMRL_OP( 12807,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 12812,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 12816,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 12847,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat42 );
TEST_VMRL_OP( 12874,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 12900,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat30 );
TEST_VMRL_OP( 12903,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat33 );
TEST_VMRL_OP( 12933,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat63 );
TEST_VMRL_OP( 12951,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 12967,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 12982,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat47 );
TEST_VMRL_OP( 12992,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat57 );
TEST_VMRL_OP( 12997,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat62 );
TEST_VMRL_OP( 13005,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 13037,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat37 );
TEST_VMRL_OP( 13077,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 13092,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 13100,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat35 );
TEST_VMRL_OP( 13114,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat49 );
TEST_VMRL_OP( 13115,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat50 );
TEST_VMRL_OP( 13149,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 13184,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat54 );
TEST_VMRL_OP( 13229,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat34 );
TEST_VMRL_OP( 13232,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat37 );
TEST_VMRL_OP( 13247,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat52 );
TEST_VMRL_OP( 13250,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat55 );
TEST_VMRL_OP( 13273,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 13278,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 13291,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 13297,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat37 );
TEST_VMRL_OP( 13302,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat42 );
TEST_VMRL_OP( 13349,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 13353,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat28 );
TEST_VMRL_OP( 13357,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 13360,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat35 );
TEST_VMRL_OP( 13421,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 13433,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat43 );
TEST_VMRL_OP( 13483,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 13503,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat48 );
TEST_VMRL_OP( 13519,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat64 );
TEST_VMRL_OP( 13521,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 13541,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat21 );
TEST_VMRL_OP( 13556,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat36 );
TEST_VMRL_OP( 13579,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat59 );
TEST_VMRL_OP( 13586,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 13589,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 13590,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 13604,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat19 );
TEST_VMRL_OP( 13617,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 13704,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat54 );
TEST_VMRL_OP( 13721,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 13725,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 13744,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat29 );
TEST_VMRL_OP( 13757,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat42 );
TEST_VMRL_OP( 13771,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat56 );
TEST_VMRL_OP( 13773,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat58 );
TEST_VMRL_OP( 13827,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat47 );
TEST_VMRL_OP( 13828,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat48 );
TEST_VMRL_OP( 13857,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 13867,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat22 );
TEST_VMRL_OP( 13906,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat61 );
TEST_VMRL_OP( 13919,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat9 );
TEST_VMRL_OP( 13927,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 13931,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 13943,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat33 );
TEST_VMRL_OP( 14027,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat52 );
TEST_VMRL_OP( 14058,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 14082,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat42 );
TEST_VMRL_OP( 14091,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat51 );
TEST_VMRL_OP( 14094,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat54 );
TEST_VMRL_OP( 14101,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat61 );
TEST_VMRL_OP( 14156,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat51 );
TEST_VMRL_OP( 14165,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat60 );
TEST_VMRL_OP( 14166,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat61 );
TEST_VMRL_OP( 14168,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat63 );
TEST_VMRL_OP( 14178,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 14191,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 14202,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 14209,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat39 );
TEST_VMRL_OP( 14210,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat40 );
TEST_VMRL_OP( 14241,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 14243,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 14247,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 14252,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 14257,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 14260,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 14272,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat37 );
TEST_VMRL_OP( 14288,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat53 );
TEST_VMRL_OP( 14300,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 14302,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 14306,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 14358,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat58 );
TEST_VMRL_OP( 14363,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat63 );
TEST_VMRL_OP( 14376,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 14388,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 14416,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat51 );
TEST_VMRL_OP( 14435,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 14460,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 14494,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat64 );
TEST_VMRL_OP( 14507,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 14510,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 14541,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat46 );
TEST_VMRL_OP( 14544,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat49 );
TEST_VMRL_OP( 14547,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat52 );
TEST_VMRL_OP( 14560,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 14567,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat7 );
TEST_VMRL_OP( 14568,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 14575,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 14578,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 14631,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat6 );
TEST_VMRL_OP( 14635,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 14639,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat14 );
TEST_VMRL_OP( 14661,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat36 );
TEST_VMRL_OP( 14664,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat39 );
TEST_VMRL_OP( 14670,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat45 );
TEST_VMRL_OP( 14686,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat61 );
TEST_VMRL_OP( 14687,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat62 );
TEST_VMRL_OP( 14689,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat64 );
TEST_VMRL_OP( 14700,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 14705,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 14732,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat31, walking_ones_dat42 );
TEST_VMRL_OP( 14755,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 14782,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 14800,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat45 );
TEST_VMRL_OP( 14846,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat26 );
TEST_VMRL_OP( 14872,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat52 );
TEST_VMRL_OP( 14884,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat64 );
TEST_VMRL_OP( 14886,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat1 );
TEST_VMRL_OP( 14894,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat9 );
TEST_VMRL_OP( 14934,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat49 );
TEST_VMRL_OP( 15072,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat57 );
TEST_VMRL_OP( 15094,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat14 );
TEST_VMRL_OP( 15166,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat21 );
TEST_VMRL_OP( 15174,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat29 );
TEST_VMRL_OP( 15175,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat30 );
TEST_VMRL_OP( 15179,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat34 );
TEST_VMRL_OP( 15255,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat39, walking_ones_dat45 );
TEST_VMRL_OP( 15269,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat39, walking_ones_dat59 );
TEST_VMRL_OP( 15275,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat40, walking_ones_dat0 );
TEST_VMRL_OP( 15277,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat2 );
TEST_VMRL_OP( 15280,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat5 );
TEST_VMRL_OP( 15297,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat22 );
TEST_VMRL_OP( 15305,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat30 );
TEST_VMRL_OP( 15323,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat48 );
TEST_VMRL_OP( 15335,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat60 );
TEST_VMRL_OP( 15387,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat47 );
TEST_VMRL_OP( 15419,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat14 );
TEST_VMRL_OP( 15421,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat16 );
TEST_VMRL_OP( 15433,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat28 );
TEST_VMRL_OP( 15442,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat37 );
TEST_VMRL_OP( 15462,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat57 );
TEST_VMRL_OP( 15476,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat6 );
TEST_VMRL_OP( 15477,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat7 );
TEST_VMRL_OP( 15478,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat8 );
TEST_VMRL_OP( 15490,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat20 );
TEST_VMRL_OP( 15519,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat49 );
TEST_VMRL_OP( 15521,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat51 );
TEST_VMRL_OP( 15522,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat52 );
TEST_VMRL_OP( 15581,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat46 );
TEST_VMRL_OP( 15588,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat53 );
TEST_VMRL_OP( 15595,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat60 );
TEST_VMRL_OP( 15605,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat5 );
TEST_VMRL_OP( 15629,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat29 );
TEST_VMRL_OP( 15631,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat31 );
TEST_VMRL_OP( 15635,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat35 );
TEST_VMRL_OP( 15650,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat50 );
TEST_VMRL_OP( 15675,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat10 );
TEST_VMRL_OP( 15676,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat11 );
TEST_VMRL_OP( 15695,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat30 );
TEST_VMRL_OP( 15727,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat62 );
TEST_VMRL_OP( 15730,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_ones_dat0 );
TEST_VMRL_OP( 15737,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat7 );
TEST_VMRL_OP( 15738,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat8 );
TEST_VMRL_OP( 15764,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat34 );
TEST_VMRL_OP( 15794,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat64 );
TEST_VMRL_OP( 15836,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat41 );
TEST_VMRL_OP( 15840,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat45 );
TEST_VMRL_OP( 15843,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 15844,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat49 );
TEST_VMRL_OP( 15853,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat58 );
TEST_VMRL_OP( 15855,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat60 );
TEST_VMRL_OP( 15863,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat3 );
TEST_VMRL_OP( 15877,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat17 );
TEST_VMRL_OP( 15886,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat26 );
TEST_VMRL_OP( 15894,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat34 );
TEST_VMRL_OP( 15903,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat43 );
TEST_VMRL_OP( 15930,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat5 );
TEST_VMRL_OP( 15953,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat28 );
TEST_VMRL_OP( 16000,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat10 );
TEST_VMRL_OP( 16026,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat36 );
TEST_VMRL_OP( 16048,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat58 );
TEST_VMRL_OP( 16072,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat17 );
TEST_VMRL_OP( 16080,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat25 );
TEST_VMRL_OP( 16143,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat23 );
TEST_VMRL_OP( 16156,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat36 );
TEST_VMRL_OP( 16161,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat41 );
TEST_VMRL_OP( 16179,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat59 );
TEST_VMRL_OP( 16187,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat2 );
TEST_VMRL_OP( 16190,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat5 );
TEST_VMRL_OP( 16249,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat64 );
TEST_VMRL_OP( 16258,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat8 );
TEST_VMRL_OP( 16268,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat18 );
TEST_VMRL_OP( 16274,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat24 );
TEST_VMRL_OP( 16275,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat25 );
TEST_VMRL_OP( 16287,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat37 );
TEST_VMRL_OP( 16295,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat45 );
TEST_VMRL_OP( 16340,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat25 );
TEST_VMRL_OP( 16342,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat27 );
TEST_VMRL_OP( 16397,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat17 );
TEST_VMRL_OP( 16398,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat18 );
TEST_VMRL_OP( 16426,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat46 );
TEST_VMRL_OP( 16432,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat52 );
TEST_VMRL_OP( 16435,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat55 );
TEST_VMRL_OP( 16440,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat60 );
TEST_VMRL_OP( 16443,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat63 );
TEST_VMRL_OP( 16466,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat21 );
TEST_VMRL_OP( 16491,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat46 );
TEST_VMRL_OP( 16513,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat3 );
TEST_VMRL_OP( 16534,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat24 );
TEST_VMRL_OP( 16538,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat28 );
TEST_VMRL_OP( 16568,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat58 );
TEST_VMRL_OP( 16578,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat3 );
TEST_VMRL_OP( 16579,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat4 );
TEST_VMRL_OP( 16586,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat11 );
TEST_VMRL_OP( 16596,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat21 );
TEST_VMRL_OP( 16620,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat45 );
TEST_VMRL_OP( 16632,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat57 );
TEST_VMRL_OP( 16641,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat1 );
TEST_VMRL_OP( 16666,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat26 );
TEST_VMRL_OP( 16685,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat45 );
TEST_VMRL_OP( 16696,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat56 );
TEST_VMRL_OP( 16712,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat7 );
TEST_VMRL_OP( 16723,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat18 );
TEST_VMRL_OP( 16734,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat29 );
TEST_VMRL_OP( 16744,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat39 );
TEST_VMRL_OP( 16757,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat52 );
TEST_VMRL_OP( 16772,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat2 );
TEST_VMRL_OP( 16801,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat31 );
TEST_VMRL_OP( 16837,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat2 );
TEST_VMRL_OP( 16853,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat18 );
TEST_VMRL_OP( 16862,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat27 );
TEST_VMRL_OP( 16871,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat36 );
TEST_VMRL_OP( 16874,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat39 );
TEST_VMRL_OP( 16876,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat41 );
TEST_VMRL_OP( 16900,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmnand.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmnand.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 33975,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 33976,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 33977,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 33978,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33979,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33980,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33981,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33982,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33983,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33984,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33985,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33986,  vmnand.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
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
    

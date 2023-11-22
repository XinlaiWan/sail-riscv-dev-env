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
TEST_VMRL_OP( 19,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 29,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 48,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat48 );
TEST_VMRL_OP( 70,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 73,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 88,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 97,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 101,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat36 );
TEST_VMRL_OP( 133,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 135,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 144,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 147,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 163,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat33 );
TEST_VMRL_OP( 173,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat43 );
TEST_VMRL_OP( 177,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat47 );
TEST_VMRL_OP( 205,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 206,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 217,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 231,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat36 );
TEST_VMRL_OP( 262,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 279,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 303,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat43 );
TEST_VMRL_OP( 353,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 358,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat33 );
TEST_VMRL_OP( 368,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat43 );
TEST_VMRL_OP( 417,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 425,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat35 );
TEST_VMRL_OP( 438,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat48 );
TEST_VMRL_OP( 463,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 465,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 493,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat38 );
TEST_VMRL_OP( 530,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 537,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 552,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 555,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat35 );
TEST_VMRL_OP( 567,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat47 );
TEST_VMRL_OP( 600,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 607,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 626,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat41 );
TEST_VMRL_OP( 643,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat58 );
TEST_VMRL_OP( 646,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat61 );
TEST_VMRL_OP( 673,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 676,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 690,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat40 );
TEST_VMRL_OP( 733,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 738,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 759,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat44 );
TEST_VMRL_OP( 781,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 790,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 791,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 805,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat25 );
TEST_VMRL_OP( 814,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat34 );
TEST_VMRL_OP( 818,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat38 );
TEST_VMRL_OP( 825,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat45 );
TEST_VMRL_OP( 892,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat47 );
TEST_VMRL_OP( 895,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat50 );
TEST_VMRL_OP( 918,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 926,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 934,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 945,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat35 );
TEST_VMRL_OP( 970,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat60 );
TEST_VMRL_OP( 987,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 988,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 998,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 1001,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat26 );
TEST_VMRL_OP( 1003,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 1009,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat34 );
TEST_VMRL_OP( 1010,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat35 );
TEST_VMRL_OP( 1018,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat43 );
TEST_VMRL_OP( 1022,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat47 );
TEST_VMRL_OP( 1030,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat55 );
TEST_VMRL_OP( 1034,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat59 );
TEST_VMRL_OP( 1038,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat63 );
TEST_VMRL_OP( 1080,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat40 );
TEST_VMRL_OP( 1090,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat50 );
TEST_VMRL_OP( 1094,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat54 );
TEST_VMRL_OP( 1098,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat58 );
TEST_VMRL_OP( 1118,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat13 );
TEST_VMRL_OP( 1121,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat16 );
TEST_VMRL_OP( 1122,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 1164,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat59 );
TEST_VMRL_OP( 1181,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat11 );
TEST_VMRL_OP( 1194,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 1212,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat42 );
TEST_VMRL_OP( 1217,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat47 );
TEST_VMRL_OP( 1245,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat10 );
TEST_VMRL_OP( 1246,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat11 );
TEST_VMRL_OP( 1258,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 1272,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat37 );
TEST_VMRL_OP( 1297,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat62 );
TEST_VMRL_OP( 1300,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 1310,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 1329,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 1366,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 1419,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat54 );
TEST_VMRL_OP( 1425,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat60 );
TEST_VMRL_OP( 1433,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 1434,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat4 );
TEST_VMRL_OP( 1440,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 1483,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat53 );
TEST_VMRL_OP( 1495,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 1524,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 1570,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat10 );
TEST_VMRL_OP( 1596,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat36 );
TEST_VMRL_OP( 1667,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat42 );
TEST_VMRL_OP( 1674,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat49 );
TEST_VMRL_OP( 1807,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat52 );
TEST_VMRL_OP( 1813,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat58 );
TEST_VMRL_OP( 1816,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat61 );
TEST_VMRL_OP( 1836,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 1854,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat34 );
TEST_VMRL_OP( 1883,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat63 );
TEST_VMRL_OP( 1906,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat21 );
TEST_VMRL_OP( 1910,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 1932,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat47 );
TEST_VMRL_OP( 1941,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat56 );
TEST_VMRL_OP( 1971,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 2004,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat54 );
TEST_VMRL_OP( 2031,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 2054,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat39 );
TEST_VMRL_OP( 2076,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat61 );
TEST_VMRL_OP( 2093,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat13 );
TEST_VMRL_OP( 2106,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 2125,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat45 );
TEST_VMRL_OP( 2136,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat56 );
TEST_VMRL_OP( 2148,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_ones_dat3 );
TEST_VMRL_OP( 2162,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_ones_dat17 );
TEST_VMRL_OP( 2205,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_ones_dat60 );
TEST_VMRL_OP( 2236,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat26 );
TEST_VMRL_OP( 2239,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat29 );
TEST_VMRL_OP( 2240,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat30 );
TEST_VMRL_OP( 2249,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat39 );
TEST_VMRL_OP( 2267,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat57 );
TEST_VMRL_OP( 2276,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat1 );
TEST_VMRL_OP( 2288,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat13 );
TEST_VMRL_OP( 2301,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat26 );
TEST_VMRL_OP( 2304,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat29 );
TEST_VMRL_OP( 2315,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat40 );
TEST_VMRL_OP( 2326,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat51 );
TEST_VMRL_OP( 2346,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_ones_dat6 );
TEST_VMRL_OP( 2350,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_ones_dat10 );
TEST_VMRL_OP( 2368,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_ones_dat28 );
TEST_VMRL_OP( 2421,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_ones_dat16 );
TEST_VMRL_OP( 2454,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_ones_dat49 );
TEST_VMRL_OP( 2487,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat17 );
TEST_VMRL_OP( 2489,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat19 );
TEST_VMRL_OP( 2572,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_ones_dat37 );
TEST_VMRL_OP( 2581,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_ones_dat46 );
TEST_VMRL_OP( 2614,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat14 );
TEST_VMRL_OP( 2664,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat64 );
TEST_VMRL_OP( 2674,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat9 );
TEST_VMRL_OP( 2694,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat29 );
TEST_VMRL_OP( 2699,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat34 );
TEST_VMRL_OP( 2700,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat35 );
TEST_VMRL_OP( 2753,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_ones_dat23 );
TEST_VMRL_OP( 2817,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat22 );
TEST_VMRL_OP( 2852,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat57 );
TEST_VMRL_OP( 2854,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat59 );
TEST_VMRL_OP( 2933,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat8 );
TEST_VMRL_OP( 2938,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat13 );
TEST_VMRL_OP( 2953,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat28 );
TEST_VMRL_OP( 2979,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat54 );
TEST_VMRL_OP( 2983,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat58 );
TEST_VMRL_OP( 3002,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat12 );
TEST_VMRL_OP( 3029,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat39 );
TEST_VMRL_OP( 3045,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat55 );
TEST_VMRL_OP( 3060,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat5 );
TEST_VMRL_OP( 3071,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat16 );
TEST_VMRL_OP( 3072,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat17 );
TEST_VMRL_OP( 3077,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat22 );
TEST_VMRL_OP( 3122,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat2 );
TEST_VMRL_OP( 3123,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat3 );
TEST_VMRL_OP( 3124,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat4 );
TEST_VMRL_OP( 3132,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat12 );
TEST_VMRL_OP( 3181,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat61 );
TEST_VMRL_OP( 3182,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat62 );
TEST_VMRL_OP( 3191,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat6 );
TEST_VMRL_OP( 3195,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat10 );
TEST_VMRL_OP( 3208,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat23 );
TEST_VMRL_OP( 3243,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat58 );
TEST_VMRL_OP( 3259,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat9 );
TEST_VMRL_OP( 3264,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat14 );
TEST_VMRL_OP( 3267,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat17 );
TEST_VMRL_OP( 3284,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat34 );
TEST_VMRL_OP( 3290,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat40 );
TEST_VMRL_OP( 3295,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat45 );
TEST_VMRL_OP( 3359,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_ones_dat44 );
TEST_VMRL_OP( 3401,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_ones_dat21 );
TEST_VMRL_OP( 3437,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_ones_dat57 );
TEST_VMRL_OP( 3441,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_ones_dat61 );
TEST_VMRL_OP( 3469,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_ones_dat24 );
TEST_VMRL_OP( 3505,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_ones_dat60 );
TEST_VMRL_OP( 3551,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat54, walking_ones_dat41 );
TEST_VMRL_OP( 3594,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat55, walking_ones_dat19 );
TEST_VMRL_OP( 3599,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat55, walking_ones_dat24 );
TEST_VMRL_OP( 3605,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat55, walking_ones_dat30 );
TEST_VMRL_OP( 3698,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_ones_dat58 );
TEST_VMRL_OP( 3700,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_ones_dat60 );
TEST_VMRL_OP( 3701,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_ones_dat61 );
TEST_VMRL_OP( 3711,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_ones_dat6 );
TEST_VMRL_OP( 3742,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_ones_dat37 );
TEST_VMRL_OP( 3762,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 3767,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_ones_dat62 );
TEST_VMRL_OP( 3782,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat12 );
TEST_VMRL_OP( 3786,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat16 );
TEST_VMRL_OP( 3811,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat41 );
TEST_VMRL_OP( 3823,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat53 );
TEST_VMRL_OP( 3866,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat31 );
TEST_VMRL_OP( 3874,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat39 );
TEST_VMRL_OP( 3887,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat52 );
TEST_VMRL_OP( 3906,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_ones_dat6 );
TEST_VMRL_OP( 3913,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_ones_dat13 );
TEST_VMRL_OP( 3914,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_ones_dat14 );
TEST_VMRL_OP( 3926,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_ones_dat26 );
TEST_VMRL_OP( 3992,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat61, walking_ones_dat27 );
TEST_VMRL_OP( 4002,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat61, walking_ones_dat37 );
TEST_VMRL_OP( 4021,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat61, walking_ones_dat56 );
TEST_VMRL_OP( 4041,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat11 );
TEST_VMRL_OP( 4049,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat19 );
TEST_VMRL_OP( 4073,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat43 );
TEST_VMRL_OP( 4074,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat44 );
TEST_VMRL_OP( 4075,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat45 );
TEST_VMRL_OP( 4077,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat47 );
TEST_VMRL_OP( 4100,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat5 );
TEST_VMRL_OP( 4122,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat27 );
TEST_VMRL_OP( 4142,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat47 );
TEST_VMRL_OP( 4161,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat1 );
TEST_VMRL_OP( 4182,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat22 );
TEST_VMRL_OP( 4189,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat29 );
TEST_VMRL_OP( 4192,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat32 );
TEST_VMRL_OP( 4199,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat39 );
TEST_VMRL_OP( 4207,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat47 );
TEST_VMRL_OP( 4217,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat57 );
TEST_VMRL_OP( 4242,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 4246,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 4247,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 4283,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_zeros_dat58 );
TEST_VMRL_OP( 4295,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 4309,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 4329,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat39 );
TEST_VMRL_OP( 4330,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat40 );
TEST_VMRL_OP( 4334,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat44 );
TEST_VMRL_OP( 4340,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat50 );
TEST_VMRL_OP( 4343,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat53 );
TEST_VMRL_OP( 4373,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat18 );
TEST_VMRL_OP( 4374,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat19 );
TEST_VMRL_OP( 4384,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 4407,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat52 );
TEST_VMRL_OP( 4408,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat53 );
TEST_VMRL_OP( 4417,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_zeros_dat62 );
TEST_VMRL_OP( 4430,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 4445,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat25 );
TEST_VMRL_OP( 4463,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat43 );
TEST_VMRL_OP( 4473,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat53 );
TEST_VMRL_OP( 4476,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_zeros_dat56 );
TEST_VMRL_OP( 4534,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat49 );
TEST_VMRL_OP( 4536,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat51 );
TEST_VMRL_OP( 4540,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat55 );
TEST_VMRL_OP( 4541,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat4, walking_zeros_dat56 );
TEST_VMRL_OP( 4559,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 4560,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 4561,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 4567,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 4570,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_zeros_dat20 );
TEST_VMRL_OP( 4624,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 4634,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 4651,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat36 );
TEST_VMRL_OP( 4682,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 4709,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 4714,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat34 );
TEST_VMRL_OP( 4719,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat39 );
TEST_VMRL_OP( 4727,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat47 );
TEST_VMRL_OP( 4739,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat59 );
TEST_VMRL_OP( 4744,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_zeros_dat64 );
TEST_VMRL_OP( 4745,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 4746,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 4747,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 4765,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat20 );
TEST_VMRL_OP( 4795,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat50 );
TEST_VMRL_OP( 4802,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_zeros_dat57 );
TEST_VMRL_OP( 4813,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 4841,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat9, walking_zeros_dat31 );
TEST_VMRL_OP( 4903,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 4923,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat48 );
TEST_VMRL_OP( 4925,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat10, walking_zeros_dat50 );
TEST_VMRL_OP( 4947,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 4967,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat11, walking_zeros_dat27 );
TEST_VMRL_OP( 5004,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat11, walking_zeros_dat64 );
TEST_VMRL_OP( 5009,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 5045,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat12, walking_zeros_dat40 );
TEST_VMRL_OP( 5086,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 5093,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat23 );
TEST_VMRL_OP( 5100,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 5101,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 5120,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_zeros_dat50 );
TEST_VMRL_OP( 5137,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 5143,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 5146,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 5166,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 5183,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat48 );
TEST_VMRL_OP( 5199,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_zeros_dat64 );
TEST_VMRL_OP( 5235,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat15, walking_zeros_dat35 );
TEST_VMRL_OP( 5236,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat15, walking_zeros_dat36 );
TEST_VMRL_OP( 5255,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat15, walking_zeros_dat55 );
TEST_VMRL_OP( 5275,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 5291,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat26 );
TEST_VMRL_OP( 5297,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 5300,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat35 );
TEST_VMRL_OP( 5314,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat49 );
TEST_VMRL_OP( 5329,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_zeros_dat64 );
TEST_VMRL_OP( 5339,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat9 );
TEST_VMRL_OP( 5346,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 5376,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat46 );
TEST_VMRL_OP( 5391,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat61 );
TEST_VMRL_OP( 5393,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_zeros_dat63 );
TEST_VMRL_OP( 5407,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 5452,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat57 );
TEST_VMRL_OP( 5453,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat18, walking_zeros_dat58 );
TEST_VMRL_OP( 5474,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 5482,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 5498,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_zeros_dat38 );
TEST_VMRL_OP( 5504,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_zeros_dat44 );
TEST_VMRL_OP( 5507,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_zeros_dat47 );
TEST_VMRL_OP( 5536,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat11 );
TEST_VMRL_OP( 5540,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat15 );
TEST_VMRL_OP( 5553,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 5576,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat51 );
TEST_VMRL_OP( 5583,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_zeros_dat58 );
TEST_VMRL_OP( 5632,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat21, walking_zeros_dat42 );
TEST_VMRL_OP( 5635,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat21, walking_zeros_dat45 );
TEST_VMRL_OP( 5683,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat28 );
TEST_VMRL_OP( 5689,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat34 );
TEST_VMRL_OP( 5700,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat45 );
TEST_VMRL_OP( 5706,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat51 );
TEST_VMRL_OP( 5712,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat57 );
TEST_VMRL_OP( 5735,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 5741,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat23, walking_zeros_dat21 );
TEST_VMRL_OP( 5806,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 5822,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat37 );
TEST_VMRL_OP( 5836,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat51 );
TEST_VMRL_OP( 5844,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat24, walking_zeros_dat59 );
TEST_VMRL_OP( 5850,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 5857,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 5865,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 5882,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 5907,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat57 );
TEST_VMRL_OP( 5985,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 5988,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 5991,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 5999,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 6002,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 6012,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 6019,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat39 );
TEST_VMRL_OP( 6034,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_zeros_dat54 );
TEST_VMRL_OP( 6051,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 6052,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 6061,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 6122,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat29, walking_zeros_dat12 );
TEST_VMRL_OP( 6199,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 6205,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 6229,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat30, walking_zeros_dat54 );
TEST_VMRL_OP( 6255,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 6272,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 6325,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 6344,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat32, walking_zeros_dat39 );
TEST_VMRL_OP( 6373,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat3 );
TEST_VMRL_OP( 6398,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat28 );
TEST_VMRL_OP( 6457,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat34, walking_zeros_dat22 );
TEST_VMRL_OP( 6485,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat34, walking_zeros_dat50 );
TEST_VMRL_OP( 6487,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat34, walking_zeros_dat52 );
TEST_VMRL_OP( 6514,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat14 );
TEST_VMRL_OP( 6518,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat35, walking_zeros_dat18 );
TEST_VMRL_OP( 6535,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 6604,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat36, walking_zeros_dat39 );
TEST_VMRL_OP( 6622,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat36, walking_zeros_dat57 );
TEST_VMRL_OP( 6658,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat37, walking_zeros_dat28 );
TEST_VMRL_OP( 6680,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat37, walking_zeros_dat50 );
TEST_VMRL_OP( 6701,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat6 );
TEST_VMRL_OP( 6704,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat9 );
TEST_VMRL_OP( 6705,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat10 );
TEST_VMRL_OP( 6710,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat15 );
TEST_VMRL_OP( 6711,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat16 );
TEST_VMRL_OP( 6737,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat42 );
TEST_VMRL_OP( 6753,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_zeros_dat58 );
TEST_VMRL_OP( 6769,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat39, walking_zeros_dat9 );
TEST_VMRL_OP( 6818,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat39, walking_zeros_dat58 );
TEST_VMRL_OP( 6824,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat39, walking_zeros_dat64 );
TEST_VMRL_OP( 6829,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat40, walking_zeros_dat4 );
TEST_VMRL_OP( 6860,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat40, walking_zeros_dat35 );
TEST_VMRL_OP( 6873,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat40, walking_zeros_dat48 );
TEST_VMRL_OP( 6892,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat2 );
TEST_VMRL_OP( 6904,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat14 );
TEST_VMRL_OP( 6924,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat34 );
TEST_VMRL_OP( 6941,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat41, walking_zeros_dat51 );
TEST_VMRL_OP( 7010,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat42, walking_zeros_dat55 );
TEST_VMRL_OP( 7014,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat42, walking_zeros_dat59 );
TEST_VMRL_OP( 7025,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat43, walking_zeros_dat5 );
TEST_VMRL_OP( 7062,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat43, walking_zeros_dat42 );
TEST_VMRL_OP( 7073,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat43, walking_zeros_dat53 );
TEST_VMRL_OP( 7099,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat14 );
TEST_VMRL_OP( 7118,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat33 );
TEST_VMRL_OP( 7125,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat44, walking_zeros_dat40 );
TEST_VMRL_OP( 7181,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat45, walking_zeros_dat31 );
TEST_VMRL_OP( 7207,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat45, walking_zeros_dat57 );
TEST_VMRL_OP( 7215,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat0 );
TEST_VMRL_OP( 7218,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat3 );
TEST_VMRL_OP( 7221,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat6 );
TEST_VMRL_OP( 7271,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat46, walking_zeros_dat56 );
TEST_VMRL_OP( 7293,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat13 );
TEST_VMRL_OP( 7302,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat22 );
TEST_VMRL_OP( 7337,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat57 );
TEST_VMRL_OP( 7344,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_zeros_dat64 );
TEST_VMRL_OP( 7356,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat11 );
TEST_VMRL_OP( 7387,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat42 );
TEST_VMRL_OP( 7402,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat48, walking_zeros_dat57 );
TEST_VMRL_OP( 7425,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat49, walking_zeros_dat15 );
TEST_VMRL_OP( 7449,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat49, walking_zeros_dat39 );
TEST_VMRL_OP( 7485,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat50, walking_zeros_dat10 );
TEST_VMRL_OP( 7510,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat50, walking_zeros_dat35 );
TEST_VMRL_OP( 7526,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat50, walking_zeros_dat51 );
TEST_VMRL_OP( 7534,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat50, walking_zeros_dat59 );
TEST_VMRL_OP( 7541,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat1 );
TEST_VMRL_OP( 7554,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat14 );
TEST_VMRL_OP( 7578,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat51, walking_zeros_dat38 );
TEST_VMRL_OP( 7608,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat3 );
TEST_VMRL_OP( 7610,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat5 );
TEST_VMRL_OP( 7616,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat11 );
TEST_VMRL_OP( 7624,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat19 );
TEST_VMRL_OP( 7626,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat21 );
TEST_VMRL_OP( 7632,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat27 );
TEST_VMRL_OP( 7653,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_zeros_dat48 );
TEST_VMRL_OP( 7698,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat53, walking_zeros_dat28 );
TEST_VMRL_OP( 7712,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat53, walking_zeros_dat42 );
TEST_VMRL_OP( 7761,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat26 );
TEST_VMRL_OP( 7767,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat32 );
TEST_VMRL_OP( 7771,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat36 );
TEST_VMRL_OP( 7779,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat44 );
TEST_VMRL_OP( 7781,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat46 );
TEST_VMRL_OP( 7791,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat56 );
TEST_VMRL_OP( 7829,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat29 );
TEST_VMRL_OP( 7851,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat51 );
TEST_VMRL_OP( 7861,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat55, walking_zeros_dat61 );
TEST_VMRL_OP( 7889,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat56, walking_zeros_dat24 );
TEST_VMRL_OP( 7895,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat56, walking_zeros_dat30 );
TEST_VMRL_OP( 7917,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat56, walking_zeros_dat52 );
TEST_VMRL_OP( 7948,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat57, walking_zeros_dat18 );
TEST_VMRL_OP( 7966,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat57, walking_zeros_dat36 );
TEST_VMRL_OP( 7987,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 7988,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat57, walking_zeros_dat58 );
TEST_VMRL_OP( 7989,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat57, walking_zeros_dat59 );
TEST_VMRL_OP( 8018,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat23 );
TEST_VMRL_OP( 8021,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat26 );
TEST_VMRL_OP( 8039,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat44 );
TEST_VMRL_OP( 8045,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat50 );
TEST_VMRL_OP( 8052,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat57 );
TEST_VMRL_OP( 8055,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_zeros_dat60 );
TEST_VMRL_OP( 8061,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat1 );
TEST_VMRL_OP( 8090,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat30 );
TEST_VMRL_OP( 8103,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat59, walking_zeros_dat43 );
TEST_VMRL_OP( 8161,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat60, walking_zeros_dat36 );
TEST_VMRL_OP( 8205,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat61, walking_zeros_dat15 );
TEST_VMRL_OP( 8233,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat61, walking_zeros_dat43 );
TEST_VMRL_OP( 8239,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat61, walking_zeros_dat49 );
TEST_VMRL_OP( 8263,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat8 );
TEST_VMRL_OP( 8269,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat14 );
TEST_VMRL_OP( 8282,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat27 );
TEST_VMRL_OP( 8307,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat52 );
TEST_VMRL_OP( 8308,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat53 );
TEST_VMRL_OP( 8324,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat4 );
TEST_VMRL_OP( 8334,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat14 );
TEST_VMRL_OP( 8335,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat15 );
TEST_VMRL_OP( 8357,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat37 );
TEST_VMRL_OP( 8390,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_zeros_dat5 );
TEST_VMRL_OP( 8398,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_zeros_dat13 );
TEST_VMRL_OP( 8413,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_zeros_dat28 );
TEST_VMRL_OP( 8423,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_zeros_dat38 );
TEST_VMRL_OP( 8459,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 8469,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 8474,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat24 );
TEST_VMRL_OP( 8501,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat51 );
TEST_VMRL_OP( 8503,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat53 );
TEST_VMRL_OP( 8515,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 8517,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 8527,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 8548,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat33 );
TEST_VMRL_OP( 8550,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat35 );
TEST_VMRL_OP( 8560,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat45 );
TEST_VMRL_OP( 8564,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat49 );
TEST_VMRL_OP( 8565,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat50 );
TEST_VMRL_OP( 8580,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 8581,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 8618,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat38 );
TEST_VMRL_OP( 8627,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat47 );
TEST_VMRL_OP( 8631,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat51 );
TEST_VMRL_OP( 8665,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 8706,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat61 );
TEST_VMRL_OP( 8733,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 8743,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat33 );
TEST_VMRL_OP( 8768,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat58 );
TEST_VMRL_OP( 8773,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat63 );
TEST_VMRL_OP( 8786,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 8842,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 8854,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 8865,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 8866,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 8880,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat40 );
TEST_VMRL_OP( 8881,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat41 );
TEST_VMRL_OP( 8893,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat53 );
TEST_VMRL_OP( 8894,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat54 );
TEST_VMRL_OP( 8918,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 8923,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 8993,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 9012,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat42 );
TEST_VMRL_OP( 9065,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 9069,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat34 );
TEST_VMRL_OP( 9086,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat51 );
TEST_VMRL_OP( 9092,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat57 );
TEST_VMRL_OP( 9116,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 9139,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat39 );
TEST_VMRL_OP( 9155,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat55 );
TEST_VMRL_OP( 9156,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat56 );
TEST_VMRL_OP( 9164,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat64 );
TEST_VMRL_OP( 9179,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 9184,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 9216,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat51 );
TEST_VMRL_OP( 9235,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 9247,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat17 );
TEST_VMRL_OP( 9260,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 9265,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat35 );
TEST_VMRL_OP( 9270,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat40 );
TEST_VMRL_OP( 9278,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat48 );
TEST_VMRL_OP( 9291,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat61 );
TEST_VMRL_OP( 9302,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 9310,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 9315,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 9345,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat50 );
TEST_VMRL_OP( 9346,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat51 );
TEST_VMRL_OP( 9369,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 9385,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 9404,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat44 );
TEST_VMRL_OP( 9409,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat49 );
TEST_VMRL_OP( 9454,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 9468,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat43 );
TEST_VMRL_OP( 9487,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat62 );
TEST_VMRL_OP( 9497,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 9502,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 9512,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat22 );
TEST_VMRL_OP( 9518,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 9538,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat48 );
TEST_VMRL_OP( 9582,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 9598,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat43 );
TEST_VMRL_OP( 9625,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 9654,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat34 );
TEST_VMRL_OP( 9660,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat40 );
TEST_VMRL_OP( 9704,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 9706,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 9712,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 9727,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat42 );
TEST_VMRL_OP( 9729,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat44 );
TEST_VMRL_OP( 9732,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat47 );
TEST_VMRL_OP( 9737,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat52 );
TEST_VMRL_OP( 9787,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat37 );
TEST_VMRL_OP( 9860,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat45 );
TEST_VMRL_OP( 9874,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat59 );
TEST_VMRL_OP( 9928,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat48 );
TEST_VMRL_OP( 9965,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 9974,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat29 );
TEST_VMRL_OP( 10007,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat62 );
TEST_VMRL_OP( 10040,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 10042,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat32 );
TEST_VMRL_OP( 10047,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat37 );
TEST_VMRL_OP( 10082,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 10147,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 10151,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 10162,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 10173,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat33 );
TEST_VMRL_OP( 10178,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat38 );
TEST_VMRL_OP( 10214,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 10218,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 10245,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat40 );
TEST_VMRL_OP( 10279,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat9 );
TEST_VMRL_OP( 10308,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat38 );
TEST_VMRL_OP( 10334,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat64 );
TEST_VMRL_OP( 10343,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat8 );
TEST_VMRL_OP( 10400,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 10425,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 10436,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat36 );
TEST_VMRL_OP( 10440,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat40 );
TEST_VMRL_OP( 10443,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat43 );
TEST_VMRL_OP( 10450,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat50 );
TEST_VMRL_OP( 10483,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 10522,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat57 );
TEST_VMRL_OP( 10525,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat60 );
TEST_VMRL_OP( 10531,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 10532,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 10556,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat26 );
TEST_VMRL_OP( 10655,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat60 );
TEST_VMRL_OP( 10687,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat27 );
TEST_VMRL_OP( 10690,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat30 );
TEST_VMRL_OP( 10693,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat33 );
TEST_VMRL_OP( 10699,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat39 );
TEST_VMRL_OP( 10745,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat20 );
TEST_VMRL_OP( 10759,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat34 );
TEST_VMRL_OP( 10768,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat43 );
TEST_VMRL_OP( 10769,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat44 );
TEST_VMRL_OP( 10785,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat60 );
TEST_VMRL_OP( 10791,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat1 );
TEST_VMRL_OP( 10830,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat40 );
TEST_VMRL_OP( 10834,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat44 );
TEST_VMRL_OP( 10838,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat48 );
TEST_VMRL_OP( 10885,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat30 );
TEST_VMRL_OP( 10912,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat57 );
TEST_VMRL_OP( 10916,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat61 );
TEST_VMRL_OP( 10938,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat18 );
TEST_VMRL_OP( 10944,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat24 );
TEST_VMRL_OP( 10946,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat26 );
TEST_VMRL_OP( 10948,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat28 );
TEST_VMRL_OP( 10989,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat4 );
TEST_VMRL_OP( 11011,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat26 );
TEST_VMRL_OP( 11018,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat33 );
TEST_VMRL_OP( 11033,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat48 );
TEST_VMRL_OP( 11061,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat11 );
TEST_VMRL_OP( 11109,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat59 );
TEST_VMRL_OP( 11177,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat62 );
TEST_VMRL_OP( 11198,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat18 );
TEST_VMRL_OP( 11206,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat26 );
TEST_VMRL_OP( 11218,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat38 );
TEST_VMRL_OP( 11224,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat44 );
TEST_VMRL_OP( 11228,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat48 );
TEST_VMRL_OP( 11233,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat53 );
TEST_VMRL_OP( 11273,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat28 );
TEST_VMRL_OP( 11288,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 11300,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat55 );
TEST_VMRL_OP( 11305,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat60 );
TEST_VMRL_OP( 11344,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat34 );
TEST_VMRL_OP( 11354,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 11356,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat46 );
TEST_VMRL_OP( 11386,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat11 );
TEST_VMRL_OP( 11410,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat35 );
TEST_VMRL_OP( 11421,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat46 );
TEST_VMRL_OP( 11427,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat52 );
TEST_VMRL_OP( 11432,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat57 );
TEST_VMRL_OP( 11436,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat61 );
TEST_VMRL_OP( 11473,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat33 );
TEST_VMRL_OP( 11479,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat39 );
TEST_VMRL_OP( 11483,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat43 );
TEST_VMRL_OP( 11488,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat48 );
TEST_VMRL_OP( 11550,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat45 );
TEST_VMRL_OP( 11565,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat60 );
TEST_VMRL_OP( 11575,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat5 );
TEST_VMRL_OP( 11604,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat34 );
TEST_VMRL_OP( 11615,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat45 );
TEST_VMRL_OP( 11621,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat51 );
TEST_VMRL_OP( 11622,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat52 );
TEST_VMRL_OP( 11631,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat61 );
TEST_VMRL_OP( 11708,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat8 );
TEST_VMRL_OP( 11716,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat16 );
TEST_VMRL_OP( 11746,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat46 );
TEST_VMRL_OP( 11778,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat13 );
TEST_VMRL_OP( 11782,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat17 );
TEST_VMRL_OP( 11809,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat44 );
TEST_VMRL_OP( 11869,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat39 );
TEST_VMRL_OP( 11893,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat63 );
TEST_VMRL_OP( 11894,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat64 );
TEST_VMRL_OP( 11904,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat9 );
TEST_VMRL_OP( 11911,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat16 );
TEST_VMRL_OP( 11915,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat20 );
TEST_VMRL_OP( 11932,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat37 );
TEST_VMRL_OP( 11951,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat56 );
TEST_VMRL_OP( 11961,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat1 );
TEST_VMRL_OP( 11964,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat4 );
TEST_VMRL_OP( 11967,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat7 );
TEST_VMRL_OP( 11970,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat10 );
TEST_VMRL_OP( 11989,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat29 );
TEST_VMRL_OP( 12014,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 12066,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat41 );
TEST_VMRL_OP( 12076,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat51 );
TEST_VMRL_OP( 12157,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat2 );
TEST_VMRL_OP( 12165,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat10 );
TEST_VMRL_OP( 12188,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat33 );
TEST_VMRL_OP( 12195,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat40 );
TEST_VMRL_OP( 12212,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 12215,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat60 );
TEST_VMRL_OP( 12230,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat10 );
TEST_VMRL_OP( 12232,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat12 );
TEST_VMRL_OP( 12240,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat20 );
TEST_VMRL_OP( 12334,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat49 );
TEST_VMRL_OP( 12346,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat61 );
TEST_VMRL_OP( 12375,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat25 );
TEST_VMRL_OP( 12408,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat58 );
TEST_VMRL_OP( 12413,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat63 );
TEST_VMRL_OP( 12414,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat64 );
TEST_VMRL_OP( 12419,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat4 );
TEST_VMRL_OP( 12433,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat18 );
TEST_VMRL_OP( 12449,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat34 );
TEST_VMRL_OP( 12464,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat49 );
TEST_VMRL_OP( 12475,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat60 );
TEST_VMRL_OP( 12481,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat1 );
TEST_VMRL_OP( 12496,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat16 );
TEST_VMRL_OP( 12497,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat17 );
TEST_VMRL_OP( 12507,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat27 );
TEST_VMRL_OP( 12523,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat43 );
TEST_VMRL_OP( 12545,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat0 );
TEST_VMRL_OP( 12556,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat11 );
TEST_VMRL_OP( 12568,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat23 );
TEST_VMRL_OP( 12585,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat40 );
TEST_VMRL_OP( 12597,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat52 );
TEST_VMRL_OP( 12656,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat46 );
TEST_VMRL_OP( 12663,  vmor.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat53 );
TEST_VMRL_OP( 12674,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 12692,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat17 );
TEST_VMRL_OP( 12704,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 12706,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 12716,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat41 );
TEST_VMRL_OP( 12727,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat52 );
TEST_VMRL_OP( 12740,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 12756,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 12782,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat42 );
TEST_VMRL_OP( 12787,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat47 );
TEST_VMRL_OP( 12794,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_ones_dat54 );
TEST_VMRL_OP( 12807,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 12817,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 12822,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 12865,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat60 );
TEST_VMRL_OP( 12867,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_ones_dat62 );
TEST_VMRL_OP( 12875,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 12886,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 12897,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 12912,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat3, walking_ones_dat42 );
TEST_VMRL_OP( 12935,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 12949,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 13013,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 13031,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 13041,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat41 );
TEST_VMRL_OP( 13046,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_ones_dat46 );
TEST_VMRL_OP( 13083,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 13089,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 13099,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat34 );
TEST_VMRL_OP( 13105,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat40 );
TEST_VMRL_OP( 13109,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat44 );
TEST_VMRL_OP( 13111,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_ones_dat46 );
TEST_VMRL_OP( 13139,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 13146,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 13172,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat42 );
TEST_VMRL_OP( 13174,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat7, walking_ones_dat44 );
TEST_VMRL_OP( 13204,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 13213,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 13259,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_ones_dat64 );
TEST_VMRL_OP( 13261,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 13272,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 13282,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 13283,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 13327,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 13330,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 13348,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 13358,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat33 );
TEST_VMRL_OP( 13410,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 13469,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 13508,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_ones_dat53 );
TEST_VMRL_OP( 13534,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 13579,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_ones_dat59 );
TEST_VMRL_OP( 13616,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat31 );
TEST_VMRL_OP( 13646,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_ones_dat61 );
TEST_VMRL_OP( 13685,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat35 );
TEST_VMRL_OP( 13709,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat15, walking_ones_dat59 );
TEST_VMRL_OP( 13726,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 13761,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat46 );
TEST_VMRL_OP( 13763,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat48 );
TEST_VMRL_OP( 13765,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_ones_dat50 );
TEST_VMRL_OP( 13780,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 13790,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat10 );
TEST_VMRL_OP( 13793,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat17, walking_ones_dat13 );
TEST_VMRL_OP( 13848,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 13855,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 13884,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat39 );
TEST_VMRL_OP( 13887,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat42 );
TEST_VMRL_OP( 13895,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat50 );
TEST_VMRL_OP( 13900,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_ones_dat55 );
TEST_VMRL_OP( 13924,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 13927,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 13930,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 13940,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 13956,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat46 );
TEST_VMRL_OP( 13960,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat50 );
TEST_VMRL_OP( 13968,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_ones_dat58 );
TEST_VMRL_OP( 13985,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 13989,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 14007,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 14012,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat37 );
TEST_VMRL_OP( 14014,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat39 );
TEST_VMRL_OP( 14016,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat41 );
TEST_VMRL_OP( 14035,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_ones_dat60 );
TEST_VMRL_OP( 14053,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 14133,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 14141,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat36 );
TEST_VMRL_OP( 14153,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat48 );
TEST_VMRL_OP( 14165,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_ones_dat60 );
TEST_VMRL_OP( 14170,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 14173,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat3 );
TEST_VMRL_OP( 14185,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 14191,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 14200,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat30 );
TEST_VMRL_OP( 14204,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat34 );
TEST_VMRL_OP( 14215,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_ones_dat45 );
TEST_VMRL_OP( 14267,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 14282,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat47 );
TEST_VMRL_OP( 14291,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_ones_dat56 );
TEST_VMRL_OP( 14345,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat45 );
TEST_VMRL_OP( 14355,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat55 );
TEST_VMRL_OP( 14360,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_ones_dat60 );
TEST_VMRL_OP( 14387,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 14396,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 14400,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_ones_dat35 );
TEST_VMRL_OP( 14433,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 14457,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 14533,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat38 );
TEST_VMRL_OP( 14544,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_ones_dat49 );
TEST_VMRL_OP( 14564,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat4 );
TEST_VMRL_OP( 14568,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 14637,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 14653,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 14759,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 14760,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 14776,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat21 );
TEST_VMRL_OP( 14803,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat48 );
TEST_VMRL_OP( 14813,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_ones_dat58 );
TEST_VMRL_OP( 14867,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat47 );
TEST_VMRL_OP( 14873,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat53 );
TEST_VMRL_OP( 14875,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat55 );
TEST_VMRL_OP( 14882,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_ones_dat62 );
TEST_VMRL_OP( 14897,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat12 );
TEST_VMRL_OP( 14923,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat38 );
TEST_VMRL_OP( 14938,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_ones_dat53 );
TEST_VMRL_OP( 14972,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat22 );
TEST_VMRL_OP( 15003,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat35, walking_ones_dat53 );
TEST_VMRL_OP( 15016,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat1 );
TEST_VMRL_OP( 15017,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat2 );
TEST_VMRL_OP( 15023,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat8 );
TEST_VMRL_OP( 15029,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat14 );
TEST_VMRL_OP( 15034,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat19 );
TEST_VMRL_OP( 15035,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat20 );
TEST_VMRL_OP( 15046,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat31 );
TEST_VMRL_OP( 15068,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_ones_dat53 );
TEST_VMRL_OP( 15083,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat3 );
TEST_VMRL_OP( 15096,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat16 );
TEST_VMRL_OP( 15106,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat37, walking_ones_dat26 );
TEST_VMRL_OP( 15196,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat51 );
TEST_VMRL_OP( 15200,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_ones_dat55 );
TEST_VMRL_OP( 15270,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat39, walking_ones_dat60 );
TEST_VMRL_OP( 15271,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat39, walking_ones_dat61 );
TEST_VMRL_OP( 15300,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat25 );
TEST_VMRL_OP( 15313,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat38 );
TEST_VMRL_OP( 15328,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_ones_dat53 );
TEST_VMRL_OP( 15373,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat33 );
TEST_VMRL_OP( 15377,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat37 );
TEST_VMRL_OP( 15380,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat40 );
TEST_VMRL_OP( 15397,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat57 );
TEST_VMRL_OP( 15401,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_ones_dat61 );
TEST_VMRL_OP( 15428,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat23 );
TEST_VMRL_OP( 15443,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat38 );
TEST_VMRL_OP( 15467,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_ones_dat62 );
TEST_VMRL_OP( 15488,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat18 );
TEST_VMRL_OP( 15505,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_ones_dat35 );
TEST_VMRL_OP( 15544,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat9 );
TEST_VMRL_OP( 15564,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat29 );
TEST_VMRL_OP( 15593,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_ones_dat58 );
TEST_VMRL_OP( 15620,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat20 );
TEST_VMRL_OP( 15625,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat25 );
TEST_VMRL_OP( 15634,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_ones_dat34 );
TEST_VMRL_OP( 15673,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat8 );
TEST_VMRL_OP( 15681,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat16 );
TEST_VMRL_OP( 15697,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat32 );
TEST_VMRL_OP( 15699,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_ones_dat34 );
TEST_VMRL_OP( 15755,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat25 );
TEST_VMRL_OP( 15788,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat58 );
TEST_VMRL_OP( 15794,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_ones_dat64 );
TEST_VMRL_OP( 15803,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat8 );
TEST_VMRL_OP( 15805,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat10 );
TEST_VMRL_OP( 15815,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat20 );
TEST_VMRL_OP( 15816,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat21 );
TEST_VMRL_OP( 15857,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_ones_dat62 );
TEST_VMRL_OP( 15881,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat21 );
TEST_VMRL_OP( 15885,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat25 );
TEST_VMRL_OP( 15886,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat26 );
TEST_VMRL_OP( 15887,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat27 );
TEST_VMRL_OP( 15894,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat34 );
TEST_VMRL_OP( 15903,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat43 );
TEST_VMRL_OP( 15924,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_ones_dat64 );
TEST_VMRL_OP( 15933,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat8 );
TEST_VMRL_OP( 15948,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat23 );
TEST_VMRL_OP( 15963,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat38 );
TEST_VMRL_OP( 15968,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat43 );
TEST_VMRL_OP( 15970,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat45 );
TEST_VMRL_OP( 15981,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat56 );
TEST_VMRL_OP( 15989,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_ones_dat64 );
TEST_VMRL_OP( 15995,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat5 );
TEST_VMRL_OP( 16006,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat16 );
TEST_VMRL_OP( 16014,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat24 );
TEST_VMRL_OP( 16017,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat27 );
TEST_VMRL_OP( 16048,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_ones_dat58 );
TEST_VMRL_OP( 16070,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat15 );
TEST_VMRL_OP( 16087,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat32 );
TEST_VMRL_OP( 16119,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_ones_dat64 );
TEST_VMRL_OP( 16138,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat18 );
TEST_VMRL_OP( 16170,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_ones_dat50 );
TEST_VMRL_OP( 16203,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat18 );
TEST_VMRL_OP( 16247,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_ones_dat62 );
TEST_VMRL_OP( 16255,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat5 );
TEST_VMRL_OP( 16256,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat6 );
TEST_VMRL_OP( 16285,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat35 );
TEST_VMRL_OP( 16314,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_ones_dat64 );
TEST_VMRL_OP( 16362,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat47 );
TEST_VMRL_OP( 16379,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_ones_dat64 );
TEST_VMRL_OP( 16380,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat0 );
TEST_VMRL_OP( 16403,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat23 );
TEST_VMRL_OP( 16410,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat30 );
TEST_VMRL_OP( 16415,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat35 );
TEST_VMRL_OP( 16423,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat43 );
TEST_VMRL_OP( 16429,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_ones_dat49 );
TEST_VMRL_OP( 16465,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat20 );
TEST_VMRL_OP( 16471,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat26 );
TEST_VMRL_OP( 16482,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat37 );
TEST_VMRL_OP( 16496,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_ones_dat51 );
TEST_VMRL_OP( 16511,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat1 );
TEST_VMRL_OP( 16518,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat8 );
TEST_VMRL_OP( 16526,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat16 );
TEST_VMRL_OP( 16548,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat38 );
TEST_VMRL_OP( 16557,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat47 );
TEST_VMRL_OP( 16560,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat50 );
TEST_VMRL_OP( 16572,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_ones_dat62 );
TEST_VMRL_OP( 16581,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat6 );
TEST_VMRL_OP( 16598,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat23 );
TEST_VMRL_OP( 16601,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat26 );
TEST_VMRL_OP( 16644,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat4 );
TEST_VMRL_OP( 16649,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat9 );
TEST_VMRL_OP( 16665,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat25 );
TEST_VMRL_OP( 16687,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat47 );
TEST_VMRL_OP( 16700,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_ones_dat60 );
TEST_VMRL_OP( 16731,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat26 );
TEST_VMRL_OP( 16736,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat31 );
TEST_VMRL_OP( 16760,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_ones_dat55 );
TEST_VMRL_OP( 16799,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat29 );
TEST_VMRL_OP( 16815,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat63, walking_ones_dat45 );
TEST_VMRL_OP( 16841,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat6 );
TEST_VMRL_OP( 16847,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat12 );
TEST_VMRL_OP( 16854,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat19 );
TEST_VMRL_OP( 16860,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat25 );
TEST_VMRL_OP( 16886,  vmor.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_ones_dat51 );
TEST_VMRL_OP( 16900,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmor.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 33975,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 33976,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 33977,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 33978,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33979,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33980,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33981,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33982,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33983,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33984,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33985,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33986,  vmor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
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
    

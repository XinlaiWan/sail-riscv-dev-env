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
TEST_VMRL_OP( 8,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 124,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_ones_dat59 );
TEST_VMRL_OP( 136,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 139,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 165,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_ones_dat35 );
TEST_VMRL_OP( 171,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_ones_dat41 );
TEST_VMRL_OP( 202,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 207,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 220,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 259,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_ones_dat64 );
TEST_VMRL_OP( 271,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 275,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 298,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_ones_dat38 );
TEST_VMRL_OP( 322,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_ones_dat62 );
TEST_VMRL_OP( 432,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_ones_dat42 );
TEST_VMRL_OP( 434,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_ones_dat44 );
TEST_VMRL_OP( 436,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_ones_dat46 );
TEST_VMRL_OP( 447,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_ones_dat57 );
TEST_VMRL_OP( 451,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_ones_dat61 );
TEST_VMRL_OP( 452,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_ones_dat62 );
TEST_VMRL_OP( 466,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 474,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 492,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_ones_dat37 );
TEST_VMRL_OP( 499,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_ones_dat44 );
TEST_VMRL_OP( 505,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_ones_dat50 );
TEST_VMRL_OP( 510,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_ones_dat55 );
TEST_VMRL_OP( 532,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 549,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 554,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_ones_dat34 );
TEST_VMRL_OP( 559,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_ones_dat39 );
TEST_VMRL_OP( 561,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_ones_dat41 );
TEST_VMRL_OP( 572,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_ones_dat52 );
TEST_VMRL_OP( 607,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 620,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_ones_dat35 );
TEST_VMRL_OP( 638,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_ones_dat53 );
TEST_VMRL_OP( 678,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_ones_dat28 );
TEST_VMRL_OP( 681,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 702,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_ones_dat52 );
TEST_VMRL_OP( 713,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_ones_dat63 );
TEST_VMRL_OP( 739,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 752,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_ones_dat37 );
TEST_VMRL_OP( 784,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 833,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_ones_dat53 );
TEST_VMRL_OP( 843,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_ones_dat63 );
TEST_VMRL_OP( 856,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 858,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 884,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_ones_dat39 );
TEST_VMRL_OP( 888,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_ones_dat43 );
TEST_VMRL_OP( 900,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_ones_dat55 );
TEST_VMRL_OP( 929,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_ones_dat19 );
TEST_VMRL_OP( 930,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_ones_dat20 );
TEST_VMRL_OP( 932,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 937,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 952,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_ones_dat42 );
TEST_VMRL_OP( 966,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_ones_dat56 );
TEST_VMRL_OP( 995,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 1000,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_ones_dat25 );
TEST_VMRL_OP( 1007,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_ones_dat32 );
TEST_VMRL_OP( 1009,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_ones_dat34 );
TEST_VMRL_OP( 1029,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_ones_dat54 );
TEST_VMRL_OP( 1034,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_ones_dat59 );
TEST_VMRL_OP( 1037,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_ones_dat62 );
TEST_VMRL_OP( 1063,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_ones_dat23 );
TEST_VMRL_OP( 1067,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_ones_dat27 );
TEST_VMRL_OP( 1073,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_ones_dat33 );
TEST_VMRL_OP( 1118,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_ones_dat13 );
TEST_VMRL_OP( 1157,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_ones_dat52 );
TEST_VMRL_OP( 1185,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 1187,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_ones_dat17 );
TEST_VMRL_OP( 1194,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 1208,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_ones_dat38 );
TEST_VMRL_OP( 1221,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_ones_dat51 );
TEST_VMRL_OP( 1236,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_ones_dat1 );
TEST_VMRL_OP( 1237,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 1247,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 1262,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 1284,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_ones_dat49 );
TEST_VMRL_OP( 1300,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 1305,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_ones_dat5 );
TEST_VMRL_OP( 1329,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 1339,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_ones_dat39 );
TEST_VMRL_OP( 1395,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 1396,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 1490,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_ones_dat60 );
TEST_VMRL_OP( 1494,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_ones_dat64 );
TEST_VMRL_OP( 1499,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 1506,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_ones_dat11 );
TEST_VMRL_OP( 1580,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 1609,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_ones_dat49 );
TEST_VMRL_OP( 1621,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_ones_dat61 );
TEST_VMRL_OP( 1626,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 1660,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_ones_dat35 );
TEST_VMRL_OP( 1677,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_ones_dat52 );
TEST_VMRL_OP( 1688,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_ones_dat63 );
TEST_VMRL_OP( 1727,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_ones_dat37 );
TEST_VMRL_OP( 1729,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_ones_dat39 );
TEST_VMRL_OP( 1740,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_ones_dat50 );
TEST_VMRL_OP( 1758,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 1768,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 1822,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 1831,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 1854,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_ones_dat34 );
TEST_VMRL_OP( 1860,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_ones_dat40 );
TEST_VMRL_OP( 1873,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_ones_dat53 );
TEST_VMRL_OP( 1876,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_ones_dat56 );
TEST_VMRL_OP( 1924,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_ones_dat39 );
TEST_VMRL_OP( 1951,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_ones_dat1 );
TEST_VMRL_OP( 1958,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 2010,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_ones_dat60 );
TEST_VMRL_OP( 2027,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_ones_dat12 );
TEST_VMRL_OP( 2036,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_ones_dat21 );
TEST_VMRL_OP( 2043,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_ones_dat28 );
TEST_VMRL_OP( 2045,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_ones_dat30 );
TEST_VMRL_OP( 2078,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_ones_dat63 );
TEST_VMRL_OP( 2102,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 2112,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 2120,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_ones_dat40 );
TEST_VMRL_OP( 2122,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_ones_dat42 );
TEST_VMRL_OP( 2134,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_ones_dat54 );
TEST_VMRL_OP( 2186,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_ones_dat41 );
TEST_VMRL_OP( 2197,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_ones_dat52 );
TEST_VMRL_OP( 2199,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_ones_dat54 );
TEST_VMRL_OP( 2216,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_ones_dat6 );
TEST_VMRL_OP( 2231,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_ones_dat21 );
TEST_VMRL_OP( 2239,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_ones_dat29 );
TEST_VMRL_OP( 2246,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_ones_dat36 );
TEST_VMRL_OP( 2265,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_ones_dat55 );
TEST_VMRL_OP( 2274,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_ones_dat64 );
TEST_VMRL_OP( 2285,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_ones_dat10 );
TEST_VMRL_OP( 2316,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_ones_dat41 );
TEST_VMRL_OP( 2321,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_ones_dat46 );
TEST_VMRL_OP( 2339,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_ones_dat64 );
TEST_VMRL_OP( 2350,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_ones_dat10 );
TEST_VMRL_OP( 2361,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_ones_dat21 );
TEST_VMRL_OP( 2379,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_ones_dat39 );
TEST_VMRL_OP( 2382,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_ones_dat42 );
TEST_VMRL_OP( 2422,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_ones_dat17 );
TEST_VMRL_OP( 2448,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_ones_dat43 );
TEST_VMRL_OP( 2457,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_ones_dat52 );
TEST_VMRL_OP( 2462,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_ones_dat57 );
TEST_VMRL_OP( 2479,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_ones_dat9 );
TEST_VMRL_OP( 2485,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_ones_dat15 );
TEST_VMRL_OP( 2492,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_ones_dat22 );
TEST_VMRL_OP( 2502,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_ones_dat32 );
TEST_VMRL_OP( 2604,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_ones_dat4 );
TEST_VMRL_OP( 2635,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_ones_dat35 );
TEST_VMRL_OP( 2648,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_ones_dat48 );
TEST_VMRL_OP( 2686,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat21 );
TEST_VMRL_OP( 2705,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat40 );
TEST_VMRL_OP( 2708,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat43 );
TEST_VMRL_OP( 2713,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat48 );
TEST_VMRL_OP( 2716,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat51 );
TEST_VMRL_OP( 2721,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat56 );
TEST_VMRL_OP( 2727,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat62 );
TEST_VMRL_OP( 2729,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_ones_dat64 );
TEST_VMRL_OP( 2793,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_ones_dat63 );
TEST_VMRL_OP( 2808,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_ones_dat13 );
TEST_VMRL_OP( 2880,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_ones_dat20 );
TEST_VMRL_OP( 2891,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_ones_dat31 );
TEST_VMRL_OP( 2954,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_ones_dat29 );
TEST_VMRL_OP( 2960,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_ones_dat35 );
TEST_VMRL_OP( 3012,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_ones_dat22 );
TEST_VMRL_OP( 3021,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_ones_dat31 );
TEST_VMRL_OP( 3027,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_ones_dat37 );
TEST_VMRL_OP( 3050,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_ones_dat60 );
TEST_VMRL_OP( 3053,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_ones_dat63 );
TEST_VMRL_OP( 3065,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_ones_dat10 );
TEST_VMRL_OP( 3081,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_ones_dat26 );
TEST_VMRL_OP( 3085,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_ones_dat30 );
TEST_VMRL_OP( 3091,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_ones_dat36 );
TEST_VMRL_OP( 3105,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_ones_dat50 );
TEST_VMRL_OP( 3130,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_ones_dat10 );
TEST_VMRL_OP( 3139,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_ones_dat19 );
TEST_VMRL_OP( 3145,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_ones_dat25 );
TEST_VMRL_OP( 3186,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_ones_dat1 );
TEST_VMRL_OP( 3202,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_ones_dat17 );
TEST_VMRL_OP( 3207,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_ones_dat22 );
TEST_VMRL_OP( 3211,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_ones_dat26 );
TEST_VMRL_OP( 3213,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_ones_dat28 );
TEST_VMRL_OP( 3240,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_ones_dat55 );
TEST_VMRL_OP( 3258,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_ones_dat8 );
TEST_VMRL_OP( 3268,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_ones_dat18 );
TEST_VMRL_OP( 3271,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_ones_dat21 );
TEST_VMRL_OP( 3283,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_ones_dat33 );
TEST_VMRL_OP( 3336,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_ones_dat21 );
TEST_VMRL_OP( 3339,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_ones_dat24 );
TEST_VMRL_OP( 3364,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_ones_dat49 );
TEST_VMRL_OP( 3373,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_ones_dat58 );
TEST_VMRL_OP( 3376,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_ones_dat61 );
TEST_VMRL_OP( 3380,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_ones_dat0 );
TEST_VMRL_OP( 3438,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_ones_dat58 );
TEST_VMRL_OP( 3451,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_ones_dat6 );
TEST_VMRL_OP( 3459,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_ones_dat14 );
TEST_VMRL_OP( 3476,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_ones_dat31 );
TEST_VMRL_OP( 3493,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_ones_dat48 );
TEST_VMRL_OP( 3496,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_ones_dat51 );
TEST_VMRL_OP( 3521,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_ones_dat11 );
TEST_VMRL_OP( 3526,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_ones_dat16 );
TEST_VMRL_OP( 3530,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_ones_dat20 );
TEST_VMRL_OP( 3531,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_ones_dat21 );
TEST_VMRL_OP( 3543,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_ones_dat33 );
TEST_VMRL_OP( 3557,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_ones_dat47 );
TEST_VMRL_OP( 3588,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_ones_dat13 );
TEST_VMRL_OP( 3594,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_ones_dat19 );
TEST_VMRL_OP( 3603,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_ones_dat28 );
TEST_VMRL_OP( 3620,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_ones_dat45 );
TEST_VMRL_OP( 3647,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_ones_dat7 );
TEST_VMRL_OP( 3653,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_ones_dat13 );
TEST_VMRL_OP( 3658,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_ones_dat18 );
TEST_VMRL_OP( 3662,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_ones_dat22 );
TEST_VMRL_OP( 3671,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_ones_dat31 );
TEST_VMRL_OP( 3675,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_ones_dat35 );
TEST_VMRL_OP( 3676,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_ones_dat36 );
TEST_VMRL_OP( 3737,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_ones_dat32 );
TEST_VMRL_OP( 3742,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_ones_dat37 );
TEST_VMRL_OP( 3758,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_ones_dat53 );
TEST_VMRL_OP( 3764,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_ones_dat59 );
TEST_VMRL_OP( 3921,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_ones_dat21 );
TEST_VMRL_OP( 3938,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_ones_dat38 );
TEST_VMRL_OP( 3943,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_ones_dat43 );
TEST_VMRL_OP( 3949,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_ones_dat49 );
TEST_VMRL_OP( 3998,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_ones_dat33 );
TEST_VMRL_OP( 4002,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_ones_dat37 );
TEST_VMRL_OP( 4024,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_ones_dat59 );
TEST_VMRL_OP( 4026,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 4035,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_ones_dat5 );
TEST_VMRL_OP( 4045,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_ones_dat15 );
TEST_VMRL_OP( 4061,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_ones_dat31 );
TEST_VMRL_OP( 4080,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_ones_dat50 );
TEST_VMRL_OP( 4085,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_ones_dat55 );
TEST_VMRL_OP( 4109,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_ones_dat14 );
TEST_VMRL_OP( 4145,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_ones_dat50 );
TEST_VMRL_OP( 4211,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_ones_dat51 );
TEST_VMRL_OP( 4227,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 4240,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 4262,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat37 );
TEST_VMRL_OP( 4264,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat39 );
TEST_VMRL_OP( 4293,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 4326,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat36 );
TEST_VMRL_OP( 4347,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat57 );
TEST_VMRL_OP( 4349,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat59 );
TEST_VMRL_OP( 4354,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat64 );
TEST_VMRL_OP( 4370,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 4373,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_zeros_dat18 );
TEST_VMRL_OP( 4417,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat2, walking_zeros_dat62 );
TEST_VMRL_OP( 4499,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 4511,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 4512,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat27 );
TEST_VMRL_OP( 4535,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat50 );
TEST_VMRL_OP( 4536,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat51 );
TEST_VMRL_OP( 4542,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat4, walking_zeros_dat57 );
TEST_VMRL_OP( 4554,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 4577,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 4586,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat36 );
TEST_VMRL_OP( 4607,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat57 );
TEST_VMRL_OP( 4614,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat5, walking_zeros_dat64 );
TEST_VMRL_OP( 4621,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4648,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat33 );
TEST_VMRL_OP( 4670,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat6, walking_zeros_dat55 );
TEST_VMRL_OP( 4748,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 4752,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 4761,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 4767,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 4782,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat37 );
TEST_VMRL_OP( 4786,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat41 );
TEST_VMRL_OP( 4791,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat46 );
TEST_VMRL_OP( 4793,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat48 );
TEST_VMRL_OP( 4797,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat8, walking_zeros_dat52 );
TEST_VMRL_OP( 4813,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 4815,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 4817,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 4823,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 4826,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 4837,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 4878,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 4913,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat38 );
TEST_VMRL_OP( 4931,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_zeros_dat56 );
TEST_VMRL_OP( 4947,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 4955,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 4970,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 4990,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat50 );
TEST_VMRL_OP( 4993,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat11, walking_zeros_dat53 );
TEST_VMRL_OP( 5011,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 5048,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat43 );
TEST_VMRL_OP( 5049,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat44 );
TEST_VMRL_OP( 5062,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat57 );
TEST_VMRL_OP( 5081,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 5087,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 5095,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat25 );
TEST_VMRL_OP( 5132,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat62 );
TEST_VMRL_OP( 5180,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat45 );
TEST_VMRL_OP( 5189,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat14, walking_zeros_dat54 );
TEST_VMRL_OP( 5222,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 5234,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat15, walking_zeros_dat34 );
TEST_VMRL_OP( 5263,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat15, walking_zeros_dat63 );
TEST_VMRL_OP( 5313,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_zeros_dat48 );
TEST_VMRL_OP( 5321,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat16, walking_zeros_dat56 );
TEST_VMRL_OP( 5358,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat28 );
TEST_VMRL_OP( 5373,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat17, walking_zeros_dat43 );
TEST_VMRL_OP( 5424,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 5456,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat18, walking_zeros_dat61 );
TEST_VMRL_OP( 5491,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 5500,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat40 );
TEST_VMRL_OP( 5503,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat43 );
TEST_VMRL_OP( 5512,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat52 );
TEST_VMRL_OP( 5515,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat19, walking_zeros_dat55 );
TEST_VMRL_OP( 5533,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 5547,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_zeros_dat22 );
TEST_VMRL_OP( 5563,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_zeros_dat38 );
TEST_VMRL_OP( 5571,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat20, walking_zeros_dat46 );
TEST_VMRL_OP( 5592,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat2 );
TEST_VMRL_OP( 5598,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 5602,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat12 );
TEST_VMRL_OP( 5638,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat21, walking_zeros_dat48 );
TEST_VMRL_OP( 5659,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 5677,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 5700,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat22, walking_zeros_dat45 );
TEST_VMRL_OP( 5731,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 5740,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 5751,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat31 );
TEST_VMRL_OP( 5753,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat33 );
TEST_VMRL_OP( 5774,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat54 );
TEST_VMRL_OP( 5781,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat23, walking_zeros_dat61 );
TEST_VMRL_OP( 5822,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat37 );
TEST_VMRL_OP( 5824,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat39 );
TEST_VMRL_OP( 5828,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat43 );
TEST_VMRL_OP( 5847,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat24, walking_zeros_dat62 );
TEST_VMRL_OP( 5864,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 5875,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 5886,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat36 );
TEST_VMRL_OP( 5896,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat46 );
TEST_VMRL_OP( 5904,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat25, walking_zeros_dat54 );
TEST_VMRL_OP( 5933,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 5937,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 5966,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat51 );
TEST_VMRL_OP( 5975,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat26, walking_zeros_dat60 );
TEST_VMRL_OP( 5994,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 6002,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 6086,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat28, walking_zeros_dat41 );
TEST_VMRL_OP( 6112,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 6114,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 6131,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 6134,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 6137,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 6149,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat29, walking_zeros_dat39 );
TEST_VMRL_OP( 6179,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 6226,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat51 );
TEST_VMRL_OP( 6235,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat60 );
TEST_VMRL_OP( 6245,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat5 );
TEST_VMRL_OP( 6269,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 6275,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat35 );
TEST_VMRL_OP( 6285,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat31, walking_zeros_dat45 );
TEST_VMRL_OP( 6310,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 6358,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat53 );
TEST_VMRL_OP( 6363,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat58 );
TEST_VMRL_OP( 6364,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat59 );
TEST_VMRL_OP( 6365,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat32, walking_zeros_dat60 );
TEST_VMRL_OP( 6372,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat2 );
TEST_VMRL_OP( 6392,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat22 );
TEST_VMRL_OP( 6403,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 6415,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat33, walking_zeros_dat45 );
TEST_VMRL_OP( 6460,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_zeros_dat25 );
TEST_VMRL_OP( 6487,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_zeros_dat52 );
TEST_VMRL_OP( 6494,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat34, walking_zeros_dat59 );
TEST_VMRL_OP( 6515,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat15 );
TEST_VMRL_OP( 6562,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat35, walking_zeros_dat62 );
TEST_VMRL_OP( 6580,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat15 );
TEST_VMRL_OP( 6607,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat42 );
TEST_VMRL_OP( 6618,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat53 );
TEST_VMRL_OP( 6624,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat59 );
TEST_VMRL_OP( 6625,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat36, walking_zeros_dat60 );
TEST_VMRL_OP( 6637,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat37, walking_zeros_dat7 );
TEST_VMRL_OP( 6661,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat37, walking_zeros_dat31 );
TEST_VMRL_OP( 6665,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat37, walking_zeros_dat35 );
TEST_VMRL_OP( 6729,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_zeros_dat34 );
TEST_VMRL_OP( 6747,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat38, walking_zeros_dat52 );
TEST_VMRL_OP( 6760,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat39, walking_zeros_dat0 );
TEST_VMRL_OP( 6766,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat39, walking_zeros_dat6 );
TEST_VMRL_OP( 6808,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat39, walking_zeros_dat48 );
TEST_VMRL_OP( 6816,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat39, walking_zeros_dat56 );
TEST_VMRL_OP( 6837,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat12 );
TEST_VMRL_OP( 6847,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat22 );
TEST_VMRL_OP( 6877,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat52 );
TEST_VMRL_OP( 6880,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat40, walking_zeros_dat55 );
TEST_VMRL_OP( 6899,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat9 );
TEST_VMRL_OP( 6924,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat34 );
TEST_VMRL_OP( 6954,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat41, walking_zeros_dat64 );
TEST_VMRL_OP( 6995,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_zeros_dat40 );
TEST_VMRL_OP( 7007,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat42, walking_zeros_dat52 );
TEST_VMRL_OP( 7025,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_zeros_dat5 );
TEST_VMRL_OP( 7038,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_zeros_dat18 );
TEST_VMRL_OP( 7046,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_zeros_dat26 );
TEST_VMRL_OP( 7060,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat43, walking_zeros_dat40 );
TEST_VMRL_OP( 7109,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat24 );
TEST_VMRL_OP( 7118,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat33 );
TEST_VMRL_OP( 7137,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat44, walking_zeros_dat52 );
TEST_VMRL_OP( 7154,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat4 );
TEST_VMRL_OP( 7159,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat9 );
TEST_VMRL_OP( 7170,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat20 );
TEST_VMRL_OP( 7173,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat23 );
TEST_VMRL_OP( 7190,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat40 );
TEST_VMRL_OP( 7198,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat48 );
TEST_VMRL_OP( 7202,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat45, walking_zeros_dat52 );
TEST_VMRL_OP( 7235,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat20 );
TEST_VMRL_OP( 7242,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat27 );
TEST_VMRL_OP( 7267,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat52 );
TEST_VMRL_OP( 7270,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat55 );
TEST_VMRL_OP( 7271,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat56 );
TEST_VMRL_OP( 7273,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat46, walking_zeros_dat58 );
TEST_VMRL_OP( 7288,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_zeros_dat8 );
TEST_VMRL_OP( 7317,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_zeros_dat37 );
TEST_VMRL_OP( 7332,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat47, walking_zeros_dat52 );
TEST_VMRL_OP( 7348,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat48, walking_zeros_dat3 );
TEST_VMRL_OP( 7422,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat12 );
TEST_VMRL_OP( 7428,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat18 );
TEST_VMRL_OP( 7448,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat38 );
TEST_VMRL_OP( 7463,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat53 );
TEST_VMRL_OP( 7470,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat60 );
TEST_VMRL_OP( 7472,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat49, walking_zeros_dat62 );
TEST_VMRL_OP( 7477,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat2 );
TEST_VMRL_OP( 7479,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat4 );
TEST_VMRL_OP( 7488,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat13 );
TEST_VMRL_OP( 7529,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat54 );
TEST_VMRL_OP( 7534,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat50, walking_zeros_dat59 );
TEST_VMRL_OP( 7548,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat8 );
TEST_VMRL_OP( 7553,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat13 );
TEST_VMRL_OP( 7555,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat15 );
TEST_VMRL_OP( 7560,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat20 );
TEST_VMRL_OP( 7564,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat24 );
TEST_VMRL_OP( 7571,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat31 );
TEST_VMRL_OP( 7573,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat33 );
TEST_VMRL_OP( 7592,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat51, walking_zeros_dat52 );
TEST_VMRL_OP( 7620,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat15 );
TEST_VMRL_OP( 7623,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat18 );
TEST_VMRL_OP( 7627,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat52, walking_zeros_dat22 );
TEST_VMRL_OP( 7693,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat23 );
TEST_VMRL_OP( 7710,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat40 );
TEST_VMRL_OP( 7715,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat45 );
TEST_VMRL_OP( 7716,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat46 );
TEST_VMRL_OP( 7729,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat53, walking_zeros_dat59 );
TEST_VMRL_OP( 7758,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat23 );
TEST_VMRL_OP( 7762,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat27 );
TEST_VMRL_OP( 7767,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat32 );
TEST_VMRL_OP( 7782,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat47 );
TEST_VMRL_OP( 7783,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat54, walking_zeros_dat48 );
TEST_VMRL_OP( 7802,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat2 );
TEST_VMRL_OP( 7818,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat18 );
TEST_VMRL_OP( 7831,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat31 );
TEST_VMRL_OP( 7835,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat35 );
TEST_VMRL_OP( 7842,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat42 );
TEST_VMRL_OP( 7844,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat44 );
TEST_VMRL_OP( 7849,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat49 );
TEST_VMRL_OP( 7862,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat62 );
TEST_VMRL_OP( 7875,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat10 );
TEST_VMRL_OP( 7893,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat28 );
TEST_VMRL_OP( 7915,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat50 );
TEST_VMRL_OP( 7935,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat5 );
TEST_VMRL_OP( 7966,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat36 );
TEST_VMRL_OP( 7972,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat42 );
TEST_VMRL_OP( 7976,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat46 );
TEST_VMRL_OP( 7989,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat57, walking_zeros_dat59 );
TEST_VMRL_OP( 8011,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_zeros_dat16 );
TEST_VMRL_OP( 8024,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_zeros_dat29 );
TEST_VMRL_OP( 8035,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_zeros_dat40 );
TEST_VMRL_OP( 8059,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat58, walking_zeros_dat64 );
TEST_VMRL_OP( 8077,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat17 );
TEST_VMRL_OP( 8109,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat49 );
TEST_VMRL_OP( 8116,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat56 );
TEST_VMRL_OP( 8120,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat60 );
TEST_VMRL_OP( 8124,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat59, walking_zeros_dat64 );
TEST_VMRL_OP( 8159,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat34 );
TEST_VMRL_OP( 8160,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat35 );
TEST_VMRL_OP( 8163,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat38 );
TEST_VMRL_OP( 8166,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat41 );
TEST_VMRL_OP( 8176,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat51 );
TEST_VMRL_OP( 8177,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat52 );
TEST_VMRL_OP( 8181,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat56 );
TEST_VMRL_OP( 8186,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_zeros_dat61 );
TEST_VMRL_OP( 8202,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat12 );
TEST_VMRL_OP( 8204,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat14 );
TEST_VMRL_OP( 8207,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat17 );
TEST_VMRL_OP( 8213,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat23 );
TEST_VMRL_OP( 8219,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat29 );
TEST_VMRL_OP( 8237,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat47 );
TEST_VMRL_OP( 8242,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat61, walking_zeros_dat52 );
TEST_VMRL_OP( 8255,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_zeros_dat0 );
TEST_VMRL_OP( 8261,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat6 );
TEST_VMRL_OP( 8294,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat39 );
TEST_VMRL_OP( 8312,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat57 );
TEST_VMRL_OP( 8318,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat63 );
TEST_VMRL_OP( 8319,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat62, walking_zeros_dat64 );
TEST_VMRL_OP( 8320,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_zeros_dat0 );
TEST_VMRL_OP( 8328,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat63, walking_zeros_dat8 );
TEST_VMRL_OP( 8365,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat63, walking_zeros_dat45 );
TEST_VMRL_OP( 8403,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat18 );
TEST_VMRL_OP( 8412,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat27 );
TEST_VMRL_OP( 8422,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat37 );
TEST_VMRL_OP( 8441,  vmornot.mm,  32,  0x000000000000003f, walking_zeros_dat64, walking_zeros_dat56 );
TEST_VMRL_OP( 8469,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 8494,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat44 );
TEST_VMRL_OP( 8527,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 8538,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 8554,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat39 );
TEST_VMRL_OP( 8569,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat54 );
TEST_VMRL_OP( 8587,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 8606,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 8635,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat55 );
TEST_VMRL_OP( 8663,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 8665,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 8732,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 8738,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat28 );
TEST_VMRL_OP( 8774,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat64 );
TEST_VMRL_OP( 8797,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 8818,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat43 );
TEST_VMRL_OP( 8847,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 8866,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 8869,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 8877,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat37 );
TEST_VMRL_OP( 8905,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 8908,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 8925,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 8939,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat34 );
TEST_VMRL_OP( 8967,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat62 );
TEST_VMRL_OP( 8981,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 8984,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 8998,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 9008,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat38 );
TEST_VMRL_OP( 9032,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat62 );
TEST_VMRL_OP( 9042,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 9121,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 9128,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 9145,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat45 );
TEST_VMRL_OP( 9155,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat55 );
TEST_VMRL_OP( 9219,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat54 );
TEST_VMRL_OP( 9224,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat59 );
TEST_VMRL_OP( 9239,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 9242,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 9245,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 9257,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 9263,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat33 );
TEST_VMRL_OP( 9266,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat36 );
TEST_VMRL_OP( 9281,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat51 );
TEST_VMRL_OP( 9307,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 9308,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 9318,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat23 );
TEST_VMRL_OP( 9330,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat35 );
TEST_VMRL_OP( 9350,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat55 );
TEST_VMRL_OP( 9358,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat63 );
TEST_VMRL_OP( 9376,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 9379,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 9380,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat20 );
TEST_VMRL_OP( 9394,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat34 );
TEST_VMRL_OP( 9404,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat44 );
TEST_VMRL_OP( 9405,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat45 );
TEST_VMRL_OP( 9414,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat54 );
TEST_VMRL_OP( 9426,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 9431,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 9451,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat26 );
TEST_VMRL_OP( 9459,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat34 );
TEST_VMRL_OP( 9493,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 9516,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat26 );
TEST_VMRL_OP( 9553,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat63 );
TEST_VMRL_OP( 9574,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat19 );
TEST_VMRL_OP( 9589,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat34 );
TEST_VMRL_OP( 9593,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat38 );
TEST_VMRL_OP( 9605,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat50 );
TEST_VMRL_OP( 9631,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat11 );
TEST_VMRL_OP( 9654,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat34 );
TEST_VMRL_OP( 9687,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 9704,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 9715,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 9751,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 9783,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat33 );
TEST_VMRL_OP( 9801,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat51 );
TEST_VMRL_OP( 9829,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 9865,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat50 );
TEST_VMRL_OP( 9890,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 9903,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat23 );
TEST_VMRL_OP( 9930,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat50 );
TEST_VMRL_OP( 9931,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat51 );
TEST_VMRL_OP( 9950,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat5 );
TEST_VMRL_OP( 9961,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 9979,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat34 );
TEST_VMRL_OP( 9983,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat38 );
TEST_VMRL_OP( 9984,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat39 );
TEST_VMRL_OP( 9999,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat54 );
TEST_VMRL_OP( 10009,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat64 );
TEST_VMRL_OP( 10024,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat14 );
TEST_VMRL_OP( 10062,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat52 );
TEST_VMRL_OP( 10067,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat57 );
TEST_VMRL_OP( 10081,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat6 );
TEST_VMRL_OP( 10087,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat12 );
TEST_VMRL_OP( 10094,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 10098,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 10183,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat43 );
TEST_VMRL_OP( 10196,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat56 );
TEST_VMRL_OP( 10233,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 10241,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat36 );
TEST_VMRL_OP( 10243,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat38 );
TEST_VMRL_OP( 10282,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat12 );
TEST_VMRL_OP( 10300,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat30 );
TEST_VMRL_OP( 10301,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 10319,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat49 );
TEST_VMRL_OP( 10320,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat50 );
TEST_VMRL_OP( 10343,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat8 );
TEST_VMRL_OP( 10351,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 10356,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 10391,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat56 );
TEST_VMRL_OP( 10393,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat58 );
TEST_VMRL_OP( 10398,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat63 );
TEST_VMRL_OP( 10406,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat6 );
TEST_VMRL_OP( 10451,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat51 );
TEST_VMRL_OP( 10461,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat61 );
TEST_VMRL_OP( 10525,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat60 );
TEST_VMRL_OP( 10539,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat9 );
TEST_VMRL_OP( 10551,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 10573,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat43 );
TEST_VMRL_OP( 10593,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat63 );
TEST_VMRL_OP( 10595,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat0 );
TEST_VMRL_OP( 10596,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat1 );
TEST_VMRL_OP( 10606,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat11 );
TEST_VMRL_OP( 10649,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat54 );
TEST_VMRL_OP( 10663,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat3 );
TEST_VMRL_OP( 10730,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat5 );
TEST_VMRL_OP( 10748,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat23 );
TEST_VMRL_OP( 10752,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat27 );
TEST_VMRL_OP( 10770,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat45 );
TEST_VMRL_OP( 10789,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat64 );
TEST_VMRL_OP( 10793,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat3 );
TEST_VMRL_OP( 10807,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat17 );
TEST_VMRL_OP( 10809,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat19 );
TEST_VMRL_OP( 10834,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat44 );
TEST_VMRL_OP( 10859,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat4 );
TEST_VMRL_OP( 10862,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat7 );
TEST_VMRL_OP( 10875,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat20 );
TEST_VMRL_OP( 10876,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat21 );
TEST_VMRL_OP( 10883,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat28 );
TEST_VMRL_OP( 10893,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat38 );
TEST_VMRL_OP( 10897,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat42 );
TEST_VMRL_OP( 10901,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat46 );
TEST_VMRL_OP( 10911,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat56 );
TEST_VMRL_OP( 10914,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat59 );
TEST_VMRL_OP( 10939,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat19 );
TEST_VMRL_OP( 10964,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat44 );
TEST_VMRL_OP( 10971,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat51 );
TEST_VMRL_OP( 10980,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat60 );
TEST_VMRL_OP( 10989,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat4 );
TEST_VMRL_OP( 11005,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat20 );
TEST_VMRL_OP( 11032,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat47 );
TEST_VMRL_OP( 11056,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat6 );
TEST_VMRL_OP( 11059,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat9 );
TEST_VMRL_OP( 11068,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat18 );
TEST_VMRL_OP( 11071,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat21 );
TEST_VMRL_OP( 11078,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat28 );
TEST_VMRL_OP( 11090,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 11137,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat22 );
TEST_VMRL_OP( 11180,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat0 );
TEST_VMRL_OP( 11181,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat1 );
TEST_VMRL_OP( 11214,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat34 );
TEST_VMRL_OP( 11221,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat41 );
TEST_VMRL_OP( 11223,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat43 );
TEST_VMRL_OP( 11255,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat10 );
TEST_VMRL_OP( 11257,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat12 );
TEST_VMRL_OP( 11281,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat36 );
TEST_VMRL_OP( 11291,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat46 );
TEST_VMRL_OP( 11313,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat3 );
TEST_VMRL_OP( 11314,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat4 );
TEST_VMRL_OP( 11328,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat18 );
TEST_VMRL_OP( 11363,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat53 );
TEST_VMRL_OP( 11366,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat56 );
TEST_VMRL_OP( 11373,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat63 );
TEST_VMRL_OP( 11374,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat64 );
TEST_VMRL_OP( 11392,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat17 );
TEST_VMRL_OP( 11414,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat39 );
TEST_VMRL_OP( 11416,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat41 );
TEST_VMRL_OP( 11428,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat53 );
TEST_VMRL_OP( 11463,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat23 );
TEST_VMRL_OP( 11473,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat33 );
TEST_VMRL_OP( 11485,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat45 );
TEST_VMRL_OP( 11508,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat3 );
TEST_VMRL_OP( 11511,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat6 );
TEST_VMRL_OP( 11527,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat22 );
TEST_VMRL_OP( 11575,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat5 );
TEST_VMRL_OP( 11592,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat22 );
TEST_VMRL_OP( 11599,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat29 );
TEST_VMRL_OP( 11607,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat37 );
TEST_VMRL_OP( 11609,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat39 );
TEST_VMRL_OP( 11612,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat42 );
TEST_VMRL_OP( 11622,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat52 );
TEST_VMRL_OP( 11642,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat7 );
TEST_VMRL_OP( 11704,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat4 );
TEST_VMRL_OP( 11705,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat5 );
TEST_VMRL_OP( 11723,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat23 );
TEST_VMRL_OP( 11724,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat24 );
TEST_VMRL_OP( 11816,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 11828,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat63 );
TEST_VMRL_OP( 11844,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat14 );
TEST_VMRL_OP( 11848,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat18 );
TEST_VMRL_OP( 11849,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat19 );
TEST_VMRL_OP( 11855,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat25 );
TEST_VMRL_OP( 11861,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat31 );
TEST_VMRL_OP( 11868,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat38 );
TEST_VMRL_OP( 11892,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat62 );
TEST_VMRL_OP( 11917,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat22 );
TEST_VMRL_OP( 11943,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat48 );
TEST_VMRL_OP( 11949,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat54 );
TEST_VMRL_OP( 12011,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat51 );
TEST_VMRL_OP( 12017,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat57 );
TEST_VMRL_OP( 12018,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat58 );
TEST_VMRL_OP( 12030,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat5 );
TEST_VMRL_OP( 12033,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat8 );
TEST_VMRL_OP( 12042,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat17 );
TEST_VMRL_OP( 12047,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat22 );
TEST_VMRL_OP( 12096,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat6 );
TEST_VMRL_OP( 12122,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat32 );
TEST_VMRL_OP( 12124,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat34 );
TEST_VMRL_OP( 12170,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat15 );
TEST_VMRL_OP( 12181,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat26 );
TEST_VMRL_OP( 12188,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat33 );
TEST_VMRL_OP( 12211,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat56 );
TEST_VMRL_OP( 12232,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat12 );
TEST_VMRL_OP( 12265,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat45 );
TEST_VMRL_OP( 12286,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat1 );
TEST_VMRL_OP( 12300,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat15 );
TEST_VMRL_OP( 12340,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat55 );
TEST_VMRL_OP( 12370,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat20 );
TEST_VMRL_OP( 12379,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat29 );
TEST_VMRL_OP( 12396,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat46 );
TEST_VMRL_OP( 12412,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat62 );
TEST_VMRL_OP( 12414,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat64 );
TEST_VMRL_OP( 12437,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat22 );
TEST_VMRL_OP( 12447,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat32 );
TEST_VMRL_OP( 12464,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat49 );
TEST_VMRL_OP( 12519,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat39 );
TEST_VMRL_OP( 12530,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat50 );
TEST_VMRL_OP( 12531,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat51 );
TEST_VMRL_OP( 12565,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat20 );
TEST_VMRL_OP( 12580,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat35 );
TEST_VMRL_OP( 12588,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat43 );
TEST_VMRL_OP( 12606,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat61 );
TEST_VMRL_OP( 12607,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat62 );
TEST_VMRL_OP( 12612,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat2 );
TEST_VMRL_OP( 12659,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat49 );
TEST_VMRL_OP( 12669,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat59 );
TEST_VMRL_OP( 12690,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 12714,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat39 );
TEST_VMRL_OP( 12743,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 12757,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat17 );
TEST_VMRL_OP( 12761,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 12783,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat43 );
TEST_VMRL_OP( 12808,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 12816,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 12820,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 12824,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 12862,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat57 );
TEST_VMRL_OP( 12877,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 12900,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat30 );
TEST_VMRL_OP( 12908,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat38 );
TEST_VMRL_OP( 12909,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat39 );
TEST_VMRL_OP( 12928,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat58 );
TEST_VMRL_OP( 12947,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 12956,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 12960,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 13001,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 13004,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 13006,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 13009,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 13014,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 13021,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 13049,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat49 );
TEST_VMRL_OP( 13052,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat52 );
TEST_VMRL_OP( 13073,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 13091,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 13104,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat39 );
TEST_VMRL_OP( 13124,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat59 );
TEST_VMRL_OP( 13169,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat39 );
TEST_VMRL_OP( 13182,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat52 );
TEST_VMRL_OP( 13195,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 13206,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 13226,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 13228,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat33 );
TEST_VMRL_OP( 13238,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat43 );
TEST_VMRL_OP( 13264,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 13273,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 13276,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 13285,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 13287,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 13299,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat39 );
TEST_VMRL_OP( 13305,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat45 );
TEST_VMRL_OP( 13307,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat47 );
TEST_VMRL_OP( 13311,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat51 );
TEST_VMRL_OP( 13316,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat56 );
TEST_VMRL_OP( 13346,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat21 );
TEST_VMRL_OP( 13352,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 13366,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat41 );
TEST_VMRL_OP( 13374,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat49 );
TEST_VMRL_OP( 13378,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat53 );
TEST_VMRL_OP( 13404,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 13440,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat50 );
TEST_VMRL_OP( 13442,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat52 );
TEST_VMRL_OP( 13466,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 13509,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat54 );
TEST_VMRL_OP( 13541,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat21 );
TEST_VMRL_OP( 13570,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat50 );
TEST_VMRL_OP( 13577,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat57 );
TEST_VMRL_OP( 13581,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat61 );
TEST_VMRL_OP( 13608,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 13666,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 13668,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 13675,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat25 );
TEST_VMRL_OP( 13686,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat36 );
TEST_VMRL_OP( 13691,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat41 );
TEST_VMRL_OP( 13696,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat46 );
TEST_VMRL_OP( 13699,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat49 );
TEST_VMRL_OP( 13700,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat50 );
TEST_VMRL_OP( 13729,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 13876,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat31 );
TEST_VMRL_OP( 13883,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat38 );
TEST_VMRL_OP( 13885,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat40 );
TEST_VMRL_OP( 13894,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat49 );
TEST_VMRL_OP( 13901,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat56 );
TEST_VMRL_OP( 13933,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 13940,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 13964,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat54 );
TEST_VMRL_OP( 13985,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 14014,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat39 );
TEST_VMRL_OP( 14031,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat56 );
TEST_VMRL_OP( 14073,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat33 );
TEST_VMRL_OP( 14093,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat53 );
TEST_VMRL_OP( 14130,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 14151,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat46 );
TEST_VMRL_OP( 14240,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat5 );
TEST_VMRL_OP( 14258,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat23 );
TEST_VMRL_OP( 14320,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat20 );
TEST_VMRL_OP( 14367,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 14395,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat30 );
TEST_VMRL_OP( 14441,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 14447,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat17 );
TEST_VMRL_OP( 14454,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 14491,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat61 );
TEST_VMRL_OP( 14533,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat38 );
TEST_VMRL_OP( 14569,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 14573,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 14592,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 14609,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat49 );
TEST_VMRL_OP( 14619,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat59 );
TEST_VMRL_OP( 14628,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 14633,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 14634,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 14654,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 14665,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat40 );
TEST_VMRL_OP( 14679,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat54 );
TEST_VMRL_OP( 14695,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 14702,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat12 );
TEST_VMRL_OP( 14704,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat14 );
TEST_VMRL_OP( 14759,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 14769,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 14772,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 14775,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 14791,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat36 );
TEST_VMRL_OP( 14800,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat45 );
TEST_VMRL_OP( 14852,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat32 );
TEST_VMRL_OP( 14874,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat54 );
TEST_VMRL_OP( 14875,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat55 );
TEST_VMRL_OP( 14885,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat0 );
TEST_VMRL_OP( 14905,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat20 );
TEST_VMRL_OP( 14906,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat21 );
TEST_VMRL_OP( 14920,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat35 );
TEST_VMRL_OP( 14965,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat15 );
TEST_VMRL_OP( 14970,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat20 );
TEST_VMRL_OP( 14972,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat22 );
TEST_VMRL_OP( 14989,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat39 );
TEST_VMRL_OP( 15028,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat13 );
TEST_VMRL_OP( 15030,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat15 );
TEST_VMRL_OP( 15099,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat19 );
TEST_VMRL_OP( 15105,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat25 );
TEST_VMRL_OP( 15111,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat31 );
TEST_VMRL_OP( 15116,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat36 );
TEST_VMRL_OP( 15118,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat38 );
TEST_VMRL_OP( 15163,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat18 );
TEST_VMRL_OP( 15179,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat34 );
TEST_VMRL_OP( 15185,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat40 );
TEST_VMRL_OP( 15216,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat6 );
TEST_VMRL_OP( 15225,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat15 );
TEST_VMRL_OP( 15233,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat23 );
TEST_VMRL_OP( 15267,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat57 );
TEST_VMRL_OP( 15291,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat16 );
TEST_VMRL_OP( 15294,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat19 );
TEST_VMRL_OP( 15298,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat23 );
TEST_VMRL_OP( 15304,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat29 );
TEST_VMRL_OP( 15314,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat39 );
TEST_VMRL_OP( 15323,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat48 );
TEST_VMRL_OP( 15324,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat49 );
TEST_VMRL_OP( 15327,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat52 );
TEST_VMRL_OP( 15338,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat63 );
TEST_VMRL_OP( 15342,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat2 );
TEST_VMRL_OP( 15351,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat11 );
TEST_VMRL_OP( 15360,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat20 );
TEST_VMRL_OP( 15369,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat29 );
TEST_VMRL_OP( 15382,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat42 );
TEST_VMRL_OP( 15384,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat44 );
TEST_VMRL_OP( 15401,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat61 );
TEST_VMRL_OP( 15413,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat8 );
TEST_VMRL_OP( 15449,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat44 );
TEST_VMRL_OP( 15460,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat55 );
TEST_VMRL_OP( 15488,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat18 );
TEST_VMRL_OP( 15500,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat30 );
TEST_VMRL_OP( 15503,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat33 );
TEST_VMRL_OP( 15527,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat57 );
TEST_VMRL_OP( 15528,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat58 );
TEST_VMRL_OP( 15567,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat32 );
TEST_VMRL_OP( 15573,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat38 );
TEST_VMRL_OP( 15584,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat49 );
TEST_VMRL_OP( 15594,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat59 );
TEST_VMRL_OP( 15601,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_ones_dat1 );
TEST_VMRL_OP( 15670,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat5 );
TEST_VMRL_OP( 15676,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat11 );
TEST_VMRL_OP( 15682,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat17 );
TEST_VMRL_OP( 15685,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat20 );
TEST_VMRL_OP( 15691,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat26 );
TEST_VMRL_OP( 15696,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat31 );
TEST_VMRL_OP( 15712,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat47 );
TEST_VMRL_OP( 15717,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat52 );
TEST_VMRL_OP( 15721,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat56 );
TEST_VMRL_OP( 15743,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat13 );
TEST_VMRL_OP( 15783,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat53 );
TEST_VMRL_OP( 15798,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat3 );
TEST_VMRL_OP( 15808,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat13 );
TEST_VMRL_OP( 15815,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat20 );
TEST_VMRL_OP( 15833,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat38 );
TEST_VMRL_OP( 15837,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat42 );
TEST_VMRL_OP( 15846,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat51 );
TEST_VMRL_OP( 15852,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat57 );
TEST_VMRL_OP( 15866,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat6 );
TEST_VMRL_OP( 15867,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat7 );
TEST_VMRL_OP( 15882,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat22 );
TEST_VMRL_OP( 15890,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat30 );
TEST_VMRL_OP( 15908,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat48 );
TEST_VMRL_OP( 15933,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat8 );
TEST_VMRL_OP( 15950,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat25 );
TEST_VMRL_OP( 15951,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat26 );
TEST_VMRL_OP( 15954,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat29 );
TEST_VMRL_OP( 15963,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat38 );
TEST_VMRL_OP( 15989,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat64 );
TEST_VMRL_OP( 16013,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat23 );
TEST_VMRL_OP( 16019,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat29 );
TEST_VMRL_OP( 16022,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat32 );
TEST_VMRL_OP( 16028,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat38 );
TEST_VMRL_OP( 16038,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat48 );
TEST_VMRL_OP( 16041,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 16074,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat19 );
TEST_VMRL_OP( 16100,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat45 );
TEST_VMRL_OP( 16101,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat46 );
TEST_VMRL_OP( 16152,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat32 );
TEST_VMRL_OP( 16159,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat39 );
TEST_VMRL_OP( 16187,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat2 );
TEST_VMRL_OP( 16188,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat3 );
TEST_VMRL_OP( 16193,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat8 );
TEST_VMRL_OP( 16217,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat32 );
TEST_VMRL_OP( 16219,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat34 );
TEST_VMRL_OP( 16237,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat52 );
TEST_VMRL_OP( 16256,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat6 );
TEST_VMRL_OP( 16348,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat33 );
TEST_VMRL_OP( 16351,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat36 );
TEST_VMRL_OP( 16353,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat38 );
TEST_VMRL_OP( 16360,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat45 );
TEST_VMRL_OP( 16395,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat15 );
TEST_VMRL_OP( 16402,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat22 );
TEST_VMRL_OP( 16410,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat30 );
TEST_VMRL_OP( 16470,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat25 );
TEST_VMRL_OP( 16500,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat55 );
TEST_VMRL_OP( 16532,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat22 );
TEST_VMRL_OP( 16545,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat35 );
TEST_VMRL_OP( 16599,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat24 );
TEST_VMRL_OP( 16616,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat41 );
TEST_VMRL_OP( 16648,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat8 );
TEST_VMRL_OP( 16657,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat17 );
TEST_VMRL_OP( 16680,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat40 );
TEST_VMRL_OP( 16774,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat4 );
TEST_VMRL_OP( 16806,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat36 );
TEST_VMRL_OP( 16871,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat36 );
TEST_VMRL_OP( 16879,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat44 );
TEST_VMRL_OP( 16900,  vmornot.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmornot.mm,  32,  0x000000000000003f, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmornot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 33975,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 33976,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 33977,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 33978,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33979,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33980,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33981,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33982,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33983,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33984,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33985,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33986,  vmornot.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat1 );
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
    

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
TEST_VMRL_OP( 14,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 25,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_ones_dat25 );
TEST_VMRL_OP( 38,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_ones_dat38 );
TEST_VMRL_OP( 86,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 120,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat1, walking_ones_dat55 );
TEST_VMRL_OP( 130,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 140,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 143,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 152,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 162,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_ones_dat32 );
TEST_VMRL_OP( 215,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_ones_dat20 );
TEST_VMRL_OP( 219,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 248,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_ones_dat53 );
TEST_VMRL_OP( 251,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_ones_dat56 );
TEST_VMRL_OP( 278,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 286,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 319,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_ones_dat59 );
TEST_VMRL_OP( 326,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 349,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_ones_dat24 );
TEST_VMRL_OP( 433,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_ones_dat43 );
TEST_VMRL_OP( 434,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_ones_dat44 );
TEST_VMRL_OP( 458,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 543,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 579,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat8, walking_ones_dat59 );
TEST_VMRL_OP( 586,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 608,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 643,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_ones_dat58 );
TEST_VMRL_OP( 660,  vmxnor.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 661,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 666,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 684,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_ones_dat34 );
TEST_VMRL_OP( 693,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_ones_dat43 );
TEST_VMRL_OP( 713,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_ones_dat63 );
TEST_VMRL_OP( 725,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 769,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_ones_dat54 );
TEST_VMRL_OP( 807,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 829,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_ones_dat49 );
TEST_VMRL_OP( 835,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_ones_dat55 );
TEST_VMRL_OP( 836,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_ones_dat56 );
TEST_VMRL_OP( 843,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_ones_dat63 );
TEST_VMRL_OP( 859,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 877,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 878,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_ones_dat33 );
TEST_VMRL_OP( 904,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_ones_dat59 );
TEST_VMRL_OP( 910,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 921,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 925,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 954,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_ones_dat44 );
TEST_VMRL_OP( 955,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_ones_dat45 );
TEST_VMRL_OP( 962,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_ones_dat52 );
TEST_VMRL_OP( 964,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_ones_dat54 );
TEST_VMRL_OP( 993,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 1017,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_ones_dat42 );
TEST_VMRL_OP( 1028,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_ones_dat53 );
TEST_VMRL_OP( 1035,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_ones_dat60 );
TEST_VMRL_OP( 1086,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat16, walking_ones_dat46 );
TEST_VMRL_OP( 1089,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat16, walking_ones_dat49 );
TEST_VMRL_OP( 1109,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 1120,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 1140,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_ones_dat35 );
TEST_VMRL_OP( 1141,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_ones_dat36 );
TEST_VMRL_OP( 1176,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 1184,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 1223,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_ones_dat53 );
TEST_VMRL_OP( 1227,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_ones_dat57 );
TEST_VMRL_OP( 1248,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 1250,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_ones_dat15 );
TEST_VMRL_OP( 1265,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 1274,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_ones_dat39 );
TEST_VMRL_OP( 1282,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_ones_dat47 );
TEST_VMRL_OP( 1283,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_ones_dat48 );
TEST_VMRL_OP( 1284,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_ones_dat49 );
TEST_VMRL_OP( 1316,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 1378,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 1381,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 1438,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat8 );
TEST_VMRL_OP( 1442,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 1445,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 1448,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 1450,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat20 );
TEST_VMRL_OP( 1460,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 1461,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat31 );
TEST_VMRL_OP( 1472,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat42 );
TEST_VMRL_OP( 1488,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_ones_dat58 );
TEST_VMRL_OP( 1502,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 1508,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 1516,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 1527,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 1562,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 1563,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 1569,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_ones_dat9 );
TEST_VMRL_OP( 1571,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_ones_dat11 );
TEST_VMRL_OP( 1582,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 1595,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_ones_dat35 );
TEST_VMRL_OP( 1618,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_ones_dat58 );
TEST_VMRL_OP( 1637,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 1666,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat25, walking_ones_dat41 );
TEST_VMRL_OP( 1680,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat25, walking_ones_dat55 );
TEST_VMRL_OP( 1699,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 1712,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 1718,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 1763,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat27, walking_ones_dat8 );
TEST_VMRL_OP( 1815,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat27, walking_ones_dat60 );
TEST_VMRL_OP( 1821,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat1 );
TEST_VMRL_OP( 1825,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 1826,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 1842,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 1861,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat41 );
TEST_VMRL_OP( 1863,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat43 );
TEST_VMRL_OP( 1864,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat44 );
TEST_VMRL_OP( 1867,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat47 );
TEST_VMRL_OP( 1871,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat51 );
TEST_VMRL_OP( 1876,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat56 );
TEST_VMRL_OP( 1878,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_ones_dat58 );
TEST_VMRL_OP( 1923,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_ones_dat38 );
TEST_VMRL_OP( 1946,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_ones_dat61 );
TEST_VMRL_OP( 1948,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_ones_dat63 );
TEST_VMRL_OP( 1953,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 1958,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 1960,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 1970,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 1979,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 1990,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_ones_dat40 );
TEST_VMRL_OP( 2013,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_ones_dat63 );
TEST_VMRL_OP( 2017,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 2024,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_ones_dat9 );
TEST_VMRL_OP( 2025,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 2026,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_ones_dat11 );
TEST_VMRL_OP( 2075,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_ones_dat60 );
TEST_VMRL_OP( 2086,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 2090,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 2097,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 2100,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 2114,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_ones_dat34 );
TEST_VMRL_OP( 2121,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_ones_dat41 );
TEST_VMRL_OP( 2138,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_ones_dat58 );
TEST_VMRL_OP( 2154,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_ones_dat9 );
TEST_VMRL_OP( 2161,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_ones_dat16 );
TEST_VMRL_OP( 2181,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_ones_dat36 );
TEST_VMRL_OP( 2194,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_ones_dat49 );
TEST_VMRL_OP( 2232,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_ones_dat22 );
TEST_VMRL_OP( 2262,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_ones_dat52 );
TEST_VMRL_OP( 2272,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_ones_dat62 );
TEST_VMRL_OP( 2277,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_ones_dat2 );
TEST_VMRL_OP( 2290,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_ones_dat15 );
TEST_VMRL_OP( 2298,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_ones_dat23 );
TEST_VMRL_OP( 2315,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_ones_dat40 );
TEST_VMRL_OP( 2343,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_ones_dat3 );
TEST_VMRL_OP( 2374,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_ones_dat34 );
TEST_VMRL_OP( 2417,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_ones_dat12 );
TEST_VMRL_OP( 2422,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_ones_dat17 );
TEST_VMRL_OP( 2425,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_ones_dat20 );
TEST_VMRL_OP( 2449,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_ones_dat44 );
TEST_VMRL_OP( 2470,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat38, walking_ones_dat0 );
TEST_VMRL_OP( 2473,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat3 );
TEST_VMRL_OP( 2481,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat11 );
TEST_VMRL_OP( 2484,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat14 );
TEST_VMRL_OP( 2489,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat19 );
TEST_VMRL_OP( 2494,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat24 );
TEST_VMRL_OP( 2515,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat45 );
TEST_VMRL_OP( 2520,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat50 );
TEST_VMRL_OP( 2521,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat51 );
TEST_VMRL_OP( 2527,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_ones_dat57 );
TEST_VMRL_OP( 2544,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_ones_dat9 );
TEST_VMRL_OP( 2563,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_ones_dat28 );
TEST_VMRL_OP( 2571,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_ones_dat36 );
TEST_VMRL_OP( 2573,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_ones_dat38 );
TEST_VMRL_OP( 2585,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_ones_dat50 );
TEST_VMRL_OP( 2592,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_ones_dat57 );
TEST_VMRL_OP( 2599,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_ones_dat64 );
TEST_VMRL_OP( 2610,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_ones_dat10 );
TEST_VMRL_OP( 2623,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_ones_dat23 );
TEST_VMRL_OP( 2661,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_ones_dat61 );
TEST_VMRL_OP( 2662,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_ones_dat62 );
TEST_VMRL_OP( 2666,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_ones_dat1 );
TEST_VMRL_OP( 2667,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_ones_dat2 );
TEST_VMRL_OP( 2698,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_ones_dat33 );
TEST_VMRL_OP( 2713,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_ones_dat48 );
TEST_VMRL_OP( 2728,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_ones_dat63 );
TEST_VMRL_OP( 2732,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat2 );
TEST_VMRL_OP( 2734,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat4 );
TEST_VMRL_OP( 2740,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat10 );
TEST_VMRL_OP( 2744,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat14 );
TEST_VMRL_OP( 2771,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat41 );
TEST_VMRL_OP( 2783,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat53 );
TEST_VMRL_OP( 2785,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat55 );
TEST_VMRL_OP( 2786,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_ones_dat56 );
TEST_VMRL_OP( 2807,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat43, walking_ones_dat12 );
TEST_VMRL_OP( 2844,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat43, walking_ones_dat49 );
TEST_VMRL_OP( 2853,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat43, walking_ones_dat58 );
TEST_VMRL_OP( 2857,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat43, walking_ones_dat62 );
TEST_VMRL_OP( 2891,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_ones_dat31 );
TEST_VMRL_OP( 2905,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_ones_dat45 );
TEST_VMRL_OP( 2910,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_ones_dat50 );
TEST_VMRL_OP( 2927,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_ones_dat2 );
TEST_VMRL_OP( 2933,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_ones_dat8 );
TEST_VMRL_OP( 2939,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_ones_dat14 );
TEST_VMRL_OP( 2953,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_ones_dat28 );
TEST_VMRL_OP( 2976,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_ones_dat51 );
TEST_VMRL_OP( 2989,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_ones_dat64 );
TEST_VMRL_OP( 2994,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_ones_dat4 );
TEST_VMRL_OP( 2996,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_ones_dat6 );
TEST_VMRL_OP( 3047,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_ones_dat57 );
TEST_VMRL_OP( 3054,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_ones_dat64 );
TEST_VMRL_OP( 3056,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_ones_dat1 );
TEST_VMRL_OP( 3078,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_ones_dat23 );
TEST_VMRL_OP( 3088,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_ones_dat33 );
TEST_VMRL_OP( 3092,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_ones_dat37 );
TEST_VMRL_OP( 3096,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_ones_dat41 );
TEST_VMRL_OP( 3129,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_ones_dat9 );
TEST_VMRL_OP( 3137,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_ones_dat17 );
TEST_VMRL_OP( 3155,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_ones_dat35 );
TEST_VMRL_OP( 3168,  vmxnor.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 3190,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_ones_dat5 );
TEST_VMRL_OP( 3241,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_ones_dat56 );
TEST_VMRL_OP( 3257,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_ones_dat7 );
TEST_VMRL_OP( 3258,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_ones_dat8 );
TEST_VMRL_OP( 3288,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_ones_dat38 );
TEST_VMRL_OP( 3298,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_ones_dat48 );
TEST_VMRL_OP( 3303,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_ones_dat53 );
TEST_VMRL_OP( 3304,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_ones_dat54 );
TEST_VMRL_OP( 3320,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_ones_dat5 );
TEST_VMRL_OP( 3321,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_ones_dat6 );
TEST_VMRL_OP( 3343,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_ones_dat28 );
TEST_VMRL_OP( 3349,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_ones_dat34 );
TEST_VMRL_OP( 3386,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_ones_dat6 );
TEST_VMRL_OP( 3441,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_ones_dat61 );
TEST_VMRL_OP( 3445,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat53, walking_ones_dat0 );
TEST_VMRL_OP( 3460,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_ones_dat15 );
TEST_VMRL_OP( 3463,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_ones_dat18 );
TEST_VMRL_OP( 3469,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_ones_dat24 );
TEST_VMRL_OP( 3470,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_ones_dat25 );
TEST_VMRL_OP( 3478,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_ones_dat33 );
TEST_VMRL_OP( 3480,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_ones_dat35 );
TEST_VMRL_OP( 3497,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_ones_dat52 );
TEST_VMRL_OP( 3510,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat54, walking_ones_dat0 );
TEST_VMRL_OP( 3537,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat54, walking_ones_dat27 );
TEST_VMRL_OP( 3554,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat54, walking_ones_dat44 );
TEST_VMRL_OP( 3576,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_ones_dat1 );
TEST_VMRL_OP( 3577,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_ones_dat2 );
TEST_VMRL_OP( 3605,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_ones_dat30 );
TEST_VMRL_OP( 3626,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_ones_dat51 );
TEST_VMRL_OP( 3705,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat57, walking_ones_dat0 );
TEST_VMRL_OP( 3716,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_ones_dat11 );
TEST_VMRL_OP( 3723,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_ones_dat18 );
TEST_VMRL_OP( 3733,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_ones_dat28 );
TEST_VMRL_OP( 3740,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_ones_dat35 );
TEST_VMRL_OP( 3792,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_ones_dat22 );
TEST_VMRL_OP( 3900,  vmxnor.mm,  32,  0x000000000000003f, walking_ones_dat60, walking_ones_dat0 );
TEST_VMRL_OP( 3908,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_ones_dat8 );
TEST_VMRL_OP( 3932,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_ones_dat32 );
TEST_VMRL_OP( 3933,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_ones_dat33 );
TEST_VMRL_OP( 3936,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_ones_dat36 );
TEST_VMRL_OP( 3940,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_ones_dat40 );
TEST_VMRL_OP( 3947,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_ones_dat47 );
TEST_VMRL_OP( 3964,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_ones_dat64 );
TEST_VMRL_OP( 3966,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_ones_dat1 );
TEST_VMRL_OP( 3997,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_ones_dat32 );
TEST_VMRL_OP( 4002,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_ones_dat37 );
TEST_VMRL_OP( 4031,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat1 );
TEST_VMRL_OP( 4032,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat2 );
TEST_VMRL_OP( 4047,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat17 );
TEST_VMRL_OP( 4052,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat22 );
TEST_VMRL_OP( 4056,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat26 );
TEST_VMRL_OP( 4057,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat27 );
TEST_VMRL_OP( 4082,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat52 );
TEST_VMRL_OP( 4086,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat56 );
TEST_VMRL_OP( 4094,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_ones_dat64 );
TEST_VMRL_OP( 4100,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_ones_dat5 );
TEST_VMRL_OP( 4123,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_ones_dat28 );
TEST_VMRL_OP( 4130,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_ones_dat35 );
TEST_VMRL_OP( 4135,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_ones_dat40 );
TEST_VMRL_OP( 4141,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_ones_dat46 );
TEST_VMRL_OP( 4148,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_ones_dat53 );
TEST_VMRL_OP( 4153,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_ones_dat58 );
TEST_VMRL_OP( 4167,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_ones_dat7 );
TEST_VMRL_OP( 4178,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_ones_dat18 );
TEST_VMRL_OP( 4207,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_ones_dat47 );
TEST_VMRL_OP( 4220,  vmxnor.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_ones_dat60 );
TEST_VMRL_OP( 4226,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 4232,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 4243,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 4264,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat39 );
TEST_VMRL_OP( 4265,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat40 );
TEST_VMRL_OP( 4282,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat57 );
TEST_VMRL_OP( 4283,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_zeros_dat58 );
TEST_VMRL_OP( 4290,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 4291,  vmxnor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4323,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat33 );
TEST_VMRL_OP( 4328,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat1, walking_zeros_dat38 );
TEST_VMRL_OP( 4358,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 4359,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 4395,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_zeros_dat40 );
TEST_VMRL_OP( 4434,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 4478,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat58 );
TEST_VMRL_OP( 4483,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_zeros_dat63 );
TEST_VMRL_OP( 4488,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 4495,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 4517,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 4521,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat36 );
TEST_VMRL_OP( 4525,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat40 );
TEST_VMRL_OP( 4527,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_zeros_dat42 );
TEST_VMRL_OP( 4557,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 4558,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 4667,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_zeros_dat52 );
TEST_VMRL_OP( 4749,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 4751,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 4764,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat19 );
TEST_VMRL_OP( 4770,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat25 );
TEST_VMRL_OP( 4781,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat36 );
TEST_VMRL_OP( 4788,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat43 );
TEST_VMRL_OP( 4798,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_zeros_dat53 );
TEST_VMRL_OP( 4843,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat33 );
TEST_VMRL_OP( 4857,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_zeros_dat47 );
TEST_VMRL_OP( 4877,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 4907,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 4935,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat60 );
TEST_VMRL_OP( 4938,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat63 );
TEST_VMRL_OP( 4939,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat10, walking_zeros_dat64 );
TEST_VMRL_OP( 4949,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 4954,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 4961,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat21 );
TEST_VMRL_OP( 4973,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat33 );
TEST_VMRL_OP( 4974,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat34 );
TEST_VMRL_OP( 4995,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_zeros_dat55 );
TEST_VMRL_OP( 5005,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 5010,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 5028,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 5060,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_zeros_dat55 );
TEST_VMRL_OP( 5070,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 5107,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat37 );
TEST_VMRL_OP( 5113,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_zeros_dat43 );
TEST_VMRL_OP( 5151,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 5170,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat14, walking_zeros_dat35 );
TEST_VMRL_OP( 5200,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 5203,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 5208,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 5212,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 5237,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_zeros_dat37 );
TEST_VMRL_OP( 5293,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 5298,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat33 );
TEST_VMRL_OP( 5311,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_zeros_dat46 );
TEST_VMRL_OP( 5376,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat46 );
TEST_VMRL_OP( 5380,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat50 );
TEST_VMRL_OP( 5388,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_zeros_dat58 );
TEST_VMRL_OP( 5400,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 5432,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat37 );
TEST_VMRL_OP( 5452,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat57 );
TEST_VMRL_OP( 5453,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_zeros_dat58 );
TEST_VMRL_OP( 5474,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 5480,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat20 );
TEST_VMRL_OP( 5481,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 5485,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 5530,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 5554,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 5558,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat33 );
TEST_VMRL_OP( 5565,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat40 );
TEST_VMRL_OP( 5569,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_zeros_dat44 );
TEST_VMRL_OP( 5600,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 5606,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 5612,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 5614,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 5618,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 5619,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_zeros_dat29 );
TEST_VMRL_OP( 5660,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 5670,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat15 );
TEST_VMRL_OP( 5676,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 5687,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 5704,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat49 );
TEST_VMRL_OP( 5716,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat61 );
TEST_VMRL_OP( 5717,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_zeros_dat62 );
TEST_VMRL_OP( 5744,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 5756,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat36 );
TEST_VMRL_OP( 5765,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_zeros_dat45 );
TEST_VMRL_OP( 5787,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 5797,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 5857,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 5872,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat22 );
TEST_VMRL_OP( 5891,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat41 );
TEST_VMRL_OP( 5896,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_zeros_dat46 );
TEST_VMRL_OP( 5918,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 5927,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 5935,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 5940,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat25 );
TEST_VMRL_OP( 5946,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 5970,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_zeros_dat55 );
TEST_VMRL_OP( 5983,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 6006,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 6041,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_zeros_dat61 );
TEST_VMRL_OP( 6105,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_zeros_dat60 );
TEST_VMRL_OP( 6120,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 6130,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 6132,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 6134,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 6157,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat47 );
TEST_VMRL_OP( 6168,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat58 );
TEST_VMRL_OP( 6171,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_zeros_dat61 );
TEST_VMRL_OP( 6175,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 6231,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_zeros_dat56 );
TEST_VMRL_OP( 6258,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 6303,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_zeros_dat63 );
TEST_VMRL_OP( 6306,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 6325,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 6363,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat58 );
TEST_VMRL_OP( 6366,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_zeros_dat61 );
TEST_VMRL_OP( 6404,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat34 );
TEST_VMRL_OP( 6406,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat36 );
TEST_VMRL_OP( 6409,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat39 );
TEST_VMRL_OP( 6417,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_zeros_dat47 );
TEST_VMRL_OP( 6439,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat4 );
TEST_VMRL_OP( 6452,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat17 );
TEST_VMRL_OP( 6463,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat28 );
TEST_VMRL_OP( 6480,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_zeros_dat45 );
TEST_VMRL_OP( 6510,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat10 );
TEST_VMRL_OP( 6544,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat44 );
TEST_VMRL_OP( 6549,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat49 );
TEST_VMRL_OP( 6557,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat57 );
TEST_VMRL_OP( 6562,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_zeros_dat62 );
TEST_VMRL_OP( 6570,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat5 );
TEST_VMRL_OP( 6580,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat15 );
TEST_VMRL_OP( 6604,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat39 );
TEST_VMRL_OP( 6608,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat43 );
TEST_VMRL_OP( 6617,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_zeros_dat52 );
TEST_VMRL_OP( 6656,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat26 );
TEST_VMRL_OP( 6658,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat28 );
TEST_VMRL_OP( 6670,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat40 );
TEST_VMRL_OP( 6676,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat46 );
TEST_VMRL_OP( 6686,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_zeros_dat56 );
TEST_VMRL_OP( 6734,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat39 );
TEST_VMRL_OP( 6736,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat41 );
TEST_VMRL_OP( 6737,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat42 );
TEST_VMRL_OP( 6739,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat44 );
TEST_VMRL_OP( 6749,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_zeros_dat54 );
TEST_VMRL_OP( 6779,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat19 );
TEST_VMRL_OP( 6788,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat28 );
TEST_VMRL_OP( 6793,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat33 );
TEST_VMRL_OP( 6802,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat42 );
TEST_VMRL_OP( 6818,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_zeros_dat58 );
TEST_VMRL_OP( 6878,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat40, walking_zeros_dat53 );
TEST_VMRL_OP( 6893,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat3 );
TEST_VMRL_OP( 6901,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat11 );
TEST_VMRL_OP( 6918,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat28 );
TEST_VMRL_OP( 6928,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat38 );
TEST_VMRL_OP( 6936,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat46 );
TEST_VMRL_OP( 6943,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat53 );
TEST_VMRL_OP( 6949,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_zeros_dat59 );
TEST_VMRL_OP( 6968,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat13 );
TEST_VMRL_OP( 6979,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat24 );
TEST_VMRL_OP( 6980,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat25 );
TEST_VMRL_OP( 6982,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat27 );
TEST_VMRL_OP( 6986,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat31 );
TEST_VMRL_OP( 7002,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_zeros_dat47 );
TEST_VMRL_OP( 7072,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat43, walking_zeros_dat52 );
TEST_VMRL_OP( 7089,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat4 );
TEST_VMRL_OP( 7101,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat16 );
TEST_VMRL_OP( 7118,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat33 );
TEST_VMRL_OP( 7138,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_zeros_dat53 );
TEST_VMRL_OP( 7161,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat11 );
TEST_VMRL_OP( 7180,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat30 );
TEST_VMRL_OP( 7189,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat39 );
TEST_VMRL_OP( 7207,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_zeros_dat57 );
TEST_VMRL_OP( 7255,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat40 );
TEST_VMRL_OP( 7266,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat51 );
TEST_VMRL_OP( 7268,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_zeros_dat53 );
TEST_VMRL_OP( 7282,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat2 );
TEST_VMRL_OP( 7321,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat41 );
TEST_VMRL_OP( 7329,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat49 );
TEST_VMRL_OP( 7343,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_zeros_dat63 );
TEST_VMRL_OP( 7377,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat32 );
TEST_VMRL_OP( 7387,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat42 );
TEST_VMRL_OP( 7396,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_zeros_dat51 );
TEST_VMRL_OP( 7438,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat28 );
TEST_VMRL_OP( 7439,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_zeros_dat29 );
TEST_VMRL_OP( 7500,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat25 );
TEST_VMRL_OP( 7506,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat31 );
TEST_VMRL_OP( 7516,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_zeros_dat41 );
TEST_VMRL_OP( 7547,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat7 );
TEST_VMRL_OP( 7564,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat24 );
TEST_VMRL_OP( 7565,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat25 );
TEST_VMRL_OP( 7588,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat48 );
TEST_VMRL_OP( 7601,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_zeros_dat61 );
TEST_VMRL_OP( 7606,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat1 );
TEST_VMRL_OP( 7607,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat2 );
TEST_VMRL_OP( 7612,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat7 );
TEST_VMRL_OP( 7625,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat20 );
TEST_VMRL_OP( 7642,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_zeros_dat37 );
TEST_VMRL_OP( 7680,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat10 );
TEST_VMRL_OP( 7726,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat53, walking_zeros_dat56 );
TEST_VMRL_OP( 7789,  vmxnor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 7800,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat55, walking_zeros_dat0 );
TEST_VMRL_OP( 7803,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat3 );
TEST_VMRL_OP( 7812,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat12 );
TEST_VMRL_OP( 7814,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat14 );
TEST_VMRL_OP( 7816,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat16 );
TEST_VMRL_OP( 7847,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_zeros_dat47 );
TEST_VMRL_OP( 7865,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat56, walking_zeros_dat0 );
TEST_VMRL_OP( 7878,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat13 );
TEST_VMRL_OP( 7894,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat29 );
TEST_VMRL_OP( 7912,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_zeros_dat47 );
TEST_VMRL_OP( 7940,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat10 );
TEST_VMRL_OP( 7955,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat25 );
TEST_VMRL_OP( 7976,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat46 );
TEST_VMRL_OP( 7983,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_zeros_dat53 );
TEST_VMRL_OP( 7997,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat2 );
TEST_VMRL_OP( 8007,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat12 );
TEST_VMRL_OP( 8037,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat42 );
TEST_VMRL_OP( 8043,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_zeros_dat48 );
TEST_VMRL_OP( 8070,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat10 );
TEST_VMRL_OP( 8074,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat14 );
TEST_VMRL_OP( 8080,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat20 );
TEST_VMRL_OP( 8103,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat43 );
TEST_VMRL_OP( 8105,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_zeros_dat45 );
TEST_VMRL_OP( 8151,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat26 );
TEST_VMRL_OP( 8163,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat38 );
TEST_VMRL_OP( 8178,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_zeros_dat53 );
TEST_VMRL_OP( 8216,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat26 );
TEST_VMRL_OP( 8238,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat48 );
TEST_VMRL_OP( 8240,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat50 );
TEST_VMRL_OP( 8250,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_zeros_dat60 );
TEST_VMRL_OP( 8270,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat15 );
TEST_VMRL_OP( 8278,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat23 );
TEST_VMRL_OP( 8291,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat36 );
TEST_VMRL_OP( 8298,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_zeros_dat43 );
TEST_VMRL_OP( 8320,  vmxnor.mm,  32,  0x000000000000003f, walking_zeros_dat63, walking_zeros_dat0 );
TEST_VMRL_OP( 8355,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat35 );
TEST_VMRL_OP( 8384,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_zeros_dat64 );
TEST_VMRL_OP( 8420,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat35 );
TEST_VMRL_OP( 8425,  vmxnor.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_zeros_dat40 );
TEST_VMRL_OP( 8473,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat23 );
TEST_VMRL_OP( 8474,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat24 );
TEST_VMRL_OP( 8486,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat36 );
TEST_VMRL_OP( 8492,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat42 );
TEST_VMRL_OP( 8502,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat52 );
TEST_VMRL_OP( 8520,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 8522,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 8525,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 8527,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 8531,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 8534,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 8540,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat25 );
TEST_VMRL_OP( 8565,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat50 );
TEST_VMRL_OP( 8606,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 8611,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 8637,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat57 );
TEST_VMRL_OP( 8638,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat58 );
TEST_VMRL_OP( 8709,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat64 );
TEST_VMRL_OP( 8787,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 8799,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 8800,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 8824,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat49 );
TEST_VMRL_OP( 8867,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat27 );
TEST_VMRL_OP( 8875,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat35 );
TEST_VMRL_OP( 8891,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat51 );
TEST_VMRL_OP( 8893,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat53 );
TEST_VMRL_OP( 8912,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 8913,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 8915,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 8923,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 8933,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 8936,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 8995,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat25 );
TEST_VMRL_OP( 9009,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat39 );
TEST_VMRL_OP( 9015,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat45 );
TEST_VMRL_OP( 9120,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 9145,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat45 );
TEST_VMRL_OP( 9149,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat49 );
TEST_VMRL_OP( 9150,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat50 );
TEST_VMRL_OP( 9167,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 9219,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat54 );
TEST_VMRL_OP( 9229,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat64 );
TEST_VMRL_OP( 9239,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 9252,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 9267,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat37 );
TEST_VMRL_OP( 9278,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat48 );
TEST_VMRL_OP( 9304,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 9329,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat34 );
TEST_VMRL_OP( 9342,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat47 );
TEST_VMRL_OP( 9363,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 9364,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 9379,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 9410,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat50 );
TEST_VMRL_OP( 9412,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat52 );
TEST_VMRL_OP( 9417,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat57 );
TEST_VMRL_OP( 9427,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 9443,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat18 );
TEST_VMRL_OP( 9475,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat50 );
TEST_VMRL_OP( 9482,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat57 );
TEST_VMRL_OP( 9486,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat61 );
TEST_VMRL_OP( 9492,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 9495,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 9501,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 9509,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 9511,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 9526,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat36 );
TEST_VMRL_OP( 9559,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 9566,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 9639,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat19 );
TEST_VMRL_OP( 9644,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat24 );
TEST_VMRL_OP( 9663,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat43 );
TEST_VMRL_OP( 9682,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat62 );
TEST_VMRL_OP( 9684,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat64 );
TEST_VMRL_OP( 9689,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat4 );
TEST_VMRL_OP( 9699,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 9707,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 9723,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat38 );
TEST_VMRL_OP( 9741,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat56 );
TEST_VMRL_OP( 9750,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 9755,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 9756,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat6 );
TEST_VMRL_OP( 9760,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 9776,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 9779,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 9780,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat30 );
TEST_VMRL_OP( 9789,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat39 );
TEST_VMRL_OP( 9798,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat48 );
TEST_VMRL_OP( 9831,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 9836,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 9864,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat49 );
TEST_VMRL_OP( 9866,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat51 );
TEST_VMRL_OP( 9879,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat64 );
TEST_VMRL_OP( 9898,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 9921,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat41 );
TEST_VMRL_OP( 9931,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat51 );
TEST_VMRL_OP( 9934,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat54 );
TEST_VMRL_OP( 9946,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 9953,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat8 );
TEST_VMRL_OP( 9971,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 10003,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat58 );
TEST_VMRL_OP( 10020,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat10 );
TEST_VMRL_OP( 10021,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 10033,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 10076,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 10086,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat11 );
TEST_VMRL_OP( 10094,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 10112,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat37 );
TEST_VMRL_OP( 10126,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat51 );
TEST_VMRL_OP( 10145,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 10157,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 10171,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 10182,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat42 );
TEST_VMRL_OP( 10192,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat52 );
TEST_VMRL_OP( 10199,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat59 );
TEST_VMRL_OP( 10210,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 10236,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 10252,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat47 );
TEST_VMRL_OP( 10254,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat49 );
TEST_VMRL_OP( 10281,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 10285,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat15 );
TEST_VMRL_OP( 10315,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat45 );
TEST_VMRL_OP( 10324,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat54 );
TEST_VMRL_OP( 10366,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 10379,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat44 );
TEST_VMRL_OP( 10386,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat51 );
TEST_VMRL_OP( 10434,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat34 );
TEST_VMRL_OP( 10446,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat46 );
TEST_VMRL_OP( 10544,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat14 );
TEST_VMRL_OP( 10549,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 10609,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat14 );
TEST_VMRL_OP( 10618,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat23 );
TEST_VMRL_OP( 10631,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat36 );
TEST_VMRL_OP( 10632,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat37 );
TEST_VMRL_OP( 10636,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat41 );
TEST_VMRL_OP( 10648,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat53 );
TEST_VMRL_OP( 10652,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_zeros_dat57 );
TEST_VMRL_OP( 10669,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_zeros_dat9 );
TEST_VMRL_OP( 10725,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat35, walking_zeros_dat0 );
TEST_VMRL_OP( 10732,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_zeros_dat7 );
TEST_VMRL_OP( 10739,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_zeros_dat14 );
TEST_VMRL_OP( 10748,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_zeros_dat23 );
TEST_VMRL_OP( 10796,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_zeros_dat6 );
TEST_VMRL_OP( 10808,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_zeros_dat18 );
TEST_VMRL_OP( 10840,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_zeros_dat50 );
TEST_VMRL_OP( 10861,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat6 );
TEST_VMRL_OP( 10894,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat39 );
TEST_VMRL_OP( 10906,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat51 );
TEST_VMRL_OP( 10917,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_zeros_dat62 );
TEST_VMRL_OP( 10925,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_zeros_dat5 );
TEST_VMRL_OP( 10948,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_zeros_dat28 );
TEST_VMRL_OP( 10998,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat13 );
TEST_VMRL_OP( 11001,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat16 );
TEST_VMRL_OP( 11009,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat24 );
TEST_VMRL_OP( 11010,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat25 );
TEST_VMRL_OP( 11033,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat48 );
TEST_VMRL_OP( 11035,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_zeros_dat50 );
TEST_VMRL_OP( 11079,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_zeros_dat29 );
TEST_VMRL_OP( 11090,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 11104,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_zeros_dat54 );
TEST_VMRL_OP( 11106,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_zeros_dat56 );
TEST_VMRL_OP( 11107,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_zeros_dat57 );
TEST_VMRL_OP( 11122,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat7 );
TEST_VMRL_OP( 11127,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat12 );
TEST_VMRL_OP( 11148,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat33 );
TEST_VMRL_OP( 11177,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_zeros_dat62 );
TEST_VMRL_OP( 11186,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat6 );
TEST_VMRL_OP( 11210,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat30 );
TEST_VMRL_OP( 11229,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat49 );
TEST_VMRL_OP( 11231,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_zeros_dat51 );
TEST_VMRL_OP( 11247,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_zeros_dat2 );
TEST_VMRL_OP( 11268,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_zeros_dat23 );
TEST_VMRL_OP( 11323,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat13 );
TEST_VMRL_OP( 11325,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat15 );
TEST_VMRL_OP( 11346,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat36 );
TEST_VMRL_OP( 11363,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_zeros_dat53 );
TEST_VMRL_OP( 11378,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat3 );
TEST_VMRL_OP( 11394,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat19 );
TEST_VMRL_OP( 11396,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat21 );
TEST_VMRL_OP( 11438,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_zeros_dat63 );
TEST_VMRL_OP( 11441,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat1 );
TEST_VMRL_OP( 11444,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat4 );
TEST_VMRL_OP( 11458,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat18 );
TEST_VMRL_OP( 11459,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat19 );
TEST_VMRL_OP( 11478,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat38 );
TEST_VMRL_OP( 11484,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_zeros_dat44 );
TEST_VMRL_OP( 11486,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 11519,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat14 );
TEST_VMRL_OP( 11529,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat24 );
TEST_VMRL_OP( 11562,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_zeros_dat57 );
TEST_VMRL_OP( 11603,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_zeros_dat33 );
TEST_VMRL_OP( 11614,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_zeros_dat44 );
TEST_VMRL_OP( 11638,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat3 );
TEST_VMRL_OP( 11651,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat16 );
TEST_VMRL_OP( 11658,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat23 );
TEST_VMRL_OP( 11681,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat46 );
TEST_VMRL_OP( 11696,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_zeros_dat61 );
TEST_VMRL_OP( 11719,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat19 );
TEST_VMRL_OP( 11720,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat20 );
TEST_VMRL_OP( 11721,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat21 );
TEST_VMRL_OP( 11723,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat23 );
TEST_VMRL_OP( 11745,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat45 );
TEST_VMRL_OP( 11756,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat56 );
TEST_VMRL_OP( 11759,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_zeros_dat59 );
TEST_VMRL_OP( 11769,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat4 );
TEST_VMRL_OP( 11777,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat12 );
TEST_VMRL_OP( 11802,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat37 );
TEST_VMRL_OP( 11809,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat44 );
TEST_VMRL_OP( 11820,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_zeros_dat55 );
TEST_VMRL_OP( 11831,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat1 );
TEST_VMRL_OP( 11840,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat10 );
TEST_VMRL_OP( 11884,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat54 );
TEST_VMRL_OP( 11890,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_zeros_dat60 );
TEST_VMRL_OP( 11935,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat40 );
TEST_VMRL_OP( 11936,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat41 );
TEST_VMRL_OP( 11939,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat44 );
TEST_VMRL_OP( 11941,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat46 );
TEST_VMRL_OP( 11949,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_zeros_dat54 );
TEST_VMRL_OP( 11968,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat54, walking_zeros_dat8 );
TEST_VMRL_OP( 11976,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat54, walking_zeros_dat16 );
TEST_VMRL_OP( 11981,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat54, walking_zeros_dat21 );
TEST_VMRL_OP( 12087,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat55, walking_zeros_dat62 );
TEST_VMRL_OP( 12106,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat16 );
TEST_VMRL_OP( 12114,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat24 );
TEST_VMRL_OP( 12137,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_zeros_dat47 );
TEST_VMRL_OP( 12155,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat57, walking_zeros_dat0 );
TEST_VMRL_OP( 12193,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_zeros_dat38 );
TEST_VMRL_OP( 12207,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_zeros_dat52 );
TEST_VMRL_OP( 12221,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat1 );
TEST_VMRL_OP( 12248,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat28 );
TEST_VMRL_OP( 12265,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat45 );
TEST_VMRL_OP( 12269,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_zeros_dat49 );
TEST_VMRL_OP( 12289,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_zeros_dat4 );
TEST_VMRL_OP( 12309,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_zeros_dat24 );
TEST_VMRL_OP( 12324,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_zeros_dat39 );
TEST_VMRL_OP( 12334,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_zeros_dat49 );
TEST_VMRL_OP( 12408,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_zeros_dat58 );
TEST_VMRL_OP( 12413,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_zeros_dat63 );
TEST_VMRL_OP( 12441,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat61, walking_zeros_dat26 );
TEST_VMRL_OP( 12449,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat61, walking_zeros_dat34 );
TEST_VMRL_OP( 12462,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat61, walking_zeros_dat47 );
TEST_VMRL_OP( 12496,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat16 );
TEST_VMRL_OP( 12508,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat28 );
TEST_VMRL_OP( 12534,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_zeros_dat54 );
TEST_VMRL_OP( 12555,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat10 );
TEST_VMRL_OP( 12561,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat16 );
TEST_VMRL_OP( 12565,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat20 );
TEST_VMRL_OP( 12570,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat25 );
TEST_VMRL_OP( 12571,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat26 );
TEST_VMRL_OP( 12578,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_zeros_dat33 );
TEST_VMRL_OP( 12610,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat64, walking_zeros_dat0 );
TEST_VMRL_OP( 12612,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat2 );
TEST_VMRL_OP( 12626,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat16 );
TEST_VMRL_OP( 12646,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat36 );
TEST_VMRL_OP( 12647,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat37 );
TEST_VMRL_OP( 12661,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_zeros_dat51 );
TEST_VMRL_OP( 12689,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 12695,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 12744,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 12758,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 12788,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat48 );
TEST_VMRL_OP( 12815,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 12827,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 12830,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 12841,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat36 );
TEST_VMRL_OP( 12862,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat57 );
TEST_VMRL_OP( 12869,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat64 );
TEST_VMRL_OP( 12880,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 12885,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 12903,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat33 );
TEST_VMRL_OP( 12906,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat36 );
TEST_VMRL_OP( 12911,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat41 );
TEST_VMRL_OP( 12916,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat46 );
TEST_VMRL_OP( 12929,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat59 );
TEST_VMRL_OP( 12982,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat47 );
TEST_VMRL_OP( 13003,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 13020,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 13071,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 13075,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 13113,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat48 );
TEST_VMRL_OP( 13137,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 13149,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 13193,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat63 );
TEST_VMRL_OP( 13206,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 13214,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 13225,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 13252,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat57 );
TEST_VMRL_OP( 13254,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat59 );
TEST_VMRL_OP( 13332,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 13386,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat61 );
TEST_VMRL_OP( 13468,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 13470,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 13474,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 13478,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 13497,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat42 );
TEST_VMRL_OP( 13499,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat44 );
TEST_VMRL_OP( 13527,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 13541,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat21 );
TEST_VMRL_OP( 13550,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 13554,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat34 );
TEST_VMRL_OP( 13565,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat45 );
TEST_VMRL_OP( 13606,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 13609,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 13614,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 13621,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat36 );
TEST_VMRL_OP( 13628,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat43 );
TEST_VMRL_OP( 13634,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat49 );
TEST_VMRL_OP( 13677,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 13684,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat34 );
TEST_VMRL_OP( 13711,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat61 );
TEST_VMRL_OP( 13716,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 13751,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat36 );
TEST_VMRL_OP( 13760,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat45 );
TEST_VMRL_OP( 13764,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat49 );
TEST_VMRL_OP( 13771,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat56 );
TEST_VMRL_OP( 13811,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 13820,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat40 );
TEST_VMRL_OP( 13858,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat13 );
TEST_VMRL_OP( 13863,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 13880,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat35 );
TEST_VMRL_OP( 13921,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat11 );
TEST_VMRL_OP( 13929,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 13948,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat38 );
TEST_VMRL_OP( 13953,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat43 );
TEST_VMRL_OP( 13956,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat46 );
TEST_VMRL_OP( 13984,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat9 );
TEST_VMRL_OP( 14041,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 14053,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 14069,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 14116,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 14122,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 14151,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat46 );
TEST_VMRL_OP( 14169,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat64 );
TEST_VMRL_OP( 14175,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 14184,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 14197,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat27 );
TEST_VMRL_OP( 14229,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat59 );
TEST_VMRL_OP( 14239,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat4 );
TEST_VMRL_OP( 14248,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 14278,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat43 );
TEST_VMRL_OP( 14298,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat63 );
TEST_VMRL_OP( 14302,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 14325,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 14353,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat53 );
TEST_VMRL_OP( 14357,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat57 );
TEST_VMRL_OP( 14359,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat59 );
TEST_VMRL_OP( 14373,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 14400,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat35 );
TEST_VMRL_OP( 14414,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat49 );
TEST_VMRL_OP( 14425,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat60 );
TEST_VMRL_OP( 14441,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 14448,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 14461,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 14465,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat35 );
TEST_VMRL_OP( 14496,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat1 );
TEST_VMRL_OP( 14512,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 14521,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 14597,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat37 );
TEST_VMRL_OP( 14598,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat38 );
TEST_VMRL_OP( 14614,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat54 );
TEST_VMRL_OP( 14629,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat4 );
TEST_VMRL_OP( 14641,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 14658,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat33 );
TEST_VMRL_OP( 14662,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat37 );
TEST_VMRL_OP( 14715,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat25 );
TEST_VMRL_OP( 14719,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 14752,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat62 );
TEST_VMRL_OP( 14764,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 14773,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 14796,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat41 );
TEST_VMRL_OP( 14797,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat42 );
TEST_VMRL_OP( 14806,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat51 );
TEST_VMRL_OP( 14850,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat30 );
TEST_VMRL_OP( 14854,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat34 );
TEST_VMRL_OP( 14864,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat44 );
TEST_VMRL_OP( 14875,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_ones_dat55 );
TEST_VMRL_OP( 14890,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat5 );
TEST_VMRL_OP( 14912,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat27 );
TEST_VMRL_OP( 14921,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat36 );
TEST_VMRL_OP( 14924,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat39 );
TEST_VMRL_OP( 14942,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat57 );
TEST_VMRL_OP( 14947,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat62 );
TEST_VMRL_OP( 14948,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_ones_dat63 );
TEST_VMRL_OP( 14957,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat7 );
TEST_VMRL_OP( 14994,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat44 );
TEST_VMRL_OP( 14995,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_ones_dat45 );
TEST_VMRL_OP( 15027,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat12 );
TEST_VMRL_OP( 15032,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat17 );
TEST_VMRL_OP( 15033,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat18 );
TEST_VMRL_OP( 15041,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat26 );
TEST_VMRL_OP( 15067,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat52 );
TEST_VMRL_OP( 15072,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat57 );
TEST_VMRL_OP( 15075,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat60 );
TEST_VMRL_OP( 15079,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_ones_dat64 );
TEST_VMRL_OP( 15083,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat3 );
TEST_VMRL_OP( 15096,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat16 );
TEST_VMRL_OP( 15098,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat18 );
TEST_VMRL_OP( 15105,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat25 );
TEST_VMRL_OP( 15106,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat26 );
TEST_VMRL_OP( 15109,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat29 );
TEST_VMRL_OP( 15118,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat38 );
TEST_VMRL_OP( 15119,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat39 );
TEST_VMRL_OP( 15136,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_ones_dat56 );
TEST_VMRL_OP( 15176,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat31 );
TEST_VMRL_OP( 15196,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_ones_dat51 );
TEST_VMRL_OP( 15220,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat10 );
TEST_VMRL_OP( 15227,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat17 );
TEST_VMRL_OP( 15234,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_ones_dat24 );
TEST_VMRL_OP( 15283,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat8 );
TEST_VMRL_OP( 15305,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat30 );
TEST_VMRL_OP( 15321,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat40, walking_ones_dat46 );
TEST_VMRL_OP( 15361,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat21 );
TEST_VMRL_OP( 15364,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat24 );
TEST_VMRL_OP( 15376,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat36 );
TEST_VMRL_OP( 15401,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_ones_dat61 );
TEST_VMRL_OP( 15416,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat11 );
TEST_VMRL_OP( 15426,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat21 );
TEST_VMRL_OP( 15435,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat30 );
TEST_VMRL_OP( 15457,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_ones_dat52 );
TEST_VMRL_OP( 15475,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat5 );
TEST_VMRL_OP( 15476,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat6 );
TEST_VMRL_OP( 15483,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_ones_dat13 );
TEST_VMRL_OP( 15540,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat5 );
TEST_VMRL_OP( 15569,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat34 );
TEST_VMRL_OP( 15577,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat42 );
TEST_VMRL_OP( 15582,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat47 );
TEST_VMRL_OP( 15591,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_ones_dat56 );
TEST_VMRL_OP( 15651,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_ones_dat51 );
TEST_VMRL_OP( 15688,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_ones_dat23 );
TEST_VMRL_OP( 15734,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat4 );
TEST_VMRL_OP( 15762,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat32 );
TEST_VMRL_OP( 15787,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_ones_dat57 );
TEST_VMRL_OP( 15816,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat21 );
TEST_VMRL_OP( 15839,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat44 );
TEST_VMRL_OP( 15842,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat47 );
TEST_VMRL_OP( 15844,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat49 );
TEST_VMRL_OP( 15850,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat55 );
TEST_VMRL_OP( 15853,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat58 );
TEST_VMRL_OP( 15857,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_ones_dat62 );
TEST_VMRL_OP( 15910,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat50 );
TEST_VMRL_OP( 15914,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_ones_dat54 );
TEST_VMRL_OP( 15960,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat35 );
TEST_VMRL_OP( 15966,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_ones_dat41 );
TEST_VMRL_OP( 16002,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat12 );
TEST_VMRL_OP( 16008,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat18 );
TEST_VMRL_OP( 16016,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat26 );
TEST_VMRL_OP( 16052,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_ones_dat62 );
TEST_VMRL_OP( 16060,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat5 );
TEST_VMRL_OP( 16069,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat14 );
TEST_VMRL_OP( 16073,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat18 );
TEST_VMRL_OP( 16092,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_ones_dat37 );
TEST_VMRL_OP( 16122,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat2 );
TEST_VMRL_OP( 16178,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_ones_dat58 );
TEST_VMRL_OP( 16219,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_ones_dat34 );
TEST_VMRL_OP( 16265,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat15 );
TEST_VMRL_OP( 16277,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat27 );
TEST_VMRL_OP( 16296,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat46 );
TEST_VMRL_OP( 16297,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat47 );
TEST_VMRL_OP( 16304,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_ones_dat54 );
TEST_VMRL_OP( 16317,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat2 );
TEST_VMRL_OP( 16350,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat35 );
TEST_VMRL_OP( 16360,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat45 );
TEST_VMRL_OP( 16361,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat46 );
TEST_VMRL_OP( 16376,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_ones_dat61 );
TEST_VMRL_OP( 16412,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat32 );
TEST_VMRL_OP( 16427,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat47 );
TEST_VMRL_OP( 16434,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_ones_dat54 );
TEST_VMRL_OP( 16457,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat12 );
TEST_VMRL_OP( 16507,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat62 );
TEST_VMRL_OP( 16509,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_ones_dat64 );
TEST_VMRL_OP( 16512,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat2 );
TEST_VMRL_OP( 16530,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat20 );
TEST_VMRL_OP( 16543,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat33 );
TEST_VMRL_OP( 16557,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_ones_dat47 );
TEST_VMRL_OP( 16580,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat5 );
TEST_VMRL_OP( 16591,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat16 );
TEST_VMRL_OP( 16633,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_ones_dat58 );
TEST_VMRL_OP( 16651,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat11 );
TEST_VMRL_OP( 16659,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat19 );
TEST_VMRL_OP( 16664,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat24 );
TEST_VMRL_OP( 16674,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat34 );
TEST_VMRL_OP( 16688,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat48 );
TEST_VMRL_OP( 16699,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_ones_dat59 );
TEST_VMRL_OP( 16720,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat15 );
TEST_VMRL_OP( 16725,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat20 );
TEST_VMRL_OP( 16730,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat25 );
TEST_VMRL_OP( 16734,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat29 );
TEST_VMRL_OP( 16739,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat34 );
TEST_VMRL_OP( 16746,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat41 );
TEST_VMRL_OP( 16753,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_ones_dat48 );
TEST_VMRL_OP( 16770,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_ones_dat0 );
TEST_VMRL_OP( 16792,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat22 );
TEST_VMRL_OP( 16794,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat24 );
TEST_VMRL_OP( 16800,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_ones_dat30 );
TEST_VMRL_OP( 16840,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat5 );
TEST_VMRL_OP( 16855,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat20 );
TEST_VMRL_OP( 16858,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat23 );
TEST_VMRL_OP( 16863,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat28 );
TEST_VMRL_OP( 16876,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat41 );
TEST_VMRL_OP( 16888,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat53 );
TEST_VMRL_OP( 16892,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_ones_dat57 );
TEST_VMRL_OP( 16900,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 33975,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 33976,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 33977,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 33978,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33979,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33980,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33981,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33982,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33983,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33984,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33985,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33986,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

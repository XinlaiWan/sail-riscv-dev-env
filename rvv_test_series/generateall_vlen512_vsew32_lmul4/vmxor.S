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
TEST_VMRL_OP( 9,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 84,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat19 );
TEST_VMRL_OP( 88,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 99,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat34 );
TEST_VMRL_OP( 145,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 151,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 152,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 174,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat44 );
TEST_VMRL_OP( 183,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat53 );
TEST_VMRL_OP( 242,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat47 );
TEST_VMRL_OP( 254,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat59 );
TEST_VMRL_OP( 297,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat37 );
TEST_VMRL_OP( 327,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 341,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 401,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 447,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat57 );
TEST_VMRL_OP( 451,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat61 );
TEST_VMRL_OP( 477,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat22 );
TEST_VMRL_OP( 480,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat25 );
TEST_VMRL_OP( 491,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat36 );
TEST_VMRL_OP( 501,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat46 );
TEST_VMRL_OP( 508,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat53 );
TEST_VMRL_OP( 521,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 527,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 549,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 557,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat37 );
TEST_VMRL_OP( 572,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat52 );
TEST_VMRL_OP( 595,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 599,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 634,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat49 );
TEST_VMRL_OP( 640,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat55 );
TEST_VMRL_OP( 642,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat57 );
TEST_VMRL_OP( 648,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat63 );
TEST_VMRL_OP( 661,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 664,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 684,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat34 );
TEST_VMRL_OP( 732,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat17 );
TEST_VMRL_OP( 754,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat39 );
TEST_VMRL_OP( 788,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 789,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 799,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 827,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat47 );
TEST_VMRL_OP( 852,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 862,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat17 );
TEST_VMRL_OP( 900,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat55 );
TEST_VMRL_OP( 945,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat35 );
TEST_VMRL_OP( 959,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat49 );
TEST_VMRL_OP( 974,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat64 );
TEST_VMRL_OP( 1004,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat29 );
TEST_VMRL_OP( 1052,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1105,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 1109,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 1111,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 1125,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat20 );
TEST_VMRL_OP( 1179,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat9 );
TEST_VMRL_OP( 1185,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 1216,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat46 );
TEST_VMRL_OP( 1217,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat47 );
TEST_VMRL_OP( 1221,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat51 );
TEST_VMRL_OP( 1229,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat59 );
TEST_VMRL_OP( 1237,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 1252,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 1281,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat46 );
TEST_VMRL_OP( 1307,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat7 );
TEST_VMRL_OP( 1319,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat19 );
TEST_VMRL_OP( 1346,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat46 );
TEST_VMRL_OP( 1359,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat59 );
TEST_VMRL_OP( 1398,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat33 );
TEST_VMRL_OP( 1430,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat0 );
TEST_VMRL_OP( 1440,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 1452,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 1472,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat42 );
TEST_VMRL_OP( 1476,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat46 );
TEST_VMRL_OP( 1477,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat47 );
TEST_VMRL_OP( 1479,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat49 );
TEST_VMRL_OP( 1480,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat50 );
TEST_VMRL_OP( 1512,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 1573,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 1610,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat50 );
TEST_VMRL_OP( 1628,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 1659,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat34 );
TEST_VMRL_OP( 1698,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 1709,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 1716,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 1728,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat38 );
TEST_VMRL_OP( 1742,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat52 );
TEST_VMRL_OP( 1749,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat59 );
TEST_VMRL_OP( 1755,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat0 );
TEST_VMRL_OP( 1759,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 1765,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat10 );
TEST_VMRL_OP( 1784,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 1802,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat47 );
TEST_VMRL_OP( 1870,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat50 );
TEST_VMRL_OP( 1897,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 1939,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat54 );
TEST_VMRL_OP( 1951,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat1 );
TEST_VMRL_OP( 1963,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat13 );
TEST_VMRL_OP( 1971,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 1975,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1979,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 1999,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat49 );
TEST_VMRL_OP( 2045,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat30 );
TEST_VMRL_OP( 2049,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat34 );
TEST_VMRL_OP( 2050,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat35 );
TEST_VMRL_OP( 2055,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat40 );
TEST_VMRL_OP( 2103,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 2123,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat43 );
TEST_VMRL_OP( 2126,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat46 );
TEST_VMRL_OP( 2138,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat58 );
TEST_VMRL_OP( 2156,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_ones_dat11 );
TEST_VMRL_OP( 2164,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_ones_dat19 );
TEST_VMRL_OP( 2185,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_ones_dat40 );
TEST_VMRL_OP( 2209,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat33, walking_ones_dat64 );
TEST_VMRL_OP( 2214,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat4 );
TEST_VMRL_OP( 2230,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat20 );
TEST_VMRL_OP( 2256,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat34, walking_ones_dat46 );
TEST_VMRL_OP( 2277,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat2 );
TEST_VMRL_OP( 2281,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat6 );
TEST_VMRL_OP( 2290,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat15 );
TEST_VMRL_OP( 2315,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat40 );
TEST_VMRL_OP( 2327,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat35, walking_ones_dat52 );
TEST_VMRL_OP( 2357,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_ones_dat17 );
TEST_VMRL_OP( 2387,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat36, walking_ones_dat47 );
TEST_VMRL_OP( 2406,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_ones_dat1 );
TEST_VMRL_OP( 2443,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_ones_dat38 );
TEST_VMRL_OP( 2461,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat37, walking_ones_dat56 );
TEST_VMRL_OP( 2477,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat7 );
TEST_VMRL_OP( 2485,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat15 );
TEST_VMRL_OP( 2489,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat19 );
TEST_VMRL_OP( 2498,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat28 );
TEST_VMRL_OP( 2502,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat32 );
TEST_VMRL_OP( 2519,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat38, walking_ones_dat49 );
TEST_VMRL_OP( 2544,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_ones_dat9 );
TEST_VMRL_OP( 2550,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_ones_dat15 );
TEST_VMRL_OP( 2568,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_ones_dat33 );
TEST_VMRL_OP( 2576,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat39, walking_ones_dat41 );
TEST_VMRL_OP( 2601,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat1 );
TEST_VMRL_OP( 2602,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat2 );
TEST_VMRL_OP( 2603,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat3 );
TEST_VMRL_OP( 2628,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat28 );
TEST_VMRL_OP( 2640,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 2653,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat53 );
TEST_VMRL_OP( 2658,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat40, walking_ones_dat58 );
TEST_VMRL_OP( 2666,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat1 );
TEST_VMRL_OP( 2684,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat19 );
TEST_VMRL_OP( 2704,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat39 );
TEST_VMRL_OP( 2714,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat49 );
TEST_VMRL_OP( 2719,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat54 );
TEST_VMRL_OP( 2721,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat56 );
TEST_VMRL_OP( 2726,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat41, walking_ones_dat61 );
TEST_VMRL_OP( 2747,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_ones_dat17 );
TEST_VMRL_OP( 2767,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_ones_dat37 );
TEST_VMRL_OP( 2773,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_ones_dat43 );
TEST_VMRL_OP( 2782,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat42, walking_ones_dat52 );
TEST_VMRL_OP( 2802,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat7 );
TEST_VMRL_OP( 2810,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat15 );
TEST_VMRL_OP( 2829,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat34 );
TEST_VMRL_OP( 2849,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat54 );
TEST_VMRL_OP( 2854,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat59 );
TEST_VMRL_OP( 2855,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat43, walking_ones_dat60 );
TEST_VMRL_OP( 2863,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_ones_dat3 );
TEST_VMRL_OP( 2879,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_ones_dat19 );
TEST_VMRL_OP( 2892,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_ones_dat32 );
TEST_VMRL_OP( 2913,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_ones_dat53 );
TEST_VMRL_OP( 2918,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat44, walking_ones_dat58 );
TEST_VMRL_OP( 2927,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat2 );
TEST_VMRL_OP( 2957,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat32 );
TEST_VMRL_OP( 2967,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat42 );
TEST_VMRL_OP( 2977,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat52 );
TEST_VMRL_OP( 2982,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat45, walking_ones_dat57 );
TEST_VMRL_OP( 2995,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat5 );
TEST_VMRL_OP( 3020,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat30 );
TEST_VMRL_OP( 3029,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat39 );
TEST_VMRL_OP( 3037,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat47 );
TEST_VMRL_OP( 3038,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat48 );
TEST_VMRL_OP( 3042,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat52 );
TEST_VMRL_OP( 3044,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat46, walking_ones_dat54 );
TEST_VMRL_OP( 3072,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat17 );
TEST_VMRL_OP( 3090,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat35 );
TEST_VMRL_OP( 3091,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat36 );
TEST_VMRL_OP( 3102,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 3110,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat55 );
TEST_VMRL_OP( 3118,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat47, walking_ones_dat63 );
TEST_VMRL_OP( 3173,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat53 );
TEST_VMRL_OP( 3181,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat48, walking_ones_dat61 );
TEST_VMRL_OP( 3194,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat9 );
TEST_VMRL_OP( 3200,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat15 );
TEST_VMRL_OP( 3209,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat24 );
TEST_VMRL_OP( 3223,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat49, walking_ones_dat38 );
TEST_VMRL_OP( 3272,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat22 );
TEST_VMRL_OP( 3281,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat31 );
TEST_VMRL_OP( 3314,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat50, walking_ones_dat64 );
TEST_VMRL_OP( 3317,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_ones_dat2 );
TEST_VMRL_OP( 3322,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_ones_dat7 );
TEST_VMRL_OP( 3335,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_ones_dat20 );
TEST_VMRL_OP( 3353,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_ones_dat38 );
TEST_VMRL_OP( 3359,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat51, walking_ones_dat44 );
TEST_VMRL_OP( 3380,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat52, walking_ones_dat0 );
TEST_VMRL_OP( 3405,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat52, walking_ones_dat25 );
TEST_VMRL_OP( 3456,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_ones_dat11 );
TEST_VMRL_OP( 3478,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_ones_dat33 );
TEST_VMRL_OP( 3479,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat53, walking_ones_dat34 );
TEST_VMRL_OP( 3513,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat54, walking_ones_dat3 );
TEST_VMRL_OP( 3551,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat54, walking_ones_dat41 );
TEST_VMRL_OP( 3553,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat54, walking_ones_dat43 );
TEST_VMRL_OP( 3576,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat55, walking_ones_dat1 );
TEST_VMRL_OP( 3577,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat55, walking_ones_dat2 );
TEST_VMRL_OP( 3582,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat55, walking_ones_dat7 );
TEST_VMRL_OP( 3665,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_ones_dat25 );
TEST_VMRL_OP( 3670,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_ones_dat30 );
TEST_VMRL_OP( 3672,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat56, walking_ones_dat32 );
TEST_VMRL_OP( 3737,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_ones_dat32 );
TEST_VMRL_OP( 3752,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_ones_dat47 );
TEST_VMRL_OP( 3765,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat57, walking_ones_dat60 );
TEST_VMRL_OP( 3785,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat15 );
TEST_VMRL_OP( 3786,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat16 );
TEST_VMRL_OP( 3804,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat34 );
TEST_VMRL_OP( 3818,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat48 );
TEST_VMRL_OP( 3823,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat53 );
TEST_VMRL_OP( 3829,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat58, walking_ones_dat59 );
TEST_VMRL_OP( 3849,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat14 );
TEST_VMRL_OP( 3852,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat17 );
TEST_VMRL_OP( 3883,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat48 );
TEST_VMRL_OP( 3884,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat49 );
TEST_VMRL_OP( 3896,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat59, walking_ones_dat61 );
TEST_VMRL_OP( 3907,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_ones_dat7 );
TEST_VMRL_OP( 3909,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_ones_dat9 );
TEST_VMRL_OP( 3948,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat60, walking_ones_dat48 );
TEST_VMRL_OP( 3998,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat61, walking_ones_dat33 );
TEST_VMRL_OP( 4032,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat2 );
TEST_VMRL_OP( 4036,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat6 );
TEST_VMRL_OP( 4045,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat15 );
TEST_VMRL_OP( 4046,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat16 );
TEST_VMRL_OP( 4051,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat21 );
TEST_VMRL_OP( 4058,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat28 );
TEST_VMRL_OP( 4067,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat37 );
TEST_VMRL_OP( 4085,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat62, walking_ones_dat55 );
TEST_VMRL_OP( 4109,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat14 );
TEST_VMRL_OP( 4115,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat20 );
TEST_VMRL_OP( 4116,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat21 );
TEST_VMRL_OP( 4118,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat23 );
TEST_VMRL_OP( 4125,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat30 );
TEST_VMRL_OP( 4134,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat39 );
TEST_VMRL_OP( 4157,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat63, walking_ones_dat62 );
TEST_VMRL_OP( 4171,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat11 );
TEST_VMRL_OP( 4173,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat13 );
TEST_VMRL_OP( 4215,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat64, walking_ones_dat55 );
TEST_VMRL_OP( 4225,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4237,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 4241,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 4245,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 4263,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat38 );
TEST_VMRL_OP( 4267,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat42 );
TEST_VMRL_OP( 4268,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat43 );
TEST_VMRL_OP( 4284,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat59 );
TEST_VMRL_OP( 4290,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 4292,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 4296,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 4308,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 4319,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat29 );
TEST_VMRL_OP( 4349,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat59 );
TEST_VMRL_OP( 4351,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat61 );
TEST_VMRL_OP( 4360,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 4367,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 4385,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 4399,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat44 );
TEST_VMRL_OP( 4417,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat62 );
TEST_VMRL_OP( 4425,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 4427,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 4444,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat24 );
TEST_VMRL_OP( 4447,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 4454,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat34 );
TEST_VMRL_OP( 4456,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat36 );
TEST_VMRL_OP( 4461,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat41 );
TEST_VMRL_OP( 4467,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat47 );
TEST_VMRL_OP( 4492,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 4517,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 4546,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat61 );
TEST_VMRL_OP( 4557,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 4567,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 4578,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 4588,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat38 );
TEST_VMRL_OP( 4589,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat39 );
TEST_VMRL_OP( 4593,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat43 );
TEST_VMRL_OP( 4598,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat48 );
TEST_VMRL_OP( 4601,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat51 );
TEST_VMRL_OP( 4631,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 4632,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat17 );
TEST_VMRL_OP( 4672,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat57 );
TEST_VMRL_OP( 4681,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 4686,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 4697,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat17 );
TEST_VMRL_OP( 4699,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 4728,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat48 );
TEST_VMRL_OP( 4743,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat63 );
TEST_VMRL_OP( 4768,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 4773,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 4777,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 4790,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat45 );
TEST_VMRL_OP( 4813,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 4860,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat50 );
TEST_VMRL_OP( 4871,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat61 );
TEST_VMRL_OP( 4881,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 4888,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 4896,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 4918,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat43 );
TEST_VMRL_OP( 4923,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat48 );
TEST_VMRL_OP( 4960,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 4961,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat21 );
TEST_VMRL_OP( 4970,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 4998,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat58 );
TEST_VMRL_OP( 5008,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 5036,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 5040,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat35 );
TEST_VMRL_OP( 5046,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat41 );
TEST_VMRL_OP( 5055,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat50 );
TEST_VMRL_OP( 5079,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 5082,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 5089,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 5105,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat35 );
TEST_VMRL_OP( 5132,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat62 );
TEST_VMRL_OP( 5165,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat30 );
TEST_VMRL_OP( 5170,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat35 );
TEST_VMRL_OP( 5186,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat51 );
TEST_VMRL_OP( 5196,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat61 );
TEST_VMRL_OP( 5208,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 5214,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 5221,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 5244,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat44 );
TEST_VMRL_OP( 5258,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat58 );
TEST_VMRL_OP( 5265,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 5272,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 5287,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat22 );
TEST_VMRL_OP( 5293,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 5321,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat56 );
TEST_VMRL_OP( 5368,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat38 );
TEST_VMRL_OP( 5386,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat56 );
TEST_VMRL_OP( 5399,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 5458,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat63 );
TEST_VMRL_OP( 5461,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 5487,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 5491,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 5504,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat44 );
TEST_VMRL_OP( 5505,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat45 );
TEST_VMRL_OP( 5511,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat51 );
TEST_VMRL_OP( 5522,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat62 );
TEST_VMRL_OP( 5539,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 5566,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat41 );
TEST_VMRL_OP( 5568,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat43 );
TEST_VMRL_OP( 5588,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat63 );
TEST_VMRL_OP( 5593,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat3 );
TEST_VMRL_OP( 5596,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 5615,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 5624,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat34 );
TEST_VMRL_OP( 5633,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat43 );
TEST_VMRL_OP( 5634,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat44 );
TEST_VMRL_OP( 5649,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat59 );
TEST_VMRL_OP( 5650,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat60 );
TEST_VMRL_OP( 5655,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 5660,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 5666,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 5680,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat25 );
TEST_VMRL_OP( 5684,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 5696,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat41 );
TEST_VMRL_OP( 5700,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat45 );
TEST_VMRL_OP( 5718,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat63 );
TEST_VMRL_OP( 5721,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 5736,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 5739,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 5780,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat60 );
TEST_VMRL_OP( 5796,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 5836,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat51 );
TEST_VMRL_OP( 5865,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 5873,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 5884,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat34 );
TEST_VMRL_OP( 5889,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat39 );
TEST_VMRL_OP( 5943,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 5976,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat61 );
TEST_VMRL_OP( 6031,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat51 );
TEST_VMRL_OP( 6058,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 6063,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat18 );
TEST_VMRL_OP( 6070,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 6101,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat56 );
TEST_VMRL_OP( 6108,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat63 );
TEST_VMRL_OP( 6112,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 6113,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 6137,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 6156,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat46 );
TEST_VMRL_OP( 6185,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 6192,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 6194,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 6204,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 6205,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 6216,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat41 );
TEST_VMRL_OP( 6223,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat48 );
TEST_VMRL_OP( 6264,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 6297,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat57 );
TEST_VMRL_OP( 6322,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 6326,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 6355,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat50 );
TEST_VMRL_OP( 6367,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat62 );
TEST_VMRL_OP( 6372,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat2 );
TEST_VMRL_OP( 6407,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat37 );
TEST_VMRL_OP( 6412,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat42 );
TEST_VMRL_OP( 6434,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat33, walking_zeros_dat64 );
TEST_VMRL_OP( 6461,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat26 );
TEST_VMRL_OP( 6466,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat34, walking_zeros_dat31 );
TEST_VMRL_OP( 6526,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat26 );
TEST_VMRL_OP( 6538,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat35, walking_zeros_dat38 );
TEST_VMRL_OP( 6594,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat29 );
TEST_VMRL_OP( 6596,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat31 );
TEST_VMRL_OP( 6602,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat37 );
TEST_VMRL_OP( 6620,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat55 );
TEST_VMRL_OP( 6626,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat36, walking_zeros_dat61 );
TEST_VMRL_OP( 6648,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat18 );
TEST_VMRL_OP( 6662,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat32 );
TEST_VMRL_OP( 6666,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat36 );
TEST_VMRL_OP( 6670,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat40 );
TEST_VMRL_OP( 6674,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat44 );
TEST_VMRL_OP( 6689,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat37, walking_zeros_dat59 );
TEST_VMRL_OP( 6702,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat7 );
TEST_VMRL_OP( 6736,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat41 );
TEST_VMRL_OP( 6737,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat42 );
TEST_VMRL_OP( 6740,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat45 );
TEST_VMRL_OP( 6756,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat38, walking_zeros_dat61 );
TEST_VMRL_OP( 6764,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat4 );
TEST_VMRL_OP( 6768,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat8 );
TEST_VMRL_OP( 6771,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat11 );
TEST_VMRL_OP( 6775,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat15 );
TEST_VMRL_OP( 6811,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat39, walking_zeros_dat51 );
TEST_VMRL_OP( 6898,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat8 );
TEST_VMRL_OP( 6911,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat21 );
TEST_VMRL_OP( 6947,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat57 );
TEST_VMRL_OP( 6948,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat41, walking_zeros_dat58 );
TEST_VMRL_OP( 6960,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat5 );
TEST_VMRL_OP( 6972,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat17 );
TEST_VMRL_OP( 6987,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat32 );
TEST_VMRL_OP( 7017,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat42, walking_zeros_dat62 );
TEST_VMRL_OP( 7041,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat21 );
TEST_VMRL_OP( 7062,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat42 );
TEST_VMRL_OP( 7069,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat49 );
TEST_VMRL_OP( 7074,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat54 );
TEST_VMRL_OP( 7075,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat55 );
TEST_VMRL_OP( 7079,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat43, walking_zeros_dat59 );
TEST_VMRL_OP( 7089,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat4 );
TEST_VMRL_OP( 7110,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat25 );
TEST_VMRL_OP( 7126,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat41 );
TEST_VMRL_OP( 7143,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat58 );
TEST_VMRL_OP( 7147,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat62 );
TEST_VMRL_OP( 7148,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat44, walking_zeros_dat63 );
TEST_VMRL_OP( 7170,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat20 );
TEST_VMRL_OP( 7197,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat47 );
TEST_VMRL_OP( 7203,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat53 );
TEST_VMRL_OP( 7207,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat57 );
TEST_VMRL_OP( 7210,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat45, walking_zeros_dat60 );
TEST_VMRL_OP( 7221,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat6 );
TEST_VMRL_OP( 7242,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat46, walking_zeros_dat27 );
TEST_VMRL_OP( 7289,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat9 );
TEST_VMRL_OP( 7290,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat10 );
TEST_VMRL_OP( 7293,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat13 );
TEST_VMRL_OP( 7298,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat18 );
TEST_VMRL_OP( 7305,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat25 );
TEST_VMRL_OP( 7308,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat47, walking_zeros_dat28 );
TEST_VMRL_OP( 7398,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat48, walking_zeros_dat53 );
TEST_VMRL_OP( 7438,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat28 );
TEST_VMRL_OP( 7443,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat33 );
TEST_VMRL_OP( 7468,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat49, walking_zeros_dat58 );
TEST_VMRL_OP( 7490,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat15 );
TEST_VMRL_OP( 7496,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat21 );
TEST_VMRL_OP( 7497,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat22 );
TEST_VMRL_OP( 7499,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat24 );
TEST_VMRL_OP( 7510,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat35 );
TEST_VMRL_OP( 7517,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat42 );
TEST_VMRL_OP( 7536,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat50, walking_zeros_dat61 );
TEST_VMRL_OP( 7600,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat51, walking_zeros_dat60 );
TEST_VMRL_OP( 7610,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat5 );
TEST_VMRL_OP( 7613,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat8 );
TEST_VMRL_OP( 7660,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat52, walking_zeros_dat55 );
TEST_VMRL_OP( 7679,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat9 );
TEST_VMRL_OP( 7721,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat53, walking_zeros_dat51 );
TEST_VMRL_OP( 7723,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 7754,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat54, walking_zeros_dat19 );
TEST_VMRL_OP( 7805,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat5 );
TEST_VMRL_OP( 7860,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat55, walking_zeros_dat60 );
TEST_VMRL_OP( 7898,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat56, walking_zeros_dat33 );
TEST_VMRL_OP( 7944,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat14 );
TEST_VMRL_OP( 7968,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat38 );
TEST_VMRL_OP( 7978,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat48 );
TEST_VMRL_OP( 7985,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat55 );
TEST_VMRL_OP( 7987,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 7989,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat59 );
TEST_VMRL_OP( 7992,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat57, walking_zeros_dat62 );
TEST_VMRL_OP( 7995,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat58, walking_zeros_dat0 );
TEST_VMRL_OP( 8005,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat10 );
TEST_VMRL_OP( 8014,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat19 );
TEST_VMRL_OP( 8049,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat54 );
TEST_VMRL_OP( 8057,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat58, walking_zeros_dat62 );
TEST_VMRL_OP( 8063,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat3 );
TEST_VMRL_OP( 8065,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat5 );
TEST_VMRL_OP( 8071,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat11 );
TEST_VMRL_OP( 8076,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat16 );
TEST_VMRL_OP( 8102,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat42 );
TEST_VMRL_OP( 8104,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat44 );
TEST_VMRL_OP( 8111,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat59, walking_zeros_dat51 );
TEST_VMRL_OP( 8144,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat19 );
TEST_VMRL_OP( 8160,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat35 );
TEST_VMRL_OP( 8187,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat60, walking_zeros_dat62 );
TEST_VMRL_OP( 8210,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat20 );
TEST_VMRL_OP( 8254,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat61, walking_zeros_dat64 );
TEST_VMRL_OP( 8263,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat8 );
TEST_VMRL_OP( 8289,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat34 );
TEST_VMRL_OP( 8306,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat51 );
TEST_VMRL_OP( 8309,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat54 );
TEST_VMRL_OP( 8312,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat62, walking_zeros_dat57 );
TEST_VMRL_OP( 8320,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat63, walking_zeros_dat0 );
TEST_VMRL_OP( 8325,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat5 );
TEST_VMRL_OP( 8348,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat28 );
TEST_VMRL_OP( 8363,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat63, walking_zeros_dat43 );
TEST_VMRL_OP( 8383,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 8411,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat26 );
TEST_VMRL_OP( 8417,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat64, walking_zeros_dat32 );
TEST_VMRL_OP( 8460,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 8469,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 8483,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat33 );
TEST_VMRL_OP( 8485,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat35 );
TEST_VMRL_OP( 8501,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat0, walking_zeros_dat51 );
TEST_VMRL_OP( 8515,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 8518,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 8567,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat1, walking_zeros_dat52 );
TEST_VMRL_OP( 8590,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 8599,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat19 );
TEST_VMRL_OP( 8620,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat40 );
TEST_VMRL_OP( 8623,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat2, walking_zeros_dat43 );
TEST_VMRL_OP( 8646,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 8647,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 8648,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 8649,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 8656,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 8660,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 8666,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 8686,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat3, walking_zeros_dat41 );
TEST_VMRL_OP( 8715,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 8746,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat4, walking_zeros_dat36 );
TEST_VMRL_OP( 8777,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 8778,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 8786,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 8798,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 8824,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat49 );
TEST_VMRL_OP( 8838,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat5, walking_zeros_dat63 );
TEST_VMRL_OP( 8842,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 8854,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 8869,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 8985,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 9025,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat8, walking_zeros_dat55 );
TEST_VMRL_OP( 9040,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 9055,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat20 );
TEST_VMRL_OP( 9071,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat36 );
TEST_VMRL_OP( 9092,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat9, walking_zeros_dat57 );
TEST_VMRL_OP( 9120,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 9126,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 9133,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat33 );
TEST_VMRL_OP( 9139,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat39 );
TEST_VMRL_OP( 9141,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat41 );
TEST_VMRL_OP( 9147,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat10, walking_zeros_dat47 );
TEST_VMRL_OP( 9218,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat11, walking_zeros_dat53 );
TEST_VMRL_OP( 9230,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 9247,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat17 );
TEST_VMRL_OP( 9287,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat12, walking_zeros_dat57 );
TEST_VMRL_OP( 9351,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat13, walking_zeros_dat56 );
TEST_VMRL_OP( 9379,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 9424,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat14, walking_zeros_dat64 );
TEST_VMRL_OP( 9434,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 9463,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat38 );
TEST_VMRL_OP( 9466,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat15, walking_zeros_dat41 );
TEST_VMRL_OP( 9591,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat36 );
TEST_VMRL_OP( 9599,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat44 );
TEST_VMRL_OP( 9607,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat52 );
TEST_VMRL_OP( 9619,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat17, walking_zeros_dat64 );
TEST_VMRL_OP( 9642,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 9670,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat50 );
TEST_VMRL_OP( 9678,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat58 );
TEST_VMRL_OP( 9682,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat18, walking_zeros_dat62 );
TEST_VMRL_OP( 9696,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 9700,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 9735,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat50 );
TEST_VMRL_OP( 9739,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat19, walking_zeros_dat54 );
TEST_VMRL_OP( 9758,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 9766,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 9774,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 9806,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat56 );
TEST_VMRL_OP( 9812,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat20, walking_zeros_dat62 );
TEST_VMRL_OP( 9827,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat12 );
TEST_VMRL_OP( 9855,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat21, walking_zeros_dat40 );
TEST_VMRL_OP( 9891,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 9946,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 9958,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 9968,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 9992,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat47 );
TEST_VMRL_OP( 9993,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat23, walking_zeros_dat48 );
TEST_VMRL_OP( 10010,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat24, walking_zeros_dat0 );
TEST_VMRL_OP( 10023,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 10048,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat38 );
TEST_VMRL_OP( 10066,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat24, walking_zeros_dat56 );
TEST_VMRL_OP( 10137,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat25, walking_zeros_dat62 );
TEST_VMRL_OP( 10179,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat26, walking_zeros_dat39 );
TEST_VMRL_OP( 10209,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 10246,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat27, walking_zeros_dat41 );
TEST_VMRL_OP( 10299,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 10314,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat28, walking_zeros_dat44 );
TEST_VMRL_OP( 10339,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 10373,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat38 );
TEST_VMRL_OP( 10394,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat29, walking_zeros_dat59 );
TEST_VMRL_OP( 10437,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat37 );
TEST_VMRL_OP( 10438,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat38 );
TEST_VMRL_OP( 10446,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat30, walking_zeros_dat46 );
TEST_VMRL_OP( 10474,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 10490,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 10492,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 10497,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 10510,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat31, walking_zeros_dat45 );
TEST_VMRL_OP( 10553,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 10569,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat39 );
TEST_VMRL_OP( 10587,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat57 );
TEST_VMRL_OP( 10588,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat58 );
TEST_VMRL_OP( 10593,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat32, walking_zeros_dat63 );
TEST_VMRL_OP( 10612,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat17 );
TEST_VMRL_OP( 10629,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat34 );
TEST_VMRL_OP( 10643,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat48 );
TEST_VMRL_OP( 10655,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat60 );
TEST_VMRL_OP( 10659,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat33, walking_zeros_dat64 );
TEST_VMRL_OP( 10678,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat18 );
TEST_VMRL_OP( 10709,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat34, walking_zeros_dat49 );
TEST_VMRL_OP( 10725,  vmxor.mm,  32,  0x000000000000003f, walking_ones_dat35, walking_zeros_dat0 );
TEST_VMRL_OP( 10731,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat6 );
TEST_VMRL_OP( 10747,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat22 );
TEST_VMRL_OP( 10754,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat29 );
TEST_VMRL_OP( 10755,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat30 );
TEST_VMRL_OP( 10773,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat48 );
TEST_VMRL_OP( 10781,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat35, walking_zeros_dat56 );
TEST_VMRL_OP( 10808,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat18 );
TEST_VMRL_OP( 10809,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat19 );
TEST_VMRL_OP( 10817,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat27 );
TEST_VMRL_OP( 10818,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat28 );
TEST_VMRL_OP( 10824,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat34 );
TEST_VMRL_OP( 10826,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 10851,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat36, walking_zeros_dat61 );
TEST_VMRL_OP( 10857,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat2 );
TEST_VMRL_OP( 10868,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat13 );
TEST_VMRL_OP( 10869,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat37, walking_zeros_dat14 );
TEST_VMRL_OP( 10927,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat7 );
TEST_VMRL_OP( 10947,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat27 );
TEST_VMRL_OP( 10957,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat37 );
TEST_VMRL_OP( 10964,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat44 );
TEST_VMRL_OP( 10975,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat38, walking_zeros_dat55 );
TEST_VMRL_OP( 10996,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat11 );
TEST_VMRL_OP( 11041,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat39, walking_zeros_dat56 );
TEST_VMRL_OP( 11055,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat5 );
TEST_VMRL_OP( 11056,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat6 );
TEST_VMRL_OP( 11067,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat17 );
TEST_VMRL_OP( 11068,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat18 );
TEST_VMRL_OP( 11073,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat23 );
TEST_VMRL_OP( 11088,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat38 );
TEST_VMRL_OP( 11089,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat39 );
TEST_VMRL_OP( 11104,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat40, walking_zeros_dat54 );
TEST_VMRL_OP( 11126,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat11 );
TEST_VMRL_OP( 11130,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat15 );
TEST_VMRL_OP( 11132,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat17 );
TEST_VMRL_OP( 11134,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat19 );
TEST_VMRL_OP( 11140,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat25 );
TEST_VMRL_OP( 11141,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat41, walking_zeros_dat26 );
TEST_VMRL_OP( 11190,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat10 );
TEST_VMRL_OP( 11191,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat11 );
TEST_VMRL_OP( 11209,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat29 );
TEST_VMRL_OP( 11240,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat60 );
TEST_VMRL_OP( 11243,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat42, walking_zeros_dat63 );
TEST_VMRL_OP( 11288,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 11329,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat19 );
TEST_VMRL_OP( 11333,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat23 );
TEST_VMRL_OP( 11335,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat44, walking_zeros_dat25 );
TEST_VMRL_OP( 11377,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat2 );
TEST_VMRL_OP( 11382,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat7 );
TEST_VMRL_OP( 11386,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat11 );
TEST_VMRL_OP( 11389,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat14 );
TEST_VMRL_OP( 11419,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat45, walking_zeros_dat44 );
TEST_VMRL_OP( 11448,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat8 );
TEST_VMRL_OP( 11462,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat22 );
TEST_VMRL_OP( 11479,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat39 );
TEST_VMRL_OP( 11487,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat47 );
TEST_VMRL_OP( 11501,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat46, walking_zeros_dat61 );
TEST_VMRL_OP( 11506,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat1 );
TEST_VMRL_OP( 11513,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat8 );
TEST_VMRL_OP( 11536,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat31 );
TEST_VMRL_OP( 11551,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat46 );
TEST_VMRL_OP( 11562,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat47, walking_zeros_dat57 );
TEST_VMRL_OP( 11589,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat19 );
TEST_VMRL_OP( 11626,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat48, walking_zeros_dat56 );
TEST_VMRL_OP( 11661,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat26 );
TEST_VMRL_OP( 11695,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat49, walking_zeros_dat60 );
TEST_VMRL_OP( 11710,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat10 );
TEST_VMRL_OP( 11722,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat22 );
TEST_VMRL_OP( 11729,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat29 );
TEST_VMRL_OP( 11747,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat50, walking_zeros_dat47 );
TEST_VMRL_OP( 11750,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 11812,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat51, walking_zeros_dat47 );
TEST_VMRL_OP( 11850,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat20 );
TEST_VMRL_OP( 11852,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat22 );
TEST_VMRL_OP( 11864,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat34 );
TEST_VMRL_OP( 11879,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat49 );
TEST_VMRL_OP( 11883,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat52, walking_zeros_dat53 );
TEST_VMRL_OP( 11938,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat53, walking_zeros_dat43 );
TEST_VMRL_OP( 11988,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat28 );
TEST_VMRL_OP( 11990,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat54, walking_zeros_dat30 );
TEST_VMRL_OP( 12063,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat38 );
TEST_VMRL_OP( 12071,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat46 );
TEST_VMRL_OP( 12085,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat55, walking_zeros_dat60 );
TEST_VMRL_OP( 12140,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat50 );
TEST_VMRL_OP( 12149,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat56, walking_zeros_dat59 );
TEST_VMRL_OP( 12161,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat6 );
TEST_VMRL_OP( 12165,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat10 );
TEST_VMRL_OP( 12174,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat19 );
TEST_VMRL_OP( 12188,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat33 );
TEST_VMRL_OP( 12190,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat35 );
TEST_VMRL_OP( 12195,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat40 );
TEST_VMRL_OP( 12201,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat46 );
TEST_VMRL_OP( 12219,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat57, walking_zeros_dat64 );
TEST_VMRL_OP( 12226,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat6 );
TEST_VMRL_OP( 12240,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat20 );
TEST_VMRL_OP( 12255,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat58, walking_zeros_dat35 );
TEST_VMRL_OP( 12300,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat15 );
TEST_VMRL_OP( 12310,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat25 );
TEST_VMRL_OP( 12344,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 12348,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat59, walking_zeros_dat63 );
TEST_VMRL_OP( 12352,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat2 );
TEST_VMRL_OP( 12384,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat34 );
TEST_VMRL_OP( 12399,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat49 );
TEST_VMRL_OP( 12412,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat60, walking_zeros_dat62 );
TEST_VMRL_OP( 12436,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat21 );
TEST_VMRL_OP( 12437,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat22 );
TEST_VMRL_OP( 12438,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat23 );
TEST_VMRL_OP( 12448,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat33 );
TEST_VMRL_OP( 12461,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat61, walking_zeros_dat46 );
TEST_VMRL_OP( 12512,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat32 );
TEST_VMRL_OP( 12531,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat62, walking_zeros_dat51 );
TEST_VMRL_OP( 12548,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat3 );
TEST_VMRL_OP( 12560,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat63, walking_zeros_dat15 );
TEST_VMRL_OP( 12615,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat5 );
TEST_VMRL_OP( 12627,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat17 );
TEST_VMRL_OP( 12655,  vmxor.mm,  32,  0x000000000000003e, walking_ones_dat64, walking_zeros_dat45 );
TEST_VMRL_OP( 12678,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 12688,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 12716,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat41 );
TEST_VMRL_OP( 12737,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat62 );
TEST_VMRL_OP( 12807,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 12846,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_ones_dat41 );
TEST_VMRL_OP( 12855,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat2, walking_ones_dat50 );
TEST_VMRL_OP( 12873,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 12875,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 12885,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 12889,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat19 );
TEST_VMRL_OP( 12899,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 12909,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat39 );
TEST_VMRL_OP( 12918,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat3, walking_ones_dat48 );
TEST_VMRL_OP( 12960,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 12972,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_ones_dat37 );
TEST_VMRL_OP( 12974,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_ones_dat39 );
TEST_VMRL_OP( 12981,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat4, walking_ones_dat46 );
TEST_VMRL_OP( 13009,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 13062,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat5, walking_ones_dat62 );
TEST_VMRL_OP( 13082,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_ones_dat17 );
TEST_VMRL_OP( 13087,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 13096,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 13127,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat6, walking_ones_dat62 );
TEST_VMRL_OP( 13136,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 13140,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 13149,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 13167,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat7, walking_ones_dat37 );
TEST_VMRL_OP( 13222,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 13239,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat44 );
TEST_VMRL_OP( 13240,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat45 );
TEST_VMRL_OP( 13252,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat57 );
TEST_VMRL_OP( 13256,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat8, walking_ones_dat61 );
TEST_VMRL_OP( 13267,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 13289,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat29 );
TEST_VMRL_OP( 13299,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat39 );
TEST_VMRL_OP( 13312,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat52 );
TEST_VMRL_OP( 13319,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat59 );
TEST_VMRL_OP( 13324,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat9, walking_ones_dat64 );
TEST_VMRL_OP( 13325,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 13330,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 13391,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 13393,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 13395,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 13398,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 13414,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 13434,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat11, walking_ones_dat44 );
TEST_VMRL_OP( 13456,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 13459,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 13471,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 13508,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat53 );
TEST_VMRL_OP( 13518,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat12, walking_ones_dat63 );
TEST_VMRL_OP( 13527,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 13533,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 13536,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 13548,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat13, walking_ones_dat28 );
TEST_VMRL_OP( 13612,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 13637,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat14, walking_ones_dat52 );
TEST_VMRL_OP( 13665,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 13683,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_ones_dat33 );
TEST_VMRL_OP( 13687,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_ones_dat37 );
TEST_VMRL_OP( 13695,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_ones_dat45 );
TEST_VMRL_OP( 13698,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat15, walking_ones_dat48 );
TEST_VMRL_OP( 13716,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 13718,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 13721,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 13725,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 13728,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 13763,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat16, walking_ones_dat48 );
TEST_VMRL_OP( 13798,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 13848,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 13851,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 13866,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 13867,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat22 );
TEST_VMRL_OP( 13882,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat37 );
TEST_VMRL_OP( 13904,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat18, walking_ones_dat59 );
TEST_VMRL_OP( 13914,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_ones_dat4 );
TEST_VMRL_OP( 13918,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 13957,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_ones_dat47 );
TEST_VMRL_OP( 13970,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat19, walking_ones_dat60 );
TEST_VMRL_OP( 13989,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 13990,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_ones_dat15 );
TEST_VMRL_OP( 13993,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 14045,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 14052,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 14077,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat37 );
TEST_VMRL_OP( 14102,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat21, walking_ones_dat62 );
TEST_VMRL_OP( 14106,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat1 );
TEST_VMRL_OP( 14130,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 14152,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat47 );
TEST_VMRL_OP( 14166,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat22, walking_ones_dat61 );
TEST_VMRL_OP( 14183,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 14186,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat16 );
TEST_VMRL_OP( 14189,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 14192,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 14218,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat48 );
TEST_VMRL_OP( 14234,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat23, walking_ones_dat64 );
TEST_VMRL_OP( 14242,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_ones_dat7 );
TEST_VMRL_OP( 14245,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_ones_dat10 );
TEST_VMRL_OP( 14282,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_ones_dat47 );
TEST_VMRL_OP( 14295,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_ones_dat60 );
TEST_VMRL_OP( 14299,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat24, walking_ones_dat64 );
TEST_VMRL_OP( 14302,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 14327,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 14335,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat35 );
TEST_VMRL_OP( 14341,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat25, walking_ones_dat41 );
TEST_VMRL_OP( 14374,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 14377,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat12 );
TEST_VMRL_OP( 14396,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 14429,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat26, walking_ones_dat64 );
TEST_VMRL_OP( 14457,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 14476,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_ones_dat46 );
TEST_VMRL_OP( 14482,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_ones_dat52 );
TEST_VMRL_OP( 14492,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_ones_dat62 );
TEST_VMRL_OP( 14493,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat27, walking_ones_dat63 );
TEST_VMRL_OP( 14507,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 14510,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 14515,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 14531,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_ones_dat36 );
TEST_VMRL_OP( 14537,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat28, walking_ones_dat42 );
TEST_VMRL_OP( 14573,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 14574,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_ones_dat14 );
TEST_VMRL_OP( 14577,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 14589,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 14642,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 14645,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 14652,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat27 );
TEST_VMRL_OP( 14654,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 14667,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat42 );
TEST_VMRL_OP( 14677,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat52 );
TEST_VMRL_OP( 14689,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat30, walking_ones_dat64 );
TEST_VMRL_OP( 14693,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 14719,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 14726,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat36 );
TEST_VMRL_OP( 14738,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat48 );
TEST_VMRL_OP( 14739,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat49 );
TEST_VMRL_OP( 14742,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat52 );
TEST_VMRL_OP( 14749,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat59 );
TEST_VMRL_OP( 14751,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat31, walking_ones_dat61 );
TEST_VMRL_OP( 14804,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_ones_dat49 );
TEST_VMRL_OP( 14806,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat32, walking_ones_dat51 );
TEST_VMRL_OP( 14837,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat17 );
TEST_VMRL_OP( 14838,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat18 );
TEST_VMRL_OP( 14860,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat40 );
TEST_VMRL_OP( 14875,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat33, walking_ones_dat55 );
TEST_VMRL_OP( 14897,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_ones_dat12 );
TEST_VMRL_OP( 14931,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_ones_dat46 );
TEST_VMRL_OP( 14940,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat34, walking_ones_dat55 );
TEST_VMRL_OP( 14960,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_ones_dat10 );
TEST_VMRL_OP( 14994,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_ones_dat44 );
TEST_VMRL_OP( 14998,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat35, walking_ones_dat48 );
TEST_VMRL_OP( 15049,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat36, walking_ones_dat34 );
TEST_VMRL_OP( 15099,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat19 );
TEST_VMRL_OP( 15100,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat20 );
TEST_VMRL_OP( 15108,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat28 );
TEST_VMRL_OP( 15130,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat50 );
TEST_VMRL_OP( 15141,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat37, walking_ones_dat61 );
TEST_VMRL_OP( 15150,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_ones_dat5 );
TEST_VMRL_OP( 15157,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_ones_dat12 );
TEST_VMRL_OP( 15187,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat38, walking_ones_dat42 );
TEST_VMRL_OP( 15234,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_ones_dat24 );
TEST_VMRL_OP( 15260,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat39, walking_ones_dat50 );
TEST_VMRL_OP( 15295,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat20 );
TEST_VMRL_OP( 15318,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat40, walking_ones_dat43 );
TEST_VMRL_OP( 15366,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_ones_dat26 );
TEST_VMRL_OP( 15394,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_ones_dat54 );
TEST_VMRL_OP( 15397,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_ones_dat57 );
TEST_VMRL_OP( 15404,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat41, walking_ones_dat64 );
TEST_VMRL_OP( 15438,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat33 );
TEST_VMRL_OP( 15449,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat44 );
TEST_VMRL_OP( 15451,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat46 );
TEST_VMRL_OP( 15461,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat42, walking_ones_dat56 );
TEST_VMRL_OP( 15597,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat44, walking_ones_dat62 );
TEST_VMRL_OP( 15611,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_ones_dat11 );
TEST_VMRL_OP( 15621,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat45, walking_ones_dat21 );
TEST_VMRL_OP( 15666,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_ones_dat1 );
TEST_VMRL_OP( 15669,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_ones_dat4 );
TEST_VMRL_OP( 15696,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_ones_dat31 );
TEST_VMRL_OP( 15701,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat46, walking_ones_dat36 );
TEST_VMRL_OP( 15735,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat5 );
TEST_VMRL_OP( 15736,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat6 );
TEST_VMRL_OP( 15754,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat24 );
TEST_VMRL_OP( 15772,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat42 );
TEST_VMRL_OP( 15787,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat57 );
TEST_VMRL_OP( 15788,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat47, walking_ones_dat58 );
TEST_VMRL_OP( 15811,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat16 );
TEST_VMRL_OP( 15822,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat27 );
TEST_VMRL_OP( 15836,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat48, walking_ones_dat41 );
TEST_VMRL_OP( 15866,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat6 );
TEST_VMRL_OP( 15877,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat17 );
TEST_VMRL_OP( 15878,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat18 );
TEST_VMRL_OP( 15891,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat31 );
TEST_VMRL_OP( 15893,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat33 );
TEST_VMRL_OP( 15896,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat36 );
TEST_VMRL_OP( 15910,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat50 );
TEST_VMRL_OP( 15912,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat49, walking_ones_dat52 );
TEST_VMRL_OP( 15953,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_ones_dat28 );
TEST_VMRL_OP( 15954,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_ones_dat29 );
TEST_VMRL_OP( 15966,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_ones_dat41 );
TEST_VMRL_OP( 15977,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat50, walking_ones_dat52 );
TEST_VMRL_OP( 16014,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat51, walking_ones_dat24 );
TEST_VMRL_OP( 16088,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat33 );
TEST_VMRL_OP( 16090,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat35 );
TEST_VMRL_OP( 16097,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat42 );
TEST_VMRL_OP( 16104,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat49 );
TEST_VMRL_OP( 16118,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat52, walking_ones_dat63 );
TEST_VMRL_OP( 16141,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat53, walking_ones_dat21 );
TEST_VMRL_OP( 16197,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat54, walking_ones_dat12 );
TEST_VMRL_OP( 16222,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat54, walking_ones_dat37 );
TEST_VMRL_OP( 16224,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat54, walking_ones_dat39 );
TEST_VMRL_OP( 16233,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat54, walking_ones_dat48 );
TEST_VMRL_OP( 16253,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat3 );
TEST_VMRL_OP( 16278,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat28 );
TEST_VMRL_OP( 16280,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat30 );
TEST_VMRL_OP( 16287,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat37 );
TEST_VMRL_OP( 16310,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat55, walking_ones_dat60 );
TEST_VMRL_OP( 16317,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat2 );
TEST_VMRL_OP( 16318,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat3 );
TEST_VMRL_OP( 16344,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat29 );
TEST_VMRL_OP( 16352,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat37 );
TEST_VMRL_OP( 16356,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat41 );
TEST_VMRL_OP( 16361,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat46 );
TEST_VMRL_OP( 16363,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat48 );
TEST_VMRL_OP( 16370,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat56, walking_ones_dat55 );
TEST_VMRL_OP( 16404,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat24 );
TEST_VMRL_OP( 16431,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat57, walking_ones_dat51 );
TEST_VMRL_OP( 16457,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat12 );
TEST_VMRL_OP( 16483,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat38 );
TEST_VMRL_OP( 16497,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat58, walking_ones_dat52 );
TEST_VMRL_OP( 16511,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_ones_dat1 );
TEST_VMRL_OP( 16568,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat59, walking_ones_dat58 );
TEST_VMRL_OP( 16575,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat60, walking_ones_dat0 );
TEST_VMRL_OP( 16623,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat60, walking_ones_dat48 );
TEST_VMRL_OP( 16644,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat4 );
TEST_VMRL_OP( 16674,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat34 );
TEST_VMRL_OP( 16693,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat61, walking_ones_dat53 );
TEST_VMRL_OP( 16724,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat19 );
TEST_VMRL_OP( 16729,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat24 );
TEST_VMRL_OP( 16743,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat38 );
TEST_VMRL_OP( 16768,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat62, walking_ones_dat63 );
TEST_VMRL_OP( 16788,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat18 );
TEST_VMRL_OP( 16801,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat31 );
TEST_VMRL_OP( 16814,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat44 );
TEST_VMRL_OP( 16818,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat63, walking_ones_dat48 );
TEST_VMRL_OP( 16841,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_ones_dat6 );
TEST_VMRL_OP( 16843,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_ones_dat8 );
TEST_VMRL_OP( 16853,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_ones_dat18 );
TEST_VMRL_OP( 16883,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_ones_dat48 );
TEST_VMRL_OP( 16886,  vmxor.mm,  32,  0x000000000000003e, walking_zeros_dat64, walking_ones_dat51 );
TEST_VMRL_OP( 16899,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_ones_dat64 );
TEST_VMRL_OP( 16900,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 16901,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 16902,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 16903,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 16904,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 16905,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 16906,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 16907,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 16908,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 16909,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 16910,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 16911,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 16912,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 16913,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 16914,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 16915,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 16916,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 16917,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 16918,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 16919,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 16920,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 16921,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 16922,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 16923,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 16924,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 16925,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 16926,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 16927,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 16928,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 16929,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 16930,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 16931,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 16932,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 16933,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat33, walking_zeros_dat33 );
TEST_VMRL_OP( 16934,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat34, walking_zeros_dat34 );
TEST_VMRL_OP( 16935,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat35, walking_zeros_dat35 );
TEST_VMRL_OP( 16936,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat36, walking_zeros_dat36 );
TEST_VMRL_OP( 16937,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat37, walking_zeros_dat37 );
TEST_VMRL_OP( 16938,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat38, walking_zeros_dat38 );
TEST_VMRL_OP( 16939,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat39, walking_zeros_dat39 );
TEST_VMRL_OP( 16940,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat40, walking_zeros_dat40 );
TEST_VMRL_OP( 16941,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat41, walking_zeros_dat41 );
TEST_VMRL_OP( 16942,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat42, walking_zeros_dat42 );
TEST_VMRL_OP( 16943,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat43, walking_zeros_dat43 );
TEST_VMRL_OP( 16944,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat44, walking_zeros_dat44 );
TEST_VMRL_OP( 16945,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat45, walking_zeros_dat45 );
TEST_VMRL_OP( 16946,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat46, walking_zeros_dat46 );
TEST_VMRL_OP( 16947,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat47, walking_zeros_dat47 );
TEST_VMRL_OP( 16948,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat48, walking_zeros_dat48 );
TEST_VMRL_OP( 16949,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat49, walking_zeros_dat49 );
TEST_VMRL_OP( 16950,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat50, walking_zeros_dat50 );
TEST_VMRL_OP( 16951,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat51, walking_zeros_dat51 );
TEST_VMRL_OP( 16952,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat52, walking_zeros_dat52 );
TEST_VMRL_OP( 16953,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat53, walking_zeros_dat53 );
TEST_VMRL_OP( 16954,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat54, walking_zeros_dat54 );
TEST_VMRL_OP( 16955,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat55, walking_zeros_dat55 );
TEST_VMRL_OP( 16956,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat56, walking_zeros_dat56 );
TEST_VMRL_OP( 16957,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat57, walking_zeros_dat57 );
TEST_VMRL_OP( 16958,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat58, walking_zeros_dat58 );
TEST_VMRL_OP( 16959,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat59, walking_zeros_dat59 );
TEST_VMRL_OP( 16960,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat60, walking_zeros_dat60 );
TEST_VMRL_OP( 16961,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat61, walking_zeros_dat61 );
TEST_VMRL_OP( 16962,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat62, walking_zeros_dat62 );
TEST_VMRL_OP( 16963,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat63, walking_zeros_dat63 );
TEST_VMRL_OP( 16964,  vmxor.mm,  32,  0x0000000000000040, walking_ones_dat64, walking_zeros_dat64 );
TEST_VMRL_OP( 16965,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 16966,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 16967,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 16968,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 16969,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 16970,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 16971,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 16972,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 16973,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 16974,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 16975,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 16976,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 16977,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 16978,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 16979,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 16980,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 16981,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 16982,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 16983,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 16984,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 16985,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 16986,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 16987,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 16988,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 16989,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 16990,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 16991,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 16992,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 16993,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 16994,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 16995,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 16996,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 16997,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 16998,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat33, walking_ones_dat33 );
TEST_VMRL_OP( 16999,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat34, walking_ones_dat34 );
TEST_VMRL_OP( 17000,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat35, walking_ones_dat35 );
TEST_VMRL_OP( 17001,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat36, walking_ones_dat36 );
TEST_VMRL_OP( 17002,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat37, walking_ones_dat37 );
TEST_VMRL_OP( 17003,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat38, walking_ones_dat38 );
TEST_VMRL_OP( 17004,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat39, walking_ones_dat39 );
TEST_VMRL_OP( 17005,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat40, walking_ones_dat40 );
TEST_VMRL_OP( 17006,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat41, walking_ones_dat41 );
TEST_VMRL_OP( 17007,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat42, walking_ones_dat42 );
TEST_VMRL_OP( 17008,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat43, walking_ones_dat43 );
TEST_VMRL_OP( 17009,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat44, walking_ones_dat44 );
TEST_VMRL_OP( 17010,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat45, walking_ones_dat45 );
TEST_VMRL_OP( 17011,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat46, walking_ones_dat46 );
TEST_VMRL_OP( 17012,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat47, walking_ones_dat47 );
TEST_VMRL_OP( 17013,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat48, walking_ones_dat48 );
TEST_VMRL_OP( 17014,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat49, walking_ones_dat49 );
TEST_VMRL_OP( 17015,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat50, walking_ones_dat50 );
TEST_VMRL_OP( 17016,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat51, walking_ones_dat51 );
TEST_VMRL_OP( 17017,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat52, walking_ones_dat52 );
TEST_VMRL_OP( 17018,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat53, walking_ones_dat53 );
TEST_VMRL_OP( 17019,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat54, walking_ones_dat54 );
TEST_VMRL_OP( 17020,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat55, walking_ones_dat55 );
TEST_VMRL_OP( 17021,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat56, walking_ones_dat56 );
TEST_VMRL_OP( 17022,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat57, walking_ones_dat57 );
TEST_VMRL_OP( 17023,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat58, walking_ones_dat58 );
TEST_VMRL_OP( 17024,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat59, walking_ones_dat59 );
TEST_VMRL_OP( 17025,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat60, walking_ones_dat60 );
TEST_VMRL_OP( 17026,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat61, walking_ones_dat61 );
TEST_VMRL_OP( 17027,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat62, walking_ones_dat62 );
TEST_VMRL_OP( 17028,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat63, walking_ones_dat63 );
TEST_VMRL_OP( 17029,  vmxor.mm,  32,  0x0000000000000040, walking_zeros_dat64, walking_ones_dat64 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 33930,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 33931,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 33932,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 33933,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 33934,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 33935,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 33936,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 33937,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 33938,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 33939,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 33940,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 33941,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 33942,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 33943,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 33944,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 33945,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 33946,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 33947,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 33948,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 33949,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 33950,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 33951,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 33952,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 33953,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 33954,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 33955,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 33956,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 33957,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 33958,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 33959,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 33960,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 33961,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 33962,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 33963,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 33964,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 33965,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 33966,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 33967,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 33968,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 33969,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 33970,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 33971,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 33972,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 33973,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 33974,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 33975,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 33976,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 33977,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 33978,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 33979,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 33980,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 33981,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 33982,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 33983,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 33984,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 33985,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 33986,  vmxor.mm,  32,  0x000000000000003f, walking_zeros_dat0, walking_ones_dat1 );
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
    

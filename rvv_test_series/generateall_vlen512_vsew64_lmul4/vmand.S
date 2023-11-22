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
TEST_VMRL_OP( 3,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 13,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 14,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 19,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 22,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat22 );
TEST_VMRL_OP( 27,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 32,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat32 );
TEST_VMRL_OP( 35,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 37,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 40,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 41,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 44,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 48,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 50,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat17 );
TEST_VMRL_OP( 51,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 59,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat26 );
TEST_VMRL_OP( 61,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 63,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 72,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 76,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 77,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 89,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat23 );
TEST_VMRL_OP( 90,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 92,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat26 );
TEST_VMRL_OP( 96,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat30 );
TEST_VMRL_OP( 98,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat32 );
TEST_VMRL_OP( 100,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 103,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 108,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 109,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 112,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 114,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 115,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 122,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat23 );
TEST_VMRL_OP( 128,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 130,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat31 );
TEST_VMRL_OP( 141,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 144,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 152,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat20 );
TEST_VMRL_OP( 155,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 167,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 172,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 174,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 187,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat22 );
TEST_VMRL_OP( 199,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 203,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 204,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 216,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 217,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat19 );
TEST_VMRL_OP( 219,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 220,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 224,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 225,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 238,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 239,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 243,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 244,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 245,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 246,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 247,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 249,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 255,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 257,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 263,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat32 );
TEST_VMRL_OP( 268,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 272,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 274,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 276,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 278,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 281,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 285,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 300,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 313,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 319,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 323,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat26 );
TEST_VMRL_OP( 327,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat30 );
TEST_VMRL_OP( 337,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 339,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 345,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 346,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 347,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 354,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 357,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 360,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 380,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat17 );
TEST_VMRL_OP( 381,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 382,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 385,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 389,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 390,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 399,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 402,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 407,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 409,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 415,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 418,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat22 );
TEST_VMRL_OP( 425,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 430,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 438,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 441,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 443,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 447,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 448,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat19 );
TEST_VMRL_OP( 452,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat23 );
TEST_VMRL_OP( 456,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat27 );
TEST_VMRL_OP( 458,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat29 );
TEST_VMRL_OP( 461,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 464,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 467,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 468,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 472,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 473,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 479,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 485,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 489,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 491,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 498,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 499,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 501,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 503,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 505,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 509,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 514,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 515,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 517,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 520,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat25 );
TEST_VMRL_OP( 523,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 527,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat32 );
TEST_VMRL_OP( 531,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 532,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 534,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 535,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 546,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 556,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 565,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 570,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_ones_dat9 );
TEST_VMRL_OP( 571,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_ones_dat10 );
TEST_VMRL_OP( 583,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_ones_dat22 );
TEST_VMRL_OP( 586,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 595,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 604,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 610,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_ones_dat16 );
TEST_VMRL_OP( 616,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_ones_dat22 );
TEST_VMRL_OP( 629,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 632,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat5 );
TEST_VMRL_OP( 633,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat6 );
TEST_VMRL_OP( 640,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 650,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 651,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 654,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 661,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 668,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 675,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat15 );
TEST_VMRL_OP( 678,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 691,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 698,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 702,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat9 );
TEST_VMRL_OP( 706,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 714,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 718,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat25 );
TEST_VMRL_OP( 719,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 729,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 744,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 749,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 750,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat24 );
TEST_VMRL_OP( 754,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 763,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 766,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 771,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 780,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 781,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 788,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 791,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 792,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 804,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 808,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 832,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat7 );
TEST_VMRL_OP( 836,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat11 );
TEST_VMRL_OP( 839,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat14 );
TEST_VMRL_OP( 842,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 843,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 845,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat20 );
TEST_VMRL_OP( 846,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat21 );
TEST_VMRL_OP( 848,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 851,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 853,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 858,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat0 );
TEST_VMRL_OP( 873,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 877,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 885,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 886,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 892,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 900,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 901,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat10 );
TEST_VMRL_OP( 916,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat25 );
TEST_VMRL_OP( 921,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 924,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 927,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 932,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 933,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat9 );
TEST_VMRL_OP( 934,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 937,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 942,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 943,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat19 );
TEST_VMRL_OP( 946,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 948,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat24 );
TEST_VMRL_OP( 952,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 966,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 967,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 970,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 978,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat21 );
TEST_VMRL_OP( 980,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 981,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 983,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 985,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 986,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 990,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 991,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat1 );
TEST_VMRL_OP( 994,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat4 );
TEST_VMRL_OP( 1004,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat14 );
TEST_VMRL_OP( 1013,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 1015,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1021,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 1022,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_ones_dat32 );
TEST_VMRL_OP( 1023,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 1031,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat8 );
TEST_VMRL_OP( 1034,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat11 );
TEST_VMRL_OP( 1045,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat22 );
TEST_VMRL_OP( 1052,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 1054,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 1055,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_ones_dat32 );
TEST_VMRL_OP( 1056,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 1057,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 1058,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 1063,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat7 );
TEST_VMRL_OP( 1064,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 1066,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 1067,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat11 );
TEST_VMRL_OP( 1073,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 1074,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 1081,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 1086,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_ones_dat30 );
TEST_VMRL_OP( 1095,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 1097,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 1100,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 1101,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 1103,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 1108,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 1111,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 1114,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat25 );
TEST_VMRL_OP( 1118,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 1121,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 1122,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 1125,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 1130,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 1136,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 1137,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 1144,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat22 );
TEST_VMRL_OP( 1153,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat31 );
TEST_VMRL_OP( 1154,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 1158,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 1164,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 1168,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 1171,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 1185,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 1190,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 1201,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 1204,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 1215,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 1220,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat32 );
TEST_VMRL_OP( 1225,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1232,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 1237,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 1238,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 1241,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 1243,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 1244,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 1254,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 1255,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 1261,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 1264,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 1282,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 1285,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 1288,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 1290,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 1291,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 1297,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 1298,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 1303,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 1306,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 1310,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat23 );
TEST_VMRL_OP( 1319,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat32 );
TEST_VMRL_OP( 1323,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 1326,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 1329,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 1331,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 1334,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 1336,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 1339,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 1340,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 1341,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat21 );
TEST_VMRL_OP( 1349,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 1351,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 1353,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 1358,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 1363,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 1370,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 1372,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat19 );
TEST_VMRL_OP( 1379,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat26 );
TEST_VMRL_OP( 1383,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat30 );
TEST_VMRL_OP( 1384,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 1386,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 1392,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 1397,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 1399,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 1406,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat20 );
TEST_VMRL_OP( 1407,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 1408,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 1409,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 1412,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 1413,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 1418,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 1420,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 1422,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 1423,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 1426,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 1429,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1445,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 1447,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 1448,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 1451,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 1454,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 1456,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 1457,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 1463,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1479,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat27 );
TEST_VMRL_OP( 1481,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1483,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 1485,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 1488,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 1493,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 1495,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 1499,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 1501,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 1503,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat18 );
TEST_VMRL_OP( 1523,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 1527,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 1528,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 1540,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 1551,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 1554,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 1566,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 1569,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat18 );
TEST_VMRL_OP( 1577,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 1582,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 1586,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 1587,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 1595,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 1600,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 1601,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 1603,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 1605,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 1617,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 1620,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 1623,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 1625,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 1632,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 1636,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 1649,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 1651,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 1656,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 1657,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 1661,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 1669,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat19 );
TEST_VMRL_OP( 1671,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat21 );
TEST_VMRL_OP( 1681,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 1682,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 1683,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 1688,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 1690,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 1695,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 1717,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 1728,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 1729,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 1732,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 1738,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 1742,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 1753,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat4 );
TEST_VMRL_OP( 1754,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 1756,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 1768,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat19 );
TEST_VMRL_OP( 1789,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat7 );
TEST_VMRL_OP( 1801,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat19 );
TEST_VMRL_OP( 1814,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat32 );
TEST_VMRL_OP( 1816,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 1822,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat7 );
TEST_VMRL_OP( 1827,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 1836,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 1837,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 1845,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 1846,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 1859,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 1860,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat12 );
TEST_VMRL_OP( 1866,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 1867,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 1869,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat21 );
TEST_VMRL_OP( 1871,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 1872,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 1877,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat29 );
TEST_VMRL_OP( 1878,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 1880,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 1881,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat0 );
TEST_VMRL_OP( 1889,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 1900,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 1904,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 1905,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 1910,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat29 );
TEST_VMRL_OP( 1911,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 1913,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat32 );
TEST_VMRL_OP( 1914,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 1918,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 1925,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat11 );
TEST_VMRL_OP( 1929,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1931,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat17 );
TEST_VMRL_OP( 1937,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 1949,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 1953,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 1960,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 1964,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 1973,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 1977,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 1978,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 1983,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 1984,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 1987,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 1988,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 1994,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 1995,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 2005,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat25 );
TEST_VMRL_OP( 2008,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 2010,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat30 );
TEST_VMRL_OP( 2027,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 2029,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 2030,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 2031,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat18 );
TEST_VMRL_OP( 2037,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 2038,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 2041,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 2049,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 2051,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat5 );
TEST_VMRL_OP( 2056,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 2059,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 2062,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 2068,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 2070,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 2074,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat28 );
TEST_VMRL_OP( 2077,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 2078,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat32 );
TEST_VMRL_OP( 2081,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat2 );
TEST_VMRL_OP( 2085,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat6 );
TEST_VMRL_OP( 2089,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 2090,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 2092,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 2098,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 2101,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat22 );
TEST_VMRL_OP( 2103,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 2110,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 2112,  vmand.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 2113,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 2117,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat5 );
TEST_VMRL_OP( 2118,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 2119,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat7 );
TEST_VMRL_OP( 2121,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 2127,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2130,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 2133,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 2147,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2149,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat4 );
TEST_VMRL_OP( 2151,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 2154,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat9 );
TEST_VMRL_OP( 2162,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 2163,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat18 );
TEST_VMRL_OP( 2164,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 2174,  vmand.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat29 );
TEST_VMRL_OP( 2184,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2189,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 2191,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 2196,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 2199,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 2203,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat25 );
TEST_VMRL_OP( 2205,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 2206,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat28 );
TEST_VMRL_OP( 2208,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat30 );
TEST_VMRL_OP( 2210,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 2221,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 2225,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 2227,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 2228,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat17 );
TEST_VMRL_OP( 2229,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 2234,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 2240,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat29 );
TEST_VMRL_OP( 2253,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 2254,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 2255,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 2256,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 2259,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 2261,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 2274,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 2293,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 2297,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 2298,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 2300,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 2301,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat24 );
TEST_VMRL_OP( 2302,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat25 );
TEST_VMRL_OP( 2303,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat26 );
TEST_VMRL_OP( 2305,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 2306,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat29 );
TEST_VMRL_OP( 2310,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 2312,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 2314,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 2315,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 2323,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2325,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 2328,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 2330,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 2334,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat24 );
TEST_VMRL_OP( 2336,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 2339,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 2344,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 2346,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 2352,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 2356,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 2362,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 2363,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat20 );
TEST_VMRL_OP( 2367,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 2379,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 2389,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 2390,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 2391,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 2396,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat20 );
TEST_VMRL_OP( 2402,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 2405,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 2414,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 2415,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 2416,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 2429,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 2434,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat25 );
TEST_VMRL_OP( 2443,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 2446,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 2447,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 2450,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 2465,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 2472,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat30 );
TEST_VMRL_OP( 2473,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 2481,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 2492,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat17 );
TEST_VMRL_OP( 2493,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 2501,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 2504,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat29 );
TEST_VMRL_OP( 2505,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 2507,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 2516,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 2517,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 2522,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 2524,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 2530,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat22 );
TEST_VMRL_OP( 2538,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat30 );
TEST_VMRL_OP( 2539,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 2542,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 2544,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 2546,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 2547,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 2549,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 2555,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 2557,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 2571,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 2573,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 2575,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 2579,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 2582,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 2584,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 2588,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 2589,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 2594,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 2599,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 2601,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 2604,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 2605,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 2606,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 2609,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 2610,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 2613,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 2619,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 2622,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 2626,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 2629,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 2637,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 2638,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 2646,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 2651,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 2655,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 2664,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 2665,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 2666,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 2667,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat27 );
TEST_VMRL_OP( 2668,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 2671,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 2674,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 2683,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 2684,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 2694,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2697,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 2700,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 2702,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 2705,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 2707,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 2712,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 2717,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 2721,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 2726,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 2729,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat23 );
TEST_VMRL_OP( 2732,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat26 );
TEST_VMRL_OP( 2737,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat31 );
TEST_VMRL_OP( 2742,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 2746,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 2755,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 2757,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 2759,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 2768,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 2770,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 2772,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 2775,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat3 );
TEST_VMRL_OP( 2776,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 2792,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat20 );
TEST_VMRL_OP( 2795,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 2796,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat24 );
TEST_VMRL_OP( 2799,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 2800,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat28 );
TEST_VMRL_OP( 2807,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 2813,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 2818,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 2827,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 2830,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 2832,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 2834,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat29 );
TEST_VMRL_OP( 2835,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 2838,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 2843,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 2848,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 2852,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 2855,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 2861,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat23 );
TEST_VMRL_OP( 2863,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat25 );
TEST_VMRL_OP( 2865,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat27 );
TEST_VMRL_OP( 2866,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 2879,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 2888,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 2892,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 2900,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat29 );
TEST_VMRL_OP( 2907,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat3 );
TEST_VMRL_OP( 2914,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 2925,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 2941,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat4 );
TEST_VMRL_OP( 2944,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 2945,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat8 );
TEST_VMRL_OP( 2948,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 2959,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 2968,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat31 );
TEST_VMRL_OP( 2969,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 2971,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat1 );
TEST_VMRL_OP( 2974,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 2982,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 2986,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 2988,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 2994,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 3006,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 3007,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 3008,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat5 );
TEST_VMRL_OP( 3012,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 3019,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat16 );
TEST_VMRL_OP( 3021,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 3023,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 3027,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 3029,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat26 );
TEST_VMRL_OP( 3030,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 3042,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 3043,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 3046,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat10 );
TEST_VMRL_OP( 3047,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 3053,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 3054,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 3055,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat19 );
TEST_VMRL_OP( 3056,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 3063,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 3070,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 3071,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 3072,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 3082,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 3089,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat20 );
TEST_VMRL_OP( 3095,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 3100,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 3103,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 3106,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat4 );
TEST_VMRL_OP( 3114,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat12 );
TEST_VMRL_OP( 3121,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 3128,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat26 );
TEST_VMRL_OP( 3130,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 3131,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 3134,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 3141,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat6 );
TEST_VMRL_OP( 3142,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 3145,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 3161,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat26 );
TEST_VMRL_OP( 3162,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 3172,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 3179,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 3194,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat26 );
TEST_VMRL_OP( 3199,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 3200,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 3201,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 3203,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 3204,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat3 );
TEST_VMRL_OP( 3211,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat10 );
TEST_VMRL_OP( 3214,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat13 );
TEST_VMRL_OP( 3216,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 3217,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 3226,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 3233,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 3234,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 3235,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 3238,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat4 );
TEST_VMRL_OP( 3242,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat8 );
TEST_VMRL_OP( 3244,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat10 );
TEST_VMRL_OP( 3245,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 3248,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat14 );
TEST_VMRL_OP( 3249,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 3250,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 3254,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 3256,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 3261,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 3262,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 3265,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat31 );
TEST_VMRL_OP( 3267,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 3268,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 3272,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 3273,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 3276,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 3301,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 3304,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 3307,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 3310,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 3313,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 3314,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 3321,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 3328,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 3332,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 3341,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 3342,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 3346,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 3352,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 3355,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 3358,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 3362,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 3365,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat32 );
TEST_VMRL_OP( 3366,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 3368,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 3369,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 3376,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 3378,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 3381,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 3382,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 3391,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 3393,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 3394,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat28 );
TEST_VMRL_OP( 3398,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 3400,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 3404,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 3405,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 3407,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 3408,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 3415,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 3418,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 3419,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat20 );
TEST_VMRL_OP( 3423,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 3428,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat29 );
TEST_VMRL_OP( 3429,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat30 );
TEST_VMRL_OP( 3432,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 3438,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 3439,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 3447,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 3450,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat18 );
TEST_VMRL_OP( 3451,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 3452,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 3453,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 3468,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 3471,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 3477,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 3481,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 3483,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 3486,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 3492,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 3496,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 3498,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 3502,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 3510,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 3513,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 3514,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 3527,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat29 );
TEST_VMRL_OP( 3531,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 3535,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 3536,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 3538,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 3541,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 3545,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 3546,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 3558,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 3559,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat28 );
TEST_VMRL_OP( 3563,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3567,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 3577,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 3580,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 3581,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat17 );
TEST_VMRL_OP( 3586,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3596,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat32 );
TEST_VMRL_OP( 3599,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 3600,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 3612,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 3614,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 3619,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 3620,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 3628,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 3636,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 3639,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3641,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 3663,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 3667,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 3668,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 3670,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 3672,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 3675,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 3678,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 3692,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 3694,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 3700,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 3708,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 3712,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 3721,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat25 );
TEST_VMRL_OP( 3724,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat28 );
TEST_VMRL_OP( 3728,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 3729,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 3731,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 3735,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 3737,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 3742,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 3743,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 3760,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat31 );
TEST_VMRL_OP( 3761,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 3767,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 3770,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 3771,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 3774,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 3781,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 3782,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 3789,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 3794,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat32 );
TEST_VMRL_OP( 3802,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 3803,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 3809,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 3811,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 3815,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat20 );
TEST_VMRL_OP( 3825,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat30 );
TEST_VMRL_OP( 3828,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 3840,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3853,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 3857,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 3863,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 3864,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 3865,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3869,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 3877,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat16 );
TEST_VMRL_OP( 3882,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 3885,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3886,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 3890,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat29 );
TEST_VMRL_OP( 3892,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat31 );
TEST_VMRL_OP( 3893,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 3897,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 3904,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat10 );
TEST_VMRL_OP( 3906,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 3907,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 3909,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat15 );
TEST_VMRL_OP( 3926,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat32 );
TEST_VMRL_OP( 3928,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 3941,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 3947,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 3951,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 3960,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 3961,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 3962,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat2 );
TEST_VMRL_OP( 3963,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 3965,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 3970,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat10 );
TEST_VMRL_OP( 3975,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 3977,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat17 );
TEST_VMRL_OP( 3978,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 3979,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 3981,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 3982,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat22 );
TEST_VMRL_OP( 3994,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat1 );
TEST_VMRL_OP( 3995,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 3997,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat4 );
TEST_VMRL_OP( 4002,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 4004,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 4009,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat16 );
TEST_VMRL_OP( 4010,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 4011,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 4016,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 4019,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat26 );
TEST_VMRL_OP( 4022,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 4027,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat1 );
TEST_VMRL_OP( 4043,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 4049,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4051,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 4052,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 4056,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat30 );
TEST_VMRL_OP( 4067,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 4071,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 4073,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 4075,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 4077,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 4080,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 4089,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 4092,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 4093,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 4099,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat7 );
TEST_VMRL_OP( 4101,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 4102,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 4103,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat11 );
TEST_VMRL_OP( 4109,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 4129,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat4 );
TEST_VMRL_OP( 4139,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 4141,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat16 );
TEST_VMRL_OP( 4147,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 4148,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 4149,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 4152,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 4153,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 4163,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 4171,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 4174,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 4180,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 4185,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4186,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat28 );
TEST_VMRL_OP( 4190,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat32 );
TEST_VMRL_OP( 4191,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 4196,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 4201,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 4202,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 4206,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 4212,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 4220,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 4222,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat31 );
TEST_VMRL_OP( 4227,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 4229,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 4232,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 4235,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 4236,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 4247,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 4249,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 4254,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 4259,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 4266,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 4267,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 4278,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 4279,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat22 );
TEST_VMRL_OP( 4280,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 4282,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 4290,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 4309,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat19 );
TEST_VMRL_OP( 4315,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat25 );
TEST_VMRL_OP( 4324,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 4328,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 4345,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 4346,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 4352,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 4355,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 4356,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8823,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8824,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8825,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8826,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8827,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8828,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8829,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8830,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8831,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8832,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8833,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8834,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

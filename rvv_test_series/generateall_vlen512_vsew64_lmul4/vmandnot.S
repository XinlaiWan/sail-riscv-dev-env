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
TEST_VMRL_OP( 2,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 23,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 33,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 34,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 35,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 53,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 55,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 62,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 68,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 74,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 79,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 89,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat23 );
TEST_VMRL_OP( 90,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 95,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 96,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat30 );
TEST_VMRL_OP( 103,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 108,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 110,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 112,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 120,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat21 );
TEST_VMRL_OP( 121,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 123,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 141,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 143,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 153,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 154,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 155,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 158,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 164,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 168,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 192,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 193,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 200,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 203,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 207,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 210,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 211,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 218,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat20 );
TEST_VMRL_OP( 221,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat23 );
TEST_VMRL_OP( 222,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 224,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 232,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 237,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 244,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 250,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 253,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat22 );
TEST_VMRL_OP( 257,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 258,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 261,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 273,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 280,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 286,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat22 );
TEST_VMRL_OP( 299,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 305,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 307,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 309,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 313,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 320,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 324,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 325,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat28 );
TEST_VMRL_OP( 326,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat29 );
TEST_VMRL_OP( 335,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 337,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 338,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 339,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 342,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 346,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 347,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 350,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 352,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 354,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 355,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 356,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 359,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 362,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 366,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 367,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 372,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 380,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat17 );
TEST_VMRL_OP( 381,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 383,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 386,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 388,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 394,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 404,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 408,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 409,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 423,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 427,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 438,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 440,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 441,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 443,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 450,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat21 );
TEST_VMRL_OP( 451,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat22 );
TEST_VMRL_OP( 452,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat23 );
TEST_VMRL_OP( 461,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 462,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 467,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 469,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 475,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 476,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 479,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 490,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 493,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat31 );
TEST_VMRL_OP( 494,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 495,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 496,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 503,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 504,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 508,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 512,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 513,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 514,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 516,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 528,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 530,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 536,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 552,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat24 );
TEST_VMRL_OP( 561,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 567,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 569,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat8 );
TEST_VMRL_OP( 573,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 574,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat13 );
TEST_VMRL_OP( 580,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 584,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 585,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat24 );
TEST_VMRL_OP( 590,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 591,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 592,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 596,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 600,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 608,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 613,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 617,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 618,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 620,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 623,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat29 );
TEST_VMRL_OP( 626,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 630,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 634,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 636,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat9 );
TEST_VMRL_OP( 640,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 645,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat18 );
TEST_VMRL_OP( 647,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 654,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 658,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 662,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat2 );
TEST_VMRL_OP( 664,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat4 );
TEST_VMRL_OP( 668,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 672,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 680,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 683,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat23 );
TEST_VMRL_OP( 685,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat25 );
TEST_VMRL_OP( 686,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat26 );
TEST_VMRL_OP( 692,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 693,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 697,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_ones_dat4 );
TEST_VMRL_OP( 703,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_ones_dat10 );
TEST_VMRL_OP( 720,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_ones_dat27 );
TEST_VMRL_OP( 724,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 731,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat5 );
TEST_VMRL_OP( 740,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 742,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat16 );
TEST_VMRL_OP( 748,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 751,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 756,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 758,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat22, walking_ones_dat32 );
TEST_VMRL_OP( 761,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 766,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 767,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 768,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat9 );
TEST_VMRL_OP( 771,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 773,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 780,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 783,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 786,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat27 );
TEST_VMRL_OP( 792,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 795,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 798,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 804,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 805,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 808,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 812,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 815,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat23 );
TEST_VMRL_OP( 821,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat29 );
TEST_VMRL_OP( 822,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 825,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 827,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 836,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat11 );
TEST_VMRL_OP( 849,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat24 );
TEST_VMRL_OP( 855,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 860,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 861,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat3 );
TEST_VMRL_OP( 863,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 864,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat6 );
TEST_VMRL_OP( 865,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat7 );
TEST_VMRL_OP( 866,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 869,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 871,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 872,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 874,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat16 );
TEST_VMRL_OP( 886,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 895,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 900,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 903,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat12 );
TEST_VMRL_OP( 904,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 905,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 907,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 909,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 911,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat20 );
TEST_VMRL_OP( 916,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat25 );
TEST_VMRL_OP( 920,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 924,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 928,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 940,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 942,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 950,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 953,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 956,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 957,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 959,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat2 );
TEST_VMRL_OP( 960,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 963,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat6 );
TEST_VMRL_OP( 965,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 968,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 974,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 980,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 981,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 992,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 1003,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat13 );
TEST_VMRL_OP( 1006,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 1012,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat22 );
TEST_VMRL_OP( 1014,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 1015,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1018,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 1028,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 1030,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 1043,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 1049,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 1057,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 1062,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 1063,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat7 );
TEST_VMRL_OP( 1064,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 1065,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 1068,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat12 );
TEST_VMRL_OP( 1071,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 1072,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat16 );
TEST_VMRL_OP( 1073,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 1084,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat28 );
TEST_VMRL_OP( 1085,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 1087,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 1099,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 1102,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 1117,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat28 );
TEST_VMRL_OP( 1119,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat30 );
TEST_VMRL_OP( 1122,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 1126,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 1145,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 1147,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat25 );
TEST_VMRL_OP( 1149,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat27 );
TEST_VMRL_OP( 1153,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat31 );
TEST_VMRL_OP( 1154,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 1158,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 1161,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 1165,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 1188,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 1190,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 1194,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 1196,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 1198,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 1200,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 1208,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 1210,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat22 );
TEST_VMRL_OP( 1215,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 1216,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 1223,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 1225,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1240,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat19 );
TEST_VMRL_OP( 1243,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 1245,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat24 );
TEST_VMRL_OP( 1250,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 1255,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 1262,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 1264,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 1265,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 1266,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 1267,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 1273,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 1276,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 1278,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 1282,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 1286,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 1287,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 1290,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 1291,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 1299,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 1300,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 1302,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 1308,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 1313,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 1317,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat30 );
TEST_VMRL_OP( 1320,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 1322,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 1333,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 1337,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat17 );
TEST_VMRL_OP( 1342,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat22 );
TEST_VMRL_OP( 1343,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat23 );
TEST_VMRL_OP( 1347,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat27 );
TEST_VMRL_OP( 1350,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 1364,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 1366,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 1367,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 1374,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 1377,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 1379,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat26 );
TEST_VMRL_OP( 1381,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 1384,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 1400,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 1401,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 1409,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 1411,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 1413,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 1417,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat31 );
TEST_VMRL_OP( 1422,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 1428,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 1433,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 1436,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat17 );
TEST_VMRL_OP( 1442,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat23 );
TEST_VMRL_OP( 1452,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 1462,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 1463,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1469,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 1472,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 1475,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat23 );
TEST_VMRL_OP( 1476,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat24 );
TEST_VMRL_OP( 1479,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat27 );
TEST_VMRL_OP( 1481,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1482,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 1485,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 1486,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 1487,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 1488,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 1492,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 1494,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 1497,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1498,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 1504,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 1507,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 1513,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat28 );
TEST_VMRL_OP( 1516,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 1519,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 1525,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 1526,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 1530,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 1532,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 1534,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 1542,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 1546,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 1547,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 1548,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 1554,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 1560,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 1566,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 1567,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 1569,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat18 );
TEST_VMRL_OP( 1571,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat20 );
TEST_VMRL_OP( 1573,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat22 );
TEST_VMRL_OP( 1575,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 1576,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 1595,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 1597,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 1606,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 1609,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 1610,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat26 );
TEST_VMRL_OP( 1613,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 1615,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat31 );
TEST_VMRL_OP( 1616,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 1619,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 1621,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 1622,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 1623,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 1624,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 1625,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 1639,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat22 );
TEST_VMRL_OP( 1644,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 1645,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 1649,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 1672,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 1676,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat26 );
TEST_VMRL_OP( 1677,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 1679,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 1682,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 1688,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 1690,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 1691,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 1695,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 1696,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat13 );
TEST_VMRL_OP( 1699,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat16 );
TEST_VMRL_OP( 1704,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 1705,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 1706,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 1719,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 1726,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 1729,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 1730,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 1733,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 1741,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 1747,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 1756,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 1762,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat13 );
TEST_VMRL_OP( 1773,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 1783,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat1 );
TEST_VMRL_OP( 1786,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 1796,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 1797,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 1803,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 1804,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 1807,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 1813,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat31 );
TEST_VMRL_OP( 1814,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat32 );
TEST_VMRL_OP( 1815,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 1827,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 1828,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 1834,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 1837,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 1845,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 1846,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 1854,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat6 );
TEST_VMRL_OP( 1858,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat10 );
TEST_VMRL_OP( 1861,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 1866,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 1868,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 1870,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 1873,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 1878,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 1880,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 1888,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat7 );
TEST_VMRL_OP( 1889,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 1891,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat10 );
TEST_VMRL_OP( 1894,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 1898,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 1899,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 1900,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 1912,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat31 );
TEST_VMRL_OP( 1913,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat32 );
TEST_VMRL_OP( 1915,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 1920,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat6 );
TEST_VMRL_OP( 1925,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat11 );
TEST_VMRL_OP( 1929,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1945,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 1960,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 1969,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 1976,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat29 );
TEST_VMRL_OP( 1979,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 1981,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 1984,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 1986,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 1996,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 1997,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat17 );
TEST_VMRL_OP( 1998,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 2004,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 2005,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat25 );
TEST_VMRL_OP( 2009,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 2014,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 2015,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 2017,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat4 );
TEST_VMRL_OP( 2018,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 2031,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat18 );
TEST_VMRL_OP( 2032,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 2038,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 2048,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 2050,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 2053,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 2055,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat9 );
TEST_VMRL_OP( 2063,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 2066,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 2067,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 2068,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 2069,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 2076,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 2079,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 2081,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat2 );
TEST_VMRL_OP( 2091,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat12 );
TEST_VMRL_OP( 2095,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 2098,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 2099,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 2103,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 2104,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 2112,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 2113,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 2114,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 2118,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 2120,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat8 );
TEST_VMRL_OP( 2125,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat13 );
TEST_VMRL_OP( 2127,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2133,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 2134,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 2136,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 2139,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 2144,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 2146,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 2148,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat3 );
TEST_VMRL_OP( 2156,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 2160,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 2162,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 2173,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 2177,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 2178,  vmandnot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 2183,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 2184,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2189,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 2191,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 2192,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 2193,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 2195,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 2207,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 2208,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat30 );
TEST_VMRL_OP( 2209,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 2210,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 2214,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 2220,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 2221,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 2223,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 2228,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat17 );
TEST_VMRL_OP( 2229,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 2230,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2241,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 2242,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat31 );
TEST_VMRL_OP( 2245,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 2249,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 2257,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 2258,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 2261,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 2262,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat18 );
TEST_VMRL_OP( 2265,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 2267,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 2268,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 2271,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 2273,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 2280,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 2287,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 2294,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 2295,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 2315,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 2316,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 2333,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 2334,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat24 );
TEST_VMRL_OP( 2335,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 2340,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat30 );
TEST_VMRL_OP( 2341,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 2342,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 2355,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 2357,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 2360,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 2362,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 2364,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat21 );
TEST_VMRL_OP( 2374,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 2384,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 2388,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 2391,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 2398,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 2400,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 2406,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat30 );
TEST_VMRL_OP( 2407,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 2410,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 2411,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 2423,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 2439,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 2441,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 2445,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 2447,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 2449,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 2454,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 2458,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 2459,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 2461,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat19 );
TEST_VMRL_OP( 2466,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 2472,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat30 );
TEST_VMRL_OP( 2478,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 2479,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 2487,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 2488,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 2491,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 2494,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 2496,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 2497,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 2498,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 2501,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 2504,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat29 );
TEST_VMRL_OP( 2507,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 2513,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 2519,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 2523,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 2529,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 2535,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat27 );
TEST_VMRL_OP( 2538,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat30 );
TEST_VMRL_OP( 2540,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 2541,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 2542,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 2545,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 2547,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 2551,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 2560,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 2576,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 2577,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 2579,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 2582,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 2590,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 2593,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 2594,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 2599,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 2604,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 2609,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 2622,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 2626,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 2627,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 2628,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat21 );
TEST_VMRL_OP( 2630,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat23 );
TEST_VMRL_OP( 2637,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 2642,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 2643,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 2644,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 2646,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 2647,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 2650,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 2651,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 2661,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat21 );
TEST_VMRL_OP( 2662,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat22 );
TEST_VMRL_OP( 2668,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 2669,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat29 );
TEST_VMRL_OP( 2672,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat32 );
TEST_VMRL_OP( 2682,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 2688,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 2697,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 2699,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat26 );
TEST_VMRL_OP( 2701,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat28 );
TEST_VMRL_OP( 2702,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 2703,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat30 );
TEST_VMRL_OP( 2715,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 2717,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 2725,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 2731,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat25 );
TEST_VMRL_OP( 2739,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat0 );
TEST_VMRL_OP( 2740,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 2743,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 2747,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat8 );
TEST_VMRL_OP( 2750,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 2752,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 2755,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 2756,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 2757,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 2763,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat24 );
TEST_VMRL_OP( 2764,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 2767,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat28 );
TEST_VMRL_OP( 2768,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 2770,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 2771,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 2773,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat1 );
TEST_VMRL_OP( 2774,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat2 );
TEST_VMRL_OP( 2782,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 2784,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 2786,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat14 );
TEST_VMRL_OP( 2789,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 2791,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat19 );
TEST_VMRL_OP( 2804,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat32 );
TEST_VMRL_OP( 2809,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat4 );
TEST_VMRL_OP( 2812,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 2816,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 2819,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 2826,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 2832,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 2836,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 2849,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat11 );
TEST_VMRL_OP( 2852,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 2854,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 2860,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat22 );
TEST_VMRL_OP( 2861,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat23 );
TEST_VMRL_OP( 2863,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat25 );
TEST_VMRL_OP( 2868,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat30 );
TEST_VMRL_OP( 2872,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat1 );
TEST_VMRL_OP( 2876,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat5 );
TEST_VMRL_OP( 2877,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 2884,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 2885,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 2893,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 2896,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 2901,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat30 );
TEST_VMRL_OP( 2903,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat32 );
TEST_VMRL_OP( 2904,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 2908,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 2912,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat8 );
TEST_VMRL_OP( 2918,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat14 );
TEST_VMRL_OP( 2924,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat20 );
TEST_VMRL_OP( 2930,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 2932,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat28 );
TEST_VMRL_OP( 2940,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat3 );
TEST_VMRL_OP( 2943,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat6 );
TEST_VMRL_OP( 2948,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 2950,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 2952,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 2953,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 2959,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 2963,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 2964,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat27 );
TEST_VMRL_OP( 2965,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat28 );
TEST_VMRL_OP( 2967,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 2971,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat1 );
TEST_VMRL_OP( 2973,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat3 );
TEST_VMRL_OP( 2980,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat10 );
TEST_VMRL_OP( 2984,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat14 );
TEST_VMRL_OP( 2992,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 2993,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 2997,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat27 );
TEST_VMRL_OP( 3002,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat32 );
TEST_VMRL_OP( 3004,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 3005,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat2 );
TEST_VMRL_OP( 3007,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 3009,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat6 );
TEST_VMRL_OP( 3020,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat17 );
TEST_VMRL_OP( 3021,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 3025,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat22 );
TEST_VMRL_OP( 3032,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat29 );
TEST_VMRL_OP( 3038,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 3040,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat4 );
TEST_VMRL_OP( 3043,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 3050,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 3060,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 3061,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat25 );
TEST_VMRL_OP( 3065,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat29 );
TEST_VMRL_OP( 3068,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 3075,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 3076,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 3077,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 3085,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 3090,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 3092,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat23 );
TEST_VMRL_OP( 3098,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 3103,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 3104,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 3105,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 3107,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 3113,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 3119,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 3122,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 3125,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 3126,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 3131,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 3133,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 3136,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat1 );
TEST_VMRL_OP( 3137,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 3138,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 3143,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat8 );
TEST_VMRL_OP( 3151,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 3154,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 3156,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 3158,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 3171,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat3 );
TEST_VMRL_OP( 3172,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 3173,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat5 );
TEST_VMRL_OP( 3179,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 3182,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 3186,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 3189,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 3195,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat27 );
TEST_VMRL_OP( 3197,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 3202,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 3203,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 3205,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat4 );
TEST_VMRL_OP( 3211,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat10 );
TEST_VMRL_OP( 3217,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 3222,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 3223,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 3225,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 3227,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat26 );
TEST_VMRL_OP( 3230,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 3235,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 3237,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat3 );
TEST_VMRL_OP( 3243,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat9 );
TEST_VMRL_OP( 3251,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 3254,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 3256,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 3264,  vmandnot.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat30 );
TEST_VMRL_OP( 3269,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3270,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 3271,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 3286,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 3287,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 3297,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 3300,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 3305,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 3306,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 3308,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 3310,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 3311,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 3314,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 3319,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat19 );
TEST_VMRL_OP( 3321,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 3323,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 3327,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3330,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 3339,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 3346,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 3348,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 3349,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 3351,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat18 );
TEST_VMRL_OP( 3362,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 3373,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 3377,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 3378,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 3384,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 3385,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat19 );
TEST_VMRL_OP( 3391,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 3404,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 3406,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 3411,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 3419,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat20 );
TEST_VMRL_OP( 3423,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 3424,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 3426,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat27 );
TEST_VMRL_OP( 3430,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat31 );
TEST_VMRL_OP( 3431,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 3434,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 3442,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 3453,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 3454,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat22 );
TEST_VMRL_OP( 3460,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 3463,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 3468,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 3470,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 3471,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 3473,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 3479,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 3480,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 3485,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat20 );
TEST_VMRL_OP( 3486,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 3488,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat23 );
TEST_VMRL_OP( 3502,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 3504,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 3505,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 3511,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 3518,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 3521,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat23 );
TEST_VMRL_OP( 3523,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat25 );
TEST_VMRL_OP( 3525,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 3529,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 3535,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 3538,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 3540,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 3549,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 3555,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 3557,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 3563,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3568,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 3577,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 3581,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat17 );
TEST_VMRL_OP( 3583,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat19 );
TEST_VMRL_OP( 3585,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 3587,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 3591,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 3592,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat28 );
TEST_VMRL_OP( 3597,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 3603,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 3605,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 3608,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 3613,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 3623,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 3628,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 3629,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 3635,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 3636,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 3640,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 3646,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 3648,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 3652,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 3670,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 3690,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 3692,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 3694,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 3696,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 3698,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 3700,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 3703,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 3706,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 3728,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 3743,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 3746,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 3756,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 3757,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 3759,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat30 );
TEST_VMRL_OP( 3763,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 3764,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 3765,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 3768,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 3772,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 3773,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 3778,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 3780,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 3781,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 3782,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 3783,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 3784,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 3786,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat24 );
TEST_VMRL_OP( 3790,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 3795,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 3797,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 3800,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 3801,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 3808,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 3810,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 3813,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 3817,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat22 );
TEST_VMRL_OP( 3820,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat25 );
TEST_VMRL_OP( 3824,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat29 );
TEST_VMRL_OP( 3826,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat31 );
TEST_VMRL_OP( 3837,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat9 );
TEST_VMRL_OP( 3840,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3843,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 3844,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat16 );
TEST_VMRL_OP( 3850,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat22 );
TEST_VMRL_OP( 3853,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 3864,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 3867,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 3869,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 3871,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 3873,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 3875,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 3888,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 3889,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 3894,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat0 );
TEST_VMRL_OP( 3896,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 3901,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 3906,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 3919,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat25 );
TEST_VMRL_OP( 3925,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 3927,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 3928,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 3930,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat3 );
TEST_VMRL_OP( 3931,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat4 );
TEST_VMRL_OP( 3937,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 3941,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 3943,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 3945,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 3947,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 3951,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 3955,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat28 );
TEST_VMRL_OP( 3957,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 3958,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 3965,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 3973,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 3978,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 3985,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat25 );
TEST_VMRL_OP( 4002,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 4004,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 4013,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat20 );
TEST_VMRL_OP( 4025,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat32 );
TEST_VMRL_OP( 4028,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 4029,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat3 );
TEST_VMRL_OP( 4034,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 4035,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat9 );
TEST_VMRL_OP( 4046,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat20 );
TEST_VMRL_OP( 4050,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 4051,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 4056,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat30 );
TEST_VMRL_OP( 4058,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 4067,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 4070,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat11 );
TEST_VMRL_OP( 4073,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 4076,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 4082,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat23 );
TEST_VMRL_OP( 4083,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4084,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 4086,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat27 );
TEST_VMRL_OP( 4089,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 4091,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 4093,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 4095,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 4096,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat4 );
TEST_VMRL_OP( 4100,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat8 );
TEST_VMRL_OP( 4104,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 4109,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 4110,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 4115,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 4116,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat24 );
TEST_VMRL_OP( 4118,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 4120,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 4121,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 4125,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat0 );
TEST_VMRL_OP( 4127,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 4128,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat3 );
TEST_VMRL_OP( 4130,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 4135,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat10 );
TEST_VMRL_OP( 4140,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 4141,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat16 );
TEST_VMRL_OP( 4143,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 4145,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat20 );
TEST_VMRL_OP( 4146,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat21 );
TEST_VMRL_OP( 4148,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 4156,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 4157,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat32 );
TEST_VMRL_OP( 4159,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 4165,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat7 );
TEST_VMRL_OP( 4167,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 4169,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 4172,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 4174,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 4178,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat20 );
TEST_VMRL_OP( 4186,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat28 );
TEST_VMRL_OP( 4188,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 4192,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat1 );
TEST_VMRL_OP( 4197,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 4199,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 4203,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 4207,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 4210,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat19 );
TEST_VMRL_OP( 4211,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 4213,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 4215,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat24 );
TEST_VMRL_OP( 4216,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat25 );
TEST_VMRL_OP( 4227,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 4232,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 4235,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 4238,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat14 );
TEST_VMRL_OP( 4241,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 4242,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 4244,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 4245,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat21 );
TEST_VMRL_OP( 4247,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 4248,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 4249,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 4252,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 4253,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4256,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 4260,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 4264,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat7 );
TEST_VMRL_OP( 4270,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat13 );
TEST_VMRL_OP( 4273,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 4274,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 4278,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 4283,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat26 );
TEST_VMRL_OP( 4285,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 4286,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 4292,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 4320,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat30 );
TEST_VMRL_OP( 4324,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 4325,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 4327,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 4341,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 4349,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 4350,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 4351,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat28 );
TEST_VMRL_OP( 4355,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 4356,  vmandnot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmandnot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8823,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8824,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8825,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8826,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8827,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8828,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8829,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8830,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8831,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8832,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8833,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8834,  vmandnot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
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
    

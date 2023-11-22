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
TEST_VMRL_OP( 4,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 9,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 19,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 26,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat26 );
TEST_VMRL_OP( 27,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 28,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 29,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 30,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 31,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 34,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 35,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 40,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 41,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 42,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 49,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 50,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat17 );
TEST_VMRL_OP( 51,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 56,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 62,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 66,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 77,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 78,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 79,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 91,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 94,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 102,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 106,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 109,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 110,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 119,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat20 );
TEST_VMRL_OP( 126,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 130,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat31 );
TEST_VMRL_OP( 131,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 136,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 138,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 141,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 144,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 148,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 150,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 153,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 156,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 161,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat29 );
TEST_VMRL_OP( 162,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat30 );
TEST_VMRL_OP( 171,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 174,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 175,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 176,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 178,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 179,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 182,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat17 );
TEST_VMRL_OP( 185,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 194,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat29 );
TEST_VMRL_OP( 201,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 205,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 209,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 213,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 217,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_ones_dat19 );
TEST_VMRL_OP( 227,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_ones_dat29 );
TEST_VMRL_OP( 231,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 232,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 236,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 254,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat23 );
TEST_VMRL_OP( 257,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 258,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 259,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 270,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 272,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 275,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 278,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 279,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 280,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 285,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 287,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 288,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 292,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat28 );
TEST_VMRL_OP( 293,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 299,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 301,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 304,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 312,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 313,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 316,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_ones_dat19 );
TEST_VMRL_OP( 333,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 334,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 344,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 345,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 348,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat18 );
TEST_VMRL_OP( 349,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 352,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 353,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 354,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 355,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 357,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 366,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 369,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 375,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 385,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 393,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 394,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 400,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 401,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 405,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 417,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 425,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 428,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_ones_dat32 );
TEST_VMRL_OP( 430,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 433,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 460,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_ones_dat31 );
TEST_VMRL_OP( 461,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 462,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 464,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 467,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 470,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 473,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 477,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 483,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 486,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 489,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 500,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 503,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 504,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 519,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_ones_dat24 );
TEST_VMRL_OP( 530,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 531,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 536,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 537,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 540,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 542,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 545,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat17 );
TEST_VMRL_OP( 554,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 559,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat31 );
TEST_VMRL_OP( 566,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_ones_dat5 );
TEST_VMRL_OP( 569,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_ones_dat8 );
TEST_VMRL_OP( 573,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 578,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 579,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 581,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_ones_dat20 );
TEST_VMRL_OP( 583,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_ones_dat22 );
TEST_VMRL_OP( 586,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 596,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 597,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 603,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat9 );
TEST_VMRL_OP( 605,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat11 );
TEST_VMRL_OP( 606,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 614,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 620,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 623,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat29 );
TEST_VMRL_OP( 624,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat30 );
TEST_VMRL_OP( 626,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 637,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_ones_dat10 );
TEST_VMRL_OP( 646,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 647,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 656,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 657,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 668,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 671,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat11 );
TEST_VMRL_OP( 676,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 678,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 679,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat19 );
TEST_VMRL_OP( 681,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 684,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 691,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 698,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 706,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 708,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 711,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 712,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 714,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 716,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 718,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat25 );
TEST_VMRL_OP( 719,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 720,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat27 );
TEST_VMRL_OP( 722,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 731,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_ones_dat5 );
TEST_VMRL_OP( 732,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 739,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_ones_dat13 );
TEST_VMRL_OP( 740,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 748,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 751,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 768,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_ones_dat9 );
TEST_VMRL_OP( 774,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 781,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 782,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 783,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 787,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_ones_dat28 );
TEST_VMRL_OP( 790,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 793,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 796,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat4 );
TEST_VMRL_OP( 803,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat11 );
TEST_VMRL_OP( 805,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 806,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 808,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 809,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 813,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 830,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 835,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 839,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_ones_dat14 );
TEST_VMRL_OP( 841,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_ones_dat16 );
TEST_VMRL_OP( 844,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_ones_dat19 );
TEST_VMRL_OP( 845,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_ones_dat20 );
TEST_VMRL_OP( 861,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_ones_dat3 );
TEST_VMRL_OP( 872,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 873,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 878,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_ones_dat20 );
TEST_VMRL_OP( 883,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 902,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 906,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_ones_dat15 );
TEST_VMRL_OP( 909,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 911,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_ones_dat20 );
TEST_VMRL_OP( 912,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_ones_dat21 );
TEST_VMRL_OP( 915,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 927,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 929,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 930,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 933,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat9 );
TEST_VMRL_OP( 934,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 937,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 945,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 947,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 952,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 953,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 956,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 957,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 958,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 963,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat6 );
TEST_VMRL_OP( 967,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 972,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 973,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 974,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 975,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 977,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 979,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat22 );
TEST_VMRL_OP( 981,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 985,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 989,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 992,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 995,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 997,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat7 );
TEST_VMRL_OP( 998,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 1015,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1018,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 1019,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 1021,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 1023,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 1026,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 1027,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 1031,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat8 );
TEST_VMRL_OP( 1039,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 1041,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 1043,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 1054,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 1055,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat32 );
TEST_VMRL_OP( 1058,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 1062,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 1081,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 1096,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 1097,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 1098,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 1100,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 1104,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 1106,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 1109,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 1110,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 1111,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 1116,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 1120,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 1130,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 1132,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 1134,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 1137,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 1139,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat17 );
TEST_VMRL_OP( 1154,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 1156,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 1161,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 1162,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 1165,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 1169,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 1173,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat18 );
TEST_VMRL_OP( 1177,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 1180,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat25 );
TEST_VMRL_OP( 1199,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 1203,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 1206,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 1207,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 1208,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 1209,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 1210,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat22 );
TEST_VMRL_OP( 1215,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 1227,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 1228,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 1231,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 1233,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 1241,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 1246,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 1250,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 1258,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 1266,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 1270,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 1284,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat30 );
TEST_VMRL_OP( 1285,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 1286,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 1291,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 1296,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 1301,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 1302,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 1308,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 1313,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 1315,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat28 );
TEST_VMRL_OP( 1320,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 1330,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 1333,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 1339,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 1340,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 1345,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat25 );
TEST_VMRL_OP( 1352,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 1358,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 1362,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 1365,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 1366,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 1368,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 1384,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 1385,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 1391,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 1397,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 1400,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 1401,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 1404,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 1413,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 1416,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 1419,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 1423,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 1426,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 1429,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1432,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 1435,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 1440,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 1442,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat23 );
TEST_VMRL_OP( 1446,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat27 );
TEST_VMRL_OP( 1453,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 1455,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 1465,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 1468,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 1471,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 1474,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat22 );
TEST_VMRL_OP( 1476,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat24 );
TEST_VMRL_OP( 1478,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 1485,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 1486,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 1488,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 1497,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1499,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 1502,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat17 );
TEST_VMRL_OP( 1503,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat18 );
TEST_VMRL_OP( 1504,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 1512,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 1514,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat29 );
TEST_VMRL_OP( 1518,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 1522,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 1527,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 1528,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 1534,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 1537,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 1538,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 1546,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 1552,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 1554,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 1564,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 1570,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 1571,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat20 );
TEST_VMRL_OP( 1576,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 1577,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 1579,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 1581,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat30 );
TEST_VMRL_OP( 1582,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 1583,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat32 );
TEST_VMRL_OP( 1589,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 1591,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 1592,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 1593,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 1597,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 1603,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 1604,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 1606,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 1608,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 1609,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 1611,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 1612,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat28 );
TEST_VMRL_OP( 1613,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 1620,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 1626,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 1631,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 1636,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 1638,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 1647,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat30 );
TEST_VMRL_OP( 1649,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 1651,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 1655,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat5 );
TEST_VMRL_OP( 1657,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 1659,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat9 );
TEST_VMRL_OP( 1666,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 1667,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 1670,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 1685,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat2 );
TEST_VMRL_OP( 1687,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 1693,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 1696,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat13 );
TEST_VMRL_OP( 1699,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat16 );
TEST_VMRL_OP( 1700,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 1703,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat20 );
TEST_VMRL_OP( 1708,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 1715,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat32 );
TEST_VMRL_OP( 1717,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 1719,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 1721,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat5 );
TEST_VMRL_OP( 1722,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 1730,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 1733,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 1735,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 1736,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat20 );
TEST_VMRL_OP( 1737,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 1739,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 1742,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 1746,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 1754,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 1758,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 1759,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 1770,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat21 );
TEST_VMRL_OP( 1772,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat23 );
TEST_VMRL_OP( 1775,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 1776,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat27 );
TEST_VMRL_OP( 1777,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 1781,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat32 );
TEST_VMRL_OP( 1792,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 1793,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat11 );
TEST_VMRL_OP( 1804,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 1809,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 1820,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 1821,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 1824,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 1827,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 1828,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 1830,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat15 );
TEST_VMRL_OP( 1831,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat16 );
TEST_VMRL_OP( 1832,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat17 );
TEST_VMRL_OP( 1842,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat27 );
TEST_VMRL_OP( 1843,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat28 );
TEST_VMRL_OP( 1845,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 1846,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 1847,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 1848,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 1850,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 1851,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat3 );
TEST_VMRL_OP( 1857,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 1858,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat10 );
TEST_VMRL_OP( 1861,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 1872,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 1873,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 1874,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 1880,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 1891,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat10 );
TEST_VMRL_OP( 1907,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat26 );
TEST_VMRL_OP( 1912,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat31 );
TEST_VMRL_OP( 1919,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat5 );
TEST_VMRL_OP( 1922,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 1924,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 1927,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 1932,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 1937,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 1938,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 1945,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 1952,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 1956,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat9 );
TEST_VMRL_OP( 1965,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 1966,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat19 );
TEST_VMRL_OP( 1967,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 1973,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 1974,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 1975,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 1978,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 1979,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 1980,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat0 );
TEST_VMRL_OP( 1983,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 1985,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 1991,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 1995,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 1998,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 2002,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 2003,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat23 );
TEST_VMRL_OP( 2006,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 2008,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 2011,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 2013,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat0 );
TEST_VMRL_OP( 2015,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 2016,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 2019,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 2021,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 2024,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 2026,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 2027,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 2032,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 2044,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 2050,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 2053,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 2055,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat9 );
TEST_VMRL_OP( 2056,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 2058,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat12 );
TEST_VMRL_OP( 2062,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 2069,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 2076,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 2077,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 2088,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 2094,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 2095,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 2097,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 2101,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat22 );
TEST_VMRL_OP( 2110,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 2111,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 2112,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 2114,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 2116,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat4 );
TEST_VMRL_OP( 2120,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat8 );
TEST_VMRL_OP( 2121,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 2123,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat11 );
TEST_VMRL_OP( 2126,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat14 );
TEST_VMRL_OP( 2137,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 2139,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 2143,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 2145,  vmnand.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 2146,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 2152,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat7 );
TEST_VMRL_OP( 2161,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 2168,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 2170,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 2173,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 2175,  vmnand.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat30 );
TEST_VMRL_OP( 2190,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 2194,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 2197,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 2199,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 2204,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 2209,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 2210,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 2214,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 2220,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 2226,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 2231,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat20 );
TEST_VMRL_OP( 2232,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 2236,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat25 );
TEST_VMRL_OP( 2237,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat26 );
TEST_VMRL_OP( 2242,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat31 );
TEST_VMRL_OP( 2244,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 2247,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 2251,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 2252,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 2257,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 2260,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 2264,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat20 );
TEST_VMRL_OP( 2265,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 2288,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 2289,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 2304,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 2317,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 2319,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 2322,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 2325,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 2332,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 2333,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 2338,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat28 );
TEST_VMRL_OP( 2343,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 2349,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 2351,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 2355,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 2359,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 2367,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 2369,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat26 );
TEST_VMRL_OP( 2389,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 2390,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 2394,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat18 );
TEST_VMRL_OP( 2399,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat23 );
TEST_VMRL_OP( 2401,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 2407,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 2410,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 2411,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 2414,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 2418,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 2422,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 2427,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 2431,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat22 );
TEST_VMRL_OP( 2440,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 2444,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 2446,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 2450,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 2453,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 2458,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 2465,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 2468,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat26 );
TEST_VMRL_OP( 2475,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 2477,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 2481,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 2485,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 2491,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 2497,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 2498,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 2505,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 2509,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 2521,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 2527,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat19 );
TEST_VMRL_OP( 2529,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 2535,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat27 );
TEST_VMRL_OP( 2541,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 2542,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 2553,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 2555,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 2556,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 2560,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 2564,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat23 );
TEST_VMRL_OP( 2565,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat24 );
TEST_VMRL_OP( 2566,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 2567,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 2571,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 2572,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 2575,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 2580,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 2581,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 2592,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat18 );
TEST_VMRL_OP( 2593,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 2603,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat29 );
TEST_VMRL_OP( 2608,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 2617,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 2618,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 2620,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 2629,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 2637,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 2638,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 2639,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat32 );
TEST_VMRL_OP( 2643,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 2645,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 2648,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 2650,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 2662,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat22 );
TEST_VMRL_OP( 2665,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 2666,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 2667,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat27 );
TEST_VMRL_OP( 2678,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 2681,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 2690,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 2694,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2701,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat28 );
TEST_VMRL_OP( 2705,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 2716,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 2724,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat18 );
TEST_VMRL_OP( 2726,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 2729,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat23 );
TEST_VMRL_OP( 2735,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 2741,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 2742,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 2746,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 2750,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 2753,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 2754,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 2762,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat23 );
TEST_VMRL_OP( 2766,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 2769,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat30 );
TEST_VMRL_OP( 2778,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat6 );
TEST_VMRL_OP( 2780,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 2786,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat14 );
TEST_VMRL_OP( 2793,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 2798,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 2799,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 2802,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 2805,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat0 );
TEST_VMRL_OP( 2808,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 2810,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat5 );
TEST_VMRL_OP( 2812,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 2816,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 2818,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 2829,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat24 );
TEST_VMRL_OP( 2830,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 2832,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 2835,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 2836,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 2838,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 2842,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat4 );
TEST_VMRL_OP( 2847,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 2848,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 2851,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat13 );
TEST_VMRL_OP( 2852,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 2857,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat19 );
TEST_VMRL_OP( 2863,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat25 );
TEST_VMRL_OP( 2865,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat27 );
TEST_VMRL_OP( 2866,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 2879,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 2883,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat12 );
TEST_VMRL_OP( 2889,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 2893,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 2901,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat30 );
TEST_VMRL_OP( 2904,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 2906,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 2909,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 2915,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 2917,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 2921,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat17 );
TEST_VMRL_OP( 2922,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 2927,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat23 );
TEST_VMRL_OP( 2928,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat24 );
TEST_VMRL_OP( 2936,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 2937,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 2941,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat4 );
TEST_VMRL_OP( 2942,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat5 );
TEST_VMRL_OP( 2949,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat12 );
TEST_VMRL_OP( 2950,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 2952,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 2953,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 2962,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 2966,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat29 );
TEST_VMRL_OP( 2967,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 2969,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 2978,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 2987,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 2988,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 2991,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 2993,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 2996,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat26 );
TEST_VMRL_OP( 2999,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat29 );
TEST_VMRL_OP( 3006,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 3009,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat6 );
TEST_VMRL_OP( 3010,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 3017,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 3020,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat17 );
TEST_VMRL_OP( 3023,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 3024,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 3029,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat26 );
TEST_VMRL_OP( 3030,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 3039,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 3041,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 3043,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 3054,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 3057,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 3059,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 3070,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 3077,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 3081,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 3082,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 3088,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 3090,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 3091,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 3096,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 3098,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 3115,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 3128,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat26 );
TEST_VMRL_OP( 3130,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 3132,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat30 );
TEST_VMRL_OP( 3133,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 3138,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 3142,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 3145,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 3149,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat14 );
TEST_VMRL_OP( 3153,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 3156,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 3172,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 3178,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 3179,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 3181,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 3186,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 3199,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 3200,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 3210,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 3211,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat10 );
TEST_VMRL_OP( 3216,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 3221,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat20 );
TEST_VMRL_OP( 3223,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 3249,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 3250,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 3251,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 3259,  vmnand.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 3266,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 3273,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 3281,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 3285,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat18 );
TEST_VMRL_OP( 3290,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 3293,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat26 );
TEST_VMRL_OP( 3294,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 3299,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat32 );
TEST_VMRL_OP( 3302,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 3304,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 3305,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 3311,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 3312,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 3313,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 3322,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 3323,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 3327,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3333,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 3338,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 3340,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 3342,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 3349,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 3353,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat20 );
TEST_VMRL_OP( 3354,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 3355,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 3358,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 3359,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat26 );
TEST_VMRL_OP( 3361,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 3362,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 3365,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat32 );
TEST_VMRL_OP( 3368,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 3375,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 3376,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 3380,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 3382,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 3386,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat20 );
TEST_VMRL_OP( 3398,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 3410,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 3413,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 3414,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 3422,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 3430,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat31 );
TEST_VMRL_OP( 3435,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 3441,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 3444,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 3448,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 3451,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 3452,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 3461,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat29 );
TEST_VMRL_OP( 3462,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat30 );
TEST_VMRL_OP( 3463,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 3466,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 3468,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 3469,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 3478,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 3479,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 3487,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 3495,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat30 );
TEST_VMRL_OP( 3497,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 3499,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 3503,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 3508,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 3509,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 3510,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 3515,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat17 );
TEST_VMRL_OP( 3516,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 3519,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat21 );
TEST_VMRL_OP( 3524,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 3527,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat29 );
TEST_VMRL_OP( 3547,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 3561,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 3566,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 3571,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 3574,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 3578,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 3585,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 3589,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 3593,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat29 );
TEST_VMRL_OP( 3602,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 3605,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 3610,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 3614,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 3626,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 3627,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 3628,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 3639,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3642,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 3649,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 3650,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 3656,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 3660,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 3668,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 3671,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 3674,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 3679,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 3680,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat17 );
TEST_VMRL_OP( 3686,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 3696,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 3697,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 3699,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 3701,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 3703,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 3707,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 3714,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 3722,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat26 );
TEST_VMRL_OP( 3725,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat29 );
TEST_VMRL_OP( 3733,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 3735,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 3737,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 3740,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 3750,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 3752,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 3758,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 3759,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat30 );
TEST_VMRL_OP( 3766,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 3772,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 3775,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 3779,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 3782,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 3783,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 3784,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 3785,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 3792,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat30 );
TEST_VMRL_OP( 3793,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat31 );
TEST_VMRL_OP( 3797,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 3805,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 3807,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 3815,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat20 );
TEST_VMRL_OP( 3822,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat27 );
TEST_VMRL_OP( 3830,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 3833,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat5 );
TEST_VMRL_OP( 3840,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3845,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 3847,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 3851,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 3854,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat26 );
TEST_VMRL_OP( 3859,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 3862,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 3863,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 3867,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 3870,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat9 );
TEST_VMRL_OP( 3873,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 3876,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 3877,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat16 );
TEST_VMRL_OP( 3885,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3888,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 3889,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 3894,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat0 );
TEST_VMRL_OP( 3901,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 3923,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 3924,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 3938,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat11 );
TEST_VMRL_OP( 3940,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat13 );
TEST_VMRL_OP( 3941,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 3948,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 3952,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat25 );
TEST_VMRL_OP( 3954,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat27 );
TEST_VMRL_OP( 3955,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat28 );
TEST_VMRL_OP( 3959,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 3961,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 3962,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat2 );
TEST_VMRL_OP( 3965,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 3966,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat6 );
TEST_VMRL_OP( 3975,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 3978,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 3980,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 3982,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat22 );
TEST_VMRL_OP( 3988,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat28 );
TEST_VMRL_OP( 3996,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 3998,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat5 );
TEST_VMRL_OP( 4006,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat13 );
TEST_VMRL_OP( 4008,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 4013,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat20 );
TEST_VMRL_OP( 4016,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 4019,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat26 );
TEST_VMRL_OP( 4024,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat31 );
TEST_VMRL_OP( 4025,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat32 );
TEST_VMRL_OP( 4033,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 4039,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 4040,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 4041,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 4044,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat18 );
TEST_VMRL_OP( 4060,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 4061,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 4073,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 4079,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 4080,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 4091,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 4098,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 4103,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat11 );
TEST_VMRL_OP( 4109,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 4114,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat22 );
TEST_VMRL_OP( 4116,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat24 );
TEST_VMRL_OP( 4118,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 4120,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 4123,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat31 );
TEST_VMRL_OP( 4136,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 4137,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat12 );
TEST_VMRL_OP( 4138,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 4150,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 4151,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4155,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat30 );
TEST_VMRL_OP( 4158,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat0 );
TEST_VMRL_OP( 4168,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat10 );
TEST_VMRL_OP( 4169,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 4171,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 4172,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 4173,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat15 );
TEST_VMRL_OP( 4175,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat17 );
TEST_VMRL_OP( 4178,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat20 );
TEST_VMRL_OP( 4181,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat23 );
TEST_VMRL_OP( 4194,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 4195,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 4197,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 4199,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 4203,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 4204,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 4209,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 4214,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 4216,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat25 );
TEST_VMRL_OP( 4222,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat31 );
TEST_VMRL_OP( 4228,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat4 );
TEST_VMRL_OP( 4229,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 4232,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 4240,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 4243,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat19 );
TEST_VMRL_OP( 4249,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 4252,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 4259,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 4262,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 4263,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat6 );
TEST_VMRL_OP( 4264,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat7 );
TEST_VMRL_OP( 4266,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 4268,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat11 );
TEST_VMRL_OP( 4273,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 4278,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 4281,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 4283,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat26 );
TEST_VMRL_OP( 4303,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat13 );
TEST_VMRL_OP( 4306,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 4308,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 4315,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat25 );
TEST_VMRL_OP( 4318,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat28 );
TEST_VMRL_OP( 4323,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 4324,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 4328,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 4338,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 4340,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 4341,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 4345,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 4356,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmnand.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmnand.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8823,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8824,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8825,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8826,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8827,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8828,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8829,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8830,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8831,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8832,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8833,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8834,  vmnand.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
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
    

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
TEST_VMRL_OP( 2,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 8,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 15,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 16,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 19,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 27,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 28,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 29,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 31,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 42,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 49,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 50,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat17 );
TEST_VMRL_OP( 52,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat19 );
TEST_VMRL_OP( 56,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 57,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat24 );
TEST_VMRL_OP( 58,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat25 );
TEST_VMRL_OP( 59,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat26 );
TEST_VMRL_OP( 69,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 78,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 92,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat26 );
TEST_VMRL_OP( 94,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 95,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 109,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 110,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 112,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 113,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 114,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 121,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 128,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 129,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat30 );
TEST_VMRL_OP( 130,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat31 );
TEST_VMRL_OP( 131,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 137,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 138,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 139,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 143,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 154,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 155,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 158,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 164,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 168,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 170,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 172,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 175,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 176,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 190,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat25 );
TEST_VMRL_OP( 200,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 202,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 203,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 215,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat17 );
TEST_VMRL_OP( 216,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 218,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat20 );
TEST_VMRL_OP( 221,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat23 );
TEST_VMRL_OP( 230,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 232,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 235,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 245,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 248,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat17 );
TEST_VMRL_OP( 251,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 257,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 269,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 270,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 275,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 277,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 279,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 283,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 294,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 296,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 297,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 303,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 321,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat24 );
TEST_VMRL_OP( 331,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 332,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 335,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 345,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 350,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 352,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 359,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 361,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 363,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 372,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 376,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 382,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 383,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 389,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 391,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 395,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 400,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 407,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 408,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 410,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 412,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 416,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat20 );
TEST_VMRL_OP( 417,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 449,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat20 );
TEST_VMRL_OP( 461,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 464,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 467,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 469,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 473,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 475,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 479,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 480,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 489,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 490,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 492,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat30 );
TEST_VMRL_OP( 495,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 496,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 498,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 499,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 507,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 509,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 510,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 523,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 524,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat29 );
TEST_VMRL_OP( 526,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat31 );
TEST_VMRL_OP( 533,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 536,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 546,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 560,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 561,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 563,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 564,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat3 );
TEST_VMRL_OP( 566,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat5 );
TEST_VMRL_OP( 573,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 579,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 581,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat20 );
TEST_VMRL_OP( 590,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 596,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 599,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat5 );
TEST_VMRL_OP( 601,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat7 );
TEST_VMRL_OP( 603,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat9 );
TEST_VMRL_OP( 613,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 614,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 622,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 634,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 635,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 636,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat9 );
TEST_VMRL_OP( 638,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat11 );
TEST_VMRL_OP( 639,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 645,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat18 );
TEST_VMRL_OP( 650,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 653,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat26 );
TEST_VMRL_OP( 657,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 666,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 668,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 671,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat11 );
TEST_VMRL_OP( 672,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 678,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 680,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 685,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat25 );
TEST_VMRL_OP( 690,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 698,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 704,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 705,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 708,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 711,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 722,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 723,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 728,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 732,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 735,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 741,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 742,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat16 );
TEST_VMRL_OP( 744,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 745,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat19 );
TEST_VMRL_OP( 747,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 752,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat26 );
TEST_VMRL_OP( 764,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 765,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 768,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat9 );
TEST_VMRL_OP( 772,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 775,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat16 );
TEST_VMRL_OP( 779,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat20 );
TEST_VMRL_OP( 782,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 783,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 784,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 785,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 792,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 805,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 809,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 813,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 815,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat23 );
TEST_VMRL_OP( 826,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 828,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 830,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 831,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 834,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 840,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 842,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 848,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 850,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 851,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 852,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 854,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 857,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 869,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 874,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat16 );
TEST_VMRL_OP( 875,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 877,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 880,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 881,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 883,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 884,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 885,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 887,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat29 );
TEST_VMRL_OP( 891,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat27, walking_ones_dat0 );
TEST_VMRL_OP( 892,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 904,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 915,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 921,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 922,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 927,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 930,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 940,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 944,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 950,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 957,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 958,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 965,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 966,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 968,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 969,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 972,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 975,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 985,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 989,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 990,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 994,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat4 );
TEST_VMRL_OP( 995,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 997,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat7 );
TEST_VMRL_OP( 998,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 1002,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 1005,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 1013,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 1019,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 1020,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 1025,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 1026,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 1027,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 1033,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 1056,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 1057,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 1068,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat12 );
TEST_VMRL_OP( 1069,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat13 );
TEST_VMRL_OP( 1070,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 1080,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 1083,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 1085,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 1094,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 1095,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 1098,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 1099,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 1105,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 1107,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 1113,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat24 );
TEST_VMRL_OP( 1124,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 1140,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 1141,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 1143,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 1159,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 1162,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 1174,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat19 );
TEST_VMRL_OP( 1179,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 1180,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat25 );
TEST_VMRL_OP( 1191,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1192,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 1193,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 1204,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 1207,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 1210,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat22 );
TEST_VMRL_OP( 1219,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 1220,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat32 );
TEST_VMRL_OP( 1225,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1235,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 1238,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 1251,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat30 );
TEST_VMRL_OP( 1256,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 1257,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 1258,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 1261,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 1262,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 1266,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 1268,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 1269,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 1275,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat21 );
TEST_VMRL_OP( 1280,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat26 );
TEST_VMRL_OP( 1283,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat29 );
TEST_VMRL_OP( 1285,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 1288,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 1290,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 1292,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 1295,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 1296,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 1300,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 1301,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 1303,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 1306,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 1311,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 1312,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 1313,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 1316,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 1321,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 1324,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 1331,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 1338,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 1340,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 1355,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 1364,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 1367,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 1376,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 1389,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 1390,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 1391,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 1392,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 1404,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 1407,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 1409,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 1410,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat24 );
TEST_VMRL_OP( 1414,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat28 );
TEST_VMRL_OP( 1420,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 1423,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 1434,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 1436,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat17 );
TEST_VMRL_OP( 1439,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 1445,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 1447,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 1449,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat30 );
TEST_VMRL_OP( 1450,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 1456,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 1460,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 1461,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 1468,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 1472,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 1474,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat22 );
TEST_VMRL_OP( 1475,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat23 );
TEST_VMRL_OP( 1479,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat27 );
TEST_VMRL_OP( 1480,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat28 );
TEST_VMRL_OP( 1494,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 1496,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 1499,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 1507,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 1518,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 1524,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 1531,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1534,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 1535,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 1537,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 1545,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 1549,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 1551,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 1553,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 1567,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 1568,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat17 );
TEST_VMRL_OP( 1570,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 1576,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 1579,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 1585,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 1597,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 1598,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 1601,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 1602,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat18 );
TEST_VMRL_OP( 1605,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 1606,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 1618,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 1633,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1642,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat25 );
TEST_VMRL_OP( 1644,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 1645,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 1648,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat31 );
TEST_VMRL_OP( 1653,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 1667,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 1670,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 1671,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat21 );
TEST_VMRL_OP( 1677,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 1684,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat1 );
TEST_VMRL_OP( 1689,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat6 );
TEST_VMRL_OP( 1695,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 1697,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat14 );
TEST_VMRL_OP( 1699,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat16 );
TEST_VMRL_OP( 1711,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat28 );
TEST_VMRL_OP( 1719,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 1720,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat4 );
TEST_VMRL_OP( 1726,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 1727,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 1728,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 1730,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 1732,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 1733,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 1734,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat18 );
TEST_VMRL_OP( 1736,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat20 );
TEST_VMRL_OP( 1738,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 1739,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 1748,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat32 );
TEST_VMRL_OP( 1749,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 1750,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 1758,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 1762,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat13 );
TEST_VMRL_OP( 1763,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 1766,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 1767,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 1775,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 1777,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 1778,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 1785,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat3 );
TEST_VMRL_OP( 1797,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 1798,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 1801,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat19 );
TEST_VMRL_OP( 1818,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat3 );
TEST_VMRL_OP( 1826,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 1829,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat14 );
TEST_VMRL_OP( 1833,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 1844,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 1845,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 1850,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 1859,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 1861,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 1864,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 1876,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat28 );
TEST_VMRL_OP( 1878,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 1879,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat31 );
TEST_VMRL_OP( 1884,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat3 );
TEST_VMRL_OP( 1892,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 1903,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 1908,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat27 );
TEST_VMRL_OP( 1915,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 1917,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 1922,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 1927,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 1928,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 1929,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1930,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat16 );
TEST_VMRL_OP( 1933,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 1937,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 1944,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat30 );
TEST_VMRL_OP( 1949,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 1955,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat8 );
TEST_VMRL_OP( 1959,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 1968,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 1971,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 1979,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 1981,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 1982,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 1983,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 1984,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 1992,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 2002,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 2004,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 2009,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 2010,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat30 );
TEST_VMRL_OP( 2012,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 2019,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 2020,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 2022,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat9 );
TEST_VMRL_OP( 2027,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 2034,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 2036,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 2039,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat26 );
TEST_VMRL_OP( 2042,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 2044,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 2045,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 2046,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 2047,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat1 );
TEST_VMRL_OP( 2048,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 2058,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat12 );
TEST_VMRL_OP( 2060,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat14 );
TEST_VMRL_OP( 2071,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 2076,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 2080,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 2084,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat5 );
TEST_VMRL_OP( 2086,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat7 );
TEST_VMRL_OP( 2088,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 2089,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 2090,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 2095,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 2096,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 2099,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 2108,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 2110,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 2115,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat3 );
TEST_VMRL_OP( 2123,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat11 );
TEST_VMRL_OP( 2127,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2128,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 2130,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 2134,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 2136,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 2143,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 2147,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2160,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 2161,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 2168,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 2177,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 2179,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 2184,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2185,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 2193,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 2197,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 2198,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 2219,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 2221,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 2224,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 2229,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 2231,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat20 );
TEST_VMRL_OP( 2234,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 2246,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 2250,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 2253,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 2259,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 2263,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat19 );
TEST_VMRL_OP( 2270,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 2273,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 2281,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 2283,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 2289,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 2294,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 2295,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 2300,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 2305,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 2306,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat29 );
TEST_VMRL_OP( 2308,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 2310,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 2315,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 2317,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 2322,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 2324,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 2331,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat21 );
TEST_VMRL_OP( 2332,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 2337,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat27 );
TEST_VMRL_OP( 2339,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 2352,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 2354,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 2361,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat18 );
TEST_VMRL_OP( 2369,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat26 );
TEST_VMRL_OP( 2374,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 2385,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 2390,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 2391,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 2395,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 2403,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat27 );
TEST_VMRL_OP( 2407,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 2408,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat32 );
TEST_VMRL_OP( 2418,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 2421,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 2422,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 2426,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat17 );
TEST_VMRL_OP( 2427,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 2428,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 2429,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 2437,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 2440,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 2445,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 2446,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 2464,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 2465,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 2471,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 2472,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat30 );
TEST_VMRL_OP( 2476,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 2477,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 2478,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 2479,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 2484,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 2487,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 2489,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 2493,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 2496,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 2499,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat24 );
TEST_VMRL_OP( 2500,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 2501,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 2503,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat28 );
TEST_VMRL_OP( 2504,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat29 );
TEST_VMRL_OP( 2505,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 2506,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat31 );
TEST_VMRL_OP( 2508,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 2510,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 2511,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 2518,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 2519,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 2522,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 2531,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat23 );
TEST_VMRL_OP( 2538,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat30 );
TEST_VMRL_OP( 2541,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 2545,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 2546,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 2556,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 2560,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 2564,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat23 );
TEST_VMRL_OP( 2567,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 2575,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 2576,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 2584,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 2587,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 2597,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 2599,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 2604,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 2606,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 2612,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 2621,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 2623,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 2625,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat18 );
TEST_VMRL_OP( 2631,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 2641,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 2643,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 2645,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 2651,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 2652,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 2659,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 2668,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 2672,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat32 );
TEST_VMRL_OP( 2679,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 2690,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 2692,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 2694,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2695,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 2696,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat23 );
TEST_VMRL_OP( 2705,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 2707,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 2709,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 2712,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 2716,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 2724,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat18 );
TEST_VMRL_OP( 2728,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat22 );
TEST_VMRL_OP( 2729,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat23 );
TEST_VMRL_OP( 2731,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat25 );
TEST_VMRL_OP( 2733,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 2739,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat0 );
TEST_VMRL_OP( 2740,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 2743,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 2754,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 2758,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat19 );
TEST_VMRL_OP( 2765,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat26 );
TEST_VMRL_OP( 2766,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 2769,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat30 );
TEST_VMRL_OP( 2771,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 2772,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 2776,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 2785,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat13 );
TEST_VMRL_OP( 2805,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat0 );
TEST_VMRL_OP( 2810,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat5 );
TEST_VMRL_OP( 2821,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 2828,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 2829,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat24 );
TEST_VMRL_OP( 2837,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat32 );
TEST_VMRL_OP( 2839,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 2845,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 2846,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 2852,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 2860,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat22 );
TEST_VMRL_OP( 2862,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 2865,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat27 );
TEST_VMRL_OP( 2866,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 2869,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat31 );
TEST_VMRL_OP( 2873,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat2 );
TEST_VMRL_OP( 2876,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat5 );
TEST_VMRL_OP( 2877,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 2883,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat12 );
TEST_VMRL_OP( 2885,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 2886,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 2887,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 2889,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 2896,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 2898,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 2900,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat29 );
TEST_VMRL_OP( 2904,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 2910,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 2917,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 2921,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat17 );
TEST_VMRL_OP( 2922,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 2926,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 2930,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 2933,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 2935,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 2938,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 2939,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 2940,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat3 );
TEST_VMRL_OP( 2943,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat6 );
TEST_VMRL_OP( 2944,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 2946,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 2950,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 2953,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 2963,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 2965,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat28 );
TEST_VMRL_OP( 2985,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat15 );
TEST_VMRL_OP( 2987,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 3002,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat32 );
TEST_VMRL_OP( 3004,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 3007,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 3015,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat12 );
TEST_VMRL_OP( 3019,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat16 );
TEST_VMRL_OP( 3027,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 3028,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 3038,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 3048,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 3060,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 3067,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 3070,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 3076,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 3078,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 3081,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 3087,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 3088,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 3094,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat25 );
TEST_VMRL_OP( 3095,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 3097,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 3103,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 3106,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat4 );
TEST_VMRL_OP( 3107,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 3114,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat12 );
TEST_VMRL_OP( 3119,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 3122,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 3123,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 3130,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 3159,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 3162,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 3164,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 3165,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 3169,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 3171,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat3 );
TEST_VMRL_OP( 3183,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 3186,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 3188,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 3189,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 3191,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat23 );
TEST_VMRL_OP( 3196,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat28 );
TEST_VMRL_OP( 3198,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 3201,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 3202,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 3203,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 3206,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat5 );
TEST_VMRL_OP( 3217,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 3220,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 3223,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 3228,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 3233,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 3236,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 3245,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 3247,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3249,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 3251,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 3258,  vmor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 3279,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 3280,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 3284,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat17 );
TEST_VMRL_OP( 3288,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat21 );
TEST_VMRL_OP( 3289,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat22 );
TEST_VMRL_OP( 3295,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 3297,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 3301,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 3305,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 3307,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 3320,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 3323,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 3324,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat24 );
TEST_VMRL_OP( 3329,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 3331,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 3335,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 3339,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 3344,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 3346,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 3349,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 3350,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 3351,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat18 );
TEST_VMRL_OP( 3358,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 3359,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat26 );
TEST_VMRL_OP( 3362,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 3371,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 3375,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 3383,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat17 );
TEST_VMRL_OP( 3386,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat20 );
TEST_VMRL_OP( 3389,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat23 );
TEST_VMRL_OP( 3390,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 3395,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 3400,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 3404,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 3405,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 3407,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 3408,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 3412,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 3418,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 3420,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 3430,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat31 );
TEST_VMRL_OP( 3431,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 3438,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 3447,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 3452,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 3457,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat25 );
TEST_VMRL_OP( 3459,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 3465,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 3466,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 3476,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 3477,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 3482,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat17 );
TEST_VMRL_OP( 3488,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat23 );
TEST_VMRL_OP( 3513,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 3514,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 3515,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat17 );
TEST_VMRL_OP( 3519,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat21 );
TEST_VMRL_OP( 3529,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 3538,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 3541,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 3543,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 3548,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 3550,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 3554,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 3555,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 3556,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat25 );
TEST_VMRL_OP( 3562,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 3564,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 3565,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 3566,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 3577,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 3585,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 3604,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 3611,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 3614,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 3616,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 3618,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat21 );
TEST_VMRL_OP( 3627,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 3631,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 3642,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 3660,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 3662,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 3669,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 3681,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat18 );
TEST_VMRL_OP( 3693,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat30 );
TEST_VMRL_OP( 3701,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 3704,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 3708,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 3713,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat17 );
TEST_VMRL_OP( 3716,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat20 );
TEST_VMRL_OP( 3734,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 3741,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 3743,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 3745,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 3749,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat20 );
TEST_VMRL_OP( 3753,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 3754,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 3755,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 3757,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 3759,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat30 );
TEST_VMRL_OP( 3761,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 3763,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 3765,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 3766,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 3772,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 3774,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 3786,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat24 );
TEST_VMRL_OP( 3792,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat30 );
TEST_VMRL_OP( 3798,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 3800,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 3809,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 3810,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 3819,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat24 );
TEST_VMRL_OP( 3827,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 3832,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 3834,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 3840,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3843,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 3847,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 3851,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 3852,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat24 );
TEST_VMRL_OP( 3854,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat26 );
TEST_VMRL_OP( 3855,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat27 );
TEST_VMRL_OP( 3862,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 3865,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3869,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 3880,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 3886,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 3894,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat0 );
TEST_VMRL_OP( 3896,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 3902,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 3903,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat9 );
TEST_VMRL_OP( 3907,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 3911,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 3914,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 3915,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 3918,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 3919,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat25 );
TEST_VMRL_OP( 3921,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 3924,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 3928,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 3934,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat7 );
TEST_VMRL_OP( 3936,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat9 );
TEST_VMRL_OP( 3938,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat11 );
TEST_VMRL_OP( 3943,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 3950,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat23 );
TEST_VMRL_OP( 3954,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat27 );
TEST_VMRL_OP( 3958,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 3963,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 3964,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat4 );
TEST_VMRL_OP( 3972,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 3974,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat14 );
TEST_VMRL_OP( 3975,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 3978,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 3989,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 3991,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 3994,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat1 );
TEST_VMRL_OP( 3995,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 3998,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat5 );
TEST_VMRL_OP( 3999,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 4002,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 4004,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 4005,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 4007,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 4023,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 4024,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat31 );
TEST_VMRL_OP( 4030,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 4033,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 4037,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat11 );
TEST_VMRL_OP( 4041,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 4045,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 4048,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 4055,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 4063,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat4 );
TEST_VMRL_OP( 4066,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat7 );
TEST_VMRL_OP( 4069,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat10 );
TEST_VMRL_OP( 4073,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 4074,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat15 );
TEST_VMRL_OP( 4077,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 4080,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 4081,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 4082,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat23 );
TEST_VMRL_OP( 4089,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 4098,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 4104,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 4107,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 4119,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 4121,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 4124,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 4131,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat6 );
TEST_VMRL_OP( 4133,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 4142,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 4143,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 4150,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 4151,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4157,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat32 );
TEST_VMRL_OP( 4158,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat0 );
TEST_VMRL_OP( 4171,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 4172,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 4173,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat15 );
TEST_VMRL_OP( 4187,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 4188,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 4193,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 4198,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 4208,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 4214,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 4217,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 4222,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat31 );
TEST_VMRL_OP( 4231,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat7 );
TEST_VMRL_OP( 4233,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 4238,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat14 );
TEST_VMRL_OP( 4247,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 4248,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 4250,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 4259,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 4267,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 4281,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 4284,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat27 );
TEST_VMRL_OP( 4289,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat32 );
TEST_VMRL_OP( 4291,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat1 );
TEST_VMRL_OP( 4305,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 4309,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat19 );
TEST_VMRL_OP( 4313,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat23 );
TEST_VMRL_OP( 4315,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat25 );
TEST_VMRL_OP( 4317,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 4321,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4324,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 4327,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 4329,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 4339,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat16 );
TEST_VMRL_OP( 4344,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat21 );
TEST_VMRL_OP( 4347,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 4352,  vmor.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 4356,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmor.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8823,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8824,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8825,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8826,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8827,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8828,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8829,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8830,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8831,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8832,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8833,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8834,  vmor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
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
    

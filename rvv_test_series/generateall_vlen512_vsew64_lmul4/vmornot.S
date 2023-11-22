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
TEST_VMRL_OP( 0,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 20,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 25,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat25 );
TEST_VMRL_OP( 27,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 29,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 35,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 40,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 41,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 46,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 51,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 65,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 71,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 75,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 86,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat20 );
TEST_VMRL_OP( 90,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 91,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 93,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 94,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 95,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 99,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 100,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 101,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 108,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 121,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 124,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 127,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_ones_dat28 );
TEST_VMRL_OP( 132,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 136,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 138,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 141,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 143,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 144,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 147,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 149,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat17 );
TEST_VMRL_OP( 160,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_ones_dat28 );
TEST_VMRL_OP( 170,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 172,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 174,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 185,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 192,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 196,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 197,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_ones_dat32 );
TEST_VMRL_OP( 201,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 202,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 210,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 211,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 216,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 219,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 220,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 222,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 224,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 226,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 236,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 241,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 249,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 250,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 261,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 270,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 280,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 281,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 285,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 286,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat22 );
TEST_VMRL_OP( 287,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 291,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 296,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 298,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 303,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 306,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 317,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_ones_dat20 );
TEST_VMRL_OP( 326,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_ones_dat29 );
TEST_VMRL_OP( 333,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 335,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 343,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 348,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat18 );
TEST_VMRL_OP( 349,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 350,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 352,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 360,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 361,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 368,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 373,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 374,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 375,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 377,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 388,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 389,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 390,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 392,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_ones_dat29 );
TEST_VMRL_OP( 396,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 404,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 417,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 418,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat22 );
TEST_VMRL_OP( 420,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat24 );
TEST_VMRL_OP( 422,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat26 );
TEST_VMRL_OP( 426,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat30 );
TEST_VMRL_OP( 427,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 434,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 441,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 443,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 448,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat19 );
TEST_VMRL_OP( 451,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat22 );
TEST_VMRL_OP( 454,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat25 );
TEST_VMRL_OP( 455,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat26 );
TEST_VMRL_OP( 461,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 463,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 467,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 469,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 472,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 475,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 476,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 481,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat19 );
TEST_VMRL_OP( 492,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat30 );
TEST_VMRL_OP( 494,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 504,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 506,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 511,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 512,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 515,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 517,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 518,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 529,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 530,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 539,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 551,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat23 );
TEST_VMRL_OP( 553,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat25 );
TEST_VMRL_OP( 554,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 557,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat29 );
TEST_VMRL_OP( 560,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 564,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat3 );
TEST_VMRL_OP( 567,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 573,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 580,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 581,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat20 );
TEST_VMRL_OP( 585,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat24 );
TEST_VMRL_OP( 586,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 604,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 608,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 611,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_ones_dat17 );
TEST_VMRL_OP( 613,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 618,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 621,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 630,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 647,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 648,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 649,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 650,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 651,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 652,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat25 );
TEST_VMRL_OP( 655,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 657,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 673,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_ones_dat13 );
TEST_VMRL_OP( 677,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_ones_dat17 );
TEST_VMRL_OP( 686,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_ones_dat26 );
TEST_VMRL_OP( 693,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 695,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_ones_dat2 );
TEST_VMRL_OP( 704,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 725,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_ones_dat32 );
TEST_VMRL_OP( 734,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat8 );
TEST_VMRL_OP( 741,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 743,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 753,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 754,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 757,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat31 );
TEST_VMRL_OP( 758,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_ones_dat32 );
TEST_VMRL_OP( 761,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 762,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat3 );
TEST_VMRL_OP( 765,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 778,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 780,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 781,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 787,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat28 );
TEST_VMRL_OP( 791,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 795,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 798,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 804,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 805,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 811,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_ones_dat19 );
TEST_VMRL_OP( 818,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_ones_dat26 );
TEST_VMRL_OP( 831,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 832,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat7 );
TEST_VMRL_OP( 835,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 841,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat16 );
TEST_VMRL_OP( 843,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 852,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 855,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 856,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat31 );
TEST_VMRL_OP( 859,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat1 );
TEST_VMRL_OP( 863,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 865,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat7 );
TEST_VMRL_OP( 866,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 867,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 871,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 872,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 875,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 878,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat20 );
TEST_VMRL_OP( 880,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 883,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 885,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 886,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 887,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat29 );
TEST_VMRL_OP( 890,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_ones_dat32 );
TEST_VMRL_OP( 895,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 896,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 910,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 915,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 922,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 924,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 926,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 931,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 934,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 935,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 943,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat19 );
TEST_VMRL_OP( 945,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 946,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 948,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat24 );
TEST_VMRL_OP( 949,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat25 );
TEST_VMRL_OP( 953,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 957,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 969,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 973,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 974,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 976,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat19 );
TEST_VMRL_OP( 979,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat22 );
TEST_VMRL_OP( 981,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 982,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 986,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 990,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 993,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 995,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 996,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat6 );
TEST_VMRL_OP( 998,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 1003,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat13 );
TEST_VMRL_OP( 1005,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 1013,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 1014,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 1017,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_ones_dat27 );
TEST_VMRL_OP( 1032,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_ones_dat9 );
TEST_VMRL_OP( 1033,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 1052,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 1056,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 1062,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 1063,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat7 );
TEST_VMRL_OP( 1066,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 1070,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 1074,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 1076,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 1077,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat21 );
TEST_VMRL_OP( 1088,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 1095,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 1097,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 1110,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 1111,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 1121,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 1126,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 1128,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 1143,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 1146,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 1147,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat25 );
TEST_VMRL_OP( 1149,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat27 );
TEST_VMRL_OP( 1152,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 1158,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 1159,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 1169,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 1177,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 1181,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 1182,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 1183,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 1194,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 1198,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 1200,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 1206,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 1212,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat24 );
TEST_VMRL_OP( 1218,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat30 );
TEST_VMRL_OP( 1219,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 1223,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 1226,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 1230,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 1232,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 1233,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 1235,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 1236,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 1247,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 1249,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat28 );
TEST_VMRL_OP( 1250,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 1261,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 1266,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 1274,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat20 );
TEST_VMRL_OP( 1276,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 1277,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 1278,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 1281,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 1286,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 1293,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1295,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 1299,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 1300,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 1302,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 1308,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 1311,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 1313,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 1322,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 1324,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 1340,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 1349,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 1352,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 1359,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 1364,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 1366,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 1371,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 1376,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 1384,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 1390,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 1392,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 1393,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 1394,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 1396,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 1401,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 1405,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 1413,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 1418,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 1419,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 1430,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 1431,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 1433,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 1438,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat19 );
TEST_VMRL_OP( 1439,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 1444,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat25 );
TEST_VMRL_OP( 1445,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 1450,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 1460,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 1465,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 1479,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat27 );
TEST_VMRL_OP( 1482,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 1486,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 1489,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 1492,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 1496,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 1510,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 1512,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 1513,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat28 );
TEST_VMRL_OP( 1515,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 1518,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 1527,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 1536,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat18 );
TEST_VMRL_OP( 1537,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 1545,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 1549,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 1552,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 1579,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 1582,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 1604,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 1611,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 1618,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 1620,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 1622,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 1625,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 1626,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 1629,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 1630,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 1635,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat18 );
TEST_VMRL_OP( 1639,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat22 );
TEST_VMRL_OP( 1645,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 1647,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat30 );
TEST_VMRL_OP( 1660,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat10 );
TEST_VMRL_OP( 1664,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 1665,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 1669,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat19 );
TEST_VMRL_OP( 1670,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 1675,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 1677,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 1681,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 1687,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 1694,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat11 );
TEST_VMRL_OP( 1698,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 1700,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 1701,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 1705,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 1706,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 1713,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 1730,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 1731,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 1744,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat28 );
TEST_VMRL_OP( 1747,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 1748,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat32 );
TEST_VMRL_OP( 1752,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat3 );
TEST_VMRL_OP( 1763,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 1766,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 1785,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat3 );
TEST_VMRL_OP( 1786,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 1787,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat5 );
TEST_VMRL_OP( 1791,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 1792,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 1802,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat20 );
TEST_VMRL_OP( 1807,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 1813,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat31 );
TEST_VMRL_OP( 1816,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 1817,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 1819,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 1827,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 1829,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat14 );
TEST_VMRL_OP( 1838,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat23 );
TEST_VMRL_OP( 1845,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 1847,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 1848,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 1849,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 1853,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat5 );
TEST_VMRL_OP( 1857,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 1858,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat10 );
TEST_VMRL_OP( 1864,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 1867,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 1872,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 1878,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 1879,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat31 );
TEST_VMRL_OP( 1882,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat1 );
TEST_VMRL_OP( 1894,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 1895,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat14 );
TEST_VMRL_OP( 1897,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 1900,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 1903,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 1908,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat27 );
TEST_VMRL_OP( 1910,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat29 );
TEST_VMRL_OP( 1921,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 1931,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat17 );
TEST_VMRL_OP( 1937,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 1943,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat29 );
TEST_VMRL_OP( 1944,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat30 );
TEST_VMRL_OP( 1950,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 1955,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat8 );
TEST_VMRL_OP( 1960,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 1961,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 1962,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat15 );
TEST_VMRL_OP( 1967,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 1968,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 1970,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 1971,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 1974,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 1978,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 1987,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 1988,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 1991,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 1995,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 2002,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 2010,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat30 );
TEST_VMRL_OP( 2011,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 2018,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 2032,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 2046,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 2055,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat9 );
TEST_VMRL_OP( 2062,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 2068,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 2075,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 2076,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 2089,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 2091,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat12 );
TEST_VMRL_OP( 2096,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 2098,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 2111,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 2118,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 2121,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 2127,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2130,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 2132,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat20 );
TEST_VMRL_OP( 2133,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 2142,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat30 );
TEST_VMRL_OP( 2143,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 2147,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2156,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 2159,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat14 );
TEST_VMRL_OP( 2160,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 2174,  vmornot.mm,  64,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat29 );
TEST_VMRL_OP( 2181,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 2183,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 2189,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 2192,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 2195,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 2198,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 2206,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat28 );
TEST_VMRL_OP( 2207,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 2211,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 2221,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 2222,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 2224,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 2230,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2232,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 2234,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 2235,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 2241,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 2242,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat31 );
TEST_VMRL_OP( 2243,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 2246,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 2248,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 2255,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 2256,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 2265,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 2272,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 2274,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 2282,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 2288,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 2291,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 2293,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 2304,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 2306,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat29 );
TEST_VMRL_OP( 2312,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 2313,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 2316,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 2317,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 2318,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 2322,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 2323,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2328,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 2336,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 2339,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 2345,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 2348,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 2352,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 2353,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 2355,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 2362,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 2363,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat20 );
TEST_VMRL_OP( 2370,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 2372,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat29 );
TEST_VMRL_OP( 2377,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 2380,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 2384,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 2385,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 2387,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 2388,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 2395,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 2400,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 2408,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat32 );
TEST_VMRL_OP( 2410,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 2415,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 2420,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 2421,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 2423,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 2424,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 2427,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 2432,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat23 );
TEST_VMRL_OP( 2433,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat24 );
TEST_VMRL_OP( 2435,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat26 );
TEST_VMRL_OP( 2436,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat27 );
TEST_VMRL_OP( 2439,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 2458,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 2470,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 2475,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 2485,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 2505,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 2506,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat31 );
TEST_VMRL_OP( 2513,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 2517,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 2518,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 2520,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 2532,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 2539,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 2552,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 2553,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 2555,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 2565,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat24 );
TEST_VMRL_OP( 2572,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 2574,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 2575,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 2577,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 2578,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 2581,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 2596,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 2598,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat24 );
TEST_VMRL_OP( 2599,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 2605,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 2613,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 2619,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 2621,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 2629,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 2636,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 2641,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 2643,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 2651,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 2656,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 2660,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat20 );
TEST_VMRL_OP( 2663,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat23 );
TEST_VMRL_OP( 2666,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 2668,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 2671,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 2672,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat32 );
TEST_VMRL_OP( 2674,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 2678,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 2679,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 2680,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 2689,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 2692,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 2693,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 2704,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat31 );
TEST_VMRL_OP( 2707,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 2717,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 2719,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 2721,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 2726,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 2727,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 2740,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 2746,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 2747,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat8 );
TEST_VMRL_OP( 2752,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 2755,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 2756,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 2761,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 2767,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat28 );
TEST_VMRL_OP( 2768,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 2769,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat30 );
TEST_VMRL_OP( 2792,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat20 );
TEST_VMRL_OP( 2795,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 2802,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 2807,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 2811,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 2814,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 2815,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 2817,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 2826,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 2828,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 2829,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat24 );
TEST_VMRL_OP( 2841,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat3 );
TEST_VMRL_OP( 2844,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat6 );
TEST_VMRL_OP( 2847,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 2852,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 2855,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 2871,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat0 );
TEST_VMRL_OP( 2873,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat2 );
TEST_VMRL_OP( 2874,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat3 );
TEST_VMRL_OP( 2889,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 2892,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 2895,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 2897,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat26 );
TEST_VMRL_OP( 2901,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat30 );
TEST_VMRL_OP( 2905,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 2911,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat7 );
TEST_VMRL_OP( 2914,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 2916,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 2917,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 2920,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat16 );
TEST_VMRL_OP( 2921,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat17 );
TEST_VMRL_OP( 2923,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 2926,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 2927,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat23 );
TEST_VMRL_OP( 2931,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat27 );
TEST_VMRL_OP( 2936,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 2938,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 2948,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 2956,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 2960,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 2963,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 2969,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 2972,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 2973,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat3 );
TEST_VMRL_OP( 2983,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 2985,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat15 );
TEST_VMRL_OP( 2986,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 2991,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 2993,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 2994,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 3001,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat31 );
TEST_VMRL_OP( 3007,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 3017,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 3024,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 3027,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 3028,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 3030,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 3033,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat30 );
TEST_VMRL_OP( 3036,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat0 );
TEST_VMRL_OP( 3037,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat1 );
TEST_VMRL_OP( 3038,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 3041,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 3043,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 3048,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 3055,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat19 );
TEST_VMRL_OP( 3062,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 3072,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 3077,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 3087,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 3093,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 3094,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat25 );
TEST_VMRL_OP( 3095,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 3097,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 3098,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 3100,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 3108,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 3111,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat9 );
TEST_VMRL_OP( 3112,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat10 );
TEST_VMRL_OP( 3121,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 3125,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 3127,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 3128,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat26 );
TEST_VMRL_OP( 3136,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat1 );
TEST_VMRL_OP( 3138,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 3147,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat12 );
TEST_VMRL_OP( 3148,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 3153,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 3155,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 3156,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 3175,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat7 );
TEST_VMRL_OP( 3182,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 3183,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 3189,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 3196,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat28 );
TEST_VMRL_OP( 3199,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 3202,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 3205,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat4 );
TEST_VMRL_OP( 3207,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 3208,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat7 );
TEST_VMRL_OP( 3218,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat17 );
TEST_VMRL_OP( 3225,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 3226,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 3228,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 3229,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat28 );
TEST_VMRL_OP( 3233,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 3236,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 3237,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat3 );
TEST_VMRL_OP( 3238,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat4 );
TEST_VMRL_OP( 3241,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat7 );
TEST_VMRL_OP( 3246,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 3247,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3250,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 3257,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 3260,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat26 );
TEST_VMRL_OP( 3262,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 3266,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 3267,  vmornot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 3268,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 3271,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 3299,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat32 );
TEST_VMRL_OP( 3315,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 3316,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 3322,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 3328,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 3330,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 3331,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 3338,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 3343,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 3345,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 3346,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 3349,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 3355,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 3360,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 3364,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat31 );
TEST_VMRL_OP( 3369,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 3371,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 3373,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 3376,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 3377,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 3379,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 3382,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 3384,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 3390,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 3396,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat30 );
TEST_VMRL_OP( 3401,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 3402,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 3408,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 3413,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 3415,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 3427,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat28 );
TEST_VMRL_OP( 3432,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 3438,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 3442,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 3447,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 3448,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 3449,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat17 );
TEST_VMRL_OP( 3458,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat26 );
TEST_VMRL_OP( 3464,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat32 );
TEST_VMRL_OP( 3467,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 3468,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 3471,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 3478,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 3490,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 3497,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 3506,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 3515,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat17 );
TEST_VMRL_OP( 3520,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat22 );
TEST_VMRL_OP( 3526,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 3532,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 3533,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 3534,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 3540,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 3551,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat20 );
TEST_VMRL_OP( 3556,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat25 );
TEST_VMRL_OP( 3559,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat28 );
TEST_VMRL_OP( 3561,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 3562,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 3566,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 3568,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 3569,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 3570,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 3574,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 3578,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 3579,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 3584,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat20 );
TEST_VMRL_OP( 3586,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3599,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 3600,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 3602,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 3603,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 3604,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 3606,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 3608,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 3616,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 3621,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 3626,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 3628,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 3629,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 3630,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 3631,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 3636,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 3641,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 3645,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 3650,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 3651,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat21 );
TEST_VMRL_OP( 3657,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 3665,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 3668,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 3670,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 3671,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 3672,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 3674,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 3686,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 3694,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 3696,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 3698,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 3701,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 3704,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 3707,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 3712,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 3714,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 3721,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat25 );
TEST_VMRL_OP( 3726,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 3728,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 3729,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 3732,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 3741,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 3748,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat19 );
TEST_VMRL_OP( 3751,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 3752,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 3757,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 3768,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 3771,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 3776,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 3782,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 3783,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 3785,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 3787,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat25 );
TEST_VMRL_OP( 3789,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 3795,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 3802,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 3806,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 3808,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 3812,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat17 );
TEST_VMRL_OP( 3814,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat19 );
TEST_VMRL_OP( 3815,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat20 );
TEST_VMRL_OP( 3819,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat24 );
TEST_VMRL_OP( 3823,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 3824,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat29 );
TEST_VMRL_OP( 3834,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 3849,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat21 );
TEST_VMRL_OP( 3851,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 3853,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 3856,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat28 );
TEST_VMRL_OP( 3857,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 3865,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3867,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 3869,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 3874,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat13 );
TEST_VMRL_OP( 3879,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 3883,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat22 );
TEST_VMRL_OP( 3884,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 3885,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3887,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 3888,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 3889,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 3899,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat5 );
TEST_VMRL_OP( 3901,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 3902,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 3916,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 3922,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 3924,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 3925,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 3926,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat32 );
TEST_VMRL_OP( 3932,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat5 );
TEST_VMRL_OP( 3933,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 3936,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat9 );
TEST_VMRL_OP( 3940,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat13 );
TEST_VMRL_OP( 3943,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 3947,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 3956,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 3960,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 3962,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat2 );
TEST_VMRL_OP( 3972,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 3976,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 3977,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat17 );
TEST_VMRL_OP( 3978,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 3979,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 3980,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 3986,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 3991,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 3992,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat32 );
TEST_VMRL_OP( 3993,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat0 );
TEST_VMRL_OP( 3995,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 4012,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat19 );
TEST_VMRL_OP( 4014,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 4015,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4018,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 4023,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 4027,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat1 );
TEST_VMRL_OP( 4029,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat3 );
TEST_VMRL_OP( 4040,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 4047,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 4048,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 4049,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4051,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 4057,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 4062,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 4071,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 4080,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 4081,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 4093,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 4103,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat11 );
TEST_VMRL_OP( 4108,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat16 );
TEST_VMRL_OP( 4110,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 4113,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat21 );
TEST_VMRL_OP( 4117,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4122,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 4127,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 4137,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat12 );
TEST_VMRL_OP( 4138,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 4139,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 4140,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 4142,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 4151,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4152,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 4154,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat29 );
TEST_VMRL_OP( 4161,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 4164,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 4174,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 4181,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat23 );
TEST_VMRL_OP( 4187,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 4188,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 4210,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat19 );
TEST_VMRL_OP( 4219,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4230,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat6 );
TEST_VMRL_OP( 4236,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 4246,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat22 );
TEST_VMRL_OP( 4259,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 4272,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 4273,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 4276,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat19 );
TEST_VMRL_OP( 4277,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 4278,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 4284,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat27 );
TEST_VMRL_OP( 4288,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 4290,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 4292,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 4293,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 4294,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 4297,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 4300,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 4302,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat12 );
TEST_VMRL_OP( 4310,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 4318,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat28 );
TEST_VMRL_OP( 4319,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 4328,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 4333,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 4334,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat11 );
TEST_VMRL_OP( 4336,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat13 );
TEST_VMRL_OP( 4337,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 4338,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 4342,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat19 );
TEST_VMRL_OP( 4352,  vmornot.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 4356,  vmornot.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmornot.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmornot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmornot.mm,  64,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8823,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8824,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8825,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8826,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8827,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8828,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8829,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8830,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8831,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8832,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8833,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8834,  vmornot.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
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
    

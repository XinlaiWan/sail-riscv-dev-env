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
TEST_VMRL_OP( 5,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 27,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 36,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 37,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 40,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 51,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 53,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 54,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 60,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 63,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 64,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 77,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 90,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 94,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 102,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 106,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 107,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 128,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 131,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 135,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 138,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 141,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 145,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 147,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 149,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_ones_dat17 );
TEST_VMRL_OP( 152,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_ones_dat20 );
TEST_VMRL_OP( 166,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 168,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 169,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 172,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 178,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 181,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 186,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 188,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 189,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat24 );
TEST_VMRL_OP( 196,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 198,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 206,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 209,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 222,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 224,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 225,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 226,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 234,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 238,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 240,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 246,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 255,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 256,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat25 );
TEST_VMRL_OP( 257,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat26 );
TEST_VMRL_OP( 258,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 259,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 268,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 274,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 275,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 276,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 280,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 281,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 282,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 287,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 293,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 297,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 300,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 305,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 309,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 311,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 313,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 315,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 318,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 319,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 330,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 332,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 334,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 339,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 340,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 343,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 344,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 345,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 347,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 355,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 361,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 362,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 370,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 372,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 374,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 377,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 381,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 382,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 385,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 386,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 388,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 389,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 393,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 396,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 398,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 399,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 408,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 413,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat17 );
TEST_VMRL_OP( 415,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 417,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 423,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 425,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 426,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat30 );
TEST_VMRL_OP( 427,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 429,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 433,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 435,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 449,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_ones_dat20 );
TEST_VMRL_OP( 465,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 467,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 469,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 471,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 472,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 476,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 477,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 485,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 487,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 490,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 492,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_ones_dat30 );
TEST_VMRL_OP( 495,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 499,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 503,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 505,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 507,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 509,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 510,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 511,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 517,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 522,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 523,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 524,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_ones_dat29 );
TEST_VMRL_OP( 532,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 535,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 536,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 540,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 542,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 543,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 544,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 548,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_ones_dat20 );
TEST_VMRL_OP( 562,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_ones_dat1 );
TEST_VMRL_OP( 563,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 564,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_ones_dat3 );
TEST_VMRL_OP( 572,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_ones_dat11 );
TEST_VMRL_OP( 580,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 584,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 595,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 599,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_ones_dat5 );
TEST_VMRL_OP( 602,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 606,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 609,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 612,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 617,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 629,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 630,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 634,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 639,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 648,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 650,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 651,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 654,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 656,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 660,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 673,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_ones_dat13 );
TEST_VMRL_OP( 674,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 680,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 681,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 687,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_ones_dat27 );
TEST_VMRL_OP( 688,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_ones_dat28 );
TEST_VMRL_OP( 689,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 694,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 696,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 699,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat6 );
TEST_VMRL_OP( 702,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat9 );
TEST_VMRL_OP( 708,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 709,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 713,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 716,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 721,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_ones_dat28 );
TEST_VMRL_OP( 727,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_ones_dat1 );
TEST_VMRL_OP( 733,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_ones_dat7 );
TEST_VMRL_OP( 738,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 741,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 747,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 748,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 756,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 761,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 763,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 764,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 765,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 780,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 781,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 782,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 784,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 786,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat27 );
TEST_VMRL_OP( 790,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 792,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 794,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 798,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 804,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 808,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 809,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 810,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 823,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_ones_dat31 );
TEST_VMRL_OP( 825,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 835,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 837,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 838,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_ones_dat13 );
TEST_VMRL_OP( 840,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 843,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 853,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 857,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 861,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_ones_dat3 );
TEST_VMRL_OP( 866,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 868,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_ones_dat10 );
TEST_VMRL_OP( 877,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 891,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat27, walking_ones_dat0 );
TEST_VMRL_OP( 892,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 912,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_ones_dat21 );
TEST_VMRL_OP( 922,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 927,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 931,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 933,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat9 );
TEST_VMRL_OP( 939,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 943,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat19 );
TEST_VMRL_OP( 948,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat24 );
TEST_VMRL_OP( 949,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat25 );
TEST_VMRL_OP( 955,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_ones_dat31 );
TEST_VMRL_OP( 957,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 976,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_ones_dat19 );
TEST_VMRL_OP( 977,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 979,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_ones_dat22 );
TEST_VMRL_OP( 985,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 995,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 1002,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 1007,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 1011,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 1012,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat22 );
TEST_VMRL_OP( 1014,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 1018,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 1021,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 1022,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_ones_dat32 );
TEST_VMRL_OP( 1029,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_ones_dat6 );
TEST_VMRL_OP( 1039,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 1047,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 1049,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 1050,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 1054,  vmxnor.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 1056,  vmxnor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 1061,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 1072,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_ones_dat16 );
TEST_VMRL_OP( 1074,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 1083,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 1087,  vmxnor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 1091,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 1093,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 1095,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 1101,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 1104,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 1107,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 1116,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 1118,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 1124,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 1127,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 1128,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 1131,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 1132,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 1145,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 1159,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 1160,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 1163,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 1166,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 1175,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat20 );
TEST_VMRL_OP( 1179,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 1181,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 1182,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 1184,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 1188,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 1190,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 1193,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 1195,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 1199,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 1201,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 1205,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 1209,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 1210,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat22 );
TEST_VMRL_OP( 1211,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 1220,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat32 );
TEST_VMRL_OP( 1224,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 1226,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 1229,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 1231,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 1233,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 1235,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 1238,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 1246,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 1253,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 1256,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 1267,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 1273,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 1274,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat20 );
TEST_VMRL_OP( 1281,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 1284,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat30 );
TEST_VMRL_OP( 1289,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 1291,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 1294,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 1301,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 1302,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 1308,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 1309,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 1311,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 1312,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 1315,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat28 );
TEST_VMRL_OP( 1325,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 1327,  vmxnor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1328,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 1331,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 1334,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 1337,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat17 );
TEST_VMRL_OP( 1338,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 1342,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat22 );
TEST_VMRL_OP( 1356,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 1370,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 1374,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 1375,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 1385,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 1388,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 1389,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 1390,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 1393,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 1395,  vmxnor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1405,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 1407,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 1411,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 1413,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 1426,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 1428,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 1434,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 1438,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat19 );
TEST_VMRL_OP( 1441,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat22 );
TEST_VMRL_OP( 1443,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 1444,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat25 );
TEST_VMRL_OP( 1454,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 1461,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 1465,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 1472,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 1475,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat23 );
TEST_VMRL_OP( 1479,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat27 );
TEST_VMRL_OP( 1481,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1483,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 1484,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 1486,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 1491,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 1497,  vmxnor.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1500,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 1509,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat24 );
TEST_VMRL_OP( 1519,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 1527,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 1553,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 1554,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 1560,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 1563,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 1570,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 1572,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat21 );
TEST_VMRL_OP( 1613,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 1624,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 1626,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 1628,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 1630,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 1631,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 1643,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat26 );
TEST_VMRL_OP( 1644,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 1657,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 1660,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat10 );
TEST_VMRL_OP( 1664,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 1665,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 1666,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 1673,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat23 );
TEST_VMRL_OP( 1685,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat2 );
TEST_VMRL_OP( 1690,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 1691,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 1707,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat24 );
TEST_VMRL_OP( 1709,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 1712,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 1714,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat31 );
TEST_VMRL_OP( 1718,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 1723,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 1725,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 1728,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 1731,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 1734,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat18 );
TEST_VMRL_OP( 1735,  vmxnor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 1749,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 1754,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 1757,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 1761,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 1763,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 1769,  vmxnor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 1776,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat27 );
TEST_VMRL_OP( 1784,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat2 );
TEST_VMRL_OP( 1788,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 1790,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 1793,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat11 );
TEST_VMRL_OP( 1796,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 1798,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 1799,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 1806,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 1810,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 1814,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat32 );
TEST_VMRL_OP( 1816,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 1824,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 1827,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 1831,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat16 );
TEST_VMRL_OP( 1840,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat25 );
TEST_VMRL_OP( 1844,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 1847,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 1852,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat4 );
TEST_VMRL_OP( 1863,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 1864,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 1865,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 1866,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 1872,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 1877,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat29 );
TEST_VMRL_OP( 1879,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat31 );
TEST_VMRL_OP( 1883,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 1892,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 1893,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 1895,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat14 );
TEST_VMRL_OP( 1897,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 1917,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 1921,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 1922,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 1923,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 1932,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 1935,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 1937,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 1942,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat28 );
TEST_VMRL_OP( 1948,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat1 );
TEST_VMRL_OP( 1949,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 1953,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 1955,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat8 );
TEST_VMRL_OP( 1965,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 1966,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat19 );
TEST_VMRL_OP( 1967,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 1977,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 1983,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 1985,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 1986,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 1988,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 1990,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat10 );
TEST_VMRL_OP( 1992,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 1993,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 1995,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 2003,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat23 );
TEST_VMRL_OP( 2012,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 2016,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 2021,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 2027,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 2034,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 2036,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 2055,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat9 );
TEST_VMRL_OP( 2064,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 2065,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 2066,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 2067,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 2068,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 2078,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat32 );
TEST_VMRL_OP( 2079,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 2080,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 2083,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 2084,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat5 );
TEST_VMRL_OP( 2085,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat6 );
TEST_VMRL_OP( 2089,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 2092,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 2104,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 2108,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 2112,  vmxnor.mm,  64,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 2113,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 2119,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat7 );
TEST_VMRL_OP( 2120,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat8 );
TEST_VMRL_OP( 2125,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat13 );
TEST_VMRL_OP( 2126,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat14 );
TEST_VMRL_OP( 2129,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat17 );
TEST_VMRL_OP( 2135,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat23 );
TEST_VMRL_OP( 2136,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 2137,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 2142,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat30 );
TEST_VMRL_OP( 2143,  vmxnor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 2151,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 2166,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 2168,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 2169,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 2171,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat26 );
TEST_VMRL_OP( 2172,  vmxnor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 2180,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 2181,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 2184,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2185,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 2195,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 2202,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat24 );
TEST_VMRL_OP( 2203,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat25 );
TEST_VMRL_OP( 2216,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 2223,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 2227,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 2229,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 2230,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2231,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat20 );
TEST_VMRL_OP( 2233,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat22 );
TEST_VMRL_OP( 2235,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 2236,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat25 );
TEST_VMRL_OP( 2237,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat26 );
TEST_VMRL_OP( 2239,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat28 );
TEST_VMRL_OP( 2240,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat29 );
TEST_VMRL_OP( 2241,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 2243,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 2245,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 2250,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 2253,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 2258,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 2264,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat20 );
TEST_VMRL_OP( 2270,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 2272,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 2273,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 2288,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 2289,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 2290,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 2292,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 2294,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 2308,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 2312,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 2315,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 2317,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 2318,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 2321,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 2325,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 2329,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat19 );
TEST_VMRL_OP( 2330,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 2331,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat21 );
TEST_VMRL_OP( 2332,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 2337,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat27 );
TEST_VMRL_OP( 2338,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat28 );
TEST_VMRL_OP( 2342,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 2355,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 2361,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat18 );
TEST_VMRL_OP( 2365,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 2368,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 2374,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 2376,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 2382,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 2385,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 2386,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 2393,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat17 );
TEST_VMRL_OP( 2405,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 2415,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 2416,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 2422,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 2427,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 2429,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 2431,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat22 );
TEST_VMRL_OP( 2436,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat27 );
TEST_VMRL_OP( 2438,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 2441,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 2446,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 2448,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 2457,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 2462,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat20 );
TEST_VMRL_OP( 2463,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 2464,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 2467,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat25 );
TEST_VMRL_OP( 2468,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat26 );
TEST_VMRL_OP( 2470,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 2472,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat30 );
TEST_VMRL_OP( 2474,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 2475,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 2476,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 2477,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 2482,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 2483,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 2486,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 2487,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 2494,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 2500,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 2507,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 2508,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 2514,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 2516,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 2519,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 2520,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 2524,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 2529,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 2534,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 2536,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 2548,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 2558,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 2559,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat18 );
TEST_VMRL_OP( 2570,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 2593,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 2594,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 2596,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 2606,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 2607,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 2608,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 2609,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 2610,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 2619,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 2620,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 2622,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 2625,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat18 );
TEST_VMRL_OP( 2626,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 2629,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 2637,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 2641,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 2642,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 2643,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 2646,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 2647,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 2652,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 2656,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 2661,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat21 );
TEST_VMRL_OP( 2662,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat22 );
TEST_VMRL_OP( 2668,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 2674,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 2691,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat18 );
TEST_VMRL_OP( 2693,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 2694,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2697,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 2699,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat26 );
TEST_VMRL_OP( 2700,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 2707,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 2709,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 2714,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 2718,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 2735,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 2738,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 2740,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 2744,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat5 );
TEST_VMRL_OP( 2745,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 2751,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat12 );
TEST_VMRL_OP( 2757,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 2763,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat24 );
TEST_VMRL_OP( 2770,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 2775,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat3 );
TEST_VMRL_OP( 2777,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 2781,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat9 );
TEST_VMRL_OP( 2784,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 2787,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 2789,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 2794,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 2795,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 2799,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 2806,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 2807,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 2809,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat4 );
TEST_VMRL_OP( 2813,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 2815,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 2816,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 2821,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 2822,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 2839,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 2844,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat6 );
TEST_VMRL_OP( 2846,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 2854,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 2860,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat22 );
TEST_VMRL_OP( 2861,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat23 );
TEST_VMRL_OP( 2864,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 2875,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 2879,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 2886,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 2900,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat29 );
TEST_VMRL_OP( 2902,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat31 );
TEST_VMRL_OP( 2903,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat32 );
TEST_VMRL_OP( 2905,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 2906,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 2907,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat3 );
TEST_VMRL_OP( 2910,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 2913,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 2916,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 2919,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat15 );
TEST_VMRL_OP( 2926,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 2931,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat27 );
TEST_VMRL_OP( 2933,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 2935,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 2940,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat3 );
TEST_VMRL_OP( 2947,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat10 );
TEST_VMRL_OP( 2949,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat12 );
TEST_VMRL_OP( 2952,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 2953,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 2954,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 2956,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 2964,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat27 );
TEST_VMRL_OP( 2967,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 2969,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat32 );
TEST_VMRL_OP( 2974,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 2975,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 2979,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat9 );
TEST_VMRL_OP( 2982,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 2987,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 2991,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 2993,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 2996,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat26 );
TEST_VMRL_OP( 3003,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 3004,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 3011,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 3016,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 3026,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 3027,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 3029,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat26 );
TEST_VMRL_OP( 3032,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat29 );
TEST_VMRL_OP( 3042,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 3044,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat8 );
TEST_VMRL_OP( 3052,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat16 );
TEST_VMRL_OP( 3056,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 3059,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 3061,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat25 );
TEST_VMRL_OP( 3062,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 3063,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 3066,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 3076,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 3078,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 3087,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 3090,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 3093,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 3095,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 3097,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 3100,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 3101,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 3109,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 3116,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 3122,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 3124,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 3125,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 3130,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 3131,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 3132,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat30 );
TEST_VMRL_OP( 3145,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 3151,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 3154,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 3157,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 3162,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 3163,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat28 );
TEST_VMRL_OP( 3167,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat32 );
TEST_VMRL_OP( 3171,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat3 );
TEST_VMRL_OP( 3177,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 3184,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 3187,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 3202,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 3203,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 3210,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 3211,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat10 );
TEST_VMRL_OP( 3212,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat11 );
TEST_VMRL_OP( 3214,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat13 );
TEST_VMRL_OP( 3217,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 3218,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat17 );
TEST_VMRL_OP( 3222,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 3228,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 3229,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat28 );
TEST_VMRL_OP( 3231,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat30 );
TEST_VMRL_OP( 3236,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 3239,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 3244,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat10 );
TEST_VMRL_OP( 3247,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3253,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 3255,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 3256,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 3258,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 3260,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat26 );
TEST_VMRL_OP( 3263,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat29 );
TEST_VMRL_OP( 3265,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat31 );
TEST_VMRL_OP( 3269,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3271,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 3278,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 3279,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 3284,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat17 );
TEST_VMRL_OP( 3289,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat22 );
TEST_VMRL_OP( 3290,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 3291,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 3292,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat25 );
TEST_VMRL_OP( 3298,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 3302,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 3306,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 3307,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 3312,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 3314,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 3315,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 3321,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 3322,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 3323,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 3327,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3329,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 3338,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 3342,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 3347,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 3348,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 3350,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 3354,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 3357,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 3358,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 3375,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 3381,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 3384,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 3385,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat19 );
TEST_VMRL_OP( 3388,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 3401,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 3405,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 3407,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 3415,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 3418,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 3424,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 3425,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 3431,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 3435,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 3442,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 3457,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat25 );
TEST_VMRL_OP( 3477,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 3482,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat17 );
TEST_VMRL_OP( 3483,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 3487,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 3492,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 3495,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat30 );
TEST_VMRL_OP( 3496,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 3502,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 3503,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 3505,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 3508,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 3516,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 3517,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 3521,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat23 );
TEST_VMRL_OP( 3523,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat25 );
TEST_VMRL_OP( 3527,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat29 );
TEST_VMRL_OP( 3528,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 3532,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 3538,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 3540,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 3542,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 3544,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 3549,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 3556,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat25 );
TEST_VMRL_OP( 3557,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 3558,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 3559,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat28 );
TEST_VMRL_OP( 3575,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 3578,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 3589,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 3590,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat26 );
TEST_VMRL_OP( 3591,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 3594,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat30 );
TEST_VMRL_OP( 3595,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 3600,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 3601,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 3603,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 3605,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 3606,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 3612,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 3613,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 3614,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 3626,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 3629,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 3646,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 3647,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat17 );
TEST_VMRL_OP( 3655,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 3657,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 3660,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 3661,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 3663,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 3667,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 3675,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 3679,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 3690,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 3691,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 3695,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat32 );
TEST_VMRL_OP( 3701,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 3702,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 3704,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 3708,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 3710,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 3714,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 3721,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat25 );
TEST_VMRL_OP( 3730,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 3734,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 3735,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 3740,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 3746,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 3747,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 3750,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 3755,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 3758,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 3772,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 3773,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 3776,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 3783,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 3789,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 3800,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 3805,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 3806,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 3819,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat24 );
TEST_VMRL_OP( 3827,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 3834,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 3846,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 3854,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat26 );
TEST_VMRL_OP( 3855,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat27 );
TEST_VMRL_OP( 3860,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat32 );
TEST_VMRL_OP( 3861,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat0 );
TEST_VMRL_OP( 3862,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 3863,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 3865,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3866,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat5 );
TEST_VMRL_OP( 3867,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 3873,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 3874,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat13 );
TEST_VMRL_OP( 3882,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 3883,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat22 );
TEST_VMRL_OP( 3884,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 3885,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3889,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 3890,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat29 );
TEST_VMRL_OP( 3893,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 3897,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 3911,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 3914,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 3916,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 3922,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 3939,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 3940,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat13 );
TEST_VMRL_OP( 3943,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 3956,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 3957,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 3961,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 3964,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat4 );
TEST_VMRL_OP( 3965,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 3966,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat6 );
TEST_VMRL_OP( 3971,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 3974,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat14 );
TEST_VMRL_OP( 3981,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4001,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat8 );
TEST_VMRL_OP( 4002,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 4004,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 4005,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 4015,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4019,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat26 );
TEST_VMRL_OP( 4027,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat1 );
TEST_VMRL_OP( 4032,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 4034,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 4035,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat9 );
TEST_VMRL_OP( 4038,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 4043,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 4050,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 4058,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 4067,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 4071,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 4080,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 4084,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 4085,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat26 );
TEST_VMRL_OP( 4087,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 4090,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat31 );
TEST_VMRL_OP( 4091,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 4099,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat7 );
TEST_VMRL_OP( 4105,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat13 );
TEST_VMRL_OP( 4115,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 4119,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 4123,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat31 );
TEST_VMRL_OP( 4125,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat0 );
TEST_VMRL_OP( 4129,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat4 );
TEST_VMRL_OP( 4132,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat7 );
TEST_VMRL_OP( 4134,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 4138,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 4140,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 4143,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 4147,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 4156,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 4160,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 4163,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 4168,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat10 );
TEST_VMRL_OP( 4180,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 4182,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 4200,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat9 );
TEST_VMRL_OP( 4201,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 4204,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 4205,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat14 );
TEST_VMRL_OP( 4206,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 4209,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 4214,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 4219,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4229,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 4234,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 4235,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 4236,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 4242,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 4243,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat19 );
TEST_VMRL_OP( 4249,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 4257,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 4259,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 4260,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 4262,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 4263,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat6 );
TEST_VMRL_OP( 4276,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat19 );
TEST_VMRL_OP( 4277,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 4290,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 4302,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat12 );
TEST_VMRL_OP( 4305,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 4306,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 4310,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 4312,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat22 );
TEST_VMRL_OP( 4320,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat30 );
TEST_VMRL_OP( 4325,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 4328,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 4329,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 4331,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 4332,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 4337,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 4338,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 4339,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat16 );
TEST_VMRL_OP( 4340,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 4348,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 4349,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 4350,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 4355,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 4356,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8823,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8824,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8825,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8826,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8827,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8828,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8829,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8830,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8831,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8832,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8833,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8834,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

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
TEST_VMRL_OP( 0,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 14,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 21,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat21 );
TEST_VMRL_OP( 28,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 30,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 38,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 44,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 49,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 53,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 56,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 57,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat24 );
TEST_VMRL_OP( 62,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 69,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 71,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 76,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 87,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 93,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 98,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat32 );
TEST_VMRL_OP( 106,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 107,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 110,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 112,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 117,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 122,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat23 );
TEST_VMRL_OP( 129,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat30 );
TEST_VMRL_OP( 130,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat31 );
TEST_VMRL_OP( 136,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 137,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 156,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 164,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 166,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 169,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 174,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 178,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 179,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 181,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 184,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 185,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 186,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 187,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat22 );
TEST_VMRL_OP( 193,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 196,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 200,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 201,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 205,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 207,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 213,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 236,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 240,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 242,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 248,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat17 );
TEST_VMRL_OP( 253,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat22 );
TEST_VMRL_OP( 274,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 275,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 278,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 281,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 282,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 284,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat20 );
TEST_VMRL_OP( 289,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat25 );
TEST_VMRL_OP( 291,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 294,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 297,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 301,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 307,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 312,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 318,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 319,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 321,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat24 );
TEST_VMRL_OP( 328,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 329,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat32 );
TEST_VMRL_OP( 331,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 333,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 335,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 337,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 342,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 350,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 353,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 356,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 358,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat28 );
TEST_VMRL_OP( 369,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 373,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 375,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 377,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 379,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 380,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat17 );
TEST_VMRL_OP( 386,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 398,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 400,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 402,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 406,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 425,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 426,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat30 );
TEST_VMRL_OP( 427,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 440,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 447,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 459,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 465,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 466,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 468,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 469,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 471,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 473,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 475,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 477,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 480,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 482,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat20 );
TEST_VMRL_OP( 484,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 499,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 502,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 505,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 506,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 507,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 511,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 531,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 535,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 537,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 538,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 540,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 543,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 550,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat22 );
TEST_VMRL_OP( 551,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat23 );
TEST_VMRL_OP( 553,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat25 );
TEST_VMRL_OP( 554,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 555,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat27 );
TEST_VMRL_OP( 562,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat1 );
TEST_VMRL_OP( 585,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat24 );
TEST_VMRL_OP( 592,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 596,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 598,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 602,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 603,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat9 );
TEST_VMRL_OP( 605,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat11 );
TEST_VMRL_OP( 609,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 611,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat17 );
TEST_VMRL_OP( 616,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat22 );
TEST_VMRL_OP( 621,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 627,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat19, walking_ones_dat0 );
TEST_VMRL_OP( 635,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 638,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat11 );
TEST_VMRL_OP( 643,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat16 );
TEST_VMRL_OP( 648,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 649,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 652,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat25 );
TEST_VMRL_OP( 656,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 659,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat19, walking_ones_dat32 );
TEST_VMRL_OP( 660,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 661,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 679,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat19 );
TEST_VMRL_OP( 680,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 684,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 686,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat26 );
TEST_VMRL_OP( 692,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 693,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 706,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 709,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 712,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 720,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat27 );
TEST_VMRL_OP( 725,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat21, walking_ones_dat32 );
TEST_VMRL_OP( 739,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat13 );
TEST_VMRL_OP( 744,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 747,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 753,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 754,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 755,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 758,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat22, walking_ones_dat32 );
TEST_VMRL_OP( 762,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat3 );
TEST_VMRL_OP( 766,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 767,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 774,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 776,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 777,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat18 );
TEST_VMRL_OP( 778,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 781,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 784,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 792,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 803,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat11 );
TEST_VMRL_OP( 807,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat15 );
TEST_VMRL_OP( 811,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat19 );
TEST_VMRL_OP( 814,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 822,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 825,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 826,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 828,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 832,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat7 );
TEST_VMRL_OP( 838,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat13 );
TEST_VMRL_OP( 842,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 844,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat19 );
TEST_VMRL_OP( 846,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat21 );
TEST_VMRL_OP( 851,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 852,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 853,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 861,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat3 );
TEST_VMRL_OP( 866,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 867,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 868,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat10 );
TEST_VMRL_OP( 870,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat12 );
TEST_VMRL_OP( 885,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 893,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 894,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 900,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 903,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat12 );
TEST_VMRL_OP( 904,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 905,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 907,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 910,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 912,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat21 );
TEST_VMRL_OP( 920,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 921,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 923,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat27, walking_ones_dat32 );
TEST_VMRL_OP( 925,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat1 );
TEST_VMRL_OP( 929,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 935,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 937,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 939,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 944,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 945,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 947,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 957,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 958,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 960,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 966,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 973,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 974,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 975,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 980,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 988,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat31 );
TEST_VMRL_OP( 989,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 993,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 995,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 1006,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 1011,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 1012,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat22 );
TEST_VMRL_OP( 1015,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1018,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 1023,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 1042,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat19 );
TEST_VMRL_OP( 1050,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 1060,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 1064,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 1066,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 1071,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 1077,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat21 );
TEST_VMRL_OP( 1082,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 1090,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 1095,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 1097,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 1106,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 1109,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 1111,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 1130,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 1135,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 1142,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat20 );
TEST_VMRL_OP( 1146,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 1149,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat27 );
TEST_VMRL_OP( 1153,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat31 );
TEST_VMRL_OP( 1155,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1163,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 1164,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 1165,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 1170,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 1171,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 1172,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 1176,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 1182,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 1187,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat32 );
TEST_VMRL_OP( 1191,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1192,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 1193,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 1206,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 1209,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 1210,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat22 );
TEST_VMRL_OP( 1211,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 1216,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 1223,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 1224,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 1226,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 1228,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 1231,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 1234,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 1238,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 1239,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 1240,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat19 );
TEST_VMRL_OP( 1242,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat21 );
TEST_VMRL_OP( 1243,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 1246,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 1247,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 1248,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat27 );
TEST_VMRL_OP( 1253,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 1255,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 1256,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 1260,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 1265,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 1266,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 1268,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 1269,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 1273,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 1278,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 1279,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 1287,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 1288,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 1293,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1302,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 1305,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat18 );
TEST_VMRL_OP( 1309,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 1312,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 1313,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 1317,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat30 );
TEST_VMRL_OP( 1327,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1331,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 1333,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 1344,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat24 );
TEST_VMRL_OP( 1352,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 1354,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 1356,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 1360,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 1366,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 1371,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 1374,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 1380,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat27 );
TEST_VMRL_OP( 1388,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 1398,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 1407,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 1418,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 1424,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 1430,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 1443,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 1447,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 1451,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 1455,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 1458,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 1463,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1464,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 1469,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 1477,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 1481,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1488,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 1491,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 1495,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 1503,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat18 );
TEST_VMRL_OP( 1508,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 1511,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat26 );
TEST_VMRL_OP( 1516,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 1517,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 1523,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 1528,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 1529,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 1533,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 1534,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 1551,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 1555,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 1558,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 1562,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 1580,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat29 );
TEST_VMRL_OP( 1582,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 1592,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 1593,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 1595,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 1596,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 1606,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 1608,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 1615,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat31 );
TEST_VMRL_OP( 1616,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 1620,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 1621,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 1635,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat18 );
TEST_VMRL_OP( 1636,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 1641,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat24 );
TEST_VMRL_OP( 1653,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 1654,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 1656,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 1660,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat10 );
TEST_VMRL_OP( 1674,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat24 );
TEST_VMRL_OP( 1675,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 1679,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 1686,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat3 );
TEST_VMRL_OP( 1706,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 1714,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat31 );
TEST_VMRL_OP( 1722,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 1724,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 1727,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 1729,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 1731,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 1735,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 1737,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 1739,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 1745,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat29 );
TEST_VMRL_OP( 1748,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat32 );
TEST_VMRL_OP( 1762,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat13 );
TEST_VMRL_OP( 1764,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat15 );
TEST_VMRL_OP( 1766,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 1774,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat25 );
TEST_VMRL_OP( 1779,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat30 );
TEST_VMRL_OP( 1780,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat31 );
TEST_VMRL_OP( 1789,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat7 );
TEST_VMRL_OP( 1791,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 1801,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat19 );
TEST_VMRL_OP( 1811,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat29 );
TEST_VMRL_OP( 1815,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 1831,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat16 );
TEST_VMRL_OP( 1854,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat6 );
TEST_VMRL_OP( 1856,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat8 );
TEST_VMRL_OP( 1857,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 1863,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 1871,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 1887,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat6 );
TEST_VMRL_OP( 1888,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat7 );
TEST_VMRL_OP( 1890,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat9 );
TEST_VMRL_OP( 1895,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat14 );
TEST_VMRL_OP( 1901,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat20 );
TEST_VMRL_OP( 1902,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 1903,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 1918,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 1929,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1932,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 1935,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 1947,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat0 );
TEST_VMRL_OP( 1956,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat9 );
TEST_VMRL_OP( 1959,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 1965,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 1967,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 1969,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 1970,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 1986,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 1989,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 1990,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat10 );
TEST_VMRL_OP( 1995,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 1996,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 1997,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat17 );
TEST_VMRL_OP( 2001,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 2013,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat0 );
TEST_VMRL_OP( 2016,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 2019,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 2021,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 2024,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 2030,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 2032,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 2037,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 2038,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 2044,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 2045,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 2056,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 2063,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 2066,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 2071,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 2076,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 2078,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat32 );
TEST_VMRL_OP( 2087,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat8 );
TEST_VMRL_OP( 2089,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 2091,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat12 );
TEST_VMRL_OP( 2092,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 2094,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 2096,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 2100,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 2101,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat22 );
TEST_VMRL_OP( 2103,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 2117,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat5 );
TEST_VMRL_OP( 2124,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat12 );
TEST_VMRL_OP( 2131,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 2133,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 2143,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 2146,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 2162,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 2165,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 2174,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat29 );
TEST_VMRL_OP( 2177,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 2179,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 2180,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 2184,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2192,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 2195,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 2198,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 2204,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 2209,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 2210,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 2215,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 2220,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 2223,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 2226,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 2230,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2239,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat28 );
TEST_VMRL_OP( 2247,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 2251,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 2252,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 2256,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 2258,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 2263,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat19 );
TEST_VMRL_OP( 2264,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat20 );
TEST_VMRL_OP( 2265,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 2275,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 2277,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 2279,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 2281,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 2285,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 2290,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 2298,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 2300,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 2306,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat29 );
TEST_VMRL_OP( 2310,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 2311,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 2319,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 2323,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2333,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 2338,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat28 );
TEST_VMRL_OP( 2340,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat30 );
TEST_VMRL_OP( 2341,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 2353,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 2365,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 2368,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 2370,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 2376,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 2378,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 2385,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 2390,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 2392,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 2397,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 2401,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 2405,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 2406,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat30 );
TEST_VMRL_OP( 2419,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 2423,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 2426,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat17 );
TEST_VMRL_OP( 2427,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 2429,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 2433,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat24 );
TEST_VMRL_OP( 2438,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 2440,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 2442,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 2443,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 2448,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 2455,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 2459,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 2461,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat19 );
TEST_VMRL_OP( 2462,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat20 );
TEST_VMRL_OP( 2470,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 2475,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 2477,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 2479,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 2485,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 2488,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 2496,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 2500,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 2508,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 2509,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 2510,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 2524,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 2529,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 2536,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat28 );
TEST_VMRL_OP( 2537,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 2539,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 2548,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 2554,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 2558,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 2567,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 2573,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 2585,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 2586,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 2588,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 2597,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 2598,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat24 );
TEST_VMRL_OP( 2600,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat26 );
TEST_VMRL_OP( 2608,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 2613,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 2617,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 2624,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 2631,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 2633,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat26 );
TEST_VMRL_OP( 2637,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 2638,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 2640,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 2645,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 2646,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 2647,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 2650,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 2652,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 2654,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 2657,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat17 );
TEST_VMRL_OP( 2658,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat18 );
TEST_VMRL_OP( 2659,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 2666,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 2676,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 2677,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 2686,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 2687,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 2688,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 2690,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 2691,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat18 );
TEST_VMRL_OP( 2692,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 2693,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 2694,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2696,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat23 );
TEST_VMRL_OP( 2697,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 2727,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 2735,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 2740,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 2741,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 2742,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 2753,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 2755,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 2769,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat30 );
TEST_VMRL_OP( 2773,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat1 );
TEST_VMRL_OP( 2779,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 2786,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat14 );
TEST_VMRL_OP( 2788,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat16 );
TEST_VMRL_OP( 2797,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 2801,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 2805,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat0 );
TEST_VMRL_OP( 2813,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 2816,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 2830,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 2832,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 2834,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat29 );
TEST_VMRL_OP( 2835,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 2839,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 2844,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat6 );
TEST_VMRL_OP( 2846,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 2848,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 2850,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 2858,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 2861,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat23 );
TEST_VMRL_OP( 2866,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 2867,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 2871,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat0 );
TEST_VMRL_OP( 2876,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat5 );
TEST_VMRL_OP( 2882,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat11 );
TEST_VMRL_OP( 2884,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 2887,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 2888,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 2890,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat19 );
TEST_VMRL_OP( 2892,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 2898,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 2908,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 2910,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 2922,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 2923,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 2925,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 2927,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat23 );
TEST_VMRL_OP( 2928,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat24 );
TEST_VMRL_OP( 2934,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 2935,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 2937,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 2938,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 2940,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat3 );
TEST_VMRL_OP( 2946,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 2948,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 2950,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 2956,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 2963,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 2970,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat0 );
TEST_VMRL_OP( 2974,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 2981,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 2986,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 2987,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 2997,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat27 );
TEST_VMRL_OP( 3000,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 3013,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 3016,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 3025,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat22 );
TEST_VMRL_OP( 3026,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 3038,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat2 );
TEST_VMRL_OP( 3039,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 3044,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat8 );
TEST_VMRL_OP( 3050,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 3054,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 3057,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 3060,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 3061,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat25 );
TEST_VMRL_OP( 3065,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat29 );
TEST_VMRL_OP( 3068,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 3070,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 3073,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 3078,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 3082,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 3093,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 3098,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 3104,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 3108,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 3123,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 3126,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 3131,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 3133,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 3134,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 3135,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 3149,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat14 );
TEST_VMRL_OP( 3152,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 3155,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 3158,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 3160,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 3162,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 3175,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat7 );
TEST_VMRL_OP( 3177,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 3184,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 3190,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat22 );
TEST_VMRL_OP( 3191,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat23 );
TEST_VMRL_OP( 3193,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 3195,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat27 );
TEST_VMRL_OP( 3203,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 3213,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat12 );
TEST_VMRL_OP( 3214,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat13 );
TEST_VMRL_OP( 3219,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 3221,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat20 );
TEST_VMRL_OP( 3224,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat23 );
TEST_VMRL_OP( 3229,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat28 );
TEST_VMRL_OP( 3234,  vmxor.mm,  64,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 3235,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 3240,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 3241,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat7 );
TEST_VMRL_OP( 3247,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3254,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 3257,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 3258,  vmxor.mm,  64,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 3270,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 3274,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 3275,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 3276,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 3279,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 3287,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 3288,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat21 );
TEST_VMRL_OP( 3289,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat22 );
TEST_VMRL_OP( 3291,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 3304,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 3312,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 3313,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 3319,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat19 );
TEST_VMRL_OP( 3327,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3328,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 3340,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 3341,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 3347,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 3348,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 3355,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 3361,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 3373,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 3377,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 3384,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 3385,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat19 );
TEST_VMRL_OP( 3387,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat21 );
TEST_VMRL_OP( 3389,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat23 );
TEST_VMRL_OP( 3390,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 3396,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat30 );
TEST_VMRL_OP( 3402,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 3407,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 3408,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 3416,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat17 );
TEST_VMRL_OP( 3421,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 3432,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 3441,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 3442,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 3455,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 3458,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat5, walking_ones_dat26 );
TEST_VMRL_OP( 3472,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 3479,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 3490,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 3493,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 3496,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 3499,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 3501,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 3517,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 3518,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 3525,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 3526,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 3537,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 3541,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 3543,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 3544,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 3545,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 3548,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 3550,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 3552,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 3554,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 3555,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 3561,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 3574,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 3579,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 3582,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 3585,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 3586,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3587,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 3598,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 3602,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 3606,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 3607,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 3608,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 3611,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 3618,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat21 );
TEST_VMRL_OP( 3621,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 3627,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 3631,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 3633,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 3639,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3649,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 3653,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 3654,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 3661,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 3665,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 3677,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 3678,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 3683,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat20 );
TEST_VMRL_OP( 3684,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 3691,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 3692,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 3697,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 3701,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 3703,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 3707,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 3711,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 3715,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat19 );
TEST_VMRL_OP( 3719,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat23 );
TEST_VMRL_OP( 3720,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat24 );
TEST_VMRL_OP( 3732,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 3734,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 3737,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 3738,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 3743,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 3744,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 3752,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 3754,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 3755,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 3761,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 3762,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 3767,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 3770,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 3774,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 3775,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 3779,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 3780,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 3781,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 3782,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 3785,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 3787,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat25 );
TEST_VMRL_OP( 3793,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat31 );
TEST_VMRL_OP( 3796,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 3799,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 3806,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 3808,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 3812,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat17 );
TEST_VMRL_OP( 3819,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat24 );
TEST_VMRL_OP( 3820,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat25 );
TEST_VMRL_OP( 3822,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat27 );
TEST_VMRL_OP( 3827,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 3832,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 3840,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3844,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat16 );
TEST_VMRL_OP( 3848,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat20 );
TEST_VMRL_OP( 3850,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat22 );
TEST_VMRL_OP( 3853,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 3854,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat26 );
TEST_VMRL_OP( 3859,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 3865,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3867,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat6 );
TEST_VMRL_OP( 3871,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 3875,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 3887,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 3893,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 3903,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat9 );
TEST_VMRL_OP( 3908,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 3912,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat18 );
TEST_VMRL_OP( 3922,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 3932,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat5 );
TEST_VMRL_OP( 3933,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 3937,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 3945,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 3947,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 3959,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 3961,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 3976,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 3983,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 3985,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat25 );
TEST_VMRL_OP( 3989,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 3990,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 3996,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 3997,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat4 );
TEST_VMRL_OP( 3999,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 4002,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 4004,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 4010,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 4011,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 4012,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat19 );
TEST_VMRL_OP( 4015,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4021,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 4037,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat11 );
TEST_VMRL_OP( 4040,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 4044,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat18 );
TEST_VMRL_OP( 4046,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat20 );
TEST_VMRL_OP( 4048,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 4059,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 4066,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat7 );
TEST_VMRL_OP( 4076,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 4077,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 4078,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat19 );
TEST_VMRL_OP( 4097,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 4100,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat8 );
TEST_VMRL_OP( 4107,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 4116,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat24 );
TEST_VMRL_OP( 4132,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat7 );
TEST_VMRL_OP( 4133,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 4136,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 4143,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 4150,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 4152,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 4155,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat30 );
TEST_VMRL_OP( 4159,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 4160,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 4164,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 4173,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat15 );
TEST_VMRL_OP( 4176,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 4177,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 4178,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat20 );
TEST_VMRL_OP( 4186,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat28 );
TEST_VMRL_OP( 4189,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 4190,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat32 );
TEST_VMRL_OP( 4193,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 4194,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 4195,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 4199,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 4201,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 4204,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 4206,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 4207,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 4208,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 4214,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 4219,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4227,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 4233,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 4234,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 4239,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 4241,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 4244,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 4248,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 4249,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 4251,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat27 );
TEST_VMRL_OP( 4252,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 4253,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4254,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 4256,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 4258,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat1 );
TEST_VMRL_OP( 4268,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat11 );
TEST_VMRL_OP( 4269,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 4272,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 4275,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat18 );
TEST_VMRL_OP( 4286,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 4294,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 4303,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat13 );
TEST_VMRL_OP( 4308,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 4320,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat30 );
TEST_VMRL_OP( 4324,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 4325,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 4326,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat3 );
TEST_VMRL_OP( 4330,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat7 );
TEST_VMRL_OP( 4331,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 4333,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 4339,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat16 );
TEST_VMRL_OP( 4343,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 4344,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat21 );
TEST_VMRL_OP( 4348,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 4350,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 4354,  vmxor.mm,  64,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 4356,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmxor.mm,  64,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmxor.mm,  64,  0x0000000000000020, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8823,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8824,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8825,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8826,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8827,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8828,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8829,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8830,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8831,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8832,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8833,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8834,  vmxor.mm,  64,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
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
    

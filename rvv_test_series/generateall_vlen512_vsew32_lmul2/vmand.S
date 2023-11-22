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
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v18, v16, 1; \
                inst v14, v1, v18; \
                VSET_VSEW \
            )
#define TEST_VMRL_OP_rs1_19( testnum, inst, sew, result, src1_addr, src2_addr ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la  x1, src1_addr; \
                MK_VLE_INST(sew) v8, (x1); \
                la  x1, src2_addr; \
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v19, v16, 1; \
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
TEST_VMRL_OP( 4,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 8,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 10,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 13,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 20,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 23,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 24,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 25,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat25 );
TEST_VMRL_OP( 29,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 30,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 40,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 41,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 42,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 43,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 46,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 51,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 52,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat19 );
TEST_VMRL_OP( 53,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 54,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 61,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 63,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 77,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 81,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 85,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 88,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 101,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 102,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 114,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 133,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 134,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 136,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 141,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 145,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 149,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat17 );
TEST_VMRL_OP( 154,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 167,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 172,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 181,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 183,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat18 );
TEST_VMRL_OP( 184,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 191,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat26 );
TEST_VMRL_OP( 197,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat32 );
TEST_VMRL_OP( 199,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 201,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 202,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 205,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 206,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 210,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 211,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 215,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat17 );
TEST_VMRL_OP( 216,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 224,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 225,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 226,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 227,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat29 );
TEST_VMRL_OP( 230,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 231,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 238,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 239,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 244,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 247,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 260,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat29 );
TEST_VMRL_OP( 272,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 273,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 274,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 280,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 286,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat22 );
TEST_VMRL_OP( 288,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 290,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 293,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 294,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 297,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 301,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 305,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 311,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 317,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat20 );
TEST_VMRL_OP( 321,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat24 );
TEST_VMRL_OP( 327,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat30 );
TEST_VMRL_OP( 328,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 331,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 344,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 345,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 346,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 349,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 353,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 359,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 361,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 374,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 375,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 384,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat21 );
TEST_VMRL_OP( 386,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 391,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 392,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat29 );
TEST_VMRL_OP( 399,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 401,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 407,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 412,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 416,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat20 );
TEST_VMRL_OP( 417,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 427,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 428,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat32 );
TEST_VMRL_OP( 429,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 435,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 436,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 438,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 439,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 444,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 453,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat24 );
TEST_VMRL_OP( 454,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_ones_dat25 );
TEST_VMRL_OP( 466,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 468,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 471,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 478,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 480,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 483,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 484,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 488,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 490,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 499,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 504,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 505,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 509,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 518,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 519,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat24 );
TEST_VMRL_OP( 525,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat30 );
TEST_VMRL_OP( 528,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 529,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 532,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 533,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 542,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 543,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 567,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 573,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 576,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 577,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat16 );
TEST_VMRL_OP( 582,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat21 );
TEST_VMRL_OP( 592,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 598,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 606,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 609,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 610,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat16 );
TEST_VMRL_OP( 611,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat17 );
TEST_VMRL_OP( 613,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 614,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 619,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 625,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat31 );
TEST_VMRL_OP( 628,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat1 );
TEST_VMRL_OP( 635,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 641,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 642,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat15 );
TEST_VMRL_OP( 644,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 645,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat18 );
TEST_VMRL_OP( 656,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 658,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 660,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 672,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 675,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_ones_dat15 );
TEST_VMRL_OP( 680,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 681,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 684,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 697,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat4 );
TEST_VMRL_OP( 699,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat6 );
TEST_VMRL_OP( 700,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat7 );
TEST_VMRL_OP( 702,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat9 );
TEST_VMRL_OP( 707,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat14 );
TEST_VMRL_OP( 713,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 714,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 719,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 728,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 729,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 738,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 743,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 747,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 749,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 750,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat24 );
TEST_VMRL_OP( 754,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 756,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 761,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 763,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 770,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat11 );
TEST_VMRL_OP( 776,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 780,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 781,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 788,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 790,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 794,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 797,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat5 );
TEST_VMRL_OP( 803,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat11 );
TEST_VMRL_OP( 805,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 806,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 808,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 820,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 826,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 827,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 830,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 831,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 832,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat7 );
TEST_VMRL_OP( 835,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 838,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat13 );
TEST_VMRL_OP( 842,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 847,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat22 );
TEST_VMRL_OP( 848,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 852,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 853,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 861,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat3 );
TEST_VMRL_OP( 882,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 892,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 901,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat10 );
TEST_VMRL_OP( 907,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 912,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat21 );
TEST_VMRL_OP( 913,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 918,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 920,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 921,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 926,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 928,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 930,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 931,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 936,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 939,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 941,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 949,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat25 );
TEST_VMRL_OP( 955,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_ones_dat31 );
TEST_VMRL_OP( 957,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 960,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 961,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat4 );
TEST_VMRL_OP( 970,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 972,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 974,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 976,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat19 );
TEST_VMRL_OP( 986,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 989,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 992,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 999,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 1000,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 1001,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat11 );
TEST_VMRL_OP( 1010,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 1011,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 1013,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 1015,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1018,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 1021,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 1023,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 1033,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 1036,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat13 );
TEST_VMRL_OP( 1038,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 1043,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 1050,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 1056,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 1057,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 1064,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 1081,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 1082,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 1086,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat30 );
TEST_VMRL_OP( 1092,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 1094,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 1097,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 1100,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 1102,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 1105,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 1106,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 1107,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 1110,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 1115,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 1116,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 1127,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 1136,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 1138,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 1141,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 1142,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat20 );
TEST_VMRL_OP( 1156,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 1163,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 1166,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 1167,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 1175,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat20 );
TEST_VMRL_OP( 1176,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 1178,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 1188,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 1190,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 1198,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 1202,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 1206,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 1207,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 1214,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat26 );
TEST_VMRL_OP( 1225,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1232,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 1236,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 1239,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 1247,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 1250,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 1253,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 1254,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 1257,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 1261,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 1265,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 1266,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 1270,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 1274,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat20 );
TEST_VMRL_OP( 1287,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 1292,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 1293,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1297,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 1299,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 1306,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 1307,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat20 );
TEST_VMRL_OP( 1308,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 1311,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 1316,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 1324,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 1327,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1328,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 1341,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat21 );
TEST_VMRL_OP( 1347,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat27 );
TEST_VMRL_OP( 1350,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 1353,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 1354,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 1356,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 1357,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 1361,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1362,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 1371,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 1377,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 1380,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat27 );
TEST_VMRL_OP( 1384,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 1386,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 1387,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 1390,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 1393,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 1395,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1402,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 1404,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 1405,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 1407,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 1409,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 1412,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 1419,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 1420,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 1430,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 1434,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 1437,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat18 );
TEST_VMRL_OP( 1440,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 1448,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 1454,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 1460,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 1465,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 1466,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 1467,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 1471,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 1477,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 1486,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 1488,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 1495,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 1496,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 1498,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 1499,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 1507,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 1511,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat26 );
TEST_VMRL_OP( 1516,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 1521,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 1528,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 1529,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 1535,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 1536,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat18 );
TEST_VMRL_OP( 1540,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 1543,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat25 );
TEST_VMRL_OP( 1545,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 1546,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 1550,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat32 );
TEST_VMRL_OP( 1553,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 1564,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 1572,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat21 );
TEST_VMRL_OP( 1574,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat23 );
TEST_VMRL_OP( 1581,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat30 );
TEST_VMRL_OP( 1583,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat32 );
TEST_VMRL_OP( 1585,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 1587,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 1594,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 1602,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat18 );
TEST_VMRL_OP( 1605,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 1609,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 1630,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 1637,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 1642,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat25 );
TEST_VMRL_OP( 1653,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 1661,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 1666,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 1668,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 1669,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat19 );
TEST_VMRL_OP( 1677,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 1678,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat28 );
TEST_VMRL_OP( 1684,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat1 );
TEST_VMRL_OP( 1687,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 1688,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 1690,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 1691,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 1693,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 1694,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat11 );
TEST_VMRL_OP( 1704,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 1708,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 1711,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat28 );
TEST_VMRL_OP( 1713,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 1715,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat32 );
TEST_VMRL_OP( 1719,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 1723,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 1724,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 1727,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat11 );
TEST_VMRL_OP( 1732,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 1734,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat18 );
TEST_VMRL_OP( 1739,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 1749,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 1756,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 1757,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 1763,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 1765,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 1766,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 1768,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat19 );
TEST_VMRL_OP( 1773,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 1777,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 1784,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat2 );
TEST_VMRL_OP( 1786,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 1789,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat7 );
TEST_VMRL_OP( 1792,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 1794,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat12 );
TEST_VMRL_OP( 1797,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 1798,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat16 );
TEST_VMRL_OP( 1799,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 1801,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat19 );
TEST_VMRL_OP( 1802,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat20 );
TEST_VMRL_OP( 1807,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 1809,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 1810,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 1815,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 1817,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 1818,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat3 );
TEST_VMRL_OP( 1820,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 1821,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 1822,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat7 );
TEST_VMRL_OP( 1829,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat14 );
TEST_VMRL_OP( 1831,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat16 );
TEST_VMRL_OP( 1836,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 1839,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat24 );
TEST_VMRL_OP( 1841,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 1844,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 1849,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 1850,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 1855,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 1857,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 1861,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 1862,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat14 );
TEST_VMRL_OP( 1867,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 1872,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 1878,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 1892,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 1894,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 1908,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat27 );
TEST_VMRL_OP( 1912,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat31 );
TEST_VMRL_OP( 1922,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 1929,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1941,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 1943,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat29 );
TEST_VMRL_OP( 1951,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat4 );
TEST_VMRL_OP( 1952,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 1953,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 1958,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 1968,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 1976,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat29 );
TEST_VMRL_OP( 1979,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 1982,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 1983,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 1989,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 1995,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 1998,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 1999,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 2003,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat23 );
TEST_VMRL_OP( 2004,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat24 );
TEST_VMRL_OP( 2009,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 2013,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat0 );
TEST_VMRL_OP( 2014,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 2015,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 2020,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 2023,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat10 );
TEST_VMRL_OP( 2027,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 2029,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 2032,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 2033,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 2035,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 2050,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 2052,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat6 );
TEST_VMRL_OP( 2053,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 2055,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat9 );
TEST_VMRL_OP( 2065,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 2073,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 2075,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 2076,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 2077,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 2079,  vmand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 2089,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 2090,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 2094,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 2097,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 2103,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 2104,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 2108,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 2123,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat11 );
TEST_VMRL_OP( 2127,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2128,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 2130,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 2135,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat23 );
TEST_VMRL_OP( 2141,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 2147,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2150,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 2151,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 2157,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 2161,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 2163,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat18 );
TEST_VMRL_OP( 2164,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 2167,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 2171,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat26 );
TEST_VMRL_OP( 2176,  vmand.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat31 );
TEST_VMRL_OP( 2179,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 2181,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 2187,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 2190,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 2196,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 2203,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat25 );
TEST_VMRL_OP( 2211,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 2212,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 2214,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 2220,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 2228,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat17 );
TEST_VMRL_OP( 2229,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat18 );
TEST_VMRL_OP( 2230,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2233,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat22 );
TEST_VMRL_OP( 2238,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat27 );
TEST_VMRL_OP( 2242,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat31 );
TEST_VMRL_OP( 2245,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 2250,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 2256,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 2260,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 2261,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 2265,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 2266,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 2269,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat25 );
TEST_VMRL_OP( 2274,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 2275,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 2295,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 2302,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat25 );
TEST_VMRL_OP( 2309,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat32 );
TEST_VMRL_OP( 2312,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 2316,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 2319,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 2322,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 2333,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 2346,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 2348,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 2351,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 2356,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 2359,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 2360,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 2369,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat26 );
TEST_VMRL_OP( 2371,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 2375,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 2384,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 2386,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 2400,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 2403,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat27 );
TEST_VMRL_OP( 2407,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 2415,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 2421,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 2422,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 2424,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 2425,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 2429,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 2433,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat24 );
TEST_VMRL_OP( 2434,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat25 );
TEST_VMRL_OP( 2446,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 2447,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 2452,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 2453,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 2466,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 2476,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 2477,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 2485,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 2486,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 2493,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 2496,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 2498,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 2500,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 2509,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 2514,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 2517,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 2519,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 2520,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 2522,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 2528,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 2529,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 2530,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat22 );
TEST_VMRL_OP( 2531,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat23 );
TEST_VMRL_OP( 2534,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 2544,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 2545,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 2548,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 2551,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 2553,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 2558,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 2566,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 2570,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 2573,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 2585,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 2587,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 2588,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 2593,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 2596,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 2597,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 2601,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 2602,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat28 );
TEST_VMRL_OP( 2608,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 2611,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 2633,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat26 );
TEST_VMRL_OP( 2636,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 2637,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 2648,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 2650,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 2652,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 2654,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 2659,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 2662,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat22 );
TEST_VMRL_OP( 2663,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat23 );
TEST_VMRL_OP( 2667,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat27 );
TEST_VMRL_OP( 2671,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 2674,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 2688,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 2693,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 2694,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2695,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 2696,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat23 );
TEST_VMRL_OP( 2697,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 2702,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 2707,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 2709,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 2712,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 2715,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 2717,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 2733,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 2735,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 2739,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat0 );
TEST_VMRL_OP( 2741,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 2743,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 2745,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 2747,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat8 );
TEST_VMRL_OP( 2754,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 2760,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat21 );
TEST_VMRL_OP( 2761,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 2762,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat23 );
TEST_VMRL_OP( 2764,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 2769,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat30 );
TEST_VMRL_OP( 2771,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 2779,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 2782,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 2785,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat13 );
TEST_VMRL_OP( 2787,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 2798,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 2808,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 2814,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 2819,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 2833,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_zeros_dat28 );
TEST_VMRL_OP( 2838,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 2855,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 2858,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 2859,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat21 );
TEST_VMRL_OP( 2866,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 2869,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_zeros_dat31 );
TEST_VMRL_OP( 2872,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat1 );
TEST_VMRL_OP( 2875,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 2884,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 2891,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat20 );
TEST_VMRL_OP( 2893,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 2895,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 2897,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat26 );
TEST_VMRL_OP( 2898,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 2904,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 2911,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat7 );
TEST_VMRL_OP( 2914,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 2917,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 2928,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat24 );
TEST_VMRL_OP( 2935,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 2937,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 2940,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat3 );
TEST_VMRL_OP( 2942,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat5 );
TEST_VMRL_OP( 2946,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 2957,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 2965,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat28 );
TEST_VMRL_OP( 2966,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_zeros_dat29 );
TEST_VMRL_OP( 2970,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat0 );
TEST_VMRL_OP( 2975,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 2979,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat9 );
TEST_VMRL_OP( 2980,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat10 );
TEST_VMRL_OP( 2983,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 2985,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat15 );
TEST_VMRL_OP( 2987,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 2989,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 2993,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 2999,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat29 );
TEST_VMRL_OP( 3004,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 3007,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 3009,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat6 );
TEST_VMRL_OP( 3012,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 3013,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 3017,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 3018,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 3021,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 3022,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 3025,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat22 );
TEST_VMRL_OP( 3030,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 3033,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat30 );
TEST_VMRL_OP( 3034,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 3043,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 3047,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 3050,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 3054,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 3055,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat19 );
TEST_VMRL_OP( 3059,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 3067,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 3068,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 3077,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat8 );
TEST_VMRL_OP( 3079,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat10 );
TEST_VMRL_OP( 3081,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 3085,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 3088,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 3090,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 3096,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 3105,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 3109,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 3113,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 3114,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat12 );
TEST_VMRL_OP( 3124,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 3127,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 3129,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat27 );
TEST_VMRL_OP( 3133,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 3135,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 3137,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 3138,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 3157,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 3162,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 3173,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat5 );
TEST_VMRL_OP( 3184,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 3187,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 3196,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat28 );
TEST_VMRL_OP( 3197,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 3205,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat4 );
TEST_VMRL_OP( 3207,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 3212,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat11 );
TEST_VMRL_OP( 3214,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat13 );
TEST_VMRL_OP( 3219,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 3220,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 3224,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat23 );
TEST_VMRL_OP( 3225,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 3226,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 3227,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat26 );
TEST_VMRL_OP( 3229,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat28 );
TEST_VMRL_OP( 3231,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_zeros_dat30 );
TEST_VMRL_OP( 3237,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat3 );
TEST_VMRL_OP( 3240,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 3242,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat8 );
TEST_VMRL_OP( 3260,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat26 );
TEST_VMRL_OP( 3262,  vmand.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 3266,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 3272,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 3273,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 3276,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 3277,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 3281,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 3292,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat25 );
TEST_VMRL_OP( 3294,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 3296,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 3298,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 3303,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 3310,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 3312,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 3317,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat17 );
TEST_VMRL_OP( 3323,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 3328,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 3329,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 3330,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 3339,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 3343,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 3346,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 3350,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 3366,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 3369,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 3372,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 3373,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 3376,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 3377,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 3386,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat20 );
TEST_VMRL_OP( 3390,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 3391,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 3393,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 3399,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 3400,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 3402,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 3405,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 3409,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 3415,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 3435,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 3439,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 3445,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 3451,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat19 );
TEST_VMRL_OP( 3452,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 3455,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 3457,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat25 );
TEST_VMRL_OP( 3459,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 3465,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 3470,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 3471,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 3474,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 3475,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 3478,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 3480,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 3482,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat17 );
TEST_VMRL_OP( 3485,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat20 );
TEST_VMRL_OP( 3487,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 3490,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 3505,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 3508,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 3509,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 3512,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 3516,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 3520,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat22 );
TEST_VMRL_OP( 3522,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 3526,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 3534,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 3539,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 3549,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 3552,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 3553,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat22 );
TEST_VMRL_OP( 3555,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 3557,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 3563,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3564,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 3567,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 3579,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 3580,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 3583,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat19 );
TEST_VMRL_OP( 3584,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat20 );
TEST_VMRL_OP( 3586,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3589,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 3590,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat26 );
TEST_VMRL_OP( 3591,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 3604,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 3606,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 3608,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 3619,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 3624,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 3634,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 3636,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 3639,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3641,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 3642,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 3648,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 3650,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 3655,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 3657,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 3663,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 3666,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 3668,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 3674,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 3678,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 3682,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 3685,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat22 );
TEST_VMRL_OP( 3690,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 3695,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat32 );
TEST_VMRL_OP( 3710,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 3714,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 3724,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat28 );
TEST_VMRL_OP( 3728,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 3737,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 3738,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 3745,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 3746,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 3747,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 3750,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 3752,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 3761,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 3764,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 3765,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 3768,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 3774,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 3775,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 3779,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 3785,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 3791,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat29 );
TEST_VMRL_OP( 3792,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat30 );
TEST_VMRL_OP( 3793,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat31 );
TEST_VMRL_OP( 3801,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 3808,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 3811,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 3812,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat17 );
TEST_VMRL_OP( 3814,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat19 );
TEST_VMRL_OP( 3828,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 3833,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat5 );
TEST_VMRL_OP( 3837,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat9 );
TEST_VMRL_OP( 3841,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat13 );
TEST_VMRL_OP( 3842,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat14 );
TEST_VMRL_OP( 3856,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat28 );
TEST_VMRL_OP( 3858,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 3859,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 3865,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3871,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 3873,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 3881,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 3882,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 3893,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 3906,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 3907,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 3917,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 3918,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 3921,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 3922,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 3926,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat32 );
TEST_VMRL_OP( 3931,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat4 );
TEST_VMRL_OP( 3939,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 3941,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat14 );
TEST_VMRL_OP( 3943,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 3945,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 3946,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat19 );
TEST_VMRL_OP( 3957,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 3970,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat10 );
TEST_VMRL_OP( 3972,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 3981,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 3983,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 3989,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 3997,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat4 );
TEST_VMRL_OP( 4005,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 4006,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat13 );
TEST_VMRL_OP( 4007,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 4008,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 4016,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 4017,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat24 );
TEST_VMRL_OP( 4018,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 4020,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 4021,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 4022,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 4023,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 4026,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 4028,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 4035,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat9 );
TEST_VMRL_OP( 4036,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat10 );
TEST_VMRL_OP( 4038,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 4048,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 4051,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 4055,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 4056,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat30 );
TEST_VMRL_OP( 4057,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 4062,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 4070,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat11 );
TEST_VMRL_OP( 4071,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 4074,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat15 );
TEST_VMRL_OP( 4076,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 4081,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 4085,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat26 );
TEST_VMRL_OP( 4086,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat27 );
TEST_VMRL_OP( 4089,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 4091,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 4097,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 4104,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 4108,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat16 );
TEST_VMRL_OP( 4120,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 4122,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 4125,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat0 );
TEST_VMRL_OP( 4129,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat4 );
TEST_VMRL_OP( 4130,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 4132,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat7 );
TEST_VMRL_OP( 4138,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 4142,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 4146,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat21 );
TEST_VMRL_OP( 4153,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 4154,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat29 );
TEST_VMRL_OP( 4156,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 4162,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 4163,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 4167,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 4170,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat12 );
TEST_VMRL_OP( 4173,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat15 );
TEST_VMRL_OP( 4177,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 4180,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 4195,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 4197,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 4199,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 4218,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat27 );
TEST_VMRL_OP( 4221,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat30 );
TEST_VMRL_OP( 4224,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 4225,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 4226,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat2 );
TEST_VMRL_OP( 4228,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat4 );
TEST_VMRL_OP( 4236,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 4242,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 4248,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 4250,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 4258,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat1 );
TEST_VMRL_OP( 4260,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 4262,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 4264,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat7 );
TEST_VMRL_OP( 4269,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 4274,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 4279,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat22 );
TEST_VMRL_OP( 4280,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 4286,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 4291,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat1 );
TEST_VMRL_OP( 4293,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 4294,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 4295,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 4297,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 4300,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 4301,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat11 );
TEST_VMRL_OP( 4305,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 4306,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 4317,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 4319,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 4324,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 4328,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 4331,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 4332,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 4338,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 4344,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat21 );
TEST_VMRL_OP( 4346,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 4348,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 4351,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat28 );
TEST_VMRL_OP( 4356,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmand.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmand.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 8823,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 8824,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8825,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8826,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8827,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8828,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8829,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8830,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8831,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8832,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8833,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8834,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8835,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8836,  vmand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

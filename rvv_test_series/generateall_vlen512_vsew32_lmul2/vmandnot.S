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
TEST_VMRL_OP( 0,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 2,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 5,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 9,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 12,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 17,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat17 );
TEST_VMRL_OP( 20,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 21,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat21 );
TEST_VMRL_OP( 24,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 27,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 28,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 39,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 40,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 45,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 50,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat17 );
TEST_VMRL_OP( 55,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 59,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat26 );
TEST_VMRL_OP( 62,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 65,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 67,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 68,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 69,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 71,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 72,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 73,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 78,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 88,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 89,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat23 );
TEST_VMRL_OP( 91,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 94,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 103,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 107,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 124,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 125,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat26 );
TEST_VMRL_OP( 129,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat30 );
TEST_VMRL_OP( 133,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 137,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 138,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 139,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 142,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 146,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 148,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 150,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 153,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 168,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 169,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 174,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 177,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 178,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 179,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 186,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 188,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 191,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat26 );
TEST_VMRL_OP( 196,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 202,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 213,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 216,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 218,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat20 );
TEST_VMRL_OP( 223,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 225,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 229,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 233,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 237,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 238,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 239,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 241,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 250,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 251,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 254,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat23 );
TEST_VMRL_OP( 255,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 256,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat25 );
TEST_VMRL_OP( 259,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 261,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 263,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat32 );
TEST_VMRL_OP( 264,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 266,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 268,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 280,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 282,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 283,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 290,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 292,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat28 );
TEST_VMRL_OP( 294,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 295,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 304,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 308,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 311,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 314,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat17 );
TEST_VMRL_OP( 318,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 328,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 333,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 335,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 341,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 343,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 345,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 355,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 356,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 359,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 361,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 370,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 385,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 387,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 388,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 395,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 396,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 397,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 412,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 419,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 423,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 431,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 432,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 446,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat17 );
TEST_VMRL_OP( 458,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat29 );
TEST_VMRL_OP( 466,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 468,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 471,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 476,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 477,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 479,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 482,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat20 );
TEST_VMRL_OP( 483,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 485,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 487,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 488,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 494,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 497,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 498,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 500,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 505,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 511,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 513,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 516,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 521,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat26 );
TEST_VMRL_OP( 527,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat32 );
TEST_VMRL_OP( 529,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 532,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 534,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 538,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 539,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 544,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 563,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 566,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat5 );
TEST_VMRL_OP( 567,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 569,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat8 );
TEST_VMRL_OP( 572,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat11 );
TEST_VMRL_OP( 573,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 590,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 598,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 602,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 608,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 609,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 614,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 622,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 625,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_ones_dat31 );
TEST_VMRL_OP( 628,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat1 );
TEST_VMRL_OP( 631,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat4 );
TEST_VMRL_OP( 634,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 635,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 637,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat10 );
TEST_VMRL_OP( 641,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 648,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 652,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat25 );
TEST_VMRL_OP( 657,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 662,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat2 );
TEST_VMRL_OP( 663,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat3 );
TEST_VMRL_OP( 671,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat11 );
TEST_VMRL_OP( 672,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 673,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat13 );
TEST_VMRL_OP( 685,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat25 );
TEST_VMRL_OP( 689,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 700,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat7 );
TEST_VMRL_OP( 705,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 706,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 713,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 726,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_ones_dat0 );
TEST_VMRL_OP( 738,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 747,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 756,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 767,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 769,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat10 );
TEST_VMRL_OP( 771,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 773,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 780,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat23, walking_ones_dat21 );
TEST_VMRL_OP( 792,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 796,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat4 );
TEST_VMRL_OP( 802,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat10 );
TEST_VMRL_OP( 804,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 806,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 808,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 809,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 812,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 814,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 820,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 822,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 824,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 828,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 835,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 853,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 856,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat31 );
TEST_VMRL_OP( 867,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 868,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat10 );
TEST_VMRL_OP( 869,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 874,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat16 );
TEST_VMRL_OP( 875,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 879,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat21 );
TEST_VMRL_OP( 882,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 883,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 885,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 888,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat26, walking_ones_dat30 );
TEST_VMRL_OP( 893,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 894,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 895,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 897,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 902,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 905,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 907,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 908,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat17 );
TEST_VMRL_OP( 915,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 919,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat28 );
TEST_VMRL_OP( 923,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat27, walking_ones_dat32 );
TEST_VMRL_OP( 926,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 927,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 928,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 931,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 935,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 942,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 944,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 947,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 949,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat25 );
TEST_VMRL_OP( 951,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat27 );
TEST_VMRL_OP( 953,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 956,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 965,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 966,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 969,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat12 );
TEST_VMRL_OP( 970,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 972,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 973,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 982,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 988,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat31 );
TEST_VMRL_OP( 990,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 998,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 1002,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 1010,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 1015,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1026,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 1028,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 1037,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat14 );
TEST_VMRL_OP( 1038,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 1041,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 1051,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat31, walking_ones_dat28 );
TEST_VMRL_OP( 1056,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 1061,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 1064,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 1068,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat12 );
TEST_VMRL_OP( 1072,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat16 );
TEST_VMRL_OP( 1073,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 1081,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 1091,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 1094,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 1100,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 1104,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 1108,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 1116,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 1129,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 1132,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 1133,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 1136,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 1138,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 1146,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 1154,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 1156,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 1159,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 1160,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 1161,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 1162,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 1171,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 1178,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 1179,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 1185,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 1186,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 1188,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 1190,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 1194,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 1199,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 1205,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 1208,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 1220,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat32 );
TEST_VMRL_OP( 1221,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 1222,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 1226,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 1229,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 1230,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 1233,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 1234,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 1236,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 1240,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat19 );
TEST_VMRL_OP( 1245,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat24 );
TEST_VMRL_OP( 1250,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 1252,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 1253,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 1256,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 1258,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 1260,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 1265,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 1270,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 1278,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 1289,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 1294,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 1295,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 1297,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 1301,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 1309,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 1312,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 1318,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 1326,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 1327,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1332,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 1334,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 1350,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 1357,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 1366,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 1371,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 1375,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 1380,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat27 );
TEST_VMRL_OP( 1382,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 1385,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 1386,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 1387,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 1395,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1401,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 1405,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 1407,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 1412,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 1416,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 1417,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat31 );
TEST_VMRL_OP( 1419,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 1424,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 1425,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 1432,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 1437,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat18 );
TEST_VMRL_OP( 1439,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 1440,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 1451,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 1456,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 1457,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 1460,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 1464,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 1465,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 1467,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 1468,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 1470,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat18 );
TEST_VMRL_OP( 1471,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 1478,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 1482,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 1484,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 1487,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 1489,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 1491,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 1493,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 1496,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 1498,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 1503,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat18 );
TEST_VMRL_OP( 1504,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 1505,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 1512,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 1517,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 1526,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 1528,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 1534,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 1549,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 1553,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 1556,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 1557,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 1558,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 1564,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 1565,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1576,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 1596,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 1597,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 1598,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 1602,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat18 );
TEST_VMRL_OP( 1604,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 1606,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 1610,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat26 );
TEST_VMRL_OP( 1611,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 1612,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat28 );
TEST_VMRL_OP( 1613,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 1623,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 1625,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 1628,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 1630,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 1643,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat26 );
TEST_VMRL_OP( 1647,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat30 );
TEST_VMRL_OP( 1656,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 1659,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat9 );
TEST_VMRL_OP( 1670,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 1671,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat21 );
TEST_VMRL_OP( 1679,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 1680,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat30 );
TEST_VMRL_OP( 1682,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat32 );
TEST_VMRL_OP( 1683,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 1685,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat2 );
TEST_VMRL_OP( 1694,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat11 );
TEST_VMRL_OP( 1698,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 1701,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 1707,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat24 );
TEST_VMRL_OP( 1708,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 1716,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat0 );
TEST_VMRL_OP( 1718,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 1723,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 1726,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 1730,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 1734,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat18 );
TEST_VMRL_OP( 1738,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 1739,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 1746,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 1748,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_zeros_dat32 );
TEST_VMRL_OP( 1750,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 1756,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 1757,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 1789,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat7 );
TEST_VMRL_OP( 1790,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 1791,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 1792,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 1799,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 1800,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 1809,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 1817,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 1821,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 1823,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat8 );
TEST_VMRL_OP( 1824,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 1826,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 1827,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat12 );
TEST_VMRL_OP( 1833,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 1841,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 1842,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat27 );
TEST_VMRL_OP( 1845,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 1848,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 1859,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 1863,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 1876,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat28 );
TEST_VMRL_OP( 1883,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 1888,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat7 );
TEST_VMRL_OP( 1892,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 1893,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 1904,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 1906,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat25 );
TEST_VMRL_OP( 1907,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat26 );
TEST_VMRL_OP( 1911,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 1916,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat2 );
TEST_VMRL_OP( 1917,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 1929,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1930,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat16 );
TEST_VMRL_OP( 1933,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 1938,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 1940,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat26 );
TEST_VMRL_OP( 1942,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat28 );
TEST_VMRL_OP( 1943,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat29 );
TEST_VMRL_OP( 1946,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 1948,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat1 );
TEST_VMRL_OP( 1957,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat10 );
TEST_VMRL_OP( 1958,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 1963,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat16 );
TEST_VMRL_OP( 1971,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat24 );
TEST_VMRL_OP( 1972,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat25 );
TEST_VMRL_OP( 1981,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 1983,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat3 );
TEST_VMRL_OP( 1984,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 1997,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat17 );
TEST_VMRL_OP( 1999,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 2006,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 2007,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 2009,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat29 );
TEST_VMRL_OP( 2014,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 2015,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 2017,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat4 );
TEST_VMRL_OP( 2018,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 2021,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 2026,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 2029,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 2030,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 2037,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 2047,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat1 );
TEST_VMRL_OP( 2056,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 2061,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat15 );
TEST_VMRL_OP( 2064,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 2065,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 2071,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 2077,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 2078,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat32 );
TEST_VMRL_OP( 2080,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 2097,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 2098,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 2100,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 2103,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 2114,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 2115,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat3 );
TEST_VMRL_OP( 2122,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat10 );
TEST_VMRL_OP( 2124,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat12 );
TEST_VMRL_OP( 2127,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2134,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 2135,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat23 );
TEST_VMRL_OP( 2139,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 2147,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2153,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat8 );
TEST_VMRL_OP( 2155,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat10 );
TEST_VMRL_OP( 2159,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat14 );
TEST_VMRL_OP( 2163,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat18 );
TEST_VMRL_OP( 2170,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 2173,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 2174,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat29 );
TEST_VMRL_OP( 2184,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2186,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 2188,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 2191,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 2196,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 2204,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 2208,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat30 );
TEST_VMRL_OP( 2214,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 2217,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 2224,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 2230,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2234,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 2235,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 2239,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat28 );
TEST_VMRL_OP( 2244,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 2245,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 2250,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 2254,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 2256,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 2257,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 2259,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 2269,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat25 );
TEST_VMRL_OP( 2275,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 2277,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 2281,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 2286,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 2287,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 2289,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 2293,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 2296,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 2297,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 2304,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 2327,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 2331,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat21 );
TEST_VMRL_OP( 2334,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat24 );
TEST_VMRL_OP( 2343,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 2346,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 2348,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 2349,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 2359,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 2360,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 2366,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 2368,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 2369,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat26 );
TEST_VMRL_OP( 2374,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 2381,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 2391,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 2398,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 2405,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 2408,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat32 );
TEST_VMRL_OP( 2411,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 2418,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 2420,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 2423,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 2426,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat17 );
TEST_VMRL_OP( 2432,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat23 );
TEST_VMRL_OP( 2437,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 2439,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat30 );
TEST_VMRL_OP( 2441,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 2442,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 2443,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 2446,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 2449,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 2460,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 2468,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat26 );
TEST_VMRL_OP( 2473,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 2475,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 2476,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 2478,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 2488,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 2494,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 2495,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat20 );
TEST_VMRL_OP( 2500,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 2504,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat29 );
TEST_VMRL_OP( 2511,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 2516,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 2524,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 2525,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat17 );
TEST_VMRL_OP( 2531,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat23 );
TEST_VMRL_OP( 2542,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 2548,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 2549,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 2563,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat22 );
TEST_VMRL_OP( 2566,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 2569,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat28 );
TEST_VMRL_OP( 2570,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 2573,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 2574,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 2575,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 2595,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat21 );
TEST_VMRL_OP( 2600,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat26 );
TEST_VMRL_OP( 2601,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat27 );
TEST_VMRL_OP( 2602,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat28 );
TEST_VMRL_OP( 2608,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 2609,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 2612,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 2615,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 2617,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 2622,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 2627,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 2630,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat23 );
TEST_VMRL_OP( 2632,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat25 );
TEST_VMRL_OP( 2635,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 2636,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 2646,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 2666,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 2673,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 2677,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 2680,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 2681,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 2691,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat18 );
TEST_VMRL_OP( 2692,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 2693,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 2694,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2702,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 2704,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat31 );
TEST_VMRL_OP( 2711,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 2715,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 2719,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 2725,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 2727,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 2732,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat26 );
TEST_VMRL_OP( 2734,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 2735,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 2736,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat30 );
TEST_VMRL_OP( 2738,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 2745,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 2750,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 2754,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 2756,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 2761,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 2764,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 2772,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 2774,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat2 );
TEST_VMRL_OP( 2780,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 2783,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat11 );
TEST_VMRL_OP( 2791,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat19 );
TEST_VMRL_OP( 2793,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 2801,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 2802,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 2803,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat31 );
TEST_VMRL_OP( 2807,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 2808,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 2817,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 2818,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 2819,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 2825,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat20 );
TEST_VMRL_OP( 2826,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 2827,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 2831,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 2845,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat7 );
TEST_VMRL_OP( 2848,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 2855,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 2856,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 2861,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat23 );
TEST_VMRL_OP( 2862,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 2867,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 2868,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat30 );
TEST_VMRL_OP( 2870,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat32 );
TEST_VMRL_OP( 2871,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat0 );
TEST_VMRL_OP( 2875,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 2880,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 2882,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat11 );
TEST_VMRL_OP( 2884,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 2885,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 2886,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 2888,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 2890,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat19 );
TEST_VMRL_OP( 2894,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat23 );
TEST_VMRL_OP( 2895,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 2904,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 2905,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 2908,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 2913,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 2914,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 2915,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 2921,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat17 );
TEST_VMRL_OP( 2930,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 2939,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 2941,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat4 );
TEST_VMRL_OP( 2945,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat8 );
TEST_VMRL_OP( 2951,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat14 );
TEST_VMRL_OP( 2954,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 2956,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 2959,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 2964,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat27 );
TEST_VMRL_OP( 2967,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat30 );
TEST_VMRL_OP( 2972,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 2980,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat10 );
TEST_VMRL_OP( 2986,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 2987,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 2989,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 2991,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 2994,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 2995,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat25 );
TEST_VMRL_OP( 3000,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 3023,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 3027,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 3036,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat0 );
TEST_VMRL_OP( 3046,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat10 );
TEST_VMRL_OP( 3052,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat16 );
TEST_VMRL_OP( 3053,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 3055,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat19 );
TEST_VMRL_OP( 3058,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 3062,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 3063,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 3075,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 3087,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 3103,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 3105,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 3106,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat4 );
TEST_VMRL_OP( 3116,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 3117,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat15 );
TEST_VMRL_OP( 3125,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 3127,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 3131,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 3132,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat30 );
TEST_VMRL_OP( 3135,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 3140,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat5 );
TEST_VMRL_OP( 3150,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat15 );
TEST_VMRL_OP( 3154,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 3160,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 3161,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat26 );
TEST_VMRL_OP( 3164,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 3169,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 3181,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 3184,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 3189,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 3191,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat23 );
TEST_VMRL_OP( 3193,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 3203,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 3204,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat3 );
TEST_VMRL_OP( 3207,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 3208,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat7 );
TEST_VMRL_OP( 3210,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 3213,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat12 );
TEST_VMRL_OP( 3217,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 3220,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 3229,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat28 );
TEST_VMRL_OP( 3236,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 3237,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat3 );
TEST_VMRL_OP( 3243,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat9 );
TEST_VMRL_OP( 3246,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 3247,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3251,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 3261,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 3264,  vmandnot.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat30 );
TEST_VMRL_OP( 3270,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 3271,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 3282,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 3283,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 3284,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat17 );
TEST_VMRL_OP( 3286,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 3287,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 3290,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 3307,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 3313,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 3316,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 3321,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 3322,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 3327,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3335,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 3336,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 3337,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 3339,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 3340,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 3343,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 3348,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 3356,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat23 );
TEST_VMRL_OP( 3367,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 3379,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 3381,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 3385,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat19 );
TEST_VMRL_OP( 3395,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 3399,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 3401,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 3405,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 3407,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 3409,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 3423,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 3424,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 3425,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 3432,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 3433,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 3436,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 3437,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 3441,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 3443,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 3445,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 3446,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 3452,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 3453,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 3455,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 3463,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 3471,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 3473,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 3476,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 3494,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat29 );
TEST_VMRL_OP( 3499,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 3500,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 3502,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 3505,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 3510,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 3513,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 3523,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat25 );
TEST_VMRL_OP( 3526,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 3528,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 3531,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 3533,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 3542,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 3553,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat22 );
TEST_VMRL_OP( 3554,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 3558,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 3560,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 3563,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3566,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 3568,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 3573,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 3575,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 3577,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 3581,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat17 );
TEST_VMRL_OP( 3584,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat20 );
TEST_VMRL_OP( 3585,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 3586,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3589,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 3591,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 3596,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat32 );
TEST_VMRL_OP( 3606,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 3607,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 3609,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 3614,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 3618,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat21 );
TEST_VMRL_OP( 3620,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 3622,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 3624,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 3630,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 3633,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 3638,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 3642,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 3653,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 3660,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 3662,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 3666,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 3668,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 3674,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 3681,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat18 );
TEST_VMRL_OP( 3684,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 3693,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat30 );
TEST_VMRL_OP( 3697,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 3706,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 3707,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 3708,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 3712,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 3713,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat17 );
TEST_VMRL_OP( 3718,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat22 );
TEST_VMRL_OP( 3724,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat28 );
TEST_VMRL_OP( 3725,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat29 );
TEST_VMRL_OP( 3726,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 3729,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 3732,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 3733,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 3741,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 3747,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 3754,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 3755,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 3756,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 3758,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 3763,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 3765,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 3766,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 3769,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 3772,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 3775,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 3788,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat26 );
TEST_VMRL_OP( 3791,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat29 );
TEST_VMRL_OP( 3792,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat30 );
TEST_VMRL_OP( 3793,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat31 );
TEST_VMRL_OP( 3799,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 3807,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 3809,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 3812,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat17 );
TEST_VMRL_OP( 3814,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat19 );
TEST_VMRL_OP( 3819,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat24 );
TEST_VMRL_OP( 3823,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 3826,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat31 );
TEST_VMRL_OP( 3829,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat1 );
TEST_VMRL_OP( 3830,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 3843,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 3854,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat26 );
TEST_VMRL_OP( 3864,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 3866,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat5 );
TEST_VMRL_OP( 3870,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat9 );
TEST_VMRL_OP( 3873,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 3885,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3889,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 3896,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 3899,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat5 );
TEST_VMRL_OP( 3900,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat6 );
TEST_VMRL_OP( 3902,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 3904,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat10 );
TEST_VMRL_OP( 3912,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat18 );
TEST_VMRL_OP( 3917,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 3919,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat25 );
TEST_VMRL_OP( 3922,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 3924,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 3925,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 3932,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat5 );
TEST_VMRL_OP( 3938,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat11 );
TEST_VMRL_OP( 3950,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat23 );
TEST_VMRL_OP( 3958,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 3961,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 3965,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 3969,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat9 );
TEST_VMRL_OP( 3971,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 3972,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat12 );
TEST_VMRL_OP( 3978,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 3989,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat29 );
TEST_VMRL_OP( 3990,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 3991,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 3995,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 3997,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat4 );
TEST_VMRL_OP( 3998,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat5 );
TEST_VMRL_OP( 3999,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 4000,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat7 );
TEST_VMRL_OP( 4005,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 4006,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat13 );
TEST_VMRL_OP( 4010,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 4015,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4022,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 4028,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 4033,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 4034,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 4043,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 4050,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 4053,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat27 );
TEST_VMRL_OP( 4060,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 4061,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 4065,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 4085,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat26 );
TEST_VMRL_OP( 4087,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 4097,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 4098,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 4101,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 4104,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 4105,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat13 );
TEST_VMRL_OP( 4107,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 4112,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat20 );
TEST_VMRL_OP( 4113,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat21 );
TEST_VMRL_OP( 4115,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 4121,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 4131,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat6 );
TEST_VMRL_OP( 4134,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 4137,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat12 );
TEST_VMRL_OP( 4139,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 4142,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat17 );
TEST_VMRL_OP( 4149,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 4154,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat29 );
TEST_VMRL_OP( 4174,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 4179,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat21 );
TEST_VMRL_OP( 4180,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 4183,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat25 );
TEST_VMRL_OP( 4184,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat26 );
TEST_VMRL_OP( 4189,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 4191,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 4195,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 4198,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 4206,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 4211,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 4213,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 4215,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat24 );
TEST_VMRL_OP( 4218,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat27 );
TEST_VMRL_OP( 4223,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 4225,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 4226,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat2 );
TEST_VMRL_OP( 4227,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 4229,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 4237,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 4238,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat14 );
TEST_VMRL_OP( 4244,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 4247,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 4253,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4254,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 4261,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat4 );
TEST_VMRL_OP( 4265,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 4266,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 4269,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 4278,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 4280,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 4281,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 4284,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat27 );
TEST_VMRL_OP( 4285,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 4290,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat0 );
TEST_VMRL_OP( 4292,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 4308,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 4311,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat21 );
TEST_VMRL_OP( 4314,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 4317,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 4319,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 4322,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat32 );
TEST_VMRL_OP( 4329,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 4333,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 4340,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 4342,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat19 );
TEST_VMRL_OP( 4344,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat21 );
TEST_VMRL_OP( 4347,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 4348,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat25 );
TEST_VMRL_OP( 4356,  vmandnot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmandnot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 8823,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 8824,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8825,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8826,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8827,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8828,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8829,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8830,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8831,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8832,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8833,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8834,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8835,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8836,  vmandnot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
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
    

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
TEST_VMRL_OP( 12,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 17,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat17 );
TEST_VMRL_OP( 21,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat21 );
TEST_VMRL_OP( 23,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 28,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 29,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 37,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 40,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 45,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 49,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 53,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 57,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat24 );
TEST_VMRL_OP( 64,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 68,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 70,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 78,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 79,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 103,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 106,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 108,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 112,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 114,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 117,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 121,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 125,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat26 );
TEST_VMRL_OP( 132,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 139,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 142,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 144,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 150,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 153,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 156,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 160,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_ones_dat28 );
TEST_VMRL_OP( 171,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 172,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 179,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 187,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_ones_dat22 );
TEST_VMRL_OP( 190,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_ones_dat25 );
TEST_VMRL_OP( 193,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 204,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 216,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 220,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 223,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 228,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_ones_dat30 );
TEST_VMRL_OP( 232,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 235,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 243,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 244,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 246,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 249,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 260,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat29 );
TEST_VMRL_OP( 265,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 274,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 275,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 283,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 293,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 297,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 301,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 306,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 309,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 313,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 315,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 323,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat26 );
TEST_VMRL_OP( 325,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat28 );
TEST_VMRL_OP( 330,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 335,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 340,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 342,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 344,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 348,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat18 );
TEST_VMRL_OP( 350,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 353,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 357,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 362,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 363,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 364,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 368,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 375,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 382,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 383,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 384,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat21 );
TEST_VMRL_OP( 389,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 390,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 391,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 394,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 400,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 402,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 408,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 413,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_ones_dat17 );
TEST_VMRL_OP( 415,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 421,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_ones_dat25 );
TEST_VMRL_OP( 423,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 426,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_ones_dat30 );
TEST_VMRL_OP( 429,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 430,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 433,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 445,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 459,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 466,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 468,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 470,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 474,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 476,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 480,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 481,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat19 );
TEST_VMRL_OP( 483,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 486,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 488,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 499,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 508,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 511,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 512,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 518,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 528,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 530,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 534,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 537,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 543,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 546,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 556,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 562,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_ones_dat1 );
TEST_VMRL_OP( 579,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_ones_dat18 );
TEST_VMRL_OP( 584,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 585,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_ones_dat24 );
TEST_VMRL_OP( 587,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_ones_dat26 );
TEST_VMRL_OP( 591,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 598,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 611,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat17 );
TEST_VMRL_OP( 613,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 614,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 617,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 619,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 623,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat29 );
TEST_VMRL_OP( 626,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 630,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 633,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat6 );
TEST_VMRL_OP( 634,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 641,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 643,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat16 );
TEST_VMRL_OP( 644,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat17 );
TEST_VMRL_OP( 650,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 655,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat28 );
TEST_VMRL_OP( 657,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 661,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 667,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_ones_dat7 );
TEST_VMRL_OP( 673,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_ones_dat13 );
TEST_VMRL_OP( 676,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 680,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 681,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 684,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 685,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_ones_dat25 );
TEST_VMRL_OP( 693,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat0 );
TEST_VMRL_OP( 701,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat8 );
TEST_VMRL_OP( 704,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 711,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat18 );
TEST_VMRL_OP( 713,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 714,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 717,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat24 );
TEST_VMRL_OP( 719,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 723,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 724,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 725,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_ones_dat32 );
TEST_VMRL_OP( 730,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat4 );
TEST_VMRL_OP( 735,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 740,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 746,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat20 );
TEST_VMRL_OP( 750,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat24 );
TEST_VMRL_OP( 751,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 754,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 763,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 766,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 774,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 787,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_ones_dat28 );
TEST_VMRL_OP( 790,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 794,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 800,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 801,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_ones_dat9 );
TEST_VMRL_OP( 804,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 810,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 822,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 830,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 834,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 835,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 846,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat21 );
TEST_VMRL_OP( 847,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat22 );
TEST_VMRL_OP( 851,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 853,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat28 );
TEST_VMRL_OP( 854,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 863,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 864,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat6 );
TEST_VMRL_OP( 866,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 867,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 878,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat20 );
TEST_VMRL_OP( 882,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 886,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 888,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat30 );
TEST_VMRL_OP( 889,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 896,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 897,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 901,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat10 );
TEST_VMRL_OP( 903,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat12 );
TEST_VMRL_OP( 907,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 915,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 917,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat26 );
TEST_VMRL_OP( 920,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 923,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_ones_dat32 );
TEST_VMRL_OP( 927,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 929,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 933,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_ones_dat9 );
TEST_VMRL_OP( 939,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 941,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 956,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 959,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat2 );
TEST_VMRL_OP( 962,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 966,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 971,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat14 );
TEST_VMRL_OP( 978,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat21 );
TEST_VMRL_OP( 980,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 981,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 995,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat5 );
TEST_VMRL_OP( 1001,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat11 );
TEST_VMRL_OP( 1005,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 1006,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 1007,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 1011,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 1012,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat22 );
TEST_VMRL_OP( 1018,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 1019,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 1020,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 1021,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat31 );
TEST_VMRL_OP( 1027,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 1028,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 1040,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_ones_dat17 );
TEST_VMRL_OP( 1041,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 1051,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_ones_dat28 );
TEST_VMRL_OP( 1055,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_ones_dat32 );
TEST_VMRL_OP( 1057,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat1 );
TEST_VMRL_OP( 1059,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat3 );
TEST_VMRL_OP( 1065,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 1066,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 1068,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat12 );
TEST_VMRL_OP( 1070,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 1072,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat16 );
TEST_VMRL_OP( 1075,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat19 );
TEST_VMRL_OP( 1090,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 1098,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 1103,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 1116,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 1119,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat30 );
TEST_VMRL_OP( 1126,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 1128,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 1130,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 1157,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1161,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 1170,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 1176,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 1178,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 1189,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 1194,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 1197,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 1198,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 1205,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 1215,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 1224,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 1238,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 1239,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 1255,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 1261,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 1264,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 1270,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 1271,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 1272,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat18 );
TEST_VMRL_OP( 1273,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 1274,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat20 );
TEST_VMRL_OP( 1275,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat21 );
TEST_VMRL_OP( 1276,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 1277,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 1283,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat29 );
TEST_VMRL_OP( 1286,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 1287,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 1295,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 1296,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 1297,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 1304,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat17 );
TEST_VMRL_OP( 1306,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 1309,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 1324,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 1331,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 1333,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 1334,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 1336,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 1344,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat24 );
TEST_VMRL_OP( 1348,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 1352,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 1353,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 1355,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 1359,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 1361,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1363,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 1369,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 1370,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 1374,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 1375,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 1385,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 1399,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 1401,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 1402,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 1407,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 1410,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat24 );
TEST_VMRL_OP( 1426,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 1428,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 1432,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 1435,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 1443,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 1445,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 1450,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 1454,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 1459,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 1464,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 1471,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 1472,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 1478,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat26 );
TEST_VMRL_OP( 1481,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1488,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 1494,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 1496,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 1503,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat18 );
TEST_VMRL_OP( 1505,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 1509,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat24 );
TEST_VMRL_OP( 1510,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 1513,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat28 );
TEST_VMRL_OP( 1516,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 1519,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 1528,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 1529,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 1530,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 1532,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 1534,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 1536,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat18 );
TEST_VMRL_OP( 1542,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 1549,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 1551,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 1556,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 1557,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 1573,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat22 );
TEST_VMRL_OP( 1575,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 1577,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 1585,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 1590,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 1592,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 1594,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 1596,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 1605,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 1615,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat31 );
TEST_VMRL_OP( 1620,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 1621,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 1625,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 1627,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 1636,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 1638,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 1642,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat25 );
TEST_VMRL_OP( 1647,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat30 );
TEST_VMRL_OP( 1651,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 1657,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 1658,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat8 );
TEST_VMRL_OP( 1660,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat10 );
TEST_VMRL_OP( 1665,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 1675,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 1677,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 1684,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat1 );
TEST_VMRL_OP( 1686,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat3 );
TEST_VMRL_OP( 1687,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 1689,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat6 );
TEST_VMRL_OP( 1696,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat13 );
TEST_VMRL_OP( 1701,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 1704,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 1708,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 1713,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 1717,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 1719,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 1720,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat4 );
TEST_VMRL_OP( 1725,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 1726,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 1729,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 1732,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 1736,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat20 );
TEST_VMRL_OP( 1739,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat23 );
TEST_VMRL_OP( 1742,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 1746,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 1750,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 1758,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 1759,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 1761,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 1764,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat15 );
TEST_VMRL_OP( 1773,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 1775,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 1777,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 1792,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 1793,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat11 );
TEST_VMRL_OP( 1794,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat12 );
TEST_VMRL_OP( 1795,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 1802,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat20 );
TEST_VMRL_OP( 1803,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 1815,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 1820,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 1823,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat8 );
TEST_VMRL_OP( 1824,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 1828,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 1833,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 1834,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 1835,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat20 );
TEST_VMRL_OP( 1840,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat25 );
TEST_VMRL_OP( 1847,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 1849,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 1855,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 1856,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat8 );
TEST_VMRL_OP( 1859,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat11 );
TEST_VMRL_OP( 1861,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 1869,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat21 );
TEST_VMRL_OP( 1871,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 1873,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 1877,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat29 );
TEST_VMRL_OP( 1881,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_zeros_dat0 );
TEST_VMRL_OP( 1885,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 1886,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 1887,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat6 );
TEST_VMRL_OP( 1893,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat12 );
TEST_VMRL_OP( 1899,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 1900,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat19 );
TEST_VMRL_OP( 1904,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 1906,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat25 );
TEST_VMRL_OP( 1909,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat28 );
TEST_VMRL_OP( 1910,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat29 );
TEST_VMRL_OP( 1911,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 1914,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 1915,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 1922,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 1927,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 1928,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 1938,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 1940,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat26 );
TEST_VMRL_OP( 1946,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 1947,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat0 );
TEST_VMRL_OP( 1948,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat1 );
TEST_VMRL_OP( 1953,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 1960,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 1968,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 1969,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 1973,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 1975,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 1977,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 1981,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 1987,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 1995,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 1996,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 1998,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 2003,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat23 );
TEST_VMRL_OP( 2005,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat25 );
TEST_VMRL_OP( 2006,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 2008,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 2015,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat2 );
TEST_VMRL_OP( 2029,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 2034,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 2035,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 2039,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat26 );
TEST_VMRL_OP( 2042,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 2043,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat30 );
TEST_VMRL_OP( 2045,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 2046,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 2048,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 2051,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat5 );
TEST_VMRL_OP( 2054,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat8 );
TEST_VMRL_OP( 2056,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 2059,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 2069,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 2086,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat7 );
TEST_VMRL_OP( 2095,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 2097,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 2104,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 2111,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 2115,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat3 );
TEST_VMRL_OP( 2127,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2131,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 2134,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat22 );
TEST_VMRL_OP( 2138,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat26 );
TEST_VMRL_OP( 2142,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat30 );
TEST_VMRL_OP( 2143,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 2145,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 2146,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 2147,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2150,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 2151,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 2156,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 2163,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat18 );
TEST_VMRL_OP( 2167,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 2172,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 2173,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 2176,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat31 );
TEST_VMRL_OP( 2177,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 2178,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 2184,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2186,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 2191,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 2192,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 2193,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 2194,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 2195,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 2198,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 2200,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 2204,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 2210,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 2211,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 2212,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 2215,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 2216,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 2217,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 2218,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 2230,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2231,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat20 );
TEST_VMRL_OP( 2232,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 2234,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 2238,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat27 );
TEST_VMRL_OP( 2239,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat28 );
TEST_VMRL_OP( 2247,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 2258,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 2264,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat20 );
TEST_VMRL_OP( 2270,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 2271,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 2272,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 2281,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 2291,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 2295,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 2303,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat26 );
TEST_VMRL_OP( 2306,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat29 );
TEST_VMRL_OP( 2310,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 2313,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 2314,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 2323,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2327,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 2328,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 2332,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 2335,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 2342,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 2348,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 2354,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 2358,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 2361,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat18 );
TEST_VMRL_OP( 2366,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 2372,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat29 );
TEST_VMRL_OP( 2377,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 2379,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 2380,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 2381,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 2392,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 2395,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 2418,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 2425,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 2442,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 2453,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 2455,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 2473,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 2475,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 2478,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 2480,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 2486,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 2489,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 2500,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 2502,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 2506,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat31 );
TEST_VMRL_OP( 2519,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 2524,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 2534,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 2537,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 2539,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 2540,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 2552,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 2557,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 2559,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat18 );
TEST_VMRL_OP( 2562,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat21 );
TEST_VMRL_OP( 2564,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat23 );
TEST_VMRL_OP( 2570,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 2571,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 2572,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 2576,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 2585,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 2589,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 2591,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat17 );
TEST_VMRL_OP( 2593,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat19 );
TEST_VMRL_OP( 2596,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 2599,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 2600,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat26 );
TEST_VMRL_OP( 2604,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 2606,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 2613,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 2621,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 2625,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat18 );
TEST_VMRL_OP( 2626,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 2628,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat21 );
TEST_VMRL_OP( 2629,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat22 );
TEST_VMRL_OP( 2634,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 2641,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 2644,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 2645,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 2649,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 2650,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 2656,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 2657,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat17 );
TEST_VMRL_OP( 2666,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 2668,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 2671,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 2682,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 2683,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 2688,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 2697,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat24 );
TEST_VMRL_OP( 2700,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 2707,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 2710,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 2721,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 2729,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat23 );
TEST_VMRL_OP( 2730,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat24 );
TEST_VMRL_OP( 2737,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat31 );
TEST_VMRL_OP( 2739,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat0 );
TEST_VMRL_OP( 2750,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 2753,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 2760,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat21 );
TEST_VMRL_OP( 2764,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 2767,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat28 );
TEST_VMRL_OP( 2774,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat2 );
TEST_VMRL_OP( 2781,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat9 );
TEST_VMRL_OP( 2782,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 2789,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 2790,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 2792,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat20 );
TEST_VMRL_OP( 2794,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 2797,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 2798,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 2801,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 2803,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat31 );
TEST_VMRL_OP( 2812,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 2814,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 2815,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 2820,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 2831,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 2834,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat29 );
TEST_VMRL_OP( 2836,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 2837,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat32 );
TEST_VMRL_OP( 2838,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat0 );
TEST_VMRL_OP( 2847,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 2851,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat13 );
TEST_VMRL_OP( 2852,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 2856,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 2860,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat22 );
TEST_VMRL_OP( 2867,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 2872,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat1 );
TEST_VMRL_OP( 2873,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat2 );
TEST_VMRL_OP( 2874,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat3 );
TEST_VMRL_OP( 2881,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 2883,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat12 );
TEST_VMRL_OP( 2884,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 2885,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 2889,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 2892,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 2898,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 2902,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat31 );
TEST_VMRL_OP( 2906,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 2907,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat3 );
TEST_VMRL_OP( 2910,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 2917,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 2927,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat23 );
TEST_VMRL_OP( 2929,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat25 );
TEST_VMRL_OP( 2933,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 2935,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat31 );
TEST_VMRL_OP( 2943,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat6 );
TEST_VMRL_OP( 2946,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 2951,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat14 );
TEST_VMRL_OP( 2956,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 2957,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 2958,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat21 );
TEST_VMRL_OP( 2959,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 2963,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 2974,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 2981,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 2992,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 2994,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 2999,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat29 );
TEST_VMRL_OP( 3003,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 3008,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat5 );
TEST_VMRL_OP( 3011,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 3017,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 3023,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 3024,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 3028,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 3036,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat0 );
TEST_VMRL_OP( 3037,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat1 );
TEST_VMRL_OP( 3043,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 3049,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 3058,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 3059,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat23 );
TEST_VMRL_OP( 3062,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 3065,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat29 );
TEST_VMRL_OP( 3071,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 3085,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 3086,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat17 );
TEST_VMRL_OP( 3087,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 3091,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 3094,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat25 );
TEST_VMRL_OP( 3100,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 3105,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 3113,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat11 );
TEST_VMRL_OP( 3115,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 3116,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat14 );
TEST_VMRL_OP( 3122,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 3124,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 3125,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat23 );
TEST_VMRL_OP( 3129,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat27 );
TEST_VMRL_OP( 3134,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat32 );
TEST_VMRL_OP( 3139,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 3140,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat5 );
TEST_VMRL_OP( 3142,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 3147,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat12 );
TEST_VMRL_OP( 3149,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat14 );
TEST_VMRL_OP( 3150,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat15 );
TEST_VMRL_OP( 3158,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 3166,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 3170,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat2 );
TEST_VMRL_OP( 3172,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 3178,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 3182,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 3190,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat22 );
TEST_VMRL_OP( 3192,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 3196,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat28 );
TEST_VMRL_OP( 3199,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 3208,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat7 );
TEST_VMRL_OP( 3209,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat8 );
TEST_VMRL_OP( 3211,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat10 );
TEST_VMRL_OP( 3214,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat13 );
TEST_VMRL_OP( 3219,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 3220,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 3228,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 3234,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 3239,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 3244,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat10 );
TEST_VMRL_OP( 3246,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 3249,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 3257,  vmnand.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 3267,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 3268,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 3274,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 3293,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat26 );
TEST_VMRL_OP( 3295,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 3297,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 3305,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 3310,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 3318,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 3325,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat25 );
TEST_VMRL_OP( 3327,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3330,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 3332,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 3334,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 3335,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 3336,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 3342,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 3343,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 3352,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 3366,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 3368,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 3369,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 3371,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 3374,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 3381,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 3382,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 3383,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat17 );
TEST_VMRL_OP( 3384,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 3385,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat19 );
TEST_VMRL_OP( 3393,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 3398,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 3400,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 3409,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 3413,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 3414,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 3415,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 3416,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat17 );
TEST_VMRL_OP( 3423,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 3425,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 3431,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat32 );
TEST_VMRL_OP( 3440,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 3441,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 3444,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 3445,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 3446,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 3449,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat17 );
TEST_VMRL_OP( 3450,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat18 );
TEST_VMRL_OP( 3452,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 3453,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 3458,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat26 );
TEST_VMRL_OP( 3460,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 3465,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 3473,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 3475,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 3476,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 3483,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 3485,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat20 );
TEST_VMRL_OP( 3486,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 3489,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 3490,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 3491,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 3493,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 3497,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 3499,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 3502,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 3509,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 3510,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 3511,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 3514,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 3519,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat21 );
TEST_VMRL_OP( 3522,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 3525,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 3526,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 3528,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 3530,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat32 );
TEST_VMRL_OP( 3531,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 3540,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 3543,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 3549,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 3554,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 3561,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 3566,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 3573,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 3577,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 3580,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 3585,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 3586,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3587,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 3589,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 3591,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 3592,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat28 );
TEST_VMRL_OP( 3601,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 3604,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 3607,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 3608,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 3610,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 3611,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 3616,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 3619,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 3624,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 3633,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 3654,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 3657,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 3658,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 3659,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat29 );
TEST_VMRL_OP( 3661,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 3664,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 3671,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 3675,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 3677,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 3683,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat20 );
TEST_VMRL_OP( 3686,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 3688,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat25 );
TEST_VMRL_OP( 3691,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 3698,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 3706,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 3710,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 3711,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 3717,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat21 );
TEST_VMRL_OP( 3726,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 3727,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat31 );
TEST_VMRL_OP( 3731,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 3733,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 3735,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 3740,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 3742,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 3745,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 3750,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 3751,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 3765,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 3766,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 3767,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 3780,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat18 );
TEST_VMRL_OP( 3781,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 3790,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 3796,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 3800,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 3803,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 3806,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 3810,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 3824,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat29 );
TEST_VMRL_OP( 3827,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 3828,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 3831,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat3 );
TEST_VMRL_OP( 3832,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 3842,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat14 );
TEST_VMRL_OP( 3849,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat21 );
TEST_VMRL_OP( 3859,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 3865,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3869,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat8 );
TEST_VMRL_OP( 3876,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 3892,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat31 );
TEST_VMRL_OP( 3893,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 3895,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat1 );
TEST_VMRL_OP( 3898,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat4 );
TEST_VMRL_OP( 3899,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat5 );
TEST_VMRL_OP( 3902,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 3905,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat11 );
TEST_VMRL_OP( 3906,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 3907,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 3909,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat15 );
TEST_VMRL_OP( 3915,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 3916,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 3917,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 3921,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 3926,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat32 );
TEST_VMRL_OP( 3930,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat3 );
TEST_VMRL_OP( 3933,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 3937,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 3939,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 3943,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat16 );
TEST_VMRL_OP( 3949,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat22 );
TEST_VMRL_OP( 3951,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 3954,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat27 );
TEST_VMRL_OP( 3961,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 3963,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 3966,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat6 );
TEST_VMRL_OP( 3968,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat8 );
TEST_VMRL_OP( 3971,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 3977,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat17 );
TEST_VMRL_OP( 3980,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 3981,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 3982,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat22 );
TEST_VMRL_OP( 3983,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 3984,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat24 );
TEST_VMRL_OP( 3992,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat32 );
TEST_VMRL_OP( 3996,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 4001,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat8 );
TEST_VMRL_OP( 4003,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 4009,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat16 );
TEST_VMRL_OP( 4014,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat21 );
TEST_VMRL_OP( 4016,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 4018,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 4022,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 4030,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 4032,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 4035,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat9 );
TEST_VMRL_OP( 4038,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 4039,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 4045,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 4048,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 4057,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 4058,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 4059,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 4060,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 4061,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 4062,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 4064,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat5 );
TEST_VMRL_OP( 4071,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 4072,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 4073,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 4075,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 4092,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 4094,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 4095,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 4119,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 4124,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 4126,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat1 );
TEST_VMRL_OP( 4132,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat7 );
TEST_VMRL_OP( 4143,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 4144,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 4147,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 4150,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 4153,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 4156,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 4162,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 4165,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat7 );
TEST_VMRL_OP( 4167,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 4170,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat12 );
TEST_VMRL_OP( 4178,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat20 );
TEST_VMRL_OP( 4183,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat25 );
TEST_VMRL_OP( 4184,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat26 );
TEST_VMRL_OP( 4186,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat28 );
TEST_VMRL_OP( 4188,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 4192,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat1 );
TEST_VMRL_OP( 4198,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 4202,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 4203,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 4204,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 4205,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat14 );
TEST_VMRL_OP( 4207,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 4208,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat17 );
TEST_VMRL_OP( 4211,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 4213,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 4214,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 4222,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat31 );
TEST_VMRL_OP( 4229,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 4230,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat6 );
TEST_VMRL_OP( 4232,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 4234,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 4241,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 4243,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat19 );
TEST_VMRL_OP( 4244,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 4250,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 4252,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat28 );
TEST_VMRL_OP( 4254,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 4257,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 4259,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat2 );
TEST_VMRL_OP( 4265,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 4266,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 4268,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat11 );
TEST_VMRL_OP( 4274,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 4275,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat18 );
TEST_VMRL_OP( 4277,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 4278,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 4279,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat22 );
TEST_VMRL_OP( 4282,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 4285,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 4291,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat1 );
TEST_VMRL_OP( 4292,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 4297,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 4299,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat9 );
TEST_VMRL_OP( 4300,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat10 );
TEST_VMRL_OP( 4308,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 4322,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat32 );
TEST_VMRL_OP( 4327,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 4334,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat11 );
TEST_VMRL_OP( 4335,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat12 );
TEST_VMRL_OP( 4340,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 4345,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 4350,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 4352,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 4356,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmnand.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmnand.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 8823,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 8824,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8825,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8826,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8827,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8828,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8829,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8830,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8831,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8832,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8833,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8834,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8835,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8836,  vmnand.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
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
    

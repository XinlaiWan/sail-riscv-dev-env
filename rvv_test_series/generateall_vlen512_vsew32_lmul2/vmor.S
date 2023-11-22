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
TEST_VMRL_OP( 5,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 9,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 13,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 17,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat17 );
TEST_VMRL_OP( 19,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 20,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 33,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 41,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 42,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 45,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 46,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 48,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 69,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 84,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat18 );
TEST_VMRL_OP( 89,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat23 );
TEST_VMRL_OP( 94,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 95,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 104,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 111,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 112,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 120,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat21 );
TEST_VMRL_OP( 127,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat28 );
TEST_VMRL_OP( 128,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 130,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat31 );
TEST_VMRL_OP( 138,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 139,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 141,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 153,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 154,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 155,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 161,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat29 );
TEST_VMRL_OP( 167,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 170,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 176,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 177,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 192,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 198,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 201,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 206,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 213,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 216,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 223,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 224,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 225,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 226,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 230,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat32 );
TEST_VMRL_OP( 231,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 237,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 242,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 243,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 245,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 246,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 248,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat17 );
TEST_VMRL_OP( 250,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 252,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat21 );
TEST_VMRL_OP( 258,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 264,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 266,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 270,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 274,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 276,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 279,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 281,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 282,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat18 );
TEST_VMRL_OP( 294,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat30 );
TEST_VMRL_OP( 296,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 302,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 308,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 309,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 313,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 315,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 320,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 339,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 345,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 355,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 356,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 362,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 375,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 380,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat17 );
TEST_VMRL_OP( 390,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 391,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 392,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat29 );
TEST_VMRL_OP( 393,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 396,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 404,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 406,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 410,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 411,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 418,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat22 );
TEST_VMRL_OP( 420,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat24 );
TEST_VMRL_OP( 423,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 425,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 435,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 436,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 441,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 442,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 443,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 444,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 448,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat19 );
TEST_VMRL_OP( 456,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat27 );
TEST_VMRL_OP( 457,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat28 );
TEST_VMRL_OP( 459,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat30 );
TEST_VMRL_OP( 478,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 482,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat20 );
TEST_VMRL_OP( 483,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 486,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 487,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 488,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 489,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat27 );
TEST_VMRL_OP( 490,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 501,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 504,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 506,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 517,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 518,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 527,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat32 );
TEST_VMRL_OP( 529,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 530,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 533,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 535,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 548,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat20 );
TEST_VMRL_OP( 554,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 560,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 567,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 569,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat8 );
TEST_VMRL_OP( 574,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat13 );
TEST_VMRL_OP( 575,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat14 );
TEST_VMRL_OP( 587,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat26 );
TEST_VMRL_OP( 590,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 596,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 598,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 604,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 606,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 607,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat13 );
TEST_VMRL_OP( 608,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 609,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 615,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 617,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat23 );
TEST_VMRL_OP( 619,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat25 );
TEST_VMRL_OP( 631,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat4 );
TEST_VMRL_OP( 634,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 635,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat8 );
TEST_VMRL_OP( 638,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat11 );
TEST_VMRL_OP( 639,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat12 );
TEST_VMRL_OP( 648,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat21 );
TEST_VMRL_OP( 650,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 652,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat25 );
TEST_VMRL_OP( 653,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat26 );
TEST_VMRL_OP( 658,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 678,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 679,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat19 );
TEST_VMRL_OP( 681,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 690,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 692,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 695,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat2 );
TEST_VMRL_OP( 698,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 700,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat7 );
TEST_VMRL_OP( 707,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat14 );
TEST_VMRL_OP( 708,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 719,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 724,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 725,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat32 );
TEST_VMRL_OP( 726,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_ones_dat0 );
TEST_VMRL_OP( 729,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 731,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat5 );
TEST_VMRL_OP( 732,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 740,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 749,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 751,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 753,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 755,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 761,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 764,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 772,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 774,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 781,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 783,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 784,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 785,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 790,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat31 );
TEST_VMRL_OP( 804,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 812,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 816,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 817,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 819,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat27 );
TEST_VMRL_OP( 820,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 825,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 828,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 830,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 837,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat12 );
TEST_VMRL_OP( 841,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat16 );
TEST_VMRL_OP( 848,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat23 );
TEST_VMRL_OP( 852,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 855,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 859,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat1 );
TEST_VMRL_OP( 863,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 867,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat9 );
TEST_VMRL_OP( 868,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat10 );
TEST_VMRL_OP( 871,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 872,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 881,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 889,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 896,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat5 );
TEST_VMRL_OP( 900,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 922,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 927,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 935,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 952,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 953,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 954,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat30 );
TEST_VMRL_OP( 956,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 957,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 960,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 962,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 965,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 966,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 970,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 982,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat25 );
TEST_VMRL_OP( 986,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 987,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 990,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 994,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat4 );
TEST_VMRL_OP( 999,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 1006,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 1008,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat18 );
TEST_VMRL_OP( 1018,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 1020,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 1026,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 1028,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 1030,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 1031,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat8 );
TEST_VMRL_OP( 1032,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat9 );
TEST_VMRL_OP( 1034,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat11 );
TEST_VMRL_OP( 1036,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat13 );
TEST_VMRL_OP( 1039,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 1040,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat17 );
TEST_VMRL_OP( 1041,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat18 );
TEST_VMRL_OP( 1042,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat19 );
TEST_VMRL_OP( 1049,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 1058,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat2 );
TEST_VMRL_OP( 1060,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 1066,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 1070,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 1076,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 1082,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 1084,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat28 );
TEST_VMRL_OP( 1087,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 1094,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 1095,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 1097,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 1100,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 1104,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 1106,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat17 );
TEST_VMRL_OP( 1107,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 1119,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_zeros_dat30 );
TEST_VMRL_OP( 1122,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 1124,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 1130,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 1132,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 1138,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 1143,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 1149,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat27 );
TEST_VMRL_OP( 1150,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat28 );
TEST_VMRL_OP( 1155,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 1156,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 1165,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 1169,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 1170,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 1175,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat20 );
TEST_VMRL_OP( 1176,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 1179,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 1180,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat25 );
TEST_VMRL_OP( 1182,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 1183,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 1184,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 1194,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 1199,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 1204,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 1209,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 1212,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat24 );
TEST_VMRL_OP( 1214,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat26 );
TEST_VMRL_OP( 1221,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 1222,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 1229,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 1236,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 1243,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat22 );
TEST_VMRL_OP( 1247,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 1248,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat27 );
TEST_VMRL_OP( 1252,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 1253,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 1260,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 1261,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 1263,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 1264,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 1266,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 1267,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 1268,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 1269,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 1270,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 1275,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat21 );
TEST_VMRL_OP( 1276,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat22 );
TEST_VMRL_OP( 1279,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 1280,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat26 );
TEST_VMRL_OP( 1294,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 1300,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 1309,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 1311,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 1315,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat28 );
TEST_VMRL_OP( 1319,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_zeros_dat32 );
TEST_VMRL_OP( 1321,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 1322,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 1328,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 1335,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 1336,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 1345,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat25 );
TEST_VMRL_OP( 1348,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 1363,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 1364,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 1367,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 1369,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 1370,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 1371,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 1372,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat19 );
TEST_VMRL_OP( 1373,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat20 );
TEST_VMRL_OP( 1374,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 1377,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 1380,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat27 );
TEST_VMRL_OP( 1385,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 1388,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 1392,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 1396,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 1402,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 1403,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat17 );
TEST_VMRL_OP( 1408,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 1409,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 1413,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 1414,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat28 );
TEST_VMRL_OP( 1421,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 1422,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 1425,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 1430,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 1434,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 1438,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat19 );
TEST_VMRL_OP( 1443,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 1444,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat25 );
TEST_VMRL_OP( 1448,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 1461,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 1463,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1464,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 1472,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 1476,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat24 );
TEST_VMRL_OP( 1480,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat28 );
TEST_VMRL_OP( 1481,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1486,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 1492,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 1495,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 1507,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 1510,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 1517,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 1518,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 1521,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 1535,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 1539,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat21 );
TEST_VMRL_OP( 1544,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat26 );
TEST_VMRL_OP( 1545,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 1546,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 1547,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 1549,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 1551,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 1555,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 1565,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1566,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 1567,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 1570,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 1574,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat23 );
TEST_VMRL_OP( 1580,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat29 );
TEST_VMRL_OP( 1583,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat32 );
TEST_VMRL_OP( 1601,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 1604,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 1606,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 1607,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat23 );
TEST_VMRL_OP( 1611,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 1613,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 1615,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_zeros_dat31 );
TEST_VMRL_OP( 1617,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 1623,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 1629,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 1630,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 1634,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat17 );
TEST_VMRL_OP( 1639,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat22 );
TEST_VMRL_OP( 1652,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 1664,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 1667,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 1668,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 1670,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 1673,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat23 );
TEST_VMRL_OP( 1675,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 1687,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 1694,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat11 );
TEST_VMRL_OP( 1697,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat14 );
TEST_VMRL_OP( 1698,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 1701,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 1709,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 1710,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 1715,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat32 );
TEST_VMRL_OP( 1716,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat0 );
TEST_VMRL_OP( 1722,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 1723,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 1728,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 1730,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 1735,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 1737,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat21 );
TEST_VMRL_OP( 1741,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 1742,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat26 );
TEST_VMRL_OP( 1743,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 1746,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat30 );
TEST_VMRL_OP( 1754,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 1763,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 1765,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 1769,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 1778,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 1782,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat0 );
TEST_VMRL_OP( 1787,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat5 );
TEST_VMRL_OP( 1795,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 1797,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 1800,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 1801,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat19 );
TEST_VMRL_OP( 1804,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 1810,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 1813,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat31 );
TEST_VMRL_OP( 1814,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_zeros_dat32 );
TEST_VMRL_OP( 1815,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 1816,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 1818,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat3 );
TEST_VMRL_OP( 1819,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 1824,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 1830,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat15 );
TEST_VMRL_OP( 1833,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 1835,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat20 );
TEST_VMRL_OP( 1836,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 1837,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 1841,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 1842,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat27 );
TEST_VMRL_OP( 1844,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_zeros_dat29 );
TEST_VMRL_OP( 1848,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 1865,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 1866,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 1886,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 1894,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 1896,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat15 );
TEST_VMRL_OP( 1899,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat18 );
TEST_VMRL_OP( 1908,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_zeros_dat27 );
TEST_VMRL_OP( 1916,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat2 );
TEST_VMRL_OP( 1918,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 1922,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat8 );
TEST_VMRL_OP( 1923,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 1924,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 1932,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 1933,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 1934,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 1944,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat30 );
TEST_VMRL_OP( 1948,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat1 );
TEST_VMRL_OP( 1955,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat8 );
TEST_VMRL_OP( 1960,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 1964,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 1965,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat18 );
TEST_VMRL_OP( 1968,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 1969,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 1980,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat0 );
TEST_VMRL_OP( 1981,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 1992,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 1994,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 1995,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 2002,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 2007,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 2010,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_zeros_dat30 );
TEST_VMRL_OP( 2016,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 2017,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat4 );
TEST_VMRL_OP( 2020,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 2030,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 2031,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat18 );
TEST_VMRL_OP( 2035,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 2037,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 2041,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 2042,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 2043,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_zeros_dat30 );
TEST_VMRL_OP( 2048,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 2056,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 2059,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 2070,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 2071,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 2073,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 2077,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 2112,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat0 );
TEST_VMRL_OP( 2113,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 2118,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 2126,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat14 );
TEST_VMRL_OP( 2142,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat30 );
TEST_VMRL_OP( 2145,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 2147,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2153,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat8 );
TEST_VMRL_OP( 2154,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat9 );
TEST_VMRL_OP( 2157,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 2159,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat14 );
TEST_VMRL_OP( 2161,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 2164,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 2165,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 2168,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 2170,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 2172,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_zeros_dat27 );
TEST_VMRL_OP( 2182,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 2184,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 2193,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 2203,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat25 );
TEST_VMRL_OP( 2204,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 2205,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat27 );
TEST_VMRL_OP( 2207,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 2209,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 2213,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 2214,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 2219,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 2224,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 2228,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat17 );
TEST_VMRL_OP( 2234,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat23 );
TEST_VMRL_OP( 2246,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 2247,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 2248,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 2249,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 2253,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 2266,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 2267,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 2268,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 2273,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 2278,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 2279,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 2280,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 2287,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 2292,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 2299,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat22 );
TEST_VMRL_OP( 2301,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat24 );
TEST_VMRL_OP( 2305,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 2306,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat29 );
TEST_VMRL_OP( 2307,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat30 );
TEST_VMRL_OP( 2308,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 2313,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 2318,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 2321,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 2322,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 2323,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2330,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 2331,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat21 );
TEST_VMRL_OP( 2339,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat29 );
TEST_VMRL_OP( 2345,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 2347,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 2358,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 2367,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat24 );
TEST_VMRL_OP( 2370,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 2371,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 2372,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat29 );
TEST_VMRL_OP( 2380,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 2382,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 2387,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 2391,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 2392,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 2398,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 2399,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat23 );
TEST_VMRL_OP( 2402,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat26 );
TEST_VMRL_OP( 2403,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat27 );
TEST_VMRL_OP( 2405,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 2408,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat32 );
TEST_VMRL_OP( 2412,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 2414,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 2418,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 2422,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 2428,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 2429,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 2431,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat22 );
TEST_VMRL_OP( 2434,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat25 );
TEST_VMRL_OP( 2440,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 2444,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 2445,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 2453,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 2457,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 2458,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 2461,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat19 );
TEST_VMRL_OP( 2463,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 2466,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 2468,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat26 );
TEST_VMRL_OP( 2471,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 2474,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 2477,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 2479,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 2480,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 2484,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 2491,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 2495,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat20 );
TEST_VMRL_OP( 2496,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat21 );
TEST_VMRL_OP( 2498,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 2501,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 2505,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 2509,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 2523,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 2527,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat19 );
TEST_VMRL_OP( 2534,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat26 );
TEST_VMRL_OP( 2537,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 2550,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 2556,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 2557,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 2561,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 2571,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 2573,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 2575,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 2578,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 2582,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 2585,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 2586,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 2597,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 2604,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat30 );
TEST_VMRL_OP( 2605,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 2606,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 2607,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 2608,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 2613,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 2614,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 2617,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 2619,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 2621,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 2622,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 2635,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 2639,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat32 );
TEST_VMRL_OP( 2646,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 2648,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 2650,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 2671,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 2675,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 2676,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 2678,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 2680,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 2682,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 2690,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 2692,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 2693,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 2694,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2695,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 2706,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 2707,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 2708,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 2719,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 2721,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 2726,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 2733,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 2734,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 2736,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat30 );
TEST_VMRL_OP( 2748,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat9 );
TEST_VMRL_OP( 2752,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 2761,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 2763,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat24 );
TEST_VMRL_OP( 2766,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 2773,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat1 );
TEST_VMRL_OP( 2776,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat4 );
TEST_VMRL_OP( 2778,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat6 );
TEST_VMRL_OP( 2781,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat9 );
TEST_VMRL_OP( 2782,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 2784,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 2789,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 2799,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 2801,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 2804,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat32 );
TEST_VMRL_OP( 2808,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 2811,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 2813,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 2818,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 2827,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 2833,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat28 );
TEST_VMRL_OP( 2836,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat31 );
TEST_VMRL_OP( 2841,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat3 );
TEST_VMRL_OP( 2842,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat4 );
TEST_VMRL_OP( 2847,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 2851,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat13 );
TEST_VMRL_OP( 2857,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat19 );
TEST_VMRL_OP( 2863,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat25 );
TEST_VMRL_OP( 2864,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 2872,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat1 );
TEST_VMRL_OP( 2875,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat4 );
TEST_VMRL_OP( 2880,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 2885,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat14 );
TEST_VMRL_OP( 2892,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 2893,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 2895,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 2898,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 2909,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat5 );
TEST_VMRL_OP( 2910,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat6 );
TEST_VMRL_OP( 2915,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat11 );
TEST_VMRL_OP( 2918,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat14 );
TEST_VMRL_OP( 2924,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat20 );
TEST_VMRL_OP( 2925,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat21 );
TEST_VMRL_OP( 2934,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat30 );
TEST_VMRL_OP( 2938,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 2942,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat5 );
TEST_VMRL_OP( 2954,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 2961,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 2968,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat31 );
TEST_VMRL_OP( 2971,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat1 );
TEST_VMRL_OP( 2972,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat2 );
TEST_VMRL_OP( 2990,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat20 );
TEST_VMRL_OP( 2993,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 2996,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat26 );
TEST_VMRL_OP( 2998,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat28 );
TEST_VMRL_OP( 3000,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 3003,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 3005,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat2 );
TEST_VMRL_OP( 3021,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 3023,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 3026,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 3027,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 3034,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 3035,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 3039,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 3041,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 3042,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 3051,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat15 );
TEST_VMRL_OP( 3056,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 3058,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 3062,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 3063,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 3068,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat32 );
TEST_VMRL_OP( 3069,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat0 );
TEST_VMRL_OP( 3070,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 3073,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 3081,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 3086,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat17 );
TEST_VMRL_OP( 3087,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 3101,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 3117,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat15 );
TEST_VMRL_OP( 3119,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 3120,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat18 );
TEST_VMRL_OP( 3126,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat24 );
TEST_VMRL_OP( 3127,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 3133,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 3138,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 3139,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 3140,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat5 );
TEST_VMRL_OP( 3145,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 3148,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 3152,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 3154,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 3157,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 3161,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat26 );
TEST_VMRL_OP( 3164,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 3165,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 3166,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 3172,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 3174,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat6 );
TEST_VMRL_OP( 3178,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 3181,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 3184,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 3185,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 3187,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 3193,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 3197,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 3199,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 3206,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat5 );
TEST_VMRL_OP( 3207,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 3225,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 3226,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 3228,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 3232,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 3233,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 3245,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 3246,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 3247,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3250,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 3251,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 3253,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 3262,  vmor.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 3268,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 3273,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 3276,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 3277,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 3283,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 3285,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat18 );
TEST_VMRL_OP( 3291,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 3296,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 3300,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 3302,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 3303,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 3304,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 3305,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 3312,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 3315,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 3318,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 3319,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat19 );
TEST_VMRL_OP( 3322,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 3324,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat24 );
TEST_VMRL_OP( 3329,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 3331,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 3333,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 3340,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 3344,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 3351,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat18 );
TEST_VMRL_OP( 3352,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 3353,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat20 );
TEST_VMRL_OP( 3354,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 3361,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 3362,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 3363,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_ones_dat30 );
TEST_VMRL_OP( 3369,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 3392,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat26 );
TEST_VMRL_OP( 3393,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 3399,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 3406,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 3413,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 3414,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 3417,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 3418,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 3419,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat20 );
TEST_VMRL_OP( 3424,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 3425,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat26 );
TEST_VMRL_OP( 3430,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat31 );
TEST_VMRL_OP( 3433,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 3449,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat17 );
TEST_VMRL_OP( 3457,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat25 );
TEST_VMRL_OP( 3458,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat26 );
TEST_VMRL_OP( 3459,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 3460,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 3463,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 3469,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 3470,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 3475,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 3484,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat19 );
TEST_VMRL_OP( 3486,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 3492,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 3493,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 3494,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat29 );
TEST_VMRL_OP( 3495,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat30 );
TEST_VMRL_OP( 3498,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 3506,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 3507,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 3529,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 3534,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 3537,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 3542,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 3543,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 3546,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 3547,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 3550,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 3557,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat26 );
TEST_VMRL_OP( 3558,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat27 );
TEST_VMRL_OP( 3563,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3569,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 3576,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 3577,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 3579,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 3582,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 3587,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 3589,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 3600,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 3602,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 3607,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 3617,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 3619,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 3620,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 3625,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_ones_dat28 );
TEST_VMRL_OP( 3630,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 3637,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 3639,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3644,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 3646,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 3648,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 3649,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 3652,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 3653,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat23 );
TEST_VMRL_OP( 3654,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat24 );
TEST_VMRL_OP( 3656,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 3657,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 3658,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 3665,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 3671,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 3686,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 3694,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 3697,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 3700,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 3705,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 3706,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 3710,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 3711,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 3716,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_ones_dat20 );
TEST_VMRL_OP( 3737,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 3740,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 3743,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 3745,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 3754,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 3765,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 3766,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 3770,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 3775,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 3778,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 3779,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 3782,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 3783,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat21 );
TEST_VMRL_OP( 3785,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 3797,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 3803,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 3805,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 3806,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 3809,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 3813,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 3823,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 3826,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat31 );
TEST_VMRL_OP( 3827,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 3831,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat3 );
TEST_VMRL_OP( 3836,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat8 );
TEST_VMRL_OP( 3840,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3842,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat14 );
TEST_VMRL_OP( 3847,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 3849,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat21 );
TEST_VMRL_OP( 3851,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 3857,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 3862,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 3863,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat2 );
TEST_VMRL_OP( 3864,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 3872,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat11 );
TEST_VMRL_OP( 3873,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat12 );
TEST_VMRL_OP( 3879,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 3882,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 3885,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3887,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 3891,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_ones_dat30 );
TEST_VMRL_OP( 3895,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat1 );
TEST_VMRL_OP( 3907,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 3909,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat15 );
TEST_VMRL_OP( 3917,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 3925,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 3927,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 3930,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat3 );
TEST_VMRL_OP( 3931,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat4 );
TEST_VMRL_OP( 3933,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 3942,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat15 );
TEST_VMRL_OP( 3950,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat23 );
TEST_VMRL_OP( 3956,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 3963,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 3965,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat5 );
TEST_VMRL_OP( 3973,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat13 );
TEST_VMRL_OP( 3984,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat24 );
TEST_VMRL_OP( 3986,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 3988,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_ones_dat28 );
TEST_VMRL_OP( 3993,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat0 );
TEST_VMRL_OP( 3996,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 4005,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 4007,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat14 );
TEST_VMRL_OP( 4015,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4017,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat24 );
TEST_VMRL_OP( 4023,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 4038,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 4039,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 4049,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4051,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 4053,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat27 );
TEST_VMRL_OP( 4054,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat28 );
TEST_VMRL_OP( 4058,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_ones_dat32 );
TEST_VMRL_OP( 4061,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 4062,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 4063,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat4 );
TEST_VMRL_OP( 4065,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 4071,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 4074,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat15 );
TEST_VMRL_OP( 4079,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 4082,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat23 );
TEST_VMRL_OP( 4086,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat27 );
TEST_VMRL_OP( 4090,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_ones_dat31 );
TEST_VMRL_OP( 4093,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 4097,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat5 );
TEST_VMRL_OP( 4109,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 4114,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat22 );
TEST_VMRL_OP( 4121,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 4122,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 4131,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat6 );
TEST_VMRL_OP( 4136,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 4138,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 4140,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 4144,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 4152,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 4158,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat0 );
TEST_VMRL_OP( 4162,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 4164,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 4165,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat7 );
TEST_VMRL_OP( 4171,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 4174,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 4175,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat17 );
TEST_VMRL_OP( 4177,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 4180,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 4181,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat23 );
TEST_VMRL_OP( 4183,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_ones_dat25 );
TEST_VMRL_OP( 4185,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4191,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 4195,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 4199,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 4201,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 4205,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat14 );
TEST_VMRL_OP( 4209,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 4211,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 4214,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 4216,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat25 );
TEST_VMRL_OP( 4219,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4224,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 4226,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat2 );
TEST_VMRL_OP( 4230,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat6 );
TEST_VMRL_OP( 4235,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 4237,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 4247,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 4248,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 4251,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat27 );
TEST_VMRL_OP( 4253,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4254,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 4260,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 4267,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 4268,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat11 );
TEST_VMRL_OP( 4271,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat14 );
TEST_VMRL_OP( 4272,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 4276,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat19 );
TEST_VMRL_OP( 4281,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 4282,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 4286,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 4292,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat2 );
TEST_VMRL_OP( 4297,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 4298,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat8 );
TEST_VMRL_OP( 4302,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat12 );
TEST_VMRL_OP( 4303,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat13 );
TEST_VMRL_OP( 4305,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat15 );
TEST_VMRL_OP( 4310,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 4315,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat25 );
TEST_VMRL_OP( 4317,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 4321,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4322,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_ones_dat32 );
TEST_VMRL_OP( 4335,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat12 );
TEST_VMRL_OP( 4342,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat19 );
TEST_VMRL_OP( 4343,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 4350,  vmor.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 4356,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmor.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 8823,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 8824,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8825,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8826,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8827,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8828,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8829,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8830,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8831,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8832,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8833,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8834,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8835,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8836,  vmor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
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
    

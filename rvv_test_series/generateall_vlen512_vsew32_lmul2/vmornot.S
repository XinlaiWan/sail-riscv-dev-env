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
TEST_VMRL_OP( 11,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 20,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 27,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat27 );
TEST_VMRL_OP( 28,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat28 );
TEST_VMRL_OP( 29,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat29 );
TEST_VMRL_OP( 34,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 40,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 41,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 44,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 46,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 56,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 58,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat25 );
TEST_VMRL_OP( 62,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 69,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 76,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 81,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 88,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 89,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat23 );
TEST_VMRL_OP( 93,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 97,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat31 );
TEST_VMRL_OP( 102,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 103,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 112,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 115,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 123,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 124,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 132,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 137,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 138,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 143,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 149,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat17 );
TEST_VMRL_OP( 150,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 153,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat21 );
TEST_VMRL_OP( 154,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 163,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_ones_dat31 );
TEST_VMRL_OP( 166,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 169,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 170,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 173,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 177,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 180,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 186,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 188,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 192,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 198,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 199,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 216,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 219,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat21 );
TEST_VMRL_OP( 220,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat22 );
TEST_VMRL_OP( 223,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 228,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_ones_dat30 );
TEST_VMRL_OP( 231,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 234,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 238,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 240,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 249,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 251,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 253,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat22 );
TEST_VMRL_OP( 256,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat25 );
TEST_VMRL_OP( 259,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat28 );
TEST_VMRL_OP( 262,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 264,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 272,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 276,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 280,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 300,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 304,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 306,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 319,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 322,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat25 );
TEST_VMRL_OP( 326,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat29 );
TEST_VMRL_OP( 328,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 340,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 346,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 349,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 357,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 358,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_ones_dat28 );
TEST_VMRL_OP( 374,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 375,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 377,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 383,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 392,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_ones_dat29 );
TEST_VMRL_OP( 396,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 404,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 405,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 411,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 415,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 417,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 418,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat22 );
TEST_VMRL_OP( 423,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 435,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 442,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 443,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 445,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 447,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 453,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_ones_dat24 );
TEST_VMRL_OP( 466,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 467,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 468,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 469,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 470,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 471,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 480,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat18 );
TEST_VMRL_OP( 483,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 497,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 504,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 510,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 512,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_ones_dat17 );
TEST_VMRL_OP( 520,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_ones_dat25 );
TEST_VMRL_OP( 523,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 524,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_ones_dat29 );
TEST_VMRL_OP( 534,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 542,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 543,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 546,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 549,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_ones_dat21 );
TEST_VMRL_OP( 559,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_ones_dat31 );
TEST_VMRL_OP( 563,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 570,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_ones_dat9 );
TEST_VMRL_OP( 573,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 575,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_ones_dat14 );
TEST_VMRL_OP( 576,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 593,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_ones_dat32 );
TEST_VMRL_OP( 595,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 599,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_ones_dat5 );
TEST_VMRL_OP( 604,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 609,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 620,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 634,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_ones_dat7 );
TEST_VMRL_OP( 646,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 653,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_ones_dat26 );
TEST_VMRL_OP( 656,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_ones_dat29 );
TEST_VMRL_OP( 659,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_ones_dat32 );
TEST_VMRL_OP( 661,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 668,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 670,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 688,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_ones_dat28 );
TEST_VMRL_OP( 690,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 691,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_ones_dat31 );
TEST_VMRL_OP( 695,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_ones_dat2 );
TEST_VMRL_OP( 697,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_ones_dat4 );
TEST_VMRL_OP( 703,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_ones_dat10 );
TEST_VMRL_OP( 704,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 708,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 723,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 729,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 736,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 746,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_ones_dat20 );
TEST_VMRL_OP( 750,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_ones_dat24 );
TEST_VMRL_OP( 753,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 760,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat1 );
TEST_VMRL_OP( 761,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 763,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 764,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat5 );
TEST_VMRL_OP( 765,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 766,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 778,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 781,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 783,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 784,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat25 );
TEST_VMRL_OP( 789,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat30 );
TEST_VMRL_OP( 792,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat0 );
TEST_VMRL_OP( 793,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 795,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 798,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 805,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat13 );
TEST_VMRL_OP( 806,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat14 );
TEST_VMRL_OP( 810,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 811,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat19 );
TEST_VMRL_OP( 814,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 820,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat28 );
TEST_VMRL_OP( 821,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_ones_dat29 );
TEST_VMRL_OP( 826,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 827,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 828,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 833,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat8 );
TEST_VMRL_OP( 851,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 852,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 855,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 856,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat31 );
TEST_VMRL_OP( 863,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 868,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat10 );
TEST_VMRL_OP( 872,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 873,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 874,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat16 );
TEST_VMRL_OP( 876,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 882,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 886,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 888,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat30 );
TEST_VMRL_OP( 903,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_ones_dat12 );
TEST_VMRL_OP( 907,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 909,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 910,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 913,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 915,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_ones_dat24 );
TEST_VMRL_OP( 923,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_ones_dat32 );
TEST_VMRL_OP( 924,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 925,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat1 );
TEST_VMRL_OP( 926,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 927,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 931,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 934,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat10 );
TEST_VMRL_OP( 936,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 938,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat14 );
TEST_VMRL_OP( 940,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 945,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 956,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 962,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 966,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 968,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_ones_dat11 );
TEST_VMRL_OP( 972,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 975,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_ones_dat18 );
TEST_VMRL_OP( 983,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 991,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat1 );
TEST_VMRL_OP( 1000,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 1003,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat13 );
TEST_VMRL_OP( 1006,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 1007,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 1013,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 1015,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 1016,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat26 );
TEST_VMRL_OP( 1019,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 1020,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 1028,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 1030,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 1040,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_ones_dat17 );
TEST_VMRL_OP( 1043,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 1047,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 1048,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_ones_dat25 );
TEST_VMRL_OP( 1049,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 1056,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_ones_dat0 );
TEST_VMRL_OP( 1070,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 1073,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 1074,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 1076,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 1078,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 1080,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 1088,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 1090,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 1092,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 1102,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 1103,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 1105,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 1115,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 1117,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat28 );
TEST_VMRL_OP( 1120,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 1122,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 1123,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1124,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 1126,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 1129,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 1131,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 1136,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 1138,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 1143,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 1157,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1161,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 1169,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 1170,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 1176,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 1183,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 1185,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 1187,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat32 );
TEST_VMRL_OP( 1188,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 1189,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 1190,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 1193,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 1196,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 1207,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 1209,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 1218,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat30 );
TEST_VMRL_OP( 1219,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 1223,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 1239,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 1242,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat21 );
TEST_VMRL_OP( 1246,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 1252,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 1254,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 1255,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 1256,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 1259,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1260,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 1264,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 1268,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 1269,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 1272,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat18 );
TEST_VMRL_OP( 1273,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 1282,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 1286,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat32 );
TEST_VMRL_OP( 1288,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 1289,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 1290,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 1300,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 1301,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 1308,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 1319,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_zeros_dat32 );
TEST_VMRL_OP( 1320,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 1324,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 1328,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 1333,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 1336,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 1339,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 1344,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat24 );
TEST_VMRL_OP( 1352,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 1353,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 1357,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 1363,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 1364,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 1365,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 1369,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 1371,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat18 );
TEST_VMRL_OP( 1374,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat21 );
TEST_VMRL_OP( 1382,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 1385,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 1386,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 1388,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 1389,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 1391,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 1396,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 1399,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 1402,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 1404,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat18 );
TEST_VMRL_OP( 1408,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 1409,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 1414,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat28 );
TEST_VMRL_OP( 1416,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 1420,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 1423,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 1430,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 1431,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 1441,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat22 );
TEST_VMRL_OP( 1448,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 1449,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat10, walking_zeros_dat30 );
TEST_VMRL_OP( 1461,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 1463,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1464,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 1466,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 1475,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat23 );
TEST_VMRL_OP( 1477,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat25 );
TEST_VMRL_OP( 1481,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1482,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat30 );
TEST_VMRL_OP( 1484,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 1488,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 1489,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 1492,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 1495,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 1500,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 1506,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_zeros_dat21 );
TEST_VMRL_OP( 1519,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 1523,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 1525,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 1526,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 1534,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 1542,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 1544,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat26 );
TEST_VMRL_OP( 1548,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 1549,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 1552,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 1561,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 1565,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1567,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 1569,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat18 );
TEST_VMRL_OP( 1572,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat21 );
TEST_VMRL_OP( 1582,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_zeros_dat31 );
TEST_VMRL_OP( 1586,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 1587,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 1609,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 1614,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_zeros_dat30 );
TEST_VMRL_OP( 1616,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 1617,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 1618,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 1620,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 1621,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 1625,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 1628,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 1636,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 1638,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 1639,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat22 );
TEST_VMRL_OP( 1644,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 1645,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 1647,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat30 );
TEST_VMRL_OP( 1649,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_zeros_dat32 );
TEST_VMRL_OP( 1654,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 1660,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat10 );
TEST_VMRL_OP( 1668,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat18 );
TEST_VMRL_OP( 1669,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat19 );
TEST_VMRL_OP( 1670,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 1671,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat21 );
TEST_VMRL_OP( 1681,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 1683,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 1688,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 1694,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat11 );
TEST_VMRL_OP( 1696,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat13 );
TEST_VMRL_OP( 1700,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 1702,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat19 );
TEST_VMRL_OP( 1707,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat24 );
TEST_VMRL_OP( 1709,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 1711,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat28 );
TEST_VMRL_OP( 1712,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat29 );
TEST_VMRL_OP( 1713,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat30 );
TEST_VMRL_OP( 1714,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat31 );
TEST_VMRL_OP( 1715,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat32 );
TEST_VMRL_OP( 1723,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 1724,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat8 );
TEST_VMRL_OP( 1726,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat10 );
TEST_VMRL_OP( 1729,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 1732,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 1735,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 1750,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 1767,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 1768,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_zeros_dat19 );
TEST_VMRL_OP( 1788,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 1792,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat10 );
TEST_VMRL_OP( 1802,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat20 );
TEST_VMRL_OP( 1808,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat26 );
TEST_VMRL_OP( 1810,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 1822,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat7 );
TEST_VMRL_OP( 1824,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat9 );
TEST_VMRL_OP( 1832,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat17 );
TEST_VMRL_OP( 1840,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat25 );
TEST_VMRL_OP( 1847,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 1850,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 1852,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat4 );
TEST_VMRL_OP( 1854,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat6 );
TEST_VMRL_OP( 1855,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 1863,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 1865,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 1866,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 1873,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 1879,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat23, walking_zeros_dat31 );
TEST_VMRL_OP( 1888,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat7 );
TEST_VMRL_OP( 1889,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 1890,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat9 );
TEST_VMRL_OP( 1897,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 1901,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat20 );
TEST_VMRL_OP( 1906,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat25 );
TEST_VMRL_OP( 1907,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat26 );
TEST_VMRL_OP( 1912,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat31 );
TEST_VMRL_OP( 1913,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat24, walking_zeros_dat32 );
TEST_VMRL_OP( 1915,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 1917,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 1919,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat5 );
TEST_VMRL_OP( 1921,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 1926,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat12 );
TEST_VMRL_OP( 1927,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 1929,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1932,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 1935,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 1936,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat22 );
TEST_VMRL_OP( 1945,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 1951,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat4 );
TEST_VMRL_OP( 1953,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 1957,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat10 );
TEST_VMRL_OP( 1958,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 1959,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat12 );
TEST_VMRL_OP( 1960,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 1961,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 1976,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat26, walking_zeros_dat29 );
TEST_VMRL_OP( 1990,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat10 );
TEST_VMRL_OP( 1995,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat15 );
TEST_VMRL_OP( 2001,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 2002,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 2006,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat26 );
TEST_VMRL_OP( 2008,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat28 );
TEST_VMRL_OP( 2012,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 2020,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 2023,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat10 );
TEST_VMRL_OP( 2028,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat15 );
TEST_VMRL_OP( 2029,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 2042,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 2044,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 2046,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 2053,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 2055,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat9 );
TEST_VMRL_OP( 2058,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat12 );
TEST_VMRL_OP( 2061,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat15 );
TEST_VMRL_OP( 2062,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 2065,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 2067,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 2070,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 2076,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat30 );
TEST_VMRL_OP( 2077,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 2081,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat2 );
TEST_VMRL_OP( 2082,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat3 );
TEST_VMRL_OP( 2084,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat5 );
TEST_VMRL_OP( 2085,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat6 );
TEST_VMRL_OP( 2089,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat10 );
TEST_VMRL_OP( 2090,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 2093,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 2100,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat21 );
TEST_VMRL_OP( 2103,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 2105,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat26 );
TEST_VMRL_OP( 2106,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat27 );
TEST_VMRL_OP( 2109,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 2111,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 2113,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 2115,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat3 );
TEST_VMRL_OP( 2120,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat8 );
TEST_VMRL_OP( 2127,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2135,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat23 );
TEST_VMRL_OP( 2136,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat24 );
TEST_VMRL_OP( 2140,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat31, walking_zeros_dat28 );
TEST_VMRL_OP( 2143,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 2147,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 2148,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat3 );
TEST_VMRL_OP( 2150,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 2155,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat10 );
TEST_VMRL_OP( 2156,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat11 );
TEST_VMRL_OP( 2158,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 2160,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 2164,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 2166,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 2169,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 2170,  vmornot.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 2189,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 2192,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 2215,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 2223,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 2224,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 2226,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 2227,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 2237,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat26 );
TEST_VMRL_OP( 2243,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat32 );
TEST_VMRL_OP( 2245,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 2246,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 2250,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 2256,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 2261,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat17 );
TEST_VMRL_OP( 2267,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 2271,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 2273,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat29 );
TEST_VMRL_OP( 2291,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 2297,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 2300,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 2303,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat26 );
TEST_VMRL_OP( 2304,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 2309,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat32 );
TEST_VMRL_OP( 2310,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 2311,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 2312,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 2317,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 2323,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2327,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 2329,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat19 );
TEST_VMRL_OP( 2330,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 2335,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat25 );
TEST_VMRL_OP( 2346,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 2347,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 2349,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 2360,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 2361,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat18 );
TEST_VMRL_OP( 2362,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 2364,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat21 );
TEST_VMRL_OP( 2370,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat27 );
TEST_VMRL_OP( 2374,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 2385,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 2387,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 2388,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 2390,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 2392,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 2398,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 2399,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat23 );
TEST_VMRL_OP( 2407,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat31 );
TEST_VMRL_OP( 2410,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 2416,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 2425,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 2428,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 2429,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 2438,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 2449,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 2456,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 2469,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat27 );
TEST_VMRL_OP( 2470,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 2477,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 2479,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 2480,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 2481,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 2486,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 2489,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 2497,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 2498,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 2501,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 2502,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat27 );
TEST_VMRL_OP( 2505,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 2507,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 2511,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 2513,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 2517,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 2520,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 2530,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat22 );
TEST_VMRL_OP( 2540,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 2544,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 2545,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 2547,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 2550,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 2552,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 2553,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 2561,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 2562,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat21 );
TEST_VMRL_OP( 2569,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat28 );
TEST_VMRL_OP( 2570,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 2573,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 2574,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 2576,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 2579,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 2581,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 2583,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 2588,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 2590,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 2602,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat28 );
TEST_VMRL_OP( 2605,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 2606,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 2611,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 2613,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 2617,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 2618,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 2620,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 2624,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 2638,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 2648,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 2650,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 2652,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 2653,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 2658,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat18 );
TEST_VMRL_OP( 2664,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 2675,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 2679,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 2680,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 2684,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 2687,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 2690,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 2692,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 2702,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat29 );
TEST_VMRL_OP( 2703,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat30 );
TEST_VMRL_OP( 2705,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 2709,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 2711,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 2719,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 2721,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 2722,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 2726,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 2727,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat21 );
TEST_VMRL_OP( 2733,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat27 );
TEST_VMRL_OP( 2739,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat0 );
TEST_VMRL_OP( 2759,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 2761,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat22 );
TEST_VMRL_OP( 2768,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 2779,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 2780,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 2784,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 2792,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat20 );
TEST_VMRL_OP( 2795,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat23 );
TEST_VMRL_OP( 2796,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat24 );
TEST_VMRL_OP( 2799,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat27 );
TEST_VMRL_OP( 2800,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat28 );
TEST_VMRL_OP( 2804,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat32 );
TEST_VMRL_OP( 2806,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 2810,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat5 );
TEST_VMRL_OP( 2812,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 2814,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat9 );
TEST_VMRL_OP( 2819,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 2820,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 2827,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 2829,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat24 );
TEST_VMRL_OP( 2830,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat25 );
TEST_VMRL_OP( 2832,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 2840,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat2 );
TEST_VMRL_OP( 2846,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 2850,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 2851,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat13 );
TEST_VMRL_OP( 2852,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat14 );
TEST_VMRL_OP( 2856,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 2860,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat22 );
TEST_VMRL_OP( 2861,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat23 );
TEST_VMRL_OP( 2865,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat27 );
TEST_VMRL_OP( 2867,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 2872,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat1 );
TEST_VMRL_OP( 2873,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat2 );
TEST_VMRL_OP( 2877,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 2879,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 2880,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 2886,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 2889,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat18 );
TEST_VMRL_OP( 2892,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 2893,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 2894,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat23 );
TEST_VMRL_OP( 2899,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 2900,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat29 );
TEST_VMRL_OP( 2918,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat14 );
TEST_VMRL_OP( 2936,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat32 );
TEST_VMRL_OP( 2938,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat1 );
TEST_VMRL_OP( 2939,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 2950,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 2951,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat14 );
TEST_VMRL_OP( 2953,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 2954,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 2956,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat19 );
TEST_VMRL_OP( 2957,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 2959,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 2962,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat25 );
TEST_VMRL_OP( 2973,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat3 );
TEST_VMRL_OP( 2975,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 2976,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat6 );
TEST_VMRL_OP( 2979,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat9 );
TEST_VMRL_OP( 2981,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat11 );
TEST_VMRL_OP( 2986,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 2993,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 2996,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat26 );
TEST_VMRL_OP( 2997,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat27 );
TEST_VMRL_OP( 3002,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat32 );
TEST_VMRL_OP( 3003,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 3006,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 3009,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat6 );
TEST_VMRL_OP( 3010,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat7 );
TEST_VMRL_OP( 3013,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 3015,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat12 );
TEST_VMRL_OP( 3020,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat17 );
TEST_VMRL_OP( 3021,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat18 );
TEST_VMRL_OP( 3022,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 3024,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 3031,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat28 );
TEST_VMRL_OP( 3032,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat29 );
TEST_VMRL_OP( 3034,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat31 );
TEST_VMRL_OP( 3041,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 3043,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 3047,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 3056,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 3057,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 3058,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 3063,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat27 );
TEST_VMRL_OP( 3071,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 3073,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 3074,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 3075,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 3078,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat9 );
TEST_VMRL_OP( 3079,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat10 );
TEST_VMRL_OP( 3080,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 3088,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 3089,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat20 );
TEST_VMRL_OP( 3101,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat32 );
TEST_VMRL_OP( 3105,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 3108,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 3110,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 3112,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat10 );
TEST_VMRL_OP( 3118,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat16 );
TEST_VMRL_OP( 3119,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat17 );
TEST_VMRL_OP( 3123,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat21 );
TEST_VMRL_OP( 3124,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 3127,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat25 );
TEST_VMRL_OP( 3132,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat30 );
TEST_VMRL_OP( 3139,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 3160,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 3161,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat26 );
TEST_VMRL_OP( 3170,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat2 );
TEST_VMRL_OP( 3171,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat3 );
TEST_VMRL_OP( 3173,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat5 );
TEST_VMRL_OP( 3177,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 3179,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat11 );
TEST_VMRL_OP( 3185,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 3192,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 3194,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat26 );
TEST_VMRL_OP( 3206,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat5 );
TEST_VMRL_OP( 3207,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 3219,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 3222,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 3229,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat28 );
TEST_VMRL_OP( 3230,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 3236,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat2 );
TEST_VMRL_OP( 3239,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 3240,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 3242,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat8 );
TEST_VMRL_OP( 3246,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 3255,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 3257,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 3258,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 3259,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat25 );
TEST_VMRL_OP( 3262,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 3267,  vmornot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 3268,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 3283,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 3287,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 3290,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 3298,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat31 );
TEST_VMRL_OP( 3305,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 3308,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 3309,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 3320,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat20 );
TEST_VMRL_OP( 3322,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat22 );
TEST_VMRL_OP( 3327,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3328,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 3335,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 3339,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 3351,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat18 );
TEST_VMRL_OP( 3354,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat21 );
TEST_VMRL_OP( 3355,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat22 );
TEST_VMRL_OP( 3357,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 3360,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 3364,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat31 );
TEST_VMRL_OP( 3366,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 3371,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 3373,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 3374,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 3381,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 3387,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat21 );
TEST_VMRL_OP( 3392,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat26 );
TEST_VMRL_OP( 3397,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat31 );
TEST_VMRL_OP( 3400,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 3404,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 3412,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 3423,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 3424,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat25 );
TEST_VMRL_OP( 3427,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat28 );
TEST_VMRL_OP( 3434,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 3436,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 3442,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 3447,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 3448,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 3453,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 3455,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 3459,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat27 );
TEST_VMRL_OP( 3462,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat30 );
TEST_VMRL_OP( 3468,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 3471,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 3472,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 3473,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 3476,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 3489,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 3492,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat27 );
TEST_VMRL_OP( 3499,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 3500,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 3502,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 3505,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 3506,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 3507,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 3509,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 3510,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 3511,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 3513,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 3521,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat23 );
TEST_VMRL_OP( 3522,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 3525,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 3529,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 3533,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 3538,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 3546,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 3554,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 3563,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3566,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 3569,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 3572,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 3577,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 3582,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 3586,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3588,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat24 );
TEST_VMRL_OP( 3608,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 3609,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 3615,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat18 );
TEST_VMRL_OP( 3617,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 3618,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat21 );
TEST_VMRL_OP( 3620,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat23 );
TEST_VMRL_OP( 3623,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 3624,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat27 );
TEST_VMRL_OP( 3627,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat30 );
TEST_VMRL_OP( 3629,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 3631,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 3638,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 3639,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3641,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 3642,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 3643,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 3648,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat18 );
TEST_VMRL_OP( 3650,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 3658,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 3662,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 3664,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 3667,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 3668,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 3670,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 3678,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 3692,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 3694,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 3701,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 3709,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 3713,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat17 );
TEST_VMRL_OP( 3718,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat22 );
TEST_VMRL_OP( 3728,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat32 );
TEST_VMRL_OP( 3729,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 3734,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 3739,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 3741,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 3744,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 3749,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat20 );
TEST_VMRL_OP( 3753,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 3754,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 3755,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 3757,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat28 );
TEST_VMRL_OP( 3761,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat32 );
TEST_VMRL_OP( 3765,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 3769,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 3774,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 3775,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 3784,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 3786,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat24 );
TEST_VMRL_OP( 3793,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat31 );
TEST_VMRL_OP( 3801,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 3804,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 3806,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 3810,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 3811,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 3816,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat21 );
TEST_VMRL_OP( 3819,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat24 );
TEST_VMRL_OP( 3820,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat25 );
TEST_VMRL_OP( 3834,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 3838,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat10 );
TEST_VMRL_OP( 3844,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat16 );
TEST_VMRL_OP( 3853,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 3859,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat31 );
TEST_VMRL_OP( 3860,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat32 );
TEST_VMRL_OP( 3861,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat0 );
TEST_VMRL_OP( 3864,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 3875,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 3881,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat20 );
TEST_VMRL_OP( 3883,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat22 );
TEST_VMRL_OP( 3887,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat26 );
TEST_VMRL_OP( 3888,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 3895,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat1 );
TEST_VMRL_OP( 3908,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 3910,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat16 );
TEST_VMRL_OP( 3916,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat22 );
TEST_VMRL_OP( 3927,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 3939,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 3944,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat17 );
TEST_VMRL_OP( 3945,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 3948,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat21 );
TEST_VMRL_OP( 3951,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 3953,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat26 );
TEST_VMRL_OP( 3957,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 3961,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat1 );
TEST_VMRL_OP( 3963,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 3967,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat7 );
TEST_VMRL_OP( 3968,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat8 );
TEST_VMRL_OP( 3969,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat9 );
TEST_VMRL_OP( 3971,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat11 );
TEST_VMRL_OP( 3979,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat19 );
TEST_VMRL_OP( 3980,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 3986,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 3993,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat0 );
TEST_VMRL_OP( 4003,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 4005,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat12 );
TEST_VMRL_OP( 4008,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 4010,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 4016,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 4019,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat26 );
TEST_VMRL_OP( 4020,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 4027,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat1 );
TEST_VMRL_OP( 4028,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat2 );
TEST_VMRL_OP( 4032,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 4033,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 4036,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat10 );
TEST_VMRL_OP( 4038,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat12 );
TEST_VMRL_OP( 4042,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat16 );
TEST_VMRL_OP( 4048,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 4050,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 4052,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 4055,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 4060,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 4066,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat7 );
TEST_VMRL_OP( 4067,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 4076,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 4077,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 4084,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 4089,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat30 );
TEST_VMRL_OP( 4094,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat2 );
TEST_VMRL_OP( 4098,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat6 );
TEST_VMRL_OP( 4100,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat8 );
TEST_VMRL_OP( 4101,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 4103,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat11 );
TEST_VMRL_OP( 4107,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat15 );
TEST_VMRL_OP( 4109,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 4114,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat22 );
TEST_VMRL_OP( 4118,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 4119,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 4124,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 4126,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat1 );
TEST_VMRL_OP( 4127,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 4129,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat4 );
TEST_VMRL_OP( 4132,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat7 );
TEST_VMRL_OP( 4133,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat8 );
TEST_VMRL_OP( 4139,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat14 );
TEST_VMRL_OP( 4140,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 4143,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 4153,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 4160,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 4161,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat3 );
TEST_VMRL_OP( 4177,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 4187,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat29 );
TEST_VMRL_OP( 4189,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat31 );
TEST_VMRL_OP( 4194,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 4196,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 4198,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat7 );
TEST_VMRL_OP( 4203,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat12 );
TEST_VMRL_OP( 4205,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat14 );
TEST_VMRL_OP( 4211,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 4218,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat27 );
TEST_VMRL_OP( 4219,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4223,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 4228,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat4 );
TEST_VMRL_OP( 4232,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 4243,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat19 );
TEST_VMRL_OP( 4247,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 4248,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat24 );
TEST_VMRL_OP( 4250,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 4251,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat27 );
TEST_VMRL_OP( 4254,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 4255,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat31 );
TEST_VMRL_OP( 4256,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 4261,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat4 );
TEST_VMRL_OP( 4265,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat8 );
TEST_VMRL_OP( 4272,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 4277,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat20 );
TEST_VMRL_OP( 4280,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat23 );
TEST_VMRL_OP( 4286,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat29 );
TEST_VMRL_OP( 4293,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat3 );
TEST_VMRL_OP( 4295,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 4297,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 4307,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat17 );
TEST_VMRL_OP( 4313,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat23 );
TEST_VMRL_OP( 4314,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 4316,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 4327,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 4328,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 4329,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat6 );
TEST_VMRL_OP( 4331,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat8 );
TEST_VMRL_OP( 4332,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 4341,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 4343,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 4356,  vmornot.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmornot.mm,  32,  0x000000000000001f, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmornot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 8823,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 8824,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8825,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8826,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8827,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8828,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8829,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8830,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8831,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8832,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8833,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8834,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8835,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8836,  vmornot.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat1 );
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
    

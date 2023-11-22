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
TEST_VMRL_OP( 0,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 2,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 5,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 13,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 20,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_ones_dat20 );
TEST_VMRL_OP( 32,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_ones_dat32 );
TEST_VMRL_OP( 43,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 46,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 56,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_ones_dat23 );
TEST_VMRL_OP( 62,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 65,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_ones_dat32 );
TEST_VMRL_OP( 66,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 72,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 86,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_ones_dat20 );
TEST_VMRL_OP( 91,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 97,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_ones_dat31 );
TEST_VMRL_OP( 99,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 103,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 105,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 106,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 113,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 119,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_ones_dat20 );
TEST_VMRL_OP( 122,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_ones_dat23 );
TEST_VMRL_OP( 128,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_ones_dat29 );
TEST_VMRL_OP( 137,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 139,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 140,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 142,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 144,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 147,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 150,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 163,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_ones_dat31 );
TEST_VMRL_OP( 166,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 174,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 179,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 188,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 189,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_ones_dat24 );
TEST_VMRL_OP( 191,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_ones_dat26 );
TEST_VMRL_OP( 208,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 210,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 222,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 227,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_ones_dat29 );
TEST_VMRL_OP( 232,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 233,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 238,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 239,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 242,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 246,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 249,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat18 );
TEST_VMRL_OP( 250,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 251,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 255,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 263,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_ones_dat32 );
TEST_VMRL_OP( 264,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 268,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 280,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 283,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_ones_dat19 );
TEST_VMRL_OP( 285,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 289,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_ones_dat25 );
TEST_VMRL_OP( 293,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_ones_dat29 );
TEST_VMRL_OP( 295,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_ones_dat31 );
TEST_VMRL_OP( 297,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 309,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 314,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_ones_dat17 );
TEST_VMRL_OP( 316,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_ones_dat19 );
TEST_VMRL_OP( 327,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_ones_dat30 );
TEST_VMRL_OP( 328,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_ones_dat31 );
TEST_VMRL_OP( 332,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 339,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 340,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 343,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 344,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 346,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 355,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat25 );
TEST_VMRL_OP( 356,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 358,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_ones_dat28 );
TEST_VMRL_OP( 382,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 383,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_ones_dat20 );
TEST_VMRL_OP( 389,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 390,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_ones_dat27 );
TEST_VMRL_OP( 391,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_ones_dat28 );
TEST_VMRL_OP( 393,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_ones_dat30 );
TEST_VMRL_OP( 394,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 398,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 401,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 410,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 415,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_ones_dat19 );
TEST_VMRL_OP( 420,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_ones_dat24 );
TEST_VMRL_OP( 436,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 438,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 441,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 444,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 445,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 449,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat20 );
TEST_VMRL_OP( 452,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat23 );
TEST_VMRL_OP( 453,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat24 );
TEST_VMRL_OP( 455,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat26 );
TEST_VMRL_OP( 456,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_ones_dat27 );
TEST_VMRL_OP( 466,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 468,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 469,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 471,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 473,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 484,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat22 );
TEST_VMRL_OP( 487,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 491,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 507,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 508,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 522,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 523,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 530,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 537,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 539,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 540,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 542,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 561,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 562,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat1 );
TEST_VMRL_OP( 566,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat5 );
TEST_VMRL_OP( 568,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat7 );
TEST_VMRL_OP( 572,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat11 );
TEST_VMRL_OP( 577,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat16 );
TEST_VMRL_OP( 578,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 580,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 582,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat21 );
TEST_VMRL_OP( 586,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat25 );
TEST_VMRL_OP( 590,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat29 );
TEST_VMRL_OP( 591,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 594,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_ones_dat0 );
TEST_VMRL_OP( 597,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_ones_dat3 );
TEST_VMRL_OP( 609,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 613,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 629,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat2 );
TEST_VMRL_OP( 630,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 640,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat13 );
TEST_VMRL_OP( 641,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 645,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat18 );
TEST_VMRL_OP( 647,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 650,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat23 );
TEST_VMRL_OP( 658,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 665,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat5 );
TEST_VMRL_OP( 666,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 668,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 669,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat9 );
TEST_VMRL_OP( 670,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat10 );
TEST_VMRL_OP( 675,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat15 );
TEST_VMRL_OP( 678,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 689,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 690,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat30 );
TEST_VMRL_OP( 692,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_ones_dat32 );
TEST_VMRL_OP( 695,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_ones_dat2 );
TEST_VMRL_OP( 696,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 701,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_ones_dat8 );
TEST_VMRL_OP( 702,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_ones_dat9 );
TEST_VMRL_OP( 713,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_ones_dat20 );
TEST_VMRL_OP( 721,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_ones_dat28 );
TEST_VMRL_OP( 723,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 733,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_ones_dat7 );
TEST_VMRL_OP( 736,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 737,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 743,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 744,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 746,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_ones_dat20 );
TEST_VMRL_OP( 748,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 759,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat23, walking_ones_dat0 );
TEST_VMRL_OP( 762,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat3 );
TEST_VMRL_OP( 767,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat8 );
TEST_VMRL_OP( 770,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat11 );
TEST_VMRL_OP( 773,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat14 );
TEST_VMRL_OP( 774,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat15 );
TEST_VMRL_OP( 778,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat19 );
TEST_VMRL_OP( 781,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 782,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 783,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 793,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 797,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat5 );
TEST_VMRL_OP( 798,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat6 );
TEST_VMRL_OP( 799,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat7 );
TEST_VMRL_OP( 802,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat10 );
TEST_VMRL_OP( 803,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat11 );
TEST_VMRL_OP( 807,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat15 );
TEST_VMRL_OP( 812,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat20 );
TEST_VMRL_OP( 817,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 824,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 825,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_ones_dat0 );
TEST_VMRL_OP( 826,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 832,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_ones_dat7 );
TEST_VMRL_OP( 833,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_ones_dat8 );
TEST_VMRL_OP( 834,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 841,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_ones_dat16 );
TEST_VMRL_OP( 843,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_ones_dat18 );
TEST_VMRL_OP( 851,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 858,  vmxnor.mm,  32,  0x000000000000001f, walking_ones_dat26, walking_ones_dat0 );
TEST_VMRL_OP( 860,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 862,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_ones_dat4 );
TEST_VMRL_OP( 863,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_ones_dat5 );
TEST_VMRL_OP( 876,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_ones_dat18 );
TEST_VMRL_OP( 880,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 884,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 889,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 892,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat1 );
TEST_VMRL_OP( 893,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 895,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat4 );
TEST_VMRL_OP( 899,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat8 );
TEST_VMRL_OP( 905,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 910,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat19 );
TEST_VMRL_OP( 912,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat21 );
TEST_VMRL_OP( 913,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat22 );
TEST_VMRL_OP( 919,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_ones_dat28 );
TEST_VMRL_OP( 926,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 928,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 932,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 937,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat13 );
TEST_VMRL_OP( 939,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat15 );
TEST_VMRL_OP( 940,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 942,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 946,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 951,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat27 );
TEST_VMRL_OP( 954,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_ones_dat30 );
TEST_VMRL_OP( 958,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 966,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 970,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 972,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_ones_dat15 );
TEST_VMRL_OP( 974,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 980,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_ones_dat23 );
TEST_VMRL_OP( 986,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 987,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_ones_dat30 );
TEST_VMRL_OP( 991,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_ones_dat1 );
TEST_VMRL_OP( 993,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 1008,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_ones_dat18 );
TEST_VMRL_OP( 1009,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_ones_dat19 );
TEST_VMRL_OP( 1011,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 1024,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat1 );
TEST_VMRL_OP( 1029,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat6 );
TEST_VMRL_OP( 1030,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 1034,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat11 );
TEST_VMRL_OP( 1036,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat13 );
TEST_VMRL_OP( 1040,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat17 );
TEST_VMRL_OP( 1046,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat23 );
TEST_VMRL_OP( 1047,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 1066,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 1075,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_ones_dat19 );
TEST_VMRL_OP( 1078,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 1082,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 1085,  vmxnor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 1088,  vmxnor.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_ones_dat32 );
TEST_VMRL_OP( 1093,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 1094,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 1105,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 1107,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 1111,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 1112,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat23 );
TEST_VMRL_OP( 1115,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat26 );
TEST_VMRL_OP( 1118,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_zeros_dat29 );
TEST_VMRL_OP( 1123,  vmxnor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1130,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 1131,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 1136,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 1143,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat21 );
TEST_VMRL_OP( 1144,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat22 );
TEST_VMRL_OP( 1150,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_zeros_dat28 );
TEST_VMRL_OP( 1155,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmxnor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1161,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 1162,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 1178,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 1181,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat26 );
TEST_VMRL_OP( 1186,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_zeros_dat31 );
TEST_VMRL_OP( 1191,  vmxnor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1197,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 1200,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 1203,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 1208,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 1209,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 1211,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 1213,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat25 );
TEST_VMRL_OP( 1215,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 1217,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_zeros_dat29 );
TEST_VMRL_OP( 1222,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 1223,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 1224,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 1227,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 1231,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 1232,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 1234,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 1236,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 1239,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat18 );
TEST_VMRL_OP( 1241,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 1244,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat23 );
TEST_VMRL_OP( 1251,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat30 );
TEST_VMRL_OP( 1252,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 1253,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_zeros_dat32 );
TEST_VMRL_OP( 1254,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 1256,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 1257,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 1260,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 1264,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 1267,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 1268,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 1271,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat17 );
TEST_VMRL_OP( 1277,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 1282,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 1285,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_zeros_dat31 );
TEST_VMRL_OP( 1296,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 1297,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 1299,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 1300,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 1311,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 1314,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat27 );
TEST_VMRL_OP( 1316,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_zeros_dat29 );
TEST_VMRL_OP( 1320,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 1323,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 1326,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 1327,  vmxnor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1330,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 1331,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 1336,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 1340,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 1352,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_zeros_dat32 );
TEST_VMRL_OP( 1357,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 1364,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 1365,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 1368,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 1377,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 1384,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat31 );
TEST_VMRL_OP( 1385,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 1399,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 1415,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat29 );
TEST_VMRL_OP( 1416,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 1430,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 1431,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 1435,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 1440,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat21 );
TEST_VMRL_OP( 1446,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat27 );
TEST_VMRL_OP( 1450,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 1453,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 1458,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 1463,  vmxnor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1483,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_zeros_dat31 );
TEST_VMRL_OP( 1487,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 1508,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat23 );
TEST_VMRL_OP( 1516,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 1519,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 1526,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 1527,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 1529,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 1542,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 1544,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat26 );
TEST_VMRL_OP( 1548,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat30 );
TEST_VMRL_OP( 1549,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_zeros_dat31 );
TEST_VMRL_OP( 1557,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 1570,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat19 );
TEST_VMRL_OP( 1573,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat22 );
TEST_VMRL_OP( 1575,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 1579,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 1587,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 1601,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 1604,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 1607,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat23 );
TEST_VMRL_OP( 1609,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 1614,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat30 );
TEST_VMRL_OP( 1616,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 1630,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 1636,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat19 );
TEST_VMRL_OP( 1637,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat20 );
TEST_VMRL_OP( 1640,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat23 );
TEST_VMRL_OP( 1641,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_zeros_dat24 );
TEST_VMRL_OP( 1651,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 1653,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat3 );
TEST_VMRL_OP( 1655,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat5 );
TEST_VMRL_OP( 1665,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 1666,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat16 );
TEST_VMRL_OP( 1678,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat28 );
TEST_VMRL_OP( 1679,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 1683,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 1688,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 1689,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat6 );
TEST_VMRL_OP( 1698,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat15 );
TEST_VMRL_OP( 1704,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 1709,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 1717,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 1718,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 1719,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 1728,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat12 );
TEST_VMRL_OP( 1736,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat20 );
TEST_VMRL_OP( 1738,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_zeros_dat22 );
TEST_VMRL_OP( 1757,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 1759,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 1765,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 1766,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 1780,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_zeros_dat31 );
TEST_VMRL_OP( 1790,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat8 );
TEST_VMRL_OP( 1797,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 1802,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat20 );
TEST_VMRL_OP( 1804,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat22 );
TEST_VMRL_OP( 1809,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 1812,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_zeros_dat30 );
TEST_VMRL_OP( 1819,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 1825,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 1834,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 1851,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat3 );
TEST_VMRL_OP( 1858,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat10 );
TEST_VMRL_OP( 1860,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat12 );
TEST_VMRL_OP( 1866,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 1869,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat21 );
TEST_VMRL_OP( 1870,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 1890,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat9 );
TEST_VMRL_OP( 1894,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 1898,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat17 );
TEST_VMRL_OP( 1901,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat20 );
TEST_VMRL_OP( 1906,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat25 );
TEST_VMRL_OP( 1909,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_zeros_dat28 );
TEST_VMRL_OP( 1927,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 1929,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1931,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat17 );
TEST_VMRL_OP( 1935,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat21 );
TEST_VMRL_OP( 1937,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat23 );
TEST_VMRL_OP( 1938,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 1939,  vmxnor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 1942,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat28 );
TEST_VMRL_OP( 1946,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 1950,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat3 );
TEST_VMRL_OP( 1951,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat4 );
TEST_VMRL_OP( 1954,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 1967,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 1968,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 1969,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 1976,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat29 );
TEST_VMRL_OP( 1977,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 1978,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 1980,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat27, walking_zeros_dat0 );
TEST_VMRL_OP( 1984,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 1986,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat6 );
TEST_VMRL_OP( 1990,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat10 );
TEST_VMRL_OP( 1991,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 1992,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 1993,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 1999,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat19 );
TEST_VMRL_OP( 2001,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 2002,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 2011,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 2046,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 2047,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat1 );
TEST_VMRL_OP( 2053,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat7 );
TEST_VMRL_OP( 2056,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat10 );
TEST_VMRL_OP( 2057,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat11 );
TEST_VMRL_OP( 2062,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 2064,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 2079,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 2080,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 2092,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 2095,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat16 );
TEST_VMRL_OP( 2097,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 2105,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat26 );
TEST_VMRL_OP( 2107,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_zeros_dat28 );
TEST_VMRL_OP( 2118,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat6 );
TEST_VMRL_OP( 2119,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat7 );
TEST_VMRL_OP( 2121,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 2127,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 2128,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 2130,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat18 );
TEST_VMRL_OP( 2131,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 2133,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat21 );
TEST_VMRL_OP( 2137,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 2139,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 2144,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_zeros_dat32 );
TEST_VMRL_OP( 2145,  vmxnor.mm,  32,  0x000000000000001f, walking_zeros_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 2150,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat5 );
TEST_VMRL_OP( 2166,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 2174,  vmxnor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_zeros_dat29 );
TEST_VMRL_OP( 2179,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 2180,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 2190,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 2200,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat22 );
TEST_VMRL_OP( 2210,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat32 );
TEST_VMRL_OP( 2215,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 2218,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 2231,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat20 );
TEST_VMRL_OP( 2237,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat26 );
TEST_VMRL_OP( 2246,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 2248,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 2262,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat18 );
TEST_VMRL_OP( 2271,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat27 );
TEST_VMRL_OP( 2272,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 2276,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat32 );
TEST_VMRL_OP( 2278,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 2280,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 2294,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat17 );
TEST_VMRL_OP( 2297,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat20 );
TEST_VMRL_OP( 2304,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 2305,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 2307,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat30 );
TEST_VMRL_OP( 2314,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 2315,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 2322,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 2323,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2325,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 2326,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 2334,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat24 );
TEST_VMRL_OP( 2343,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 2347,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 2350,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 2352,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 2359,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 2369,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat26 );
TEST_VMRL_OP( 2373,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat30 );
TEST_VMRL_OP( 2379,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 2381,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 2382,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 2396,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat20 );
TEST_VMRL_OP( 2400,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 2403,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat27 );
TEST_VMRL_OP( 2411,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 2418,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 2427,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 2428,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 2434,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat25 );
TEST_VMRL_OP( 2435,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat26 );
TEST_VMRL_OP( 2438,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat29 );
TEST_VMRL_OP( 2457,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 2458,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 2459,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 2462,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat20 );
TEST_VMRL_OP( 2467,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat25 );
TEST_VMRL_OP( 2469,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat27 );
TEST_VMRL_OP( 2471,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 2475,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 2479,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 2480,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 2483,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 2485,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 2501,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat26 );
TEST_VMRL_OP( 2506,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat31 );
TEST_VMRL_OP( 2512,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 2523,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 2524,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 2525,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat17 );
TEST_VMRL_OP( 2532,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 2539,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat31 );
TEST_VMRL_OP( 2562,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat21 );
TEST_VMRL_OP( 2577,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 2587,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 2594,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat20 );
TEST_VMRL_OP( 2595,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat21 );
TEST_VMRL_OP( 2605,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat31 );
TEST_VMRL_OP( 2606,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat32 );
TEST_VMRL_OP( 2608,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 2610,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 2619,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 2626,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat19 );
TEST_VMRL_OP( 2631,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat24 );
TEST_VMRL_OP( 2642,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 2645,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 2646,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 2654,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 2657,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat17 );
TEST_VMRL_OP( 2663,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat23 );
TEST_VMRL_OP( 2669,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat29 );
TEST_VMRL_OP( 2673,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 2674,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 2677,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 2679,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 2681,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 2686,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 2693,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat20 );
TEST_VMRL_OP( 2695,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat22 );
TEST_VMRL_OP( 2703,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat30 );
TEST_VMRL_OP( 2715,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 2717,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 2718,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 2721,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 2722,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 2724,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat18 );
TEST_VMRL_OP( 2734,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 2735,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 2740,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat1 );
TEST_VMRL_OP( 2743,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 2746,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat7 );
TEST_VMRL_OP( 2747,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat8 );
TEST_VMRL_OP( 2749,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat10 );
TEST_VMRL_OP( 2753,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 2764,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat25 );
TEST_VMRL_OP( 2765,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat26 );
TEST_VMRL_OP( 2766,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat27 );
TEST_VMRL_OP( 2770,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_zeros_dat31 );
TEST_VMRL_OP( 2772,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 2779,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 2780,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat8 );
TEST_VMRL_OP( 2782,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat10 );
TEST_VMRL_OP( 2784,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat12 );
TEST_VMRL_OP( 2790,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 2793,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat21 );
TEST_VMRL_OP( 2794,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat22 );
TEST_VMRL_OP( 2797,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 2798,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_zeros_dat26 );
TEST_VMRL_OP( 2806,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat1 );
TEST_VMRL_OP( 2808,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 2820,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat15 );
TEST_VMRL_OP( 2821,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_zeros_dat16 );
TEST_VMRL_OP( 2842,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat4 );
TEST_VMRL_OP( 2844,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat6 );
TEST_VMRL_OP( 2848,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 2853,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat15 );
TEST_VMRL_OP( 2864,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat26 );
TEST_VMRL_OP( 2867,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat29 );
TEST_VMRL_OP( 2868,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_zeros_dat30 );
TEST_VMRL_OP( 2874,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat3 );
TEST_VMRL_OP( 2877,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 2880,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 2884,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 2888,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 2894,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat23 );
TEST_VMRL_OP( 2898,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat27 );
TEST_VMRL_OP( 2901,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat30 );
TEST_VMRL_OP( 2903,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_zeros_dat32 );
TEST_VMRL_OP( 2904,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat22, walking_zeros_dat0 );
TEST_VMRL_OP( 2905,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat1 );
TEST_VMRL_OP( 2907,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat3 );
TEST_VMRL_OP( 2908,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat4 );
TEST_VMRL_OP( 2914,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 2926,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 2932,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_zeros_dat28 );
TEST_VMRL_OP( 2941,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat4 );
TEST_VMRL_OP( 2946,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat9 );
TEST_VMRL_OP( 2953,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat16 );
TEST_VMRL_OP( 2955,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 2959,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_zeros_dat22 );
TEST_VMRL_OP( 2970,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat24, walking_zeros_dat0 );
TEST_VMRL_OP( 2973,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat3 );
TEST_VMRL_OP( 2975,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 2978,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 2991,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat21 );
TEST_VMRL_OP( 2998,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat28 );
TEST_VMRL_OP( 3000,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 3003,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 3013,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 3015,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat12 );
TEST_VMRL_OP( 3016,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat13 );
TEST_VMRL_OP( 3017,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat14 );
TEST_VMRL_OP( 3018,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 3022,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat19 );
TEST_VMRL_OP( 3030,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_zeros_dat27 );
TEST_VMRL_OP( 3042,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 3045,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat9 );
TEST_VMRL_OP( 3049,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat13 );
TEST_VMRL_OP( 3050,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat14 );
TEST_VMRL_OP( 3055,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat19 );
TEST_VMRL_OP( 3056,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 3058,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat22 );
TEST_VMRL_OP( 3064,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 3067,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 3071,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 3073,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat4 );
TEST_VMRL_OP( 3074,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat5 );
TEST_VMRL_OP( 3080,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 3082,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 3083,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 3085,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat16 );
TEST_VMRL_OP( 3087,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat18 );
TEST_VMRL_OP( 3100,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_zeros_dat31 );
TEST_VMRL_OP( 3105,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat3 );
TEST_VMRL_OP( 3107,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 3108,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 3109,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat7 );
TEST_VMRL_OP( 3112,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat10 );
TEST_VMRL_OP( 3115,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 3121,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat19 );
TEST_VMRL_OP( 3122,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 3124,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat22 );
TEST_VMRL_OP( 3131,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat29 );
TEST_VMRL_OP( 3133,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_zeros_dat31 );
TEST_VMRL_OP( 3135,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat29, walking_zeros_dat0 );
TEST_VMRL_OP( 3140,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat5 );
TEST_VMRL_OP( 3148,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat13 );
TEST_VMRL_OP( 3151,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat16 );
TEST_VMRL_OP( 3152,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 3154,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat19 );
TEST_VMRL_OP( 3155,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat20 );
TEST_VMRL_OP( 3157,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 3158,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 3159,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 3160,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat25 );
TEST_VMRL_OP( 3161,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat26 );
TEST_VMRL_OP( 3162,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 3166,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_zeros_dat31 );
TEST_VMRL_OP( 3170,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat2 );
TEST_VMRL_OP( 3171,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat3 );
TEST_VMRL_OP( 3173,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat5 );
TEST_VMRL_OP( 3175,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat7 );
TEST_VMRL_OP( 3176,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat8 );
TEST_VMRL_OP( 3177,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 3180,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat12 );
TEST_VMRL_OP( 3182,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat14 );
TEST_VMRL_OP( 3183,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 3185,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat17 );
TEST_VMRL_OP( 3186,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 3192,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat24 );
TEST_VMRL_OP( 3197,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 3199,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 3202,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat1 );
TEST_VMRL_OP( 3210,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat9 );
TEST_VMRL_OP( 3216,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 3220,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 3226,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat25 );
TEST_VMRL_OP( 3230,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 3232,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 3234,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat32, walking_zeros_dat0 );
TEST_VMRL_OP( 3247,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3249,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 3250,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat16 );
TEST_VMRL_OP( 3251,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 3256,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat22 );
TEST_VMRL_OP( 3257,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat23 );
TEST_VMRL_OP( 3258,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 3260,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_zeros_dat26 );
TEST_VMRL_OP( 3266,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 3269,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3271,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 3277,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 3283,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 3286,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 3305,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 3308,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 3310,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 3312,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 3324,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat24 );
TEST_VMRL_OP( 3328,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat28 );
TEST_VMRL_OP( 3330,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 3331,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 3333,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 3347,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 3348,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 3352,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat19 );
TEST_VMRL_OP( 3353,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat20 );
TEST_VMRL_OP( 3357,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat24 );
TEST_VMRL_OP( 3358,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat25 );
TEST_VMRL_OP( 3361,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 3367,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 3371,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 3378,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 3388,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 3389,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat23 );
TEST_VMRL_OP( 3390,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat24 );
TEST_VMRL_OP( 3391,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 3393,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 3398,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 3412,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 3413,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 3414,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 3417,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat18 );
TEST_VMRL_OP( 3421,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 3429,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat30 );
TEST_VMRL_OP( 3435,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 3442,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 3446,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 3453,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 3454,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat22 );
TEST_VMRL_OP( 3455,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 3460,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat28 );
TEST_VMRL_OP( 3465,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 3468,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 3478,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 3480,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 3481,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 3484,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat19 );
TEST_VMRL_OP( 3490,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 3491,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat26 );
TEST_VMRL_OP( 3507,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 3508,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 3509,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 3518,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 3522,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 3525,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 3532,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 3536,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 3547,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 3553,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat22 );
TEST_VMRL_OP( 3555,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat24 );
TEST_VMRL_OP( 3563,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3568,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 3571,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 3575,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 3579,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 3582,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 3583,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat19 );
TEST_VMRL_OP( 3587,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat23 );
TEST_VMRL_OP( 3588,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat24 );
TEST_VMRL_OP( 3591,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat27 );
TEST_VMRL_OP( 3592,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat28 );
TEST_VMRL_OP( 3604,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 3609,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 3612,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 3618,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat21 );
TEST_VMRL_OP( 3619,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 3621,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat24 );
TEST_VMRL_OP( 3623,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 3631,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 3637,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 3639,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3641,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 3643,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 3656,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 3663,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 3670,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 3673,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 3679,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 3686,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat23 );
TEST_VMRL_OP( 3689,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat26 );
TEST_VMRL_OP( 3690,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 3691,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat28 );
TEST_VMRL_OP( 3692,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 3694,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat31 );
TEST_VMRL_OP( 3697,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 3698,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 3702,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 3703,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 3704,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 3707,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 3710,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 3722,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat26 );
TEST_VMRL_OP( 3730,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 3737,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 3739,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 3742,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 3745,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 3752,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat23 );
TEST_VMRL_OP( 3758,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 3760,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat31 );
TEST_VMRL_OP( 3769,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 3772,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 3774,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 3776,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 3778,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 3784,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat22 );
TEST_VMRL_OP( 3788,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat26 );
TEST_VMRL_OP( 3789,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 3792,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat30 );
TEST_VMRL_OP( 3802,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 3805,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 3807,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 3810,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 3811,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 3828,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_ones_dat0 );
TEST_VMRL_OP( 3830,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat2 );
TEST_VMRL_OP( 3834,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 3839,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat11 );
TEST_VMRL_OP( 3840,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3851,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat23 );
TEST_VMRL_OP( 3858,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_ones_dat30 );
TEST_VMRL_OP( 3862,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat1 );
TEST_VMRL_OP( 3865,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat4 );
TEST_VMRL_OP( 3876,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat15 );
TEST_VMRL_OP( 3879,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 3885,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3888,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 3890,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_ones_dat29 );
TEST_VMRL_OP( 3894,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat19, walking_ones_dat0 );
TEST_VMRL_OP( 3904,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat10 );
TEST_VMRL_OP( 3908,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 3909,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat15 );
TEST_VMRL_OP( 3910,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat16 );
TEST_VMRL_OP( 3921,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 3925,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 3928,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat1 );
TEST_VMRL_OP( 3933,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 3947,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 3949,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat22 );
TEST_VMRL_OP( 3952,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_ones_dat25 );
TEST_VMRL_OP( 3970,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat10 );
TEST_VMRL_OP( 3975,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat15 );
TEST_VMRL_OP( 3976,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat16 );
TEST_VMRL_OP( 3981,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 3986,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat26 );
TEST_VMRL_OP( 3990,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 3991,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 3995,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat2 );
TEST_VMRL_OP( 3996,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 4001,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat8 );
TEST_VMRL_OP( 4002,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat9 );
TEST_VMRL_OP( 4003,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat10 );
TEST_VMRL_OP( 4004,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat11 );
TEST_VMRL_OP( 4009,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat16 );
TEST_VMRL_OP( 4011,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 4012,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat19 );
TEST_VMRL_OP( 4015,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4020,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat27 );
TEST_VMRL_OP( 4021,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 4023,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_ones_dat30 );
TEST_VMRL_OP( 4033,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat7 );
TEST_VMRL_OP( 4046,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_ones_dat20 );
TEST_VMRL_OP( 4060,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat1 );
TEST_VMRL_OP( 4062,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 4067,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 4071,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat12 );
TEST_VMRL_OP( 4075,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat16 );
TEST_VMRL_OP( 4078,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat19 );
TEST_VMRL_OP( 4081,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat22 );
TEST_VMRL_OP( 4086,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat27 );
TEST_VMRL_OP( 4088,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat29 );
TEST_VMRL_OP( 4091,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_ones_dat32 );
TEST_VMRL_OP( 4095,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat3 );
TEST_VMRL_OP( 4102,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 4105,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat13 );
TEST_VMRL_OP( 4109,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat17 );
TEST_VMRL_OP( 4113,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat21 );
TEST_VMRL_OP( 4117,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4121,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 4127,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat2 );
TEST_VMRL_OP( 4129,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat4 );
TEST_VMRL_OP( 4144,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat19 );
TEST_VMRL_OP( 4148,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 4152,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 4156,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 4160,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 4164,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 4184,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_ones_dat26 );
TEST_VMRL_OP( 4191,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 4194,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat3 );
TEST_VMRL_OP( 4196,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat5 );
TEST_VMRL_OP( 4202,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 4207,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat16 );
TEST_VMRL_OP( 4211,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat20 );
TEST_VMRL_OP( 4212,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat21 );
TEST_VMRL_OP( 4213,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 4214,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat23 );
TEST_VMRL_OP( 4217,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat26 );
TEST_VMRL_OP( 4218,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat27 );
TEST_VMRL_OP( 4223,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 4226,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat2 );
TEST_VMRL_OP( 4228,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat4 );
TEST_VMRL_OP( 4229,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 4233,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat9 );
TEST_VMRL_OP( 4234,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 4237,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 4240,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 4241,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat17 );
TEST_VMRL_OP( 4250,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_ones_dat26 );
TEST_VMRL_OP( 4253,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4264,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat7 );
TEST_VMRL_OP( 4266,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 4267,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat10 );
TEST_VMRL_OP( 4273,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 4276,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat19 );
TEST_VMRL_OP( 4285,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat28 );
TEST_VMRL_OP( 4289,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_ones_dat32 );
TEST_VMRL_OP( 4295,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat5 );
TEST_VMRL_OP( 4296,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat6 );
TEST_VMRL_OP( 4301,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat11 );
TEST_VMRL_OP( 4314,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat24 );
TEST_VMRL_OP( 4318,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat28 );
TEST_VMRL_OP( 4319,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat29 );
TEST_VMRL_OP( 4320,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_ones_dat30 );
TEST_VMRL_OP( 4336,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat13 );
TEST_VMRL_OP( 4337,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat14 );
TEST_VMRL_OP( 4338,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat15 );
TEST_VMRL_OP( 4341,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat18 );
TEST_VMRL_OP( 4342,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat19 );
TEST_VMRL_OP( 4343,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 4346,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 4349,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat26 );
TEST_VMRL_OP( 4350,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 4352,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat29 );
TEST_VMRL_OP( 4353,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat30 );
TEST_VMRL_OP( 4354,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 4356,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 8823,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 8824,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8825,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8826,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8827,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8828,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8829,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8830,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8831,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8832,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8833,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8834,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8835,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8836,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

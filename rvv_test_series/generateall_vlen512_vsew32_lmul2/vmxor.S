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
TEST_VMRL_OP( 2,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 6,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 10,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 12,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 14,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 19,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat19 );
TEST_VMRL_OP( 23,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat23 );
TEST_VMRL_OP( 30,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat30 );
TEST_VMRL_OP( 37,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 46,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 47,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 54,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat21 );
TEST_VMRL_OP( 62,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat29 );
TEST_VMRL_OP( 66,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 67,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 70,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 71,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 72,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 82,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 83,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat17 );
TEST_VMRL_OP( 84,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat18 );
TEST_VMRL_OP( 89,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat23 );
TEST_VMRL_OP( 92,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat26 );
TEST_VMRL_OP( 93,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat27 );
TEST_VMRL_OP( 95,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat29 );
TEST_VMRL_OP( 96,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat30 );
TEST_VMRL_OP( 116,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat17 );
TEST_VMRL_OP( 117,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 122,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat23 );
TEST_VMRL_OP( 124,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat25 );
TEST_VMRL_OP( 126,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat27 );
TEST_VMRL_OP( 127,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat28 );
TEST_VMRL_OP( 135,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 146,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 147,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 148,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 154,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 155,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 156,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 159,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat27 );
TEST_VMRL_OP( 171,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 172,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 173,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 174,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 175,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 177,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 179,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 183,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat18 );
TEST_VMRL_OP( 188,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat23 );
TEST_VMRL_OP( 196,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat31 );
TEST_VMRL_OP( 197,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat32 );
TEST_VMRL_OP( 200,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 201,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 205,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 206,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 211,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 222,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat24 );
TEST_VMRL_OP( 226,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 229,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 233,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 247,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 250,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat19 );
TEST_VMRL_OP( 252,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat21 );
TEST_VMRL_OP( 258,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 262,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat31 );
TEST_VMRL_OP( 266,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 280,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 281,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 285,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat21 );
TEST_VMRL_OP( 292,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat28 );
TEST_VMRL_OP( 297,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 310,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 315,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat18 );
TEST_VMRL_OP( 327,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_ones_dat30 );
TEST_VMRL_OP( 330,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 342,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 345,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 348,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat18 );
TEST_VMRL_OP( 350,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 352,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat22 );
TEST_VMRL_OP( 356,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat26 );
TEST_VMRL_OP( 359,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 361,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_ones_dat31 );
TEST_VMRL_OP( 363,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 366,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 369,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 373,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 382,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 394,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat31 );
TEST_VMRL_OP( 395,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_ones_dat32 );
TEST_VMRL_OP( 399,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 402,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 403,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 408,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 412,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 417,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat21 );
TEST_VMRL_OP( 421,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat25 );
TEST_VMRL_OP( 425,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 428,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_ones_dat32 );
TEST_VMRL_OP( 431,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 435,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 440,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 443,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 444,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 447,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat18 );
TEST_VMRL_OP( 450,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat21 );
TEST_VMRL_OP( 452,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat23 );
TEST_VMRL_OP( 458,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_ones_dat29 );
TEST_VMRL_OP( 463,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 467,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 468,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 471,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 475,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 479,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat17 );
TEST_VMRL_OP( 486,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat24 );
TEST_VMRL_OP( 488,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat26 );
TEST_VMRL_OP( 491,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_ones_dat29 );
TEST_VMRL_OP( 497,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 500,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 501,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 503,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 507,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 518,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat23 );
TEST_VMRL_OP( 519,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat24 );
TEST_VMRL_OP( 522,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat27 );
TEST_VMRL_OP( 523,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 527,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_ones_dat32 );
TEST_VMRL_OP( 532,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 544,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 546,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat18 );
TEST_VMRL_OP( 553,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat25 );
TEST_VMRL_OP( 554,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 556,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_ones_dat28 );
TEST_VMRL_OP( 565,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat4 );
TEST_VMRL_OP( 568,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat7 );
TEST_VMRL_OP( 572,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat17, walking_ones_dat11 );
TEST_VMRL_OP( 599,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat5 );
TEST_VMRL_OP( 607,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat13 );
TEST_VMRL_OP( 611,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat17 );
TEST_VMRL_OP( 612,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 613,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat19 );
TEST_VMRL_OP( 615,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat18, walking_ones_dat21 );
TEST_VMRL_OP( 628,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat1 );
TEST_VMRL_OP( 632,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat5 );
TEST_VMRL_OP( 642,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat15 );
TEST_VMRL_OP( 643,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat16 );
TEST_VMRL_OP( 646,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 651,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 653,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat26 );
TEST_VMRL_OP( 654,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat27 );
TEST_VMRL_OP( 658,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat19, walking_ones_dat31 );
TEST_VMRL_OP( 666,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat6 );
TEST_VMRL_OP( 668,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat8 );
TEST_VMRL_OP( 672,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat12 );
TEST_VMRL_OP( 678,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 684,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat24 );
TEST_VMRL_OP( 689,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat20, walking_ones_dat29 );
TEST_VMRL_OP( 700,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat7 );
TEST_VMRL_OP( 710,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat17 );
TEST_VMRL_OP( 714,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 715,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat22 );
TEST_VMRL_OP( 716,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat23 );
TEST_VMRL_OP( 720,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat27 );
TEST_VMRL_OP( 721,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat28 );
TEST_VMRL_OP( 724,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat21, walking_ones_dat31 );
TEST_VMRL_OP( 729,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 732,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 743,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat17 );
TEST_VMRL_OP( 749,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat23 );
TEST_VMRL_OP( 751,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat25 );
TEST_VMRL_OP( 755,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 760,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat1 );
TEST_VMRL_OP( 763,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 765,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 769,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat10 );
TEST_VMRL_OP( 770,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat11 );
TEST_VMRL_OP( 782,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 783,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat24 );
TEST_VMRL_OP( 785,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 786,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat27 );
TEST_VMRL_OP( 788,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat23, walking_ones_dat29 );
TEST_VMRL_OP( 794,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat2 );
TEST_VMRL_OP( 795,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat3 );
TEST_VMRL_OP( 797,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat5 );
TEST_VMRL_OP( 800,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat8 );
TEST_VMRL_OP( 810,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 813,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat21 );
TEST_VMRL_OP( 818,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat24, walking_ones_dat26 );
TEST_VMRL_OP( 834,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 835,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat10 );
TEST_VMRL_OP( 836,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat11 );
TEST_VMRL_OP( 850,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 851,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat26 );
TEST_VMRL_OP( 855,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 859,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat1 );
TEST_VMRL_OP( 869,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat11 );
TEST_VMRL_OP( 870,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat12 );
TEST_VMRL_OP( 871,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat13 );
TEST_VMRL_OP( 873,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat15 );
TEST_VMRL_OP( 878,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat20 );
TEST_VMRL_OP( 881,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 882,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 889,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat26, walking_ones_dat31 );
TEST_VMRL_OP( 897,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 898,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat7 );
TEST_VMRL_OP( 900,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat9 );
TEST_VMRL_OP( 902,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat11 );
TEST_VMRL_OP( 904,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat13 );
TEST_VMRL_OP( 905,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat14 );
TEST_VMRL_OP( 907,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat16 );
TEST_VMRL_OP( 909,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 911,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat20 );
TEST_VMRL_OP( 921,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat27, walking_ones_dat30 );
TEST_VMRL_OP( 930,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat6 );
TEST_VMRL_OP( 935,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat11 );
TEST_VMRL_OP( 938,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat14 );
TEST_VMRL_OP( 946,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 956,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat28, walking_ones_dat32 );
TEST_VMRL_OP( 960,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat3 );
TEST_VMRL_OP( 963,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat6 );
TEST_VMRL_OP( 967,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat10 );
TEST_VMRL_OP( 977,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat20 );
TEST_VMRL_OP( 979,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat22 );
TEST_VMRL_OP( 984,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat27 );
TEST_VMRL_OP( 989,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat29, walking_ones_dat32 );
TEST_VMRL_OP( 1002,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat12 );
TEST_VMRL_OP( 1003,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat13 );
TEST_VMRL_OP( 1005,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 1006,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat16 );
TEST_VMRL_OP( 1007,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat17 );
TEST_VMRL_OP( 1011,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 1014,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat24 );
TEST_VMRL_OP( 1022,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat30, walking_ones_dat32 );
TEST_VMRL_OP( 1024,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat1 );
TEST_VMRL_OP( 1027,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat4 );
TEST_VMRL_OP( 1036,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat13 );
TEST_VMRL_OP( 1037,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat14 );
TEST_VMRL_OP( 1039,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat16 );
TEST_VMRL_OP( 1042,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat19 );
TEST_VMRL_OP( 1043,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat20 );
TEST_VMRL_OP( 1049,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat31, walking_ones_dat26 );
TEST_VMRL_OP( 1059,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat3 );
TEST_VMRL_OP( 1060,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat4 );
TEST_VMRL_OP( 1066,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat10 );
TEST_VMRL_OP( 1073,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat17 );
TEST_VMRL_OP( 1076,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat20 );
TEST_VMRL_OP( 1080,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 1086,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat30 );
TEST_VMRL_OP( 1087,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat32, walking_ones_dat31 );
TEST_VMRL_OP( 1090,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 1094,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 1096,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 1101,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 1102,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 1107,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat18 );
TEST_VMRL_OP( 1117,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat28 );
TEST_VMRL_OP( 1120,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat31 );
TEST_VMRL_OP( 1125,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 1129,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 1136,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 1137,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 1138,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 1146,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat24 );
TEST_VMRL_OP( 1155,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1158,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 1159,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 1165,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 1179,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat24 );
TEST_VMRL_OP( 1183,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat28 );
TEST_VMRL_OP( 1185,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat30 );
TEST_VMRL_OP( 1189,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 1190,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 1201,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 1204,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 1206,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat18 );
TEST_VMRL_OP( 1210,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat22 );
TEST_VMRL_OP( 1216,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 1229,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 1232,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 1234,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 1237,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 1238,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat17 );
TEST_VMRL_OP( 1240,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat19 );
TEST_VMRL_OP( 1245,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat24 );
TEST_VMRL_OP( 1247,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat26 );
TEST_VMRL_OP( 1249,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat28 );
TEST_VMRL_OP( 1257,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 1264,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 1273,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 1277,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat23 );
TEST_VMRL_OP( 1279,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat25 );
TEST_VMRL_OP( 1287,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 1288,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 1291,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 1298,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 1303,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 1306,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 1307,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat20 );
TEST_VMRL_OP( 1308,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 1309,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat22 );
TEST_VMRL_OP( 1311,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat24 );
TEST_VMRL_OP( 1324,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 1331,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 1334,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 1335,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 1337,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat17 );
TEST_VMRL_OP( 1338,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 1340,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat20 );
TEST_VMRL_OP( 1341,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat21 );
TEST_VMRL_OP( 1343,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat23 );
TEST_VMRL_OP( 1346,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat26 );
TEST_VMRL_OP( 1348,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat28 );
TEST_VMRL_OP( 1355,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 1375,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 1377,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat24 );
TEST_VMRL_OP( 1381,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat28 );
TEST_VMRL_OP( 1382,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 1390,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 1393,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 1395,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1405,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat19 );
TEST_VMRL_OP( 1409,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat23 );
TEST_VMRL_OP( 1411,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat25 );
TEST_VMRL_OP( 1416,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat30 );
TEST_VMRL_OP( 1418,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 1419,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 1429,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1430,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 1431,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 1442,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat23 );
TEST_VMRL_OP( 1443,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat24 );
TEST_VMRL_OP( 1446,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat27 );
TEST_VMRL_OP( 1448,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat29 );
TEST_VMRL_OP( 1457,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 1459,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 1464,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 1467,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 1471,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat19 );
TEST_VMRL_OP( 1481,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat29 );
TEST_VMRL_OP( 1484,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 1491,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 1492,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 1500,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 1507,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat22 );
TEST_VMRL_OP( 1510,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat25 );
TEST_VMRL_OP( 1511,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat26 );
TEST_VMRL_OP( 1519,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 1520,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 1524,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 1525,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 1526,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 1529,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 1531,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1536,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat18 );
TEST_VMRL_OP( 1538,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat20 );
TEST_VMRL_OP( 1543,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat25 );
TEST_VMRL_OP( 1545,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat27 );
TEST_VMRL_OP( 1546,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat28 );
TEST_VMRL_OP( 1547,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 1550,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat32 );
TEST_VMRL_OP( 1559,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 1562,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 1565,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1574,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat23 );
TEST_VMRL_OP( 1576,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat25 );
TEST_VMRL_OP( 1577,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 1595,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 1600,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 1601,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat17 );
TEST_VMRL_OP( 1603,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 1614,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat30 );
TEST_VMRL_OP( 1616,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat32 );
TEST_VMRL_OP( 1617,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 1628,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 1632,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 1646,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat29 );
TEST_VMRL_OP( 1648,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat31 );
TEST_VMRL_OP( 1650,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat17, walking_zeros_dat0 );
TEST_VMRL_OP( 1652,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 1656,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat6 );
TEST_VMRL_OP( 1663,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 1664,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat14 );
TEST_VMRL_OP( 1665,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat15 );
TEST_VMRL_OP( 1670,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat20 );
TEST_VMRL_OP( 1679,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 1688,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat5 );
TEST_VMRL_OP( 1690,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat18, walking_zeros_dat7 );
TEST_VMRL_OP( 1722,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 1723,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat7 );
TEST_VMRL_OP( 1729,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat13 );
TEST_VMRL_OP( 1734,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat19, walking_zeros_dat18 );
TEST_VMRL_OP( 1751,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat2 );
TEST_VMRL_OP( 1754,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat5 );
TEST_VMRL_OP( 1757,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat8 );
TEST_VMRL_OP( 1758,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat9 );
TEST_VMRL_OP( 1759,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat10 );
TEST_VMRL_OP( 1760,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat11 );
TEST_VMRL_OP( 1761,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat12 );
TEST_VMRL_OP( 1768,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat19 );
TEST_VMRL_OP( 1773,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat24 );
TEST_VMRL_OP( 1776,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat27 );
TEST_VMRL_OP( 1777,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat20, walking_zeros_dat28 );
TEST_VMRL_OP( 1788,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat6 );
TEST_VMRL_OP( 1791,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat9 );
TEST_VMRL_OP( 1803,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 1807,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat25 );
TEST_VMRL_OP( 1810,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat21, walking_zeros_dat28 );
TEST_VMRL_OP( 1823,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat8 );
TEST_VMRL_OP( 1830,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat15 );
TEST_VMRL_OP( 1833,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat18 );
TEST_VMRL_OP( 1838,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat23 );
TEST_VMRL_OP( 1841,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat26 );
TEST_VMRL_OP( 1842,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat22, walking_zeros_dat27 );
TEST_VMRL_OP( 1848,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat23, walking_zeros_dat0 );
TEST_VMRL_OP( 1850,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat2 );
TEST_VMRL_OP( 1855,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat7 );
TEST_VMRL_OP( 1858,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat10 );
TEST_VMRL_OP( 1861,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat13 );
TEST_VMRL_OP( 1862,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat14 );
TEST_VMRL_OP( 1865,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat17 );
TEST_VMRL_OP( 1866,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 1868,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat20 );
TEST_VMRL_OP( 1872,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat23, walking_zeros_dat24 );
TEST_VMRL_OP( 1889,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 1894,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat13 );
TEST_VMRL_OP( 1901,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat20 );
TEST_VMRL_OP( 1904,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat23 );
TEST_VMRL_OP( 1906,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat25 );
TEST_VMRL_OP( 1909,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat24, walking_zeros_dat28 );
TEST_VMRL_OP( 1917,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat3 );
TEST_VMRL_OP( 1920,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat6 );
TEST_VMRL_OP( 1925,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat11 );
TEST_VMRL_OP( 1929,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat15 );
TEST_VMRL_OP( 1930,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat16 );
TEST_VMRL_OP( 1931,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat17 );
TEST_VMRL_OP( 1936,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat22 );
TEST_VMRL_OP( 1939,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 1940,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat25, walking_zeros_dat26 );
TEST_VMRL_OP( 1952,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat5 );
TEST_VMRL_OP( 1953,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat6 );
TEST_VMRL_OP( 1954,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat7 );
TEST_VMRL_OP( 1962,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat15 );
TEST_VMRL_OP( 1967,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat20 );
TEST_VMRL_OP( 1968,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat21 );
TEST_VMRL_OP( 1972,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat25 );
TEST_VMRL_OP( 1977,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat30 );
TEST_VMRL_OP( 1978,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 1980,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat27, walking_zeros_dat0 );
TEST_VMRL_OP( 1982,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 1987,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat7 );
TEST_VMRL_OP( 1991,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat11 );
TEST_VMRL_OP( 1992,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat12 );
TEST_VMRL_OP( 1993,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat13 );
TEST_VMRL_OP( 1994,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 2001,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat21 );
TEST_VMRL_OP( 2002,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat27, walking_zeros_dat22 );
TEST_VMRL_OP( 2007,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 2014,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat1 );
TEST_VMRL_OP( 2018,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat5 );
TEST_VMRL_OP( 2019,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 2021,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 2022,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat9 );
TEST_VMRL_OP( 2025,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat12 );
TEST_VMRL_OP( 2026,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 2033,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 2040,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat28, walking_zeros_dat27 );
TEST_VMRL_OP( 2048,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat2 );
TEST_VMRL_OP( 2049,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat3 );
TEST_VMRL_OP( 2050,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat4 );
TEST_VMRL_OP( 2054,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat8 );
TEST_VMRL_OP( 2061,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat15 );
TEST_VMRL_OP( 2067,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat21 );
TEST_VMRL_OP( 2073,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat27 );
TEST_VMRL_OP( 2075,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 2078,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat29, walking_zeros_dat32 );
TEST_VMRL_OP( 2079,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat30, walking_zeros_dat0 );
TEST_VMRL_OP( 2083,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 2088,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 2097,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat18 );
TEST_VMRL_OP( 2098,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat19 );
TEST_VMRL_OP( 2099,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 2102,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat23 );
TEST_VMRL_OP( 2104,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat25 );
TEST_VMRL_OP( 2109,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 2110,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 2114,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat2 );
TEST_VMRL_OP( 2123,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat11 );
TEST_VMRL_OP( 2139,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat27 );
TEST_VMRL_OP( 2141,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat31, walking_zeros_dat29 );
TEST_VMRL_OP( 2149,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat4 );
TEST_VMRL_OP( 2151,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat6 );
TEST_VMRL_OP( 2157,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 2158,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 2160,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat15 );
TEST_VMRL_OP( 2162,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 2163,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat18 );
TEST_VMRL_OP( 2166,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat21 );
TEST_VMRL_OP( 2169,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat24 );
TEST_VMRL_OP( 2175,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat30 );
TEST_VMRL_OP( 2176,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat32, walking_zeros_dat31 );
TEST_VMRL_OP( 2179,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 2182,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 2185,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 2187,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 2188,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 2189,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 2190,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 2192,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 2197,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat19 );
TEST_VMRL_OP( 2198,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat20 );
TEST_VMRL_OP( 2199,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat21 );
TEST_VMRL_OP( 2206,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat0, walking_zeros_dat28 );
TEST_VMRL_OP( 2216,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 2218,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 2228,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat17 );
TEST_VMRL_OP( 2230,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat19 );
TEST_VMRL_OP( 2237,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat26 );
TEST_VMRL_OP( 2238,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat27 );
TEST_VMRL_OP( 2240,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat29 );
TEST_VMRL_OP( 2241,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat1, walking_zeros_dat30 );
TEST_VMRL_OP( 2252,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 2265,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat21 );
TEST_VMRL_OP( 2266,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat22 );
TEST_VMRL_OP( 2267,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat2, walking_zeros_dat23 );
TEST_VMRL_OP( 2279,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 2280,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 2283,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 2284,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 2286,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 2289,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 2290,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 2296,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat19 );
TEST_VMRL_OP( 2298,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat21 );
TEST_VMRL_OP( 2300,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat23 );
TEST_VMRL_OP( 2304,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat27 );
TEST_VMRL_OP( 2305,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat28 );
TEST_VMRL_OP( 2308,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat3, walking_zeros_dat31 );
TEST_VMRL_OP( 2310,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 2311,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 2314,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 2319,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 2323,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 2325,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 2330,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat20 );
TEST_VMRL_OP( 2341,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat4, walking_zeros_dat31 );
TEST_VMRL_OP( 2344,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 2353,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 2354,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 2362,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat19 );
TEST_VMRL_OP( 2371,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat5, walking_zeros_dat28 );
TEST_VMRL_OP( 2387,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 2389,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 2395,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat19 );
TEST_VMRL_OP( 2397,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat21 );
TEST_VMRL_OP( 2401,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat25 );
TEST_VMRL_OP( 2404,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat28 );
TEST_VMRL_OP( 2406,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat6, walking_zeros_dat30 );
TEST_VMRL_OP( 2409,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 2414,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 2418,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 2419,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 2424,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 2427,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat18 );
TEST_VMRL_OP( 2428,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat19 );
TEST_VMRL_OP( 2440,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat7, walking_zeros_dat31 );
TEST_VMRL_OP( 2442,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 2444,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 2446,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 2452,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 2454,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 2455,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 2456,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 2459,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat17 );
TEST_VMRL_OP( 2464,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat22 );
TEST_VMRL_OP( 2465,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat23 );
TEST_VMRL_OP( 2471,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat29 );
TEST_VMRL_OP( 2474,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat8, walking_zeros_dat32 );
TEST_VMRL_OP( 2482,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 2485,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 2487,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 2497,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat22 );
TEST_VMRL_OP( 2499,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat24 );
TEST_VMRL_OP( 2507,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat9, walking_zeros_dat32 );
TEST_VMRL_OP( 2511,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 2514,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 2515,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 2517,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 2519,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 2528,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat20 );
TEST_VMRL_OP( 2540,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat10, walking_zeros_dat32 );
TEST_VMRL_OP( 2541,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 2556,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 2558,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat17 );
TEST_VMRL_OP( 2561,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat20 );
TEST_VMRL_OP( 2563,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat22 );
TEST_VMRL_OP( 2573,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat11, walking_zeros_dat32 );
TEST_VMRL_OP( 2574,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 2576,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 2577,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 2578,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 2579,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 2582,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 2583,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 2586,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 2602,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat12, walking_zeros_dat28 );
TEST_VMRL_OP( 2607,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 2612,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 2614,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 2617,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 2620,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 2621,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 2624,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat17 );
TEST_VMRL_OP( 2633,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat26 );
TEST_VMRL_OP( 2636,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat13, walking_zeros_dat29 );
TEST_VMRL_OP( 2641,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 2644,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 2647,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 2648,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 2649,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 2653,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 2654,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 2657,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat17 );
TEST_VMRL_OP( 2664,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat24 );
TEST_VMRL_OP( 2666,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat26 );
TEST_VMRL_OP( 2668,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat14, walking_zeros_dat28 );
TEST_VMRL_OP( 2673,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 2678,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 2686,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 2689,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 2692,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat19 );
TEST_VMRL_OP( 2694,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat21 );
TEST_VMRL_OP( 2698,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat25 );
TEST_VMRL_OP( 2700,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat27 );
TEST_VMRL_OP( 2704,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat15, walking_zeros_dat31 );
TEST_VMRL_OP( 2715,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 2731,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat25 );
TEST_VMRL_OP( 2734,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat16, walking_zeros_dat28 );
TEST_VMRL_OP( 2741,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat2 );
TEST_VMRL_OP( 2743,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat4 );
TEST_VMRL_OP( 2748,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat9 );
TEST_VMRL_OP( 2750,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat11 );
TEST_VMRL_OP( 2752,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat13 );
TEST_VMRL_OP( 2762,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat23 );
TEST_VMRL_OP( 2768,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat29 );
TEST_VMRL_OP( 2769,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat17, walking_zeros_dat30 );
TEST_VMRL_OP( 2772,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat18, walking_zeros_dat0 );
TEST_VMRL_OP( 2785,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat13 );
TEST_VMRL_OP( 2786,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat14 );
TEST_VMRL_OP( 2789,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat17 );
TEST_VMRL_OP( 2797,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat25 );
TEST_VMRL_OP( 2803,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat18, walking_zeros_dat31 );
TEST_VMRL_OP( 2807,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat2 );
TEST_VMRL_OP( 2808,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat3 );
TEST_VMRL_OP( 2810,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat5 );
TEST_VMRL_OP( 2811,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat6 );
TEST_VMRL_OP( 2819,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat14 );
TEST_VMRL_OP( 2822,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat17 );
TEST_VMRL_OP( 2832,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat27 );
TEST_VMRL_OP( 2833,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat19, walking_zeros_dat28 );
TEST_VMRL_OP( 2839,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat1 );
TEST_VMRL_OP( 2849,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat11 );
TEST_VMRL_OP( 2854,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat16 );
TEST_VMRL_OP( 2855,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat17 );
TEST_VMRL_OP( 2856,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat18 );
TEST_VMRL_OP( 2869,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat31 );
TEST_VMRL_OP( 2870,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat20, walking_zeros_dat32 );
TEST_VMRL_OP( 2871,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat21, walking_zeros_dat0 );
TEST_VMRL_OP( 2878,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat7 );
TEST_VMRL_OP( 2884,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat13 );
TEST_VMRL_OP( 2886,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat15 );
TEST_VMRL_OP( 2888,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat17 );
TEST_VMRL_OP( 2895,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat21, walking_zeros_dat24 );
TEST_VMRL_OP( 2906,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat2 );
TEST_VMRL_OP( 2914,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat10 );
TEST_VMRL_OP( 2917,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat13 );
TEST_VMRL_OP( 2923,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat22, walking_zeros_dat19 );
TEST_VMRL_OP( 2952,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat15 );
TEST_VMRL_OP( 2955,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat18 );
TEST_VMRL_OP( 2958,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat21 );
TEST_VMRL_OP( 2963,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat23, walking_zeros_dat26 );
TEST_VMRL_OP( 2974,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat4 );
TEST_VMRL_OP( 2975,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat5 );
TEST_VMRL_OP( 2978,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat8 );
TEST_VMRL_OP( 2980,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat10 );
TEST_VMRL_OP( 2984,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat14 );
TEST_VMRL_OP( 2986,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat16 );
TEST_VMRL_OP( 2992,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat22 );
TEST_VMRL_OP( 3000,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat24, walking_zeros_dat30 );
TEST_VMRL_OP( 3003,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat25, walking_zeros_dat0 );
TEST_VMRL_OP( 3004,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat1 );
TEST_VMRL_OP( 3007,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat4 );
TEST_VMRL_OP( 3012,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat9 );
TEST_VMRL_OP( 3013,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat10 );
TEST_VMRL_OP( 3023,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat20 );
TEST_VMRL_OP( 3027,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat24 );
TEST_VMRL_OP( 3031,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat28 );
TEST_VMRL_OP( 3035,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat25, walking_zeros_dat32 );
TEST_VMRL_OP( 3047,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat11 );
TEST_VMRL_OP( 3053,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat17 );
TEST_VMRL_OP( 3064,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat28 );
TEST_VMRL_OP( 3067,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat26, walking_zeros_dat31 );
TEST_VMRL_OP( 3069,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat27, walking_zeros_dat0 );
TEST_VMRL_OP( 3070,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat1 );
TEST_VMRL_OP( 3071,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat2 );
TEST_VMRL_OP( 3083,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat14 );
TEST_VMRL_OP( 3086,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat17 );
TEST_VMRL_OP( 3099,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat27, walking_zeros_dat30 );
TEST_VMRL_OP( 3102,  vmxor.mm,  32,  0x000000000000001f, walking_ones_dat28, walking_zeros_dat0 );
TEST_VMRL_OP( 3108,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat6 );
TEST_VMRL_OP( 3110,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat8 );
TEST_VMRL_OP( 3115,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat13 );
TEST_VMRL_OP( 3122,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat20 );
TEST_VMRL_OP( 3128,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat28, walking_zeros_dat26 );
TEST_VMRL_OP( 3140,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat5 );
TEST_VMRL_OP( 3146,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat11 );
TEST_VMRL_OP( 3152,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat17 );
TEST_VMRL_OP( 3153,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat18 );
TEST_VMRL_OP( 3157,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat22 );
TEST_VMRL_OP( 3158,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat23 );
TEST_VMRL_OP( 3159,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat24 );
TEST_VMRL_OP( 3167,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat29, walking_zeros_dat32 );
TEST_VMRL_OP( 3169,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat1 );
TEST_VMRL_OP( 3172,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat4 );
TEST_VMRL_OP( 3175,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat7 );
TEST_VMRL_OP( 3177,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat9 );
TEST_VMRL_OP( 3180,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat12 );
TEST_VMRL_OP( 3181,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat13 );
TEST_VMRL_OP( 3183,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat15 );
TEST_VMRL_OP( 3188,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat20 );
TEST_VMRL_OP( 3197,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat29 );
TEST_VMRL_OP( 3199,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat31 );
TEST_VMRL_OP( 3200,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat30, walking_zeros_dat32 );
TEST_VMRL_OP( 3211,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat10 );
TEST_VMRL_OP( 3216,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat15 );
TEST_VMRL_OP( 3217,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat16 );
TEST_VMRL_OP( 3220,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat19 );
TEST_VMRL_OP( 3227,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat31, walking_zeros_dat26 );
TEST_VMRL_OP( 3235,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat1 );
TEST_VMRL_OP( 3238,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat4 );
TEST_VMRL_OP( 3246,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat12 );
TEST_VMRL_OP( 3247,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat13 );
TEST_VMRL_OP( 3251,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat17 );
TEST_VMRL_OP( 3252,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat18 );
TEST_VMRL_OP( 3253,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat19 );
TEST_VMRL_OP( 3254,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat20 );
TEST_VMRL_OP( 3262,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat28 );
TEST_VMRL_OP( 3263,  vmxor.mm,  32,  0x000000000000001e, walking_ones_dat32, walking_zeros_dat29 );
TEST_VMRL_OP( 3267,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 3280,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 3288,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat21 );
TEST_VMRL_OP( 3291,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat24 );
TEST_VMRL_OP( 3299,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat32 );
TEST_VMRL_OP( 3302,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 3304,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 3307,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 3308,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 3318,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat18 );
TEST_VMRL_OP( 3324,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat24 );
TEST_VMRL_OP( 3326,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat26 );
TEST_VMRL_OP( 3327,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat27 );
TEST_VMRL_OP( 3330,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat30 );
TEST_VMRL_OP( 3331,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat1, walking_ones_dat31 );
TEST_VMRL_OP( 3340,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 3342,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 3343,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 3346,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 3347,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 3348,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 3349,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 3361,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat2, walking_ones_dat28 );
TEST_VMRL_OP( 3374,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 3377,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 3378,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 3380,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 3384,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat18 );
TEST_VMRL_OP( 3385,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat19 );
TEST_VMRL_OP( 3388,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat22 );
TEST_VMRL_OP( 3398,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat3, walking_ones_dat32 );
TEST_VMRL_OP( 3399,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 3401,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 3404,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 3418,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat19 );
TEST_VMRL_OP( 3419,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat20 );
TEST_VMRL_OP( 3421,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat22 );
TEST_VMRL_OP( 3422,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat23 );
TEST_VMRL_OP( 3423,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat24 );
TEST_VMRL_OP( 3426,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat27 );
TEST_VMRL_OP( 3428,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat29 );
TEST_VMRL_OP( 3430,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat4, walking_ones_dat31 );
TEST_VMRL_OP( 3452,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_ones_dat20 );
TEST_VMRL_OP( 3453,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat5, walking_ones_dat21 );
TEST_VMRL_OP( 3465,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 3467,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 3469,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 3472,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 3475,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 3479,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 3483,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat18 );
TEST_VMRL_OP( 3490,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat25 );
TEST_VMRL_OP( 3493,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat28 );
TEST_VMRL_OP( 3496,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat6, walking_ones_dat31 );
TEST_VMRL_OP( 3501,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 3510,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 3518,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat20 );
TEST_VMRL_OP( 3522,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat24 );
TEST_VMRL_OP( 3525,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat27 );
TEST_VMRL_OP( 3528,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat7, walking_ones_dat30 );
TEST_VMRL_OP( 3531,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 3532,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 3538,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 3543,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 3546,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 3547,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 3548,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat17 );
TEST_VMRL_OP( 3554,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat23 );
TEST_VMRL_OP( 3563,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat8, walking_ones_dat32 );
TEST_VMRL_OP( 3565,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 3571,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 3573,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 3576,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 3580,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 3581,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat17 );
TEST_VMRL_OP( 3583,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat19 );
TEST_VMRL_OP( 3584,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat20 );
TEST_VMRL_OP( 3585,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat21 );
TEST_VMRL_OP( 3586,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat22 );
TEST_VMRL_OP( 3593,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat9, walking_ones_dat29 );
TEST_VMRL_OP( 3600,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 3605,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 3611,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 3614,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat17 );
TEST_VMRL_OP( 3616,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat19 );
TEST_VMRL_OP( 3617,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat20 );
TEST_VMRL_OP( 3626,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat29 );
TEST_VMRL_OP( 3629,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat10, walking_ones_dat32 );
TEST_VMRL_OP( 3633,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 3634,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 3637,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 3639,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 3641,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 3649,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat19 );
TEST_VMRL_OP( 3652,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat22 );
TEST_VMRL_OP( 3655,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat25 );
TEST_VMRL_OP( 3656,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat11, walking_ones_dat26 );
TEST_VMRL_OP( 3663,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 3667,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 3670,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 3674,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 3676,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 3678,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 3681,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat18 );
TEST_VMRL_OP( 3689,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat26 );
TEST_VMRL_OP( 3690,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat27 );
TEST_VMRL_OP( 3692,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat29 );
TEST_VMRL_OP( 3695,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat12, walking_ones_dat32 );
TEST_VMRL_OP( 3703,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 3705,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 3713,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat17 );
TEST_VMRL_OP( 3715,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat19 );
TEST_VMRL_OP( 3719,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat23 );
TEST_VMRL_OP( 3721,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat25 );
TEST_VMRL_OP( 3722,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat26 );
TEST_VMRL_OP( 3727,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat13, walking_ones_dat31 );
TEST_VMRL_OP( 3729,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 3731,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 3738,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 3739,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 3750,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat21 );
TEST_VMRL_OP( 3754,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat14, walking_ones_dat25 );
TEST_VMRL_OP( 3769,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 3776,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 3777,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 3778,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 3781,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat19 );
TEST_VMRL_OP( 3782,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat20 );
TEST_VMRL_OP( 3786,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat24 );
TEST_VMRL_OP( 3790,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat28 );
TEST_VMRL_OP( 3791,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat15, walking_ones_dat29 );
TEST_VMRL_OP( 3795,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 3806,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 3807,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 3817,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat22 );
TEST_VMRL_OP( 3821,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat26 );
TEST_VMRL_OP( 3827,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat16, walking_ones_dat32 );
TEST_VMRL_OP( 3831,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat3 );
TEST_VMRL_OP( 3834,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat6 );
TEST_VMRL_OP( 3837,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat9 );
TEST_VMRL_OP( 3840,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat12 );
TEST_VMRL_OP( 3843,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat15 );
TEST_VMRL_OP( 3845,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 3847,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat19 );
TEST_VMRL_OP( 3850,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat17, walking_ones_dat22 );
TEST_VMRL_OP( 3871,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat10 );
TEST_VMRL_OP( 3874,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat13 );
TEST_VMRL_OP( 3875,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat14 );
TEST_VMRL_OP( 3877,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat16 );
TEST_VMRL_OP( 3878,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat17 );
TEST_VMRL_OP( 3879,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 3885,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat24 );
TEST_VMRL_OP( 3888,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat27 );
TEST_VMRL_OP( 3889,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat28 );
TEST_VMRL_OP( 3893,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat18, walking_ones_dat32 );
TEST_VMRL_OP( 3897,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat3 );
TEST_VMRL_OP( 3905,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat11 );
TEST_VMRL_OP( 3908,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat14 );
TEST_VMRL_OP( 3913,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 3914,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat20 );
TEST_VMRL_OP( 3918,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat24 );
TEST_VMRL_OP( 3924,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat19, walking_ones_dat30 );
TEST_VMRL_OP( 3927,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat20, walking_ones_dat0 );
TEST_VMRL_OP( 3931,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat4 );
TEST_VMRL_OP( 3938,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat11 );
TEST_VMRL_OP( 3945,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat18 );
TEST_VMRL_OP( 3949,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat20, walking_ones_dat22 );
TEST_VMRL_OP( 3963,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat3 );
TEST_VMRL_OP( 3968,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat8 );
TEST_VMRL_OP( 3985,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat25 );
TEST_VMRL_OP( 3988,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat28 );
TEST_VMRL_OP( 3990,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat21, walking_ones_dat30 );
TEST_VMRL_OP( 3996,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat3 );
TEST_VMRL_OP( 3999,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat6 );
TEST_VMRL_OP( 4006,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat13 );
TEST_VMRL_OP( 4008,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat15 );
TEST_VMRL_OP( 4011,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat18 );
TEST_VMRL_OP( 4021,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat28 );
TEST_VMRL_OP( 4022,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat29 );
TEST_VMRL_OP( 4024,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat22, walking_ones_dat31 );
TEST_VMRL_OP( 4030,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat4 );
TEST_VMRL_OP( 4032,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat6 );
TEST_VMRL_OP( 4036,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat10 );
TEST_VMRL_OP( 4039,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat13 );
TEST_VMRL_OP( 4043,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat17 );
TEST_VMRL_OP( 4048,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat22 );
TEST_VMRL_OP( 4049,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4052,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat23, walking_ones_dat26 );
TEST_VMRL_OP( 4064,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat5 );
TEST_VMRL_OP( 4076,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat17 );
TEST_VMRL_OP( 4077,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat18 );
TEST_VMRL_OP( 4083,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4084,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat25 );
TEST_VMRL_OP( 4086,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat24, walking_ones_dat27 );
TEST_VMRL_OP( 4093,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat1 );
TEST_VMRL_OP( 4101,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat9 );
TEST_VMRL_OP( 4114,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat22 );
TEST_VMRL_OP( 4119,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat27 );
TEST_VMRL_OP( 4121,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat29 );
TEST_VMRL_OP( 4122,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat30 );
TEST_VMRL_OP( 4124,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat25, walking_ones_dat32 );
TEST_VMRL_OP( 4135,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat10 );
TEST_VMRL_OP( 4147,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat22 );
TEST_VMRL_OP( 4148,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat23 );
TEST_VMRL_OP( 4149,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat24 );
TEST_VMRL_OP( 4150,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat25 );
TEST_VMRL_OP( 4152,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat27 );
TEST_VMRL_OP( 4153,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat28 );
TEST_VMRL_OP( 4157,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat26, walking_ones_dat32 );
TEST_VMRL_OP( 4160,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat2 );
TEST_VMRL_OP( 4164,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat6 );
TEST_VMRL_OP( 4176,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat27, walking_ones_dat18 );
TEST_VMRL_OP( 4191,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat28, walking_ones_dat0 );
TEST_VMRL_OP( 4193,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat2 );
TEST_VMRL_OP( 4195,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat4 );
TEST_VMRL_OP( 4199,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat8 );
TEST_VMRL_OP( 4200,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat9 );
TEST_VMRL_OP( 4209,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat18 );
TEST_VMRL_OP( 4213,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat22 );
TEST_VMRL_OP( 4220,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat28, walking_ones_dat29 );
TEST_VMRL_OP( 4224,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat29, walking_ones_dat0 );
TEST_VMRL_OP( 4225,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat1 );
TEST_VMRL_OP( 4229,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat5 );
TEST_VMRL_OP( 4231,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat7 );
TEST_VMRL_OP( 4232,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat8 );
TEST_VMRL_OP( 4237,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat13 );
TEST_VMRL_OP( 4240,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat29, walking_ones_dat16 );
TEST_VMRL_OP( 4257,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat30, walking_ones_dat0 );
TEST_VMRL_OP( 4260,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat3 );
TEST_VMRL_OP( 4266,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat9 );
TEST_VMRL_OP( 4272,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat15 );
TEST_VMRL_OP( 4278,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat21 );
TEST_VMRL_OP( 4282,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat30, walking_ones_dat25 );
TEST_VMRL_OP( 4297,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat7 );
TEST_VMRL_OP( 4311,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat21 );
TEST_VMRL_OP( 4312,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat22 );
TEST_VMRL_OP( 4313,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat23 );
TEST_VMRL_OP( 4317,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat31, walking_ones_dat27 );
TEST_VMRL_OP( 4321,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4328,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat5 );
TEST_VMRL_OP( 4332,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat9 );
TEST_VMRL_OP( 4334,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat11 );
TEST_VMRL_OP( 4335,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat12 );
TEST_VMRL_OP( 4336,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat13 );
TEST_VMRL_OP( 4345,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat22 );
TEST_VMRL_OP( 4346,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat23 );
TEST_VMRL_OP( 4347,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat24 );
TEST_VMRL_OP( 4350,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat27 );
TEST_VMRL_OP( 4351,  vmxor.mm,  32,  0x000000000000001e, walking_zeros_dat32, walking_ones_dat28 );
TEST_VMRL_OP( 4356,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 4357,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 4358,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 4359,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 4360,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 4361,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 4362,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 4363,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 4364,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 4365,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 4366,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 4367,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 4368,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 4369,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 4370,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 4371,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 4372,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 4373,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat17, walking_zeros_dat17 );
TEST_VMRL_OP( 4374,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat18, walking_zeros_dat18 );
TEST_VMRL_OP( 4375,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat19, walking_zeros_dat19 );
TEST_VMRL_OP( 4376,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat20, walking_zeros_dat20 );
TEST_VMRL_OP( 4377,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat21, walking_zeros_dat21 );
TEST_VMRL_OP( 4378,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat22, walking_zeros_dat22 );
TEST_VMRL_OP( 4379,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat23, walking_zeros_dat23 );
TEST_VMRL_OP( 4380,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat24, walking_zeros_dat24 );
TEST_VMRL_OP( 4381,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat25, walking_zeros_dat25 );
TEST_VMRL_OP( 4382,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat26, walking_zeros_dat26 );
TEST_VMRL_OP( 4383,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat27, walking_zeros_dat27 );
TEST_VMRL_OP( 4384,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat28, walking_zeros_dat28 );
TEST_VMRL_OP( 4385,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat29, walking_zeros_dat29 );
TEST_VMRL_OP( 4386,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat30, walking_zeros_dat30 );
TEST_VMRL_OP( 4387,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat31, walking_zeros_dat31 );
TEST_VMRL_OP( 4388,  vmxor.mm,  32,  0x0000000000000020, walking_ones_dat32, walking_zeros_dat32 );
TEST_VMRL_OP( 4389,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 4390,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 4391,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 4392,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 4393,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 4394,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 4395,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 4396,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 4397,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 4398,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 4399,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 4400,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 4401,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 4402,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 4403,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 4404,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 4405,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 4406,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat17, walking_ones_dat17 );
TEST_VMRL_OP( 4407,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat18, walking_ones_dat18 );
TEST_VMRL_OP( 4408,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat19, walking_ones_dat19 );
TEST_VMRL_OP( 4409,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat20, walking_ones_dat20 );
TEST_VMRL_OP( 4410,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat21, walking_ones_dat21 );
TEST_VMRL_OP( 4411,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat22, walking_ones_dat22 );
TEST_VMRL_OP( 4412,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat23, walking_ones_dat23 );
TEST_VMRL_OP( 4413,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat24, walking_ones_dat24 );
TEST_VMRL_OP( 4414,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat25, walking_ones_dat25 );
TEST_VMRL_OP( 4415,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat26, walking_ones_dat26 );
TEST_VMRL_OP( 4416,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat27, walking_ones_dat27 );
TEST_VMRL_OP( 4417,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat28, walking_ones_dat28 );
TEST_VMRL_OP( 4418,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat29, walking_ones_dat29 );
TEST_VMRL_OP( 4419,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat30, walking_ones_dat30 );
TEST_VMRL_OP( 4420,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat31, walking_ones_dat31 );
TEST_VMRL_OP( 4421,  vmxor.mm,  32,  0x0000000000000020, walking_zeros_dat32, walking_ones_dat32 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 8778,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 8779,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 8780,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 8781,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 8782,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 8783,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 8784,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 8785,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 8786,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 8787,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 8788,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 8789,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 8790,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 8791,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 8792,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 8793,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 8794,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 8795,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 8796,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 8797,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 8798,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 8799,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 8800,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 8801,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 8802,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 8803,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 8804,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 8805,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 8806,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 8807,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 8808,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 8809,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 8810,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 8811,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 8812,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 8813,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 8814,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 8815,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 8816,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 8817,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 8818,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 8819,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 8820,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 8821,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 8822,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 8823,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 8824,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 8825,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 8826,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 8827,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 8828,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 8829,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 8830,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 8831,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 8832,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 8833,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 8834,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 8835,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 8836,  vmxor.mm,  32,  0x000000000000001f, walking_zeros_dat0, walking_ones_dat1 );
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
    

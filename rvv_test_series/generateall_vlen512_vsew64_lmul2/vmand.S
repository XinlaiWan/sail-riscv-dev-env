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
TEST_VMRL_OP( 0,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 10,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 11,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 13,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 15,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 16,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 17,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 18,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 19,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 20,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 23,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 26,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 27,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 28,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 30,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 31,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 32,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 33,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 34,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 35,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 36,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 37,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 38,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 39,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 40,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 41,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 42,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 44,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 46,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 48,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 49,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 50,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 51,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 53,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 54,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 55,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 56,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 57,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 58,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 59,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 60,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 61,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 62,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 64,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 65,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 66,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 67,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 68,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 69,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 70,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 72,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 73,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 74,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 77,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 78,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 80,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 81,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 82,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 83,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 84,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 85,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 86,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 87,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 88,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 89,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 90,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 91,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 92,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 94,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 95,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 96,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 97,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 98,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 99,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 100,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 101,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 102,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 103,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 104,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 105,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 106,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 107,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 109,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 110,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 111,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 112,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 113,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 115,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 117,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 118,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 119,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 120,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 121,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 122,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 123,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 124,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 125,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 126,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 127,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 128,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 129,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 130,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 131,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 132,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 133,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 134,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 135,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 136,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 137,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 138,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 140,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 141,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 142,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 143,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 144,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 145,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 147,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 148,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 149,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 150,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 154,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 155,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 156,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 157,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 158,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 159,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 160,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 161,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 162,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 163,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 165,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 166,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 167,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 168,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 170,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 171,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 172,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 173,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 174,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 175,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 176,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 177,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 178,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 179,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 180,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 181,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 182,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 183,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 184,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 185,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 186,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 187,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 188,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 190,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 191,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 192,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 193,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 194,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 195,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 197,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 198,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 199,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 200,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 201,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 202,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 203,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 204,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 207,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 208,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 209,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 210,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 211,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 212,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 213,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 214,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 218,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 220,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 221,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 222,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 223,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 224,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 225,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 226,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 227,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 228,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 229,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 230,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 231,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 232,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 233,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 234,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 235,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 236,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 237,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 238,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 240,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 241,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 242,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 243,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 245,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 246,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 247,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 248,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 249,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 250,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 251,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 252,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 254,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 255,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 256,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 257,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 258,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 259,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 260,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 263,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 264,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 265,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 266,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 267,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 268,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 269,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 271,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 272,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 274,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 275,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 276,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 278,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 279,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 282,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 283,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 284,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 285,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 286,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 287,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 288,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 289,  vmand.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 290,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 291,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 292,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 294,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 295,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 296,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 297,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 298,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 299,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 300,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 301,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 302,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 304,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 306,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 307,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 308,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 309,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 310,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 311,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 314,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 315,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 317,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 319,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 320,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 321,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 323,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 324,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 325,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 326,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 327,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 328,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 329,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 332,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 333,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 334,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 335,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 336,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 337,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 338,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 339,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 340,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 342,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 343,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 344,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 345,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 346,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 347,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 348,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 349,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 350,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 351,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 352,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 353,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 354,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 355,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 356,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 357,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 358,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 359,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 360,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 362,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 363,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 366,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 367,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 368,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 370,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 371,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 373,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 374,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 375,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 376,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 377,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 379,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 380,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 381,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 382,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 383,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 384,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 385,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 386,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 387,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 388,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 389,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 390,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 391,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 392,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 393,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 395,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 397,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 398,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 399,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 400,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 403,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 404,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 405,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 408,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 409,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 410,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 411,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 412,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 414,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 415,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 416,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 417,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 418,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 420,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 421,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 422,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 423,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 424,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 427,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 428,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 429,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 430,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 431,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 432,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 433,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 434,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 435,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 436,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 437,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 440,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 441,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 442,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 443,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 444,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 445,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 446,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 447,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 448,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 449,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 450,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 451,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 452,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 453,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 454,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 456,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 457,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 458,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 459,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 460,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 461,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 463,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 464,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 465,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 466,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 467,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 468,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 469,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 470,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 471,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 472,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 473,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 475,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 476,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 477,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 478,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 479,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 480,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 481,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 482,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 484,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 485,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 486,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 489,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 490,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 491,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 492,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 493,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 494,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 495,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 496,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 497,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 499,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 501,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 502,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 503,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 504,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 505,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 506,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 507,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 508,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 509,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 511,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 512,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 514,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 515,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 516,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 517,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 518,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 519,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 520,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 521,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 523,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 524,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 525,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 526,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 527,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 528,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 530,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 531,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 532,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 534,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 536,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 538,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 539,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 540,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 542,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 544,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 545,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 546,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 547,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 548,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 549,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 550,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 552,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 553,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 554,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 555,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 556,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 557,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 558,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 559,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 562,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 563,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 564,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 565,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 566,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 567,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 568,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 569,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 570,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 571,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 572,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 573,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 574,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 575,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 576,  vmand.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 577,  vmand.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 579,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 580,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 581,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 582,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 583,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 584,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 585,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 586,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 587,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 588,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 589,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 590,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 591,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 592,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 593,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 594,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 595,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 596,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 598,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 599,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 600,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 601,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 602,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 603,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 604,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 605,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 606,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 607,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 610,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 611,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 612,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 614,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 616,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 617,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 618,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 619,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 621,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 624,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 625,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 626,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 627,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 628,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 629,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 630,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 631,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 632,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 633,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 634,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 635,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 636,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 637,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 639,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 640,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 641,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 642,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 643,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 644,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 645,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 646,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 647,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 648,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 649,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 650,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 651,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 652,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 653,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 654,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 656,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 657,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 658,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 659,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 660,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 661,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 662,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 663,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 664,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 665,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 666,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 667,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 668,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 669,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 670,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 671,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 672,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 673,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 674,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 675,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 676,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 678,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 679,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 680,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 681,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 682,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 683,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 684,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 685,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 686,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 687,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 689,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 690,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 691,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 692,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 693,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 694,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 695,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 696,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 697,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 698,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 699,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 700,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 701,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 702,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 704,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 705,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 706,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 707,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 708,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 709,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 710,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 711,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 712,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 713,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 714,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 715,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 716,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 717,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 719,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 720,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 721,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 722,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 723,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 724,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 725,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 726,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 727,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 728,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 729,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 730,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 732,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 733,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 734,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 735,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 736,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 737,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 739,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 740,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 741,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 742,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 743,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 744,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 745,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 746,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 747,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 748,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 749,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 752,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 753,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 754,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 755,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 756,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 757,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 758,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 759,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 760,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 761,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 762,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 763,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 764,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 765,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 766,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 768,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 769,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 770,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 771,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 772,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 773,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 774,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 775,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 776,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 777,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 778,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 779,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 780,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 781,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 782,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 783,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 784,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 785,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 786,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 787,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 788,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 789,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 791,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 792,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 793,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 794,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 795,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 796,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 797,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 798,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 799,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 800,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 801,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 802,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 803,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 804,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 805,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 807,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 809,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 811,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 812,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 813,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 814,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 815,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 816,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 817,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 818,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 819,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 820,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 821,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 822,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 823,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 824,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 826,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 829,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 830,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 831,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 832,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 833,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 834,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 835,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 836,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 837,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 838,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 839,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 841,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 842,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 843,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 844,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 845,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 846,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 847,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 848,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 849,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 850,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 851,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 852,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 853,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 854,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 855,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 856,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 857,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 858,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 859,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 860,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 861,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 863,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 864,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 866,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 867,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 868,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 869,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 870,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 872,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 873,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 874,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 875,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 876,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 877,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 878,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 880,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 881,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 882,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 883,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 884,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 885,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 887,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 888,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 889,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 891,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 892,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 893,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 894,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 895,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 896,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 898,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 899,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 900,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 901,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 902,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 903,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 904,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 905,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 906,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 907,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 910,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 911,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 912,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 913,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 914,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 915,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 916,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 917,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 919,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 921,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 923,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 924,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 925,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 926,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 927,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 929,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 930,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 932,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 934,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 936,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 938,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 939,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 940,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 941,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 942,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 943,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 944,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 945,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 946,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 947,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 948,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 949,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 951,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 953,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 954,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 955,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 956,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 957,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 958,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 959,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 960,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 961,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 962,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 963,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 964,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 967,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 969,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 970,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 971,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 972,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 973,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 974,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 975,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 976,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 977,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 978,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 979,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 980,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 981,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 983,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 984,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 985,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 986,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 987,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 988,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 989,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 990,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 991,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 992,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 993,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 994,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 995,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 996,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 997,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 998,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 999,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 1000,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 1001,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 1002,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 1003,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 1005,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 1006,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 1007,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 1008,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 1009,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 1010,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 1011,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1012,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 1013,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 1014,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 1016,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 1017,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 1018,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 1019,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 1021,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 1023,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 1024,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 1025,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 1026,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 1027,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 1028,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 1029,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1032,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 1033,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 1034,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 1035,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 1036,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 1037,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 1038,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 1039,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 1040,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 1041,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 1042,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 1043,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 1044,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 1045,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 1046,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 1047,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1048,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 1049,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 1051,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 1053,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 1054,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 1055,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 1056,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 1057,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 1059,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 1060,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 1062,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 1064,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 1065,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1066,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 1068,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 1069,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 1070,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 1071,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 1072,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 1073,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 1074,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 1075,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 1076,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 1077,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 1080,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 1081,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 1082,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 1083,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1084,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 1085,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 1086,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 1087,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 1089,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 1090,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 1091,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 1092,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 1093,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 1094,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 1095,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 1096,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 1098,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 1100,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 1102,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 1104,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 1105,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 1106,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 1108,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 1109,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 1110,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 1111,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 1112,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 1113,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 1114,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 1115,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 1116,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 1117,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 1118,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 1119,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1121,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 1122,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 1123,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 1124,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 1125,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 1126,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 1127,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 1128,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 1129,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 1130,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 1131,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 1132,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 1134,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 1135,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 1136,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 1138,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 1139,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 1141,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 1142,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 1143,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 1145,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1146,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1147,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 1148,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1149,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1150,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 1151,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1152,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 1153,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1154,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 1155,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 1156,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1159,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1161,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1162,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1163,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1165,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1166,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1167,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1168,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1169,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1170,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1173,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1174,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 1175,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 1176,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 1177,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 1178,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 1179,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 1180,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 1181,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1182,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1183,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1184,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1185,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1186,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1187,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1188,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1189,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 2346,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 2347,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 2348,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 2349,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 2350,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 2351,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 2352,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 2353,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 2354,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 2355,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 2356,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 2357,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 2358,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 2359,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 2360,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 2361,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 2362,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 2363,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 2364,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 2365,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 2366,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 2367,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 2368,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 2369,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 2370,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 2371,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 2372,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 2373,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 2374,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 2375,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 2376,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 2377,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 2378,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 2379,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 2380,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 2381,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 2382,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 2383,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 2384,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 2385,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 2386,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 2387,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 2388,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 2389,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 2390,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 2391,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 2392,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 2393,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 2394,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 2395,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 2396,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 2397,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 2398,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 2399,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 2400,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 2401,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 2402,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 2403,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 2404,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

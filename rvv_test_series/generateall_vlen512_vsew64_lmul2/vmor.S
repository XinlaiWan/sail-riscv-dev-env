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
TEST_VMRL_OP( 0,  vmor.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 8,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 10,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 11,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 12,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 13,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 14,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 15,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 16,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 17,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 18,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 19,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 20,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 21,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 22,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 23,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 24,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 25,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 26,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 27,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 28,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 30,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 31,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 32,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 33,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 34,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 35,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 36,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 37,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 38,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 42,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 43,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 44,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 45,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 46,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 49,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 50,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 51,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 52,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 53,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 54,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 55,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 56,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 57,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 58,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 59,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 60,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 61,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 62,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 64,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 66,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 68,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 69,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 70,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 71,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 73,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 74,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 76,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 77,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 78,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 80,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 81,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 82,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 83,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 84,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 85,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 86,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 87,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 88,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 89,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 90,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 91,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 92,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 93,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 94,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 95,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 96,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 97,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 98,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 99,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 100,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 102,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 103,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 107,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 109,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 110,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 112,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 113,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 115,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 116,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 117,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 118,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 119,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 120,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 121,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 122,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 123,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 124,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 125,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 126,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 127,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 128,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 129,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 130,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 131,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 132,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 133,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 134,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 135,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 136,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 137,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 138,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 139,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 140,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 141,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 142,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 143,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 144,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 145,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 146,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 147,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 148,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 149,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 150,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 151,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 152,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 154,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 155,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 156,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 157,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 158,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 159,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 161,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 162,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 163,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 164,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 166,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 169,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 170,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 171,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 172,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 173,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 174,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 176,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 178,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 179,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 180,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 181,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 183,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 184,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 188,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 189,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 192,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 194,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 195,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 196,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 197,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 198,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 199,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 200,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 201,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 202,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 203,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 204,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 206,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 207,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 208,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 209,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 210,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 212,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 213,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 214,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 215,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 216,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 217,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 218,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 220,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 221,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 222,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 223,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 224,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 226,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 227,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 228,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 229,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 230,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 231,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 232,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 234,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 235,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 236,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 237,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 238,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 239,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 240,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 241,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 242,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 243,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 244,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 246,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 247,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 248,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 249,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 251,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 252,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 253,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 254,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 255,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 256,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 257,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 258,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 259,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 260,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 261,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 263,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 264,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 265,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 266,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 267,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 268,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 270,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 271,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 272,  vmor.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 273,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 274,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 276,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 278,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 279,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 280,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 281,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 282,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 283,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 285,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 286,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 287,  vmor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 289,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 290,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 292,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 294,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 295,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 296,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 297,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 298,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 299,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 300,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 301,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 302,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 303,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 304,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 305,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 306,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 308,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 309,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 310,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 312,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 313,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 314,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 315,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 316,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 317,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 318,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 319,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 320,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 321,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 322,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 323,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 326,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 327,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 328,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 329,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 330,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 331,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 332,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 333,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 334,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 335,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 336,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 337,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 338,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 339,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 340,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 341,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 342,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 343,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 344,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 345,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 347,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 349,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 350,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 351,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 353,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 354,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 355,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 356,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 357,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 358,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 359,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 360,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 362,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 364,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 366,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 367,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 368,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 369,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 370,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 371,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 372,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 374,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 375,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 376,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 377,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 379,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 381,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 383,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 384,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 386,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 387,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 390,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 392,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 393,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 394,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 395,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 396,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 397,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 399,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 401,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 403,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 404,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 405,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 408,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 409,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 410,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 411,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 412,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 413,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 414,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 415,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 416,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 417,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 418,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 419,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 420,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 421,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 423,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 424,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 425,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 426,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 427,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 428,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 429,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 430,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 431,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 432,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 433,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 435,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 436,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 437,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 439,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 440,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 441,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 443,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 444,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 446,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 447,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 448,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 449,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 450,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 451,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 452,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 453,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 455,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 457,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 458,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 459,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 460,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 461,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 462,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 463,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 464,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 465,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 466,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 467,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 468,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 469,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 470,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 471,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 473,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 474,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 475,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 476,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 477,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 478,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 479,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 480,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 481,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 482,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 483,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 484,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 485,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 486,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 488,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 489,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 490,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 492,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 493,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 494,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 495,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 496,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 497,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 498,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 499,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 500,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 501,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 502,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 503,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 504,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 505,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 506,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 507,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 508,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 509,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 510,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 511,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 512,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 513,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 514,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 515,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 516,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 517,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 518,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 519,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 521,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 522,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 524,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 525,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 526,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 527,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 528,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 529,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 530,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 531,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 532,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 533,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 534,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 535,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 536,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 537,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 539,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 540,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 542,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 543,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 544,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 545,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 546,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 547,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 548,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 549,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 550,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 551,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 553,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 554,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 555,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 556,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 557,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 558,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 559,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 561,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 562,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 563,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 564,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 565,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 566,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 567,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 568,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 569,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 570,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 571,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 572,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 573,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 574,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 575,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 576,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 577,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 578,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 579,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 580,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 581,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 583,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 584,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 586,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 587,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 588,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 589,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 592,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 593,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 594,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 595,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 596,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 599,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 600,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 601,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 602,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 603,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 604,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 605,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 606,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 607,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 608,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 610,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 611,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 613,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 615,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 616,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 617,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 618,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 619,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 620,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 621,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 622,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 623,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 624,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 625,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 627,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 628,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 630,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 631,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 632,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 633,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 635,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 636,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 637,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 638,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 639,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 640,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 641,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 642,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 643,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 644,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 645,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 647,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 648,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 649,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 650,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 651,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 652,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 653,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 654,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 655,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 656,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 658,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 659,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 660,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 662,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 663,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 664,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 666,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 667,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 668,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 669,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 670,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 671,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 672,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 673,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 676,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 677,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 678,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 679,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 680,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 681,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 682,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 685,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 686,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 687,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 688,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 689,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 690,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 691,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 692,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 693,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 695,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 696,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 697,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 698,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 700,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 701,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 702,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 703,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 706,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 707,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 708,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 711,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 712,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 713,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 714,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 715,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 716,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 717,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 718,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 719,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 720,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 721,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 722,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 723,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 724,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 725,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 726,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 727,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 728,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 729,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 730,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 731,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 732,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 733,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 734,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 735,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 737,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 738,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 739,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 740,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 742,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 743,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 744,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 745,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 746,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 747,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 749,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 753,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 754,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 755,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 756,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 758,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 759,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 760,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 761,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 762,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 763,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 764,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 766,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 767,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 768,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 769,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 770,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 771,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 772,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 773,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 774,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 775,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 776,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 777,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 778,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 779,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 781,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 782,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 783,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 784,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 785,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 786,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 787,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 788,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 789,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 790,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 791,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 792,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 793,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 795,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 796,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 797,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 798,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 800,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 801,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 803,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 804,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 805,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 806,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 807,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 808,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 809,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 810,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 811,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 812,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 814,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 815,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 816,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 817,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 818,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 819,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 820,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 821,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 822,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 823,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 824,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 826,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 827,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 828,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 829,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 830,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 832,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 833,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 834,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 836,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 837,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 838,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 840,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 843,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 844,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 845,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 846,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 847,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 848,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 849,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 850,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 851,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 852,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 853,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 854,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 855,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 856,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 859,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 860,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 861,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 862,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 863,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 864,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 865,  vmor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 866,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 867,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 868,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 869,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 870,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 871,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 873,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 874,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 876,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 877,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 878,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 879,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 880,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 881,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 882,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 883,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 884,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 885,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 886,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 887,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 888,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 889,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 890,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 891,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 892,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 893,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 894,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 896,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 897,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 898,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 899,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 900,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 901,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 902,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 903,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 905,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 906,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 907,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 908,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 909,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 910,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 911,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 913,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 915,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 916,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 917,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 918,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 919,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 920,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 921,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 923,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 924,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 925,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 926,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 927,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 928,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 930,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 931,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 932,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 933,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 934,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 935,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 936,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 938,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 939,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 940,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 941,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 942,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 943,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 944,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 946,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 947,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 948,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 949,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 950,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 951,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 952,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 953,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 954,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 955,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 956,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 957,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 958,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 959,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 960,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 961,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 963,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 964,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 965,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 966,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 967,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 969,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 970,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 971,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 972,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 973,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 974,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 975,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 977,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 978,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 979,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 980,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 981,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 982,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 983,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 984,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 985,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 986,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 987,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 988,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 989,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 990,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 991,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 992,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 993,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 994,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 995,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 996,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 997,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 999,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 1000,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 1001,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 1002,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 1003,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 1004,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 1005,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 1008,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 1009,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 1010,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 1011,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1012,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 1014,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 1015,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 1016,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 1017,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 1018,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 1019,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 1021,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 1022,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 1024,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 1025,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 1026,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 1027,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 1029,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1030,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 1031,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 1032,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 1033,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 1035,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 1036,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 1037,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 1038,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 1039,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 1040,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 1041,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 1043,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 1044,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 1045,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 1046,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 1047,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1048,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 1049,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 1050,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 1051,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 1052,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 1053,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 1054,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 1055,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 1057,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 1058,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 1059,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 1060,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 1061,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 1062,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 1063,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 1064,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 1065,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1066,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 1068,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 1069,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 1070,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 1071,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 1072,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 1073,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 1074,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 1077,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 1078,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 1079,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 1080,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 1081,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 1082,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 1083,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1084,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 1085,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 1087,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 1088,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 1089,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 1090,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 1091,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 1092,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 1093,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 1094,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 1095,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 1096,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 1097,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 1098,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 1101,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1102,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 1103,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 1105,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 1106,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 1107,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 1108,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 1109,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 1110,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 1111,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 1112,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 1113,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 1114,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 1116,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 1117,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 1118,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 1120,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 1121,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 1122,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 1124,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 1125,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 1126,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 1128,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 1129,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 1130,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 1131,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 1132,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 1133,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 1134,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 1135,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 1136,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 1137,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1138,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 1139,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 1140,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 1142,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 1143,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 1144,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 1145,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1146,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1147,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 1148,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1150,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 1151,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1152,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 1153,  vmor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1155,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 1156,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1159,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1161,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1162,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1163,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1165,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1166,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1167,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1168,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1169,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1170,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmor.mm,  64,  0x0000000000000010, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1173,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1174,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 1175,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 1176,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 1177,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 1178,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 1179,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 1180,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 1181,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1182,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1183,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1184,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1185,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1186,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1187,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1188,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1189,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat16 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 2346,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 2347,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 2348,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 2349,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 2350,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 2351,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 2352,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 2353,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 2354,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 2355,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 2356,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 2357,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 2358,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 2359,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 2360,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 2361,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 2362,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 2363,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 2364,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 2365,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 2366,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 2367,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 2368,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 2369,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 2370,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 2371,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 2372,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 2373,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 2374,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 2375,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 2376,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 2377,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 2378,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 2379,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 2380,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 2381,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 2382,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 2383,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 2384,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 2385,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 2386,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 2387,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 2388,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 2389,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 2390,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 2391,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 2392,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 2393,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 2394,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 2395,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 2396,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 2397,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 2398,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 2399,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 2400,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 2401,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 2402,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 2403,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 2404,  vmor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
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
    

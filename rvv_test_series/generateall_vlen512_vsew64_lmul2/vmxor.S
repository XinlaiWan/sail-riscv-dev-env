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
TEST_VMRL_OP( 1,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 7,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 10,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 11,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 12,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 13,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 14,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 15,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 18,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 21,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 24,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 25,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 26,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 27,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 28,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 29,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 30,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 31,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 33,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 34,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 38,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 39,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 40,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 45,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 46,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 48,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 49,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 50,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 51,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 52,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 53,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 55,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 57,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 58,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 59,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 60,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 61,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 62,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 63,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 64,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 65,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 66,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 67,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 68,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 69,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 70,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 71,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 74,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 76,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 77,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 78,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 79,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 81,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 82,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 83,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 84,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 85,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 86,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 87,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 88,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 89,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 90,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 91,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 92,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 93,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 95,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 96,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 97,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 98,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 99,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 100,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 101,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 102,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 103,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 104,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 105,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 106,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 107,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 110,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 111,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 112,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 113,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 115,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 116,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 118,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 119,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 120,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 121,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 122,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 123,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 124,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 125,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 126,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 127,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 130,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 132,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 133,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 134,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 136,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 137,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 138,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 139,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 140,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 141,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 142,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 143,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 144,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 145,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 146,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 148,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 149,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 150,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 151,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 152,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 153,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 154,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 155,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 157,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 158,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 159,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 160,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 161,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 162,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 163,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 165,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 166,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 167,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 168,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 169,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 171,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 172,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 173,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 174,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 175,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 176,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 177,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 178,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 179,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 180,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 181,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 182,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 183,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 184,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 185,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 186,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 187,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 188,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 189,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 190,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 191,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 192,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 193,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 194,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 195,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 196,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 198,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 199,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 201,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 202,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 203,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 204,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 206,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 207,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 208,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 209,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 210,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 211,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 212,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 213,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 215,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 216,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 217,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 218,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 219,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 220,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 221,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 223,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 224,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 226,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 227,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 228,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 229,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 230,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 231,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 232,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 233,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 234,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 236,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 237,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 238,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 239,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 240,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 241,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 242,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 244,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 245,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 246,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 247,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 248,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 249,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 250,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 251,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 252,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 253,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 254,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 255,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 256,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 257,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 259,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 260,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 261,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 262,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 263,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 264,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 265,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 266,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 267,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 268,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 269,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 270,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 271,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 272,  vmxor.mm,  64,  0x0000000000000001, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 274,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 275,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 276,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 279,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 280,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 281,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 283,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 284,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 285,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 286,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 287,  vmxor.mm,  64,  0x0000000000000002, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 288,  vmxor.mm,  64,  0x0000000000000000, walking_ones_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 289,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 290,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 291,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 294,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 295,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 296,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 297,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 300,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 302,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 303,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 304,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 305,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 306,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 307,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 309,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 310,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 311,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 312,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 315,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 316,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 317,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 318,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 319,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 320,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 321,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 322,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 323,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 324,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 325,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 326,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 327,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 332,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 333,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 334,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 335,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 336,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 337,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 339,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 340,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 341,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 344,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 345,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 347,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 348,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 349,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 350,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 351,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 352,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 353,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 354,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 355,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 359,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 360,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 361,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 362,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 364,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 365,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 366,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 367,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 368,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 369,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 370,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 371,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 372,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 374,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 375,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 377,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 378,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 379,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 382,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 383,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 385,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 386,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 387,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 388,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 389,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 390,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 391,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 392,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 393,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 394,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 395,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 396,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 397,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 398,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 399,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 400,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 401,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 402,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 404,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 405,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 406,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 408,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 409,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 411,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 412,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 413,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 414,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 415,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 416,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 418,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 419,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 420,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 421,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 422,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 423,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 424,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 425,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 427,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 428,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 429,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 431,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 432,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 433,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 434,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 435,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 436,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 439,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 440,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 441,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 442,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 443,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 444,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 446,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 447,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 448,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 449,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 450,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 451,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 452,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 453,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 454,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 455,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 456,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 457,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 458,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 459,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 460,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 461,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 462,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 463,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 464,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 466,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 467,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 468,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 470,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 471,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 472,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 473,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 475,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 476,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 477,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 478,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 479,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 480,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 481,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 482,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 483,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 484,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 485,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 486,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 487,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 488,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 489,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 490,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 491,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 492,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 493,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 494,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 496,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 497,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 498,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 499,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 500,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 501,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 502,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 503,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 504,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 505,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 506,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 507,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 508,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 509,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 510,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 511,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 512,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 513,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 514,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 515,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 516,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 517,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 518,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 520,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 521,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 522,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 523,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 524,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 525,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 526,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 528,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 530,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 531,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 532,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 533,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 534,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 535,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 536,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 537,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 538,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 539,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 540,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 541,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 542,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 543,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 544,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 545,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 547,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 548,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 549,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 550,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 551,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 553,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 555,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 556,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 557,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 558,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 559,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 560,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 561,  vmxor.mm,  64,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 562,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 563,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 564,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 565,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 566,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 567,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 569,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 570,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 572,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 573,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 574,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 575,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 576,  vmxor.mm,  64,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 577,  vmxor.mm,  64,  0x0000000000000000, walking_zeros_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 578,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 579,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 580,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 581,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 582,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 583,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 584,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 585,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 586,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 587,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 588,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 589,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 591,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 592,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 593,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 594,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 595,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 596,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 597,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 599,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 600,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 601,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 602,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 603,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 604,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 605,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 606,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 607,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 608,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 609,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 610,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 611,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 612,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 613,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 615,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 616,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 617,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 618,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 619,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 620,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 621,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 622,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 624,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 625,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 626,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 627,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 628,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 629,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 630,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 631,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 632,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 633,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 634,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 635,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 638,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 639,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 640,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 641,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 642,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 643,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 645,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 646,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 649,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 650,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 651,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 652,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 653,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 654,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 655,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 656,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 657,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 658,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 659,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 660,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 661,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 662,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 663,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 664,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 665,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 666,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 667,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 668,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 669,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 670,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 671,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 672,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 673,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 674,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 675,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 676,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 678,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 679,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 680,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 681,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 682,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 683,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 684,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 685,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 686,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 687,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 688,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 689,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 690,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 691,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 692,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 693,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 694,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 695,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 696,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 697,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 698,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 699,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 700,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 701,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 702,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 703,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 704,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 705,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 707,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 709,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 711,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 712,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 713,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 715,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 716,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 717,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 719,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 720,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 722,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 724,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 725,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 726,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 727,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 728,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 729,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 730,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 731,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 732,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 733,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 734,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 735,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 736,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 737,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 738,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 739,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 741,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 743,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 745,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 747,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 748,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 749,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 750,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 751,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 752,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 753,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 754,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 755,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 756,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 757,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 758,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 759,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 760,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 762,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 763,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 764,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 765,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 767,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 768,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 769,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 770,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 771,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 772,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 773,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 774,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 775,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 776,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 777,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 778,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 779,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 780,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 781,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 782,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 783,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 784,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 785,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 786,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 787,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 788,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 789,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 790,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 791,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 792,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 793,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 794,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 795,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 796,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 798,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 799,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 800,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 801,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 802,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 803,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 804,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 805,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 806,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 808,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 810,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 812,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 813,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 814,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 816,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 818,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 819,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 821,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 822,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 823,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 825,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 826,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 827,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 828,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 830,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 831,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 832,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 833,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 834,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 835,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 836,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 837,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 838,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 839,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 840,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 841,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 842,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 843,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 844,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 845,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 847,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 848,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 850,  vmxor.mm,  64,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 851,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 852,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 853,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 855,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 856,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 857,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 859,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 860,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 861,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 862,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 865,  vmxor.mm,  64,  0x000000000000000e, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 866,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 867,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 868,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 869,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 870,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 871,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 872,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 874,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 875,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 876,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 877,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 878,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 879,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 880,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 881,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 882,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 883,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 884,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 885,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 886,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 888,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 889,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 890,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 891,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 892,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 893,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 894,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 895,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 896,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 897,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 898,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 900,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 901,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 902,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 903,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 904,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 905,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 906,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 908,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 909,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 912,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 913,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 914,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 915,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 916,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 917,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 918,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 919,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 921,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 922,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 923,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 924,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 926,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 927,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 928,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 929,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 930,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 931,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 932,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 933,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 934,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 935,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 936,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 939,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 941,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 942,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 944,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 945,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 946,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 947,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 948,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 949,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 950,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 951,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 953,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 954,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 955,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 957,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 958,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 960,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 961,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 963,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 964,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 965,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 966,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 967,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 968,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 969,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 970,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 971,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 972,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 974,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 975,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 976,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 978,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 979,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 980,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 981,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 982,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 983,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 984,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 985,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 986,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 987,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 988,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 989,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 990,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 991,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 992,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 993,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 994,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 995,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 996,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 998,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 999,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 1001,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 1002,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 1003,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 1004,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 1005,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 1006,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 1007,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 1008,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 1009,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 1010,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 1011,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1012,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 1013,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 1014,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 1016,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 1017,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 1018,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 1020,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 1021,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 1022,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 1023,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 1024,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 1025,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 1026,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 1027,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 1028,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 1029,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1030,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 1031,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 1032,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 1033,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 1034,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 1035,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 1036,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 1037,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 1038,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 1039,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 1040,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 1043,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 1044,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 1045,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 1046,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 1047,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1048,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 1049,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 1051,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 1052,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 1054,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 1055,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 1056,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 1057,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 1058,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 1059,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 1060,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 1061,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 1062,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 1063,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 1064,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 1065,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1066,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 1071,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 1072,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 1073,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 1074,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 1076,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 1077,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 1078,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 1079,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 1081,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 1082,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 1083,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1084,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 1085,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 1087,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 1088,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 1089,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 1092,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 1093,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 1094,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 1095,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 1096,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 1098,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 1099,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 1100,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 1101,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1102,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 1103,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 1104,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 1105,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 1107,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 1108,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 1110,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 1112,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 1113,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 1114,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 1115,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 1116,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 1117,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 1118,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 1119,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1120,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 1121,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 1122,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 1123,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 1124,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 1125,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 1126,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 1127,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 1128,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 1129,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 1130,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 1131,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 1132,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 1133,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 1134,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 1135,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 1136,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 1137,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1138,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 1139,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 1140,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 1141,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 1142,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 1143,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 1145,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1147,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 1148,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1149,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1150,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 1151,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1152,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 1153,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1154,  vmxor.mm,  64,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 1156,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1159,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1161,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1162,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1163,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1165,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1166,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1167,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1168,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1169,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1170,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmxor.mm,  64,  0x0000000000000010, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1173,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1174,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 1175,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 1176,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 1177,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 1178,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 1179,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 1180,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 1181,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1182,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1183,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1184,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1185,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1186,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1187,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1188,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1189,  vmxor.mm,  64,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat16 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 2346,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 2347,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 2348,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 2349,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 2350,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 2351,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 2352,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 2353,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 2354,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 2355,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 2356,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 2357,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 2358,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 2359,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 2360,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 2361,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 2362,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 2363,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 2364,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 2365,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 2366,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 2367,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 2368,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 2369,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 2370,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 2371,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 2372,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 2373,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 2374,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 2375,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 2376,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 2377,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 2378,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 2379,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 2380,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 2381,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 2382,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 2383,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 2384,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 2385,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 2386,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 2387,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 2388,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 2389,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 2390,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 2391,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 2392,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 2393,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 2394,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 2395,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 2396,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 2397,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 2398,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 2399,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 2400,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 2401,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 2402,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 2403,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 2404,  vmxor.mm,  64,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
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
    

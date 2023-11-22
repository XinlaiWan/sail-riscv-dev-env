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
                MK_VLE_INST(sew) v16, (x1); \
                vmseq.vi v1, v8, 1; \
                vmseq.vi v17, v16, 1; \
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
TEST_VMRL_OP( 0,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 10,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 11,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 13,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 14,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 15,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 16,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 17,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 18,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 19,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 20,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 26,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 27,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 28,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 29,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 30,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 31,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 32,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 33,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 34,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 35,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 36,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 40,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 45,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 46,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 47,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 49,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 50,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 51,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 52,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 53,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 54,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 55,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 56,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 57,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 58,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 59,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 60,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 61,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 62,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 63,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 64,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 65,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 66,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 67,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 68,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 69,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 70,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 71,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 72,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 73,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 74,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 75,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 76,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 77,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 78,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 80,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmnand.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 82,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 83,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 84,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 85,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 86,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 87,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 88,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 89,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 90,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 91,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 92,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 93,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 94,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 95,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 96,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 97,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 98,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 99,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 100,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 101,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 102,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 103,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 104,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 105,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 106,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 107,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 108,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 109,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 110,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 111,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 112,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 113,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 114,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 115,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 116,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 117,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 118,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 119,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 120,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 121,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 122,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 123,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 124,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 125,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 126,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 127,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 128,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 129,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 130,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 131,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 132,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 133,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 134,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 135,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 136,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 137,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 138,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 139,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 140,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 141,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 142,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 143,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 144,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 145,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 146,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 147,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 148,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 149,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 150,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 151,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 152,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 153,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 154,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 155,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 156,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 157,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 158,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 159,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 160,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 161,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 162,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 163,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 164,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 165,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 166,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 167,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 168,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 169,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 170,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 171,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 172,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 173,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 174,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 175,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 176,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 177,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 178,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 179,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 180,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 181,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 182,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 183,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 184,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 185,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 186,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 187,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 188,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 189,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 190,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 191,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 192,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 193,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 194,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 195,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 196,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 197,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 198,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 199,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 200,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 201,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 202,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 203,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 204,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 205,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 206,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 207,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 208,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 209,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 210,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 211,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 212,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 213,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 214,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 215,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 216,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 217,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 218,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 219,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 220,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 221,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 222,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 223,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 224,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 225,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 226,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 227,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 228,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 229,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 230,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 231,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 232,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 233,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 234,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 235,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 236,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 237,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 238,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 239,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 240,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 241,  vmnand.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 242,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 243,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 244,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 245,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 246,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 247,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 248,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 249,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 250,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 251,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 252,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 253,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 254,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 255,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 256,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 257,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 258,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 259,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 260,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 261,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 262,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 263,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 264,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 265,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 266,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 267,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 268,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 269,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 270,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 271,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 272,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 273,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 274,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 275,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 276,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 277,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 278,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 280,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 281,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 282,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 283,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 284,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 285,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 286,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 287,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 288,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 289,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 290,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 291,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 292,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 293,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 294,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 295,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 296,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 297,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 300,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 302,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 303,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 305,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 306,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 308,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 309,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 310,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 311,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 312,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 313,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 314,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 315,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 316,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 317,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 318,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 319,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 320,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 321,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 322,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 323,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 324,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 326,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 327,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 328,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 330,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 332,  vmnand.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 333,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 334,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 335,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 337,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 338,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 339,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 340,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmnand.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_ones_dat8 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 666,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 667,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 668,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 669,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 670,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 671,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 672,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 673,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 674,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 675,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 676,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 677,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 678,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 679,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 680,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 681,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 682,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 683,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 684,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 685,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 686,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 687,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 688,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 689,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 690,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 691,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 692,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 693,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 694,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 695,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 696,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 697,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 698,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 699,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 700,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 701,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 702,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 703,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 704,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 705,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 706,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 707,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 708,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 709,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 710,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 711,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 712,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 713,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 714,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 715,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 716,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 717,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 718,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 719,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 720,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 721,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 722,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 723,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 724,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 725,  vmnand.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
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

walking_ones_dat1:
	.word	0x1
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

walking_ones_dat3:
	.word	0x0
	.word	0x0
	.word	0x1
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

walking_ones_dat5:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
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

walking_ones_dat7:
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x0
	.word	0x1
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

walking_zeros_dat0:
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

walking_zeros_dat2:
	.word	0x1
	.word	0x0
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

walking_zeros_dat4:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
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

walking_zeros_dat6:
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x1
	.word	0x0
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

walking_zeros_dat8:
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
    

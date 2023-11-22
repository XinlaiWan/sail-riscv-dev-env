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
TEST_VMRL_OP( 0,  vmor.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 10,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 11,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 13,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 14,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 15,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 16,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 17,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 18,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 19,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 20,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 26,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 27,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 28,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 29,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 30,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 31,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 32,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 33,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 34,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 35,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 36,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 40,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 45,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 46,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 47,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 49,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 50,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 51,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 52,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 53,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 54,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 55,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 56,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 57,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 58,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 59,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 60,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 61,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 62,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 63,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 64,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 65,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 66,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 67,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 68,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 69,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 70,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 71,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 72,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 73,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 74,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 75,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 76,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 77,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 78,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 80,  vmor.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 82,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 83,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 84,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 85,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 86,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 87,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 88,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 89,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 90,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 91,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 92,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 93,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 94,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 95,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 96,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 97,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 98,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 99,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 100,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 101,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 102,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 103,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 104,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 105,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 106,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 107,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 108,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 109,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 110,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 111,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 112,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 113,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 114,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 115,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 116,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 117,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 118,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 119,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 120,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 121,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 122,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 123,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 124,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 125,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 126,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 127,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 128,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 129,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 130,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 131,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 132,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 133,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 134,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 135,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 136,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 137,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 138,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 139,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 140,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 141,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 142,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 143,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 144,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 145,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 146,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 147,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 148,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 149,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 150,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 151,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 152,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 153,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 154,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 155,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 156,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 157,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 158,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 159,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 160,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 161,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 162,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 163,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 164,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 165,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 166,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 167,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 168,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 169,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 170,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 171,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 172,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 173,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 174,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 175,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 176,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 177,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 178,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 179,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 180,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 181,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 182,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 183,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 184,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 185,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 186,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 187,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 188,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 189,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 190,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 191,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 192,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 193,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 194,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 195,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 196,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 197,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 198,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 199,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 200,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 201,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 202,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 203,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 204,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 205,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 206,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 207,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 208,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 209,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 210,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 211,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 212,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 213,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 214,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 215,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 216,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 217,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 218,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 219,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 220,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 221,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 222,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 223,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 224,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 225,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 226,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 227,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 228,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 229,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 230,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 231,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 232,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 233,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 234,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 235,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 236,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 237,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 238,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 239,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 240,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 241,  vmor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 242,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 243,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 244,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 245,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 246,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 247,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 248,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 249,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 250,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 251,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 252,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 253,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 254,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 255,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 256,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 257,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 258,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 259,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 260,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 261,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 262,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 263,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 264,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 265,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 266,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 267,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 268,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 269,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 270,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 271,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 272,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 273,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 274,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 275,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 276,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 277,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 278,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 280,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 281,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 282,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 283,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 284,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 285,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 286,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 287,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 288,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 289,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 290,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 291,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 292,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 293,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 294,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 295,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 296,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 297,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 300,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 302,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 303,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 305,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 306,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 308,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 309,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 310,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 311,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 312,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 313,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 314,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 315,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 316,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 317,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 318,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 319,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 320,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 321,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 322,  vmor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 323,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 324,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 326,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 327,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 328,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 330,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 332,  vmor.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 333,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 334,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 335,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 337,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 338,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 339,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 340,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_ones_dat8 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 666,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 667,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 668,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 669,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 670,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 671,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 672,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 673,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 674,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 675,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 676,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 677,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 678,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 679,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 680,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 681,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 682,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 683,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 684,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 685,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 686,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 687,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 688,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 689,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 690,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 691,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 692,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 693,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 694,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 695,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 696,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 697,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 698,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 699,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 700,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 701,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 702,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 703,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 704,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 705,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 706,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 707,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 708,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 709,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 710,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 711,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 712,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 713,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 714,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 715,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 716,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 717,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 718,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 719,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 720,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 721,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 722,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 723,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 724,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 725,  vmor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
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
    

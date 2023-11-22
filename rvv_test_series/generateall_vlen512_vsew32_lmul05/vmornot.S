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
TEST_VMRL_OP( 0,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 10,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 11,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 13,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 14,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 15,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 16,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 17,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 18,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 19,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 20,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 26,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 27,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 28,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 29,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 30,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 31,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 32,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 33,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 34,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 35,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 36,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 40,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 45,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 46,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 47,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 49,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 50,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 51,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 52,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 53,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 54,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 55,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 56,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 57,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 58,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 59,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 60,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 61,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 62,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 63,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 64,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 65,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 66,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 67,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 68,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 69,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 70,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 71,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 72,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 73,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 74,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 75,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 76,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 77,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 78,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 80,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 82,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 83,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 84,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 85,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 86,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 87,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 88,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 89,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 90,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 91,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 92,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 93,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 94,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 95,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 96,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 97,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 98,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 99,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 100,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 101,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 102,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 103,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 104,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 105,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 106,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 107,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 108,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 109,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 110,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 111,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 112,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 113,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 114,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 115,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 116,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 117,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 118,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 119,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 120,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 121,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 122,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 123,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 124,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 125,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 126,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 127,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 128,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 129,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 130,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 131,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 132,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 133,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 134,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 135,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 136,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 137,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 138,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 139,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 140,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 141,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 142,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 143,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 144,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 145,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 146,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 147,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 148,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 149,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 150,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 151,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 152,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 153,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 154,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 155,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 156,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 157,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 158,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 159,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 160,  vmornot.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 161,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 162,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 163,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 164,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 165,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 166,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 167,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 168,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 169,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 170,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 171,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 172,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 173,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 174,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 175,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 176,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 177,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 178,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 179,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 180,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 181,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 182,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 183,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 184,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 185,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 186,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 187,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 188,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 189,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 190,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 191,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 192,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 193,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 194,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 195,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 196,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 197,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 198,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 199,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 200,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 201,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 202,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 203,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 204,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 205,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 206,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 207,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 208,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 209,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 210,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 211,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 212,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 213,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 214,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 215,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 216,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 217,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 218,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 219,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 220,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 221,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 222,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 223,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 224,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 225,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 226,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 227,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 228,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 229,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 230,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 231,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 232,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 233,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 234,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 235,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 236,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 237,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 238,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 239,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 240,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 241,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 242,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 243,  vmornot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 244,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 245,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 246,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 247,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 248,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 249,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 250,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 251,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 252,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 253,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 254,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 255,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 256,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 257,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 258,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 259,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 260,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 261,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 262,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 263,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 264,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 265,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 266,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 267,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 268,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 269,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 270,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 271,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 272,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 273,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 274,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 275,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 276,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 277,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 278,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 280,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 281,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 282,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 283,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 284,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 285,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 286,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 287,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 288,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 289,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 290,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 291,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 292,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 293,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 294,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 295,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 296,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 297,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 300,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 302,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 303,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 305,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 306,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 308,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 309,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 310,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 311,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 312,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 313,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 314,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 315,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 316,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 317,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 318,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 319,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 320,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 321,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 322,  vmornot.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 323,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 324,  vmornot.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 326,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 327,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 328,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 330,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 332,  vmornot.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 333,  vmornot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 334,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 335,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 337,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 338,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 339,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 340,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmornot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat8 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 666,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 667,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 668,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 669,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 670,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 671,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 672,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 673,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 674,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 675,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 676,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 677,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 678,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 679,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 680,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 681,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 682,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 683,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 684,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 685,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 686,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 687,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 688,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 689,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 690,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 691,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 692,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 693,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 694,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 695,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 696,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 697,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 698,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 699,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 700,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 701,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 702,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 703,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 704,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 705,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 706,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 707,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 708,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 709,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 710,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 711,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 712,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 713,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 714,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 715,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 716,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 717,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 718,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 719,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 720,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 721,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 722,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 723,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 724,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 725,  vmornot.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat1 );
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
    

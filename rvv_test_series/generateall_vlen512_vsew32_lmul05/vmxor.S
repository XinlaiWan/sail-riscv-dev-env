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
TEST_VMRL_OP( 0,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 10,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 11,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 13,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 14,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 15,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 16,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 17,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 18,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 19,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 20,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 26,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 27,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 28,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 29,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 30,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 31,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 32,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 33,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 34,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 35,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 36,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 40,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 45,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 46,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 47,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 49,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 50,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 51,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 52,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 53,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 54,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 55,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 56,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 57,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 58,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 59,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 60,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 61,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 62,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 63,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 64,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 65,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 66,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 67,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 68,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 69,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 70,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 71,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 72,  vmxor.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 73,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 74,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 75,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 76,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 77,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 78,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmxor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 80,  vmxor.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 82,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 83,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 84,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 85,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 86,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 87,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 88,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 89,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 90,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 91,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 92,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 93,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 94,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 95,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 96,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 97,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 98,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 99,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 100,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 101,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 102,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 103,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 104,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 105,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 106,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 107,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 108,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 109,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 110,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 111,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 112,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 113,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 114,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 115,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 116,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 117,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 118,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 119,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 120,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 121,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 122,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 123,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 124,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 125,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 126,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 127,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 128,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 129,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 130,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 131,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 132,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 133,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 134,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 135,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 136,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 137,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 138,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 139,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 140,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 141,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 142,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 143,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 144,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 145,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 146,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 147,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 148,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 149,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 150,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 151,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 152,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 153,  vmxor.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 154,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 155,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 156,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 157,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 158,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 159,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 160,  vmxor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 161,  vmxor.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 162,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 163,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 164,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 165,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 166,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 167,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 168,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 169,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 170,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 171,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 172,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 173,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 174,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 175,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 176,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 177,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 178,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 179,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 180,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 181,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 182,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 183,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 184,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 185,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 186,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 187,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 188,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 189,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 190,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 191,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 192,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 193,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 194,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 195,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 196,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 197,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 198,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 199,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 200,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 201,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 202,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 203,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 204,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 205,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 206,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 207,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 208,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 209,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 210,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 211,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 212,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 213,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 214,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 215,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 216,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 217,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 218,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 219,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 220,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 221,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 222,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 223,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 224,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 225,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 226,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 227,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 228,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 229,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 230,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 231,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 232,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 233,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 234,  vmxor.mm,  32,  0x0000000000000007, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 235,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 236,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 237,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 238,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 239,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 240,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 241,  vmxor.mm,  32,  0x0000000000000006, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 242,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 243,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 244,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 245,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 246,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 247,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 248,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 249,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 250,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 251,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 252,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 253,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 254,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 255,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 256,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 257,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 258,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 259,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 260,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 261,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 262,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 263,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 264,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 265,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 266,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 267,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 268,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 269,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 270,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 271,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 272,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 273,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 274,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 275,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 276,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 277,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 278,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 280,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 281,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 282,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 283,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 284,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 285,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 286,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 287,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 288,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 289,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 290,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 291,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 292,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 293,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 294,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 295,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 296,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 297,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 300,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 302,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 303,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 305,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 306,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 308,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 309,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 310,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 311,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 312,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 313,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 314,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 315,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 316,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 317,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 318,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 319,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 320,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 321,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 322,  vmxor.mm,  32,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 323,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 324,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 326,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 327,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 328,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 330,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 332,  vmxor.mm,  32,  0x0000000000000008, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 333,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 334,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 335,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 337,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 338,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 339,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 340,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmxor.mm,  32,  0x0000000000000008, walking_zeros_dat8, walking_ones_dat8 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 666,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 667,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 668,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 669,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 670,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 671,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 672,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 673,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 674,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 675,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 676,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 677,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 678,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 679,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 680,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 681,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 682,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 683,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 684,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 685,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 686,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 687,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 688,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 689,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 690,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 691,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 692,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 693,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 694,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 695,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 696,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 697,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 698,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 699,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 700,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 701,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 702,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 703,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 704,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 705,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 706,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 707,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 708,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 709,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 710,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 711,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 712,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 713,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 714,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 715,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 716,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 717,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 718,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 719,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 720,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 721,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 722,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 723,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 724,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 725,  vmxor.mm,  32,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
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
    

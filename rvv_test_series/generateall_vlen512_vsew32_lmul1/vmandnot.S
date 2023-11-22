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
    # vmandnot.S
    #-----------------------------------------------------------------------------
    #
    # Test vmandnot instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmandnot)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmandnot tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 0,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 9,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 10,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 11,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 12,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 13,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 14,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 15,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 16,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 18,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 19,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 20,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 23,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 24,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 27,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 28,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 29,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 30,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 31,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 32,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 33,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 34,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 36,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 38,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 39,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 40,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 42,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 43,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 45,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 46,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 48,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 49,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 50,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 51,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 52,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 53,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 54,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 56,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 57,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 58,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 59,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 60,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 63,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 64,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 66,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 67,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 68,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 69,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 70,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 71,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 73,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 74,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 76,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 77,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 78,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 80,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 81,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 82,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 83,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 84,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 87,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 88,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 89,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 90,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 91,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 92,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 94,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 95,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 96,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 97,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 98,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 99,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 100,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 101,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 102,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 103,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 104,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 105,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 106,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 107,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 109,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 110,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 111,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 112,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 113,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 115,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 116,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 117,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 118,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 119,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 120,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 121,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 122,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 123,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 124,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 125,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 126,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 127,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 128,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 129,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 130,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 131,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 132,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 133,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 134,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 136,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 138,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 139,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 140,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 143,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 145,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 146,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 147,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 149,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 150,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 155,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 156,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 157,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 158,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 159,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 160,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 161,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 162,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 164,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 166,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 167,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 168,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 169,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 170,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 171,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 172,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 174,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 175,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 176,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 177,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 179,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 180,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 181,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 182,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 184,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 185,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 186,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 187,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 188,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 189,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 191,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 192,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 193,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 194,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 195,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 196,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 198,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 199,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 200,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 201,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 202,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 204,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 206,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 207,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 208,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 209,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 210,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 211,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 212,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 213,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 214,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 215,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 216,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 217,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 218,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 219,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 220,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 221,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 222,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 223,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 225,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 226,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 227,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 228,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 229,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 230,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 231,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 233,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 236,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 237,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 238,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 239,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 240,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 241,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 242,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 243,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 244,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 245,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 246,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 247,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 248,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 249,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 250,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 251,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 252,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 254,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 255,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 257,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 258,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 260,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 261,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 262,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 264,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 265,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 266,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 268,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 269,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 270,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 271,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 272,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 273,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 274,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 275,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 276,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 278,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 279,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 280,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 283,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 284,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 285,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 286,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 288,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 289,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 290,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 291,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 292,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 293,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 295,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 296,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 297,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 298,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 299,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 300,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 301,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 302,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 303,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 304,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 305,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 306,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 307,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 308,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 309,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 310,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 311,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 312,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 313,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 314,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 315,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 316,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 317,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 318,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 319,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 322,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 323,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 326,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 327,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 328,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 329,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 330,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 331,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 332,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 333,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 334,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 335,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 336,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 337,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 338,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 340,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 341,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 342,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 343,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 344,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 345,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 346,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 347,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 348,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 349,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 351,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 353,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 354,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 355,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 356,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 357,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 358,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 360,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 361,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 362,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 363,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 365,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 367,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 368,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 369,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 370,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 371,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 372,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 373,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 374,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 375,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 376,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 378,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 379,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 380,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 381,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 382,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 383,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 384,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 385,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 386,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 387,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 388,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 389,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 390,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 391,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 392,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 393,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 394,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 395,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 396,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 397,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 398,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 399,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 400,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 402,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 403,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 404,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 405,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 406,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 407,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 408,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 409,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 410,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 411,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 413,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 414,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 416,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 417,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 419,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 420,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 421,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 422,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 423,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 425,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 426,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 427,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 428,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 429,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 430,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 431,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 432,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 433,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 434,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 435,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 437,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 438,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 439,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 440,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 441,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 442,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 443,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 444,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 447,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 448,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 449,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 450,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 452,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 453,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 454,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 455,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 456,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 457,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 458,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 460,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 461,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 462,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 463,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 464,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 465,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 466,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 467,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 468,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 470,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 471,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 472,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 473,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 474,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 475,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 476,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 478,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 479,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 480,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 481,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 483,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 484,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 485,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 486,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 487,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 488,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 489,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 491,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 492,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 494,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 495,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 496,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 497,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 499,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 500,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 501,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 502,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 503,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 504,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 505,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 506,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 507,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 508,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 509,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 510,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 512,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 513,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 514,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 515,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 516,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 517,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 519,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 520,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 521,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 522,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 523,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 524,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 525,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 526,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 527,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 529,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 530,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 532,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 533,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 534,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 535,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 536,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 537,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 538,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 539,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 540,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 541,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 542,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 543,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 544,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 546,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 547,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 548,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 549,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 551,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 552,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 553,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 554,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 555,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 557,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 558,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 559,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 560,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 561,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 562,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 563,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 564,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 565,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 566,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 567,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 570,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 572,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 573,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 575,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 576,  vmandnot.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 577,  vmandnot.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 578,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 579,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 580,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 581,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 582,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 583,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 585,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 586,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 587,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 588,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 589,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 590,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 592,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 593,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 595,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 596,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 597,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 598,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 599,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 601,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 602,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 603,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 604,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 605,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 606,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 608,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 610,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 611,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 612,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 613,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 615,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 616,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 619,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 620,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 621,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 624,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 625,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 626,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 628,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 629,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 630,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 631,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 632,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 633,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 634,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 635,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 636,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 637,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 638,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 639,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 640,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 641,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 642,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 643,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 644,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 645,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 646,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 647,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 648,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 649,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 650,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 651,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 652,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 654,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 655,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 656,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 657,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 658,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 659,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 661,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 663,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 664,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 665,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 666,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 667,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 668,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 669,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 670,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 671,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 672,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 674,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 675,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 676,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 677,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 680,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 681,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 683,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 684,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 685,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 686,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 687,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 688,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 689,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 690,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 691,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 692,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 693,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 694,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 695,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 696,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 697,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 698,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 699,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 700,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 702,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 704,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 705,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 706,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 707,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 708,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 709,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 710,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 711,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 712,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 713,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 714,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 715,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 716,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 717,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 718,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 720,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 721,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 722,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 723,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 724,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 725,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 726,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 727,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 728,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 729,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 730,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 731,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 732,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 733,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 734,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 736,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 737,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 738,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 739,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 740,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 741,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 742,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 743,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 744,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 745,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 746,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 747,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 748,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 749,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 750,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 751,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 752,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 753,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 754,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 755,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 756,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 757,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 758,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 759,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 760,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 761,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 762,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 763,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 764,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 765,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 766,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 767,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 768,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 769,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 770,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 771,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 772,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 773,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 774,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 775,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 776,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 777,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 779,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 781,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 782,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 784,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 785,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 787,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 788,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 789,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 790,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 791,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 792,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 793,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 794,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 795,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 796,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 797,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 798,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 799,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 800,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 801,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 802,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 803,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 804,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 805,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 806,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 807,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 808,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 809,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 810,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 811,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 813,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 814,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 815,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 816,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 817,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 818,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 820,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 821,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 822,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 823,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 824,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 825,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 826,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 827,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 828,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 829,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 830,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 831,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 832,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 833,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 834,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 835,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 837,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 838,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 839,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 840,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 841,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 842,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 843,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 844,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 846,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 847,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 848,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 849,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 850,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 851,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 852,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 854,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 855,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 856,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 857,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 859,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 861,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 862,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 864,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 865,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 866,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 867,  vmandnot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 868,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 869,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 870,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 871,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 872,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 873,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 874,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 875,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 876,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 877,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 878,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 879,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 880,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 881,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 882,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 884,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 887,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 888,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 889,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 890,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 891,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 892,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 894,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 895,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 896,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 898,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 899,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 900,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 901,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 903,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 904,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 905,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 906,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 907,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 908,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 909,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 910,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 911,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 912,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 913,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 914,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 916,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 917,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 918,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 919,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 920,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 922,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 923,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 924,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 925,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 927,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 928,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 929,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 930,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 931,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 933,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 934,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 935,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 936,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 937,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 938,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 939,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 940,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 941,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 942,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 943,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 944,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 945,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 946,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 948,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 949,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 950,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 951,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 952,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 953,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 954,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 955,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 956,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 957,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 958,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 959,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 960,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 961,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 962,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 963,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 965,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 966,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 967,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 968,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 969,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 970,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 971,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 972,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 973,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 974,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 975,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 976,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 977,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 978,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 979,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 980,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 981,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 982,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 983,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 984,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 985,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 986,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 987,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 989,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 990,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 991,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 992,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 993,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 994,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 995,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 997,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 998,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 999,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 1000,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 1001,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 1002,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 1003,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 1004,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 1005,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 1007,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 1008,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 1009,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 1010,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 1011,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1013,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 1014,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 1015,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 1016,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 1017,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 1018,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 1019,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 1021,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 1022,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 1024,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 1026,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 1029,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1031,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 1032,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 1033,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 1035,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 1037,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 1038,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 1039,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 1040,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 1041,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 1042,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 1043,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 1044,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 1045,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 1046,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 1047,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1048,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 1049,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 1050,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 1051,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 1052,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 1053,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 1054,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 1055,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 1057,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 1058,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 1060,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 1061,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 1062,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 1063,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 1064,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 1065,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1066,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 1068,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 1069,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 1070,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 1072,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 1073,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 1074,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 1075,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 1076,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 1077,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 1078,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 1079,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 1080,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 1081,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 1083,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1085,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 1086,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 1087,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 1089,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 1090,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 1091,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 1093,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 1094,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 1095,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 1096,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 1097,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 1098,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 1099,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 1101,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1103,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 1104,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 1105,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 1106,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 1107,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 1108,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 1109,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 1110,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 1111,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 1112,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 1113,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 1114,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 1116,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 1117,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 1119,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1120,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 1121,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 1122,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 1123,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 1126,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 1127,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 1128,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 1129,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 1130,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 1131,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 1132,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 1133,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 1134,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 1135,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 1136,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 1137,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1138,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 1139,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 1140,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 1141,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 1142,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 1143,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 1144,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 1145,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1146,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1147,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 1148,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1149,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1150,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 1151,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1152,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 1153,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1154,  vmandnot.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 1155,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 1156,  vmandnot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1159,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1161,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1162,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1163,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1165,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1166,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1167,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1168,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1169,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1170,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmandnot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1173,  vmandnot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1174,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 1175,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 1176,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 1177,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 1178,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 1179,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 1180,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 1181,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1182,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1183,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1184,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1185,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1186,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1187,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1188,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1189,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat16 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 2346,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 2347,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 2348,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 2349,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 2350,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 2351,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 2352,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 2353,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 2354,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 2355,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 2356,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 2357,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 2358,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 2359,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 2360,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 2361,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 2362,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 2363,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 2364,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 2365,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 2366,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 2367,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 2368,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 2369,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 2370,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 2371,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 2372,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 2373,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 2374,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 2375,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 2376,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 2377,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 2378,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 2379,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 2380,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 2381,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 2382,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 2383,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 2384,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 2385,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 2386,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 2387,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 2388,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 2389,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 2390,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 2391,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 2392,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 2393,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 2394,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 2395,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 2396,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 2397,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 2398,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 2399,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 2400,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 2401,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 2402,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 2403,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 2404,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 2405,  vmandnot.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
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
    

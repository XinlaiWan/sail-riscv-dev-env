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
TEST_VMRL_OP( 0,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 6,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 10,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 12,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 13,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 14,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 15,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 16,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 17,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 18,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 19,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 22,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 25,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 26,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 27,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 28,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 29,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 30,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 31,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 32,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 33,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 34,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 35,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 36,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 37,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 38,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 39,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 41,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 42,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 43,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 46,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 48,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 50,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 51,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 52,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 53,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 54,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 55,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 56,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 57,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 58,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 59,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 61,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 62,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 63,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 64,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 65,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 66,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 67,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 68,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 70,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 71,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 73,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 74,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 77,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 78,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 79,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 80,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 81,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 82,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 83,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 84,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 85,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 86,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 87,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 88,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 91,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 92,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 93,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 94,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 96,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 97,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 98,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 99,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 100,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 101,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 102,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 103,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 104,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 105,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 106,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 107,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 109,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 110,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 111,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 112,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 113,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 115,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 116,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 120,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 122,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 123,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 124,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 125,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 127,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 130,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 131,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 132,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 133,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 135,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 136,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 137,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 138,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 139,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 140,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 141,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 142,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 143,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 144,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 145,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 146,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 148,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 149,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 150,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 151,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 152,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 153,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 154,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 155,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 156,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 157,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 158,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 159,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 160,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 161,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 162,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 164,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 165,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 166,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 167,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 168,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 169,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 170,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 172,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 173,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 174,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 176,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 177,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 178,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 179,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 180,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 181,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 182,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 183,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 184,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 185,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 186,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 187,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 188,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 189,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 190,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 191,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 192,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 194,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 195,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 197,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 198,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 199,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 200,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 203,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 204,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 206,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 207,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 208,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 209,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 210,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 211,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 212,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 215,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 216,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 217,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 219,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 220,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 221,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 222,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 223,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 224,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 226,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 227,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 228,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 229,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 231,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 232,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 234,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 235,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 236,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 238,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 239,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 240,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 241,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 242,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 243,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 244,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 245,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 246,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 247,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 248,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 249,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 250,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 251,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 252,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 253,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 254,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 255,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 256,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 258,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 259,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 260,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 261,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 262,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 263,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 264,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 265,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 266,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 267,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 268,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 269,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 270,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 271,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 272,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 273,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 274,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 275,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 276,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 278,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 279,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 280,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 281,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 282,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 284,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 285,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 286,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 287,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 289,  vmnand.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 290,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 291,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 292,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 293,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 294,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 295,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 296,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 297,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 298,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 299,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 300,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 301,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 302,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 303,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 304,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 305,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 306,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 308,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 309,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 310,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 311,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 312,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 313,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 314,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 315,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 316,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 317,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 318,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 319,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 320,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 321,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 322,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 323,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 324,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 325,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 326,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 327,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 328,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 329,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 330,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 331,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 332,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 333,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 334,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 335,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 336,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 338,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 339,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 340,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 341,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 342,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 343,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 344,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 345,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 346,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 347,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 349,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 350,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 351,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 352,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 353,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 356,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 357,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 358,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 360,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 361,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 363,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 364,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 365,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 366,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 367,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 368,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 369,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 370,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 371,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 372,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 374,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 375,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 376,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 377,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 378,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 379,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 382,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 383,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 384,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 385,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 386,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 387,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 388,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 390,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 391,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 393,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 394,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 395,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 396,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 397,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 401,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 402,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 403,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 404,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 406,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 407,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 408,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 409,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 410,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 411,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 412,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 413,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 414,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 415,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 416,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 417,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 418,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 419,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 421,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 423,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 425,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 426,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 428,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 429,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 430,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 431,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 432,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 433,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 434,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 435,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 436,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 437,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 438,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 439,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 440,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 441,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 442,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 443,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 444,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 446,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 447,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 450,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 451,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 452,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 453,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 454,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 455,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 456,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 457,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 458,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 459,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 460,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 461,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 462,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 464,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 465,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 466,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 467,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 468,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 469,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 470,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 472,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 473,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 474,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 475,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 476,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 477,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 478,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 479,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 480,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 481,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 482,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 484,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 485,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 486,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 487,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 488,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 489,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 491,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 492,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 494,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 496,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 498,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 499,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 500,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 501,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 502,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 503,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 504,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 505,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 506,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 507,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 509,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 510,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 511,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 512,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 513,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 514,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 515,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 516,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 517,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 518,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 519,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 520,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 521,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 522,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 523,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 524,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 525,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 526,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 527,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 528,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 529,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 530,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 532,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 534,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 535,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 536,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 537,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 538,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 539,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 540,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 541,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 543,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 544,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 546,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 547,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 548,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 549,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 551,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 552,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 554,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 555,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 556,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 557,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 558,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 559,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 560,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 561,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 562,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 563,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 564,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 565,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 567,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 570,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 572,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 573,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 574,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 575,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 576,  vmnand.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 577,  vmnand.mm,  32,  0x0000000000000001, walking_zeros_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 578,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 579,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 580,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 582,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 583,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 584,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 585,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 587,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 589,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 591,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 592,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 594,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 595,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 596,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 597,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 598,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 599,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 600,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 601,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 602,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 603,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 606,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 607,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 608,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 609,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 610,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 611,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 612,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 613,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 614,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 616,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 617,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 618,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 619,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 620,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 621,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 622,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 623,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 625,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 626,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 627,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 628,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 629,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 630,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 631,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 632,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 633,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 634,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 636,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 637,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 638,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 639,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 640,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 641,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 642,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 643,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 644,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 645,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 646,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 647,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 648,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 650,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 651,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 652,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 653,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 654,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 655,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 656,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 657,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 658,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 659,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 660,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 661,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 663,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 664,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 665,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 666,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 667,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 668,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 669,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 670,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 671,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 672,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 673,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 674,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 675,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 676,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 678,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 679,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 680,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 681,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 682,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 683,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 684,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 685,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 686,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 687,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 688,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 689,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 690,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 691,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 692,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 693,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 694,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 695,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 696,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 699,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 700,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 701,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 702,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 703,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 704,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 705,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 706,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 708,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 709,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 710,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 711,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 712,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 713,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 714,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 715,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 717,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 718,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 719,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 721,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 722,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 723,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 724,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 725,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 726,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 728,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 729,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 730,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 731,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 732,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 733,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 734,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 736,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 737,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 740,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 741,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 742,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 743,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 744,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 745,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 749,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 751,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 752,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 754,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 755,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 756,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 757,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 758,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 759,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 760,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 761,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 762,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 763,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 764,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 765,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 766,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 768,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 770,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 771,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 772,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 773,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 774,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 775,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 776,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 777,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 778,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 779,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 781,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 782,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 784,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 785,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 786,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 787,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 788,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 789,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 790,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 791,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 792,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 794,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 795,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 796,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 798,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 799,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 801,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 803,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 804,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 805,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 806,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 807,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 808,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 809,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 810,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 811,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 813,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 814,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 816,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 817,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 818,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 819,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 820,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 821,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 822,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 824,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 825,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 826,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 827,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 829,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 830,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 832,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 834,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 835,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 837,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 838,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 839,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 840,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 841,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 842,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 843,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 844,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 845,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 847,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 849,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 850,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 851,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 852,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 853,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 854,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 855,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 856,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 857,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 858,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 859,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 860,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 861,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 863,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 864,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 865,  vmnand.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 866,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 867,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 868,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 869,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 870,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 871,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 872,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 873,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 874,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 875,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 876,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 878,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 880,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 881,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 882,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 883,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 884,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 885,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 886,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 887,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 888,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 889,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 890,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 892,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 893,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 894,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 895,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 896,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 897,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 899,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 900,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 901,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 902,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 903,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 906,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 907,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 908,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 909,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 910,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 911,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 912,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 913,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 914,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 915,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 916,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 917,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 918,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 919,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 920,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 921,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 922,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 923,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 925,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 926,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 930,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 931,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 933,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 934,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 935,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 936,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 937,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 938,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 939,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 940,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 941,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 943,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 944,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 945,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 947,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 949,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 950,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 951,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 953,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 954,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 955,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 956,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 957,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 958,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 959,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 960,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 961,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 964,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 966,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 967,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 968,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 969,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 970,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 971,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 972,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 973,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 974,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 975,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 976,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 977,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 978,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 980,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 982,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 983,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 984,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 985,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 986,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 988,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 989,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 990,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 991,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 992,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 993,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 994,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 996,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 997,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 998,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 999,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 1000,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 1001,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 1003,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 1004,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 1005,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 1006,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 1007,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 1008,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 1010,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 1011,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1013,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 1014,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 1015,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 1016,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 1017,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 1018,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 1019,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 1020,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 1021,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 1022,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 1023,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 1024,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 1025,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 1026,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 1027,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 1028,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 1029,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1031,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 1032,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 1033,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 1034,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 1035,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 1036,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 1037,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 1039,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 1040,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 1041,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 1042,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 1043,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 1044,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 1045,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 1046,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 1047,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1048,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 1049,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 1050,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 1052,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 1053,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 1054,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 1055,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 1056,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 1057,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 1058,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 1059,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 1060,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 1061,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 1063,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 1065,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1066,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 1068,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 1069,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 1071,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 1072,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 1073,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 1074,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 1075,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 1076,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 1079,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 1080,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 1081,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 1082,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 1083,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1084,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 1085,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 1086,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 1087,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 1090,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 1091,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 1092,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 1093,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 1094,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 1095,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 1096,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 1097,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 1098,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 1099,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 1100,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 1101,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1103,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 1105,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 1106,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 1107,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 1108,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 1109,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 1110,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 1111,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 1112,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 1113,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 1114,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 1115,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 1117,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 1118,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 1119,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1120,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 1121,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 1122,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 1123,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 1124,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 1125,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 1126,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 1127,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 1128,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 1129,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 1130,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 1131,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 1132,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 1133,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 1134,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 1135,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 1136,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 1137,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1138,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 1139,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 1140,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 1141,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 1142,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 1143,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 1144,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 1145,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1146,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1147,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 1148,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1149,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1150,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 1151,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1152,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 1153,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1154,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 1155,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 1156,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1159,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1161,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1162,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1163,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1165,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1166,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1167,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1168,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1169,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1170,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmnand.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1173,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1174,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 1175,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 1176,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 1177,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 1178,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 1179,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 1180,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 1181,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1182,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1183,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1184,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1185,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1186,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1187,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1188,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1189,  vmnand.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat16 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 2346,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 2347,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 2348,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 2349,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 2350,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 2351,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 2352,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 2353,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 2354,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 2355,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 2356,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 2357,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 2358,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 2359,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 2360,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 2361,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 2362,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 2363,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 2364,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 2365,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 2366,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 2367,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 2368,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 2369,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 2370,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 2371,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 2372,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 2373,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 2374,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 2375,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 2376,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 2377,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 2378,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 2379,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 2380,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 2381,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 2382,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 2383,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 2384,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 2385,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 2386,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 2387,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 2388,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 2389,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 2390,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 2391,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 2392,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 2393,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 2394,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 2395,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 2396,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 2397,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 2398,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 2399,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 2400,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 2401,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 2402,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 2403,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 2404,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 2405,  vmnand.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_ones_dat1 );
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
    

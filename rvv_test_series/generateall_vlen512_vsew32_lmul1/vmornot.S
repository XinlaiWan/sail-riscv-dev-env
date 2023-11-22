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
TEST_VMRL_OP( 0,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 10,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 11,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 12,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 13,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 14,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 15,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 16,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 17,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 18,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 19,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 22,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 23,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 24,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 25,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 26,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 27,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 28,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 29,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 30,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 31,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 32,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 33,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 34,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 35,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 36,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 37,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 38,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 39,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 40,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 41,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 42,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 43,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 45,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 46,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 48,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 49,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 50,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 51,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 52,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 53,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 54,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 55,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 56,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 57,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 58,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 59,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 61,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 62,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 65,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 66,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 67,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 68,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 70,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 71,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 73,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 74,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 76,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 77,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 78,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 79,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 81,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 82,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 83,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 84,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 85,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 86,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 87,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 88,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 89,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 90,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 91,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 92,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 93,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 95,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 96,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 97,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 98,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 99,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 100,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 101,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 103,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 104,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 107,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 110,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 111,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 112,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 113,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 115,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 116,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 117,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 119,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 120,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 121,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 122,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 123,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 124,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 125,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 126,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 127,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 128,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 129,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 130,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 131,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 132,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 133,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 134,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 136,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 137,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 138,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 139,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 140,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 141,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 142,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 143,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 144,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 145,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 146,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 147,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 148,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 149,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 150,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 151,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 152,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 153,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 154,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 155,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 157,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 161,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 162,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 164,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 165,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 166,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 167,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 168,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 169,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 170,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 171,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 173,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 174,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 175,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 177,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 180,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 181,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 182,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 183,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 184,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 186,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 187,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 188,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 189,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 190,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 191,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 192,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 193,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 194,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 195,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 196,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 197,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 198,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 199,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 200,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 201,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 203,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 204,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 206,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 207,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 208,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 209,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 212,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 213,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 214,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 215,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 216,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 217,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 218,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 219,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 220,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 221,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 223,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 224,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 225,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 226,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 227,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 228,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 229,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 230,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 232,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 233,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 234,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 235,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 236,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 237,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 238,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 239,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 240,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 241,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 242,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 243,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 244,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 245,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 247,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 249,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 250,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 251,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 252,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 253,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 254,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 255,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 256,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 257,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 258,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 259,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 260,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 261,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 264,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 265,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 266,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 267,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 270,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 271,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 272,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 273,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 274,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 275,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 276,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 279,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 280,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 282,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 283,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 284,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 285,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 286,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 287,  vmornot.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 288,  vmornot.mm,  32,  0x0000000000000010, walking_ones_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 289,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 290,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 292,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 293,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 294,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 295,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 296,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 298,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 299,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 300,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 301,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 302,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 303,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 304,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 306,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 307,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 308,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 310,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 311,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 312,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 313,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 315,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 316,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 317,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 318,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 319,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 320,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 321,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 322,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 323,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 324,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 325,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 326,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 327,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 328,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 329,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 332,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 333,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 335,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 336,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 337,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 338,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 339,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 340,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 341,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 343,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 344,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 345,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 346,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 347,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 348,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 349,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 350,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 352,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 353,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 354,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 356,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 357,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 358,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 361,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 362,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 363,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 365,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 366,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 367,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 368,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 369,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 370,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 371,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 372,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 373,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 375,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 376,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 377,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 378,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 379,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 380,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 382,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 383,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 384,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 385,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 387,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 389,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 390,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 391,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 392,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 393,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 394,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 395,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 396,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 398,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 399,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 402,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 403,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 404,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 405,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 407,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 408,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 409,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 410,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 411,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 412,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 413,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 414,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 415,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 416,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 417,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 418,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 419,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 420,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 421,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 422,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 423,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 424,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 425,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 426,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 427,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 428,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 429,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 430,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 432,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 434,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 435,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 436,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 437,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 438,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 439,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 440,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 441,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 442,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 443,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 444,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 446,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 447,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 448,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 449,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 450,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 451,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 452,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 453,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 454,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 455,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 458,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 459,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 461,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 462,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 463,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 464,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 465,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 466,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 467,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 468,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 469,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 470,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 471,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 472,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 473,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 474,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 476,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 477,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 478,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 481,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 482,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 484,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 485,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 486,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 487,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 488,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 489,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 490,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 491,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 492,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 493,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 494,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 495,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 497,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 498,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 499,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 500,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 501,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 502,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 503,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 504,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 505,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 506,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 507,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 508,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 509,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 511,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 512,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 513,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 514,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 515,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 516,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 517,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 518,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 519,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 520,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 521,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 522,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 523,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 524,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 525,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 526,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 527,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 528,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 529,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 530,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 531,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 532,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 533,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 534,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 535,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 536,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 537,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 538,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 539,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 542,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 543,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 545,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 547,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 548,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 549,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 550,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 551,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 552,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 553,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 555,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 556,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 557,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 558,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 559,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 560,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 561,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 562,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 564,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 565,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 566,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 567,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 568,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 570,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 572,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 573,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 574,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 575,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 576,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 577,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 578,  vmornot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 579,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 580,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 582,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 583,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 585,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 586,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 587,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 588,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 589,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 590,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 591,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 593,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 594,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 595,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 596,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 597,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 598,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 599,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 600,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 601,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 602,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 603,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 604,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 605,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 606,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 607,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 608,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 609,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 611,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 612,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 613,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 614,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 615,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 616,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 617,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 618,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 620,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 621,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 622,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 624,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 625,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 626,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 627,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 628,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 629,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 630,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 631,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 632,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 633,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 634,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 635,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 636,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 637,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 638,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 640,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 643,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 644,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 645,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 646,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 647,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 648,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 649,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 650,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 651,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 652,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 654,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 655,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 656,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 657,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 659,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 662,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 664,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 665,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 666,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 667,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 668,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 669,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 670,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 672,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 673,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 674,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 675,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 677,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 678,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 679,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 680,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 681,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 682,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 683,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 684,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 685,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 686,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 687,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 688,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 689,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 690,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 691,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 692,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat12 );
TEST_VMRL_OP( 693,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 694,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 695,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 696,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 697,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 698,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 699,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 700,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 701,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 702,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 703,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 704,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 705,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 706,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 707,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 708,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 709,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 710,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 711,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 712,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 713,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 714,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 715,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 716,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 717,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 718,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 719,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 720,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 721,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 722,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 723,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 724,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 725,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 726,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 727,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 728,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 729,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 731,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 732,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 733,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 734,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 735,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat4 );
TEST_VMRL_OP( 736,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 737,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 738,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 740,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 741,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 742,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 743,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 744,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 745,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 746,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 747,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 748,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 749,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 750,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 751,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 752,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 753,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 754,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 755,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 756,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 757,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 758,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 759,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 760,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 761,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 762,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 764,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 765,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 766,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 767,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 768,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 769,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 770,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 771,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 772,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 773,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 774,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 775,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 776,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 777,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 779,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 780,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 781,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 782,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 783,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 784,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 785,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 786,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 787,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 788,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 789,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 790,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 791,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 792,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 793,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 794,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 795,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 796,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 797,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 798,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 799,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 800,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 803,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 804,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 805,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 806,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 807,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 809,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 810,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 812,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 813,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 814,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 815,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 816,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 817,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 818,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 819,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 820,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 822,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat6 );
TEST_VMRL_OP( 823,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 824,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 825,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 826,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 827,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 829,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 831,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 832,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 834,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 835,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 838,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 839,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 840,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 842,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 843,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 844,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 845,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 846,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 847,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 848,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 850,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 851,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 852,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 853,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 854,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 855,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 856,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 857,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 859,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 860,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 861,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 862,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 863,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 864,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 865,  vmornot.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 866,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 867,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 869,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 871,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 873,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 874,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 875,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 877,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 878,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 880,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 881,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 882,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 883,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 884,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 885,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 886,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 887,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 888,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 889,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 890,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 892,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 893,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 894,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 895,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 897,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 898,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 899,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 900,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 904,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 905,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 906,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 907,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 908,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 912,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 913,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 914,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 915,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 916,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 918,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 919,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 920,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 921,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 923,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 924,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 925,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 926,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 927,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 928,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 929,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 930,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 931,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 932,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 933,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 934,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 935,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 936,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 937,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 938,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 939,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 940,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 941,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 942,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 943,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 944,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 945,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 947,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 948,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 950,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 951,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 953,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 954,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 955,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 956,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 957,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 958,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 959,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 960,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 961,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 962,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 963,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 965,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 966,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 967,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 968,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 969,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 970,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 971,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 972,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 973,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 974,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 975,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 976,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 977,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 979,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 980,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 981,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 982,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 985,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 987,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 988,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 989,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 990,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 991,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 992,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 993,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 995,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 996,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 998,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 1000,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 1001,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 1002,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 1005,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 1006,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 1008,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 1009,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 1010,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 1011,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1012,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat9 );
TEST_VMRL_OP( 1013,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 1014,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 1015,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 1016,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 1017,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 1019,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 1020,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 1022,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 1023,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 1024,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 1025,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 1026,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 1027,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 1028,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 1029,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1030,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 1031,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 1032,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 1033,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 1034,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 1035,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 1036,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 1037,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 1038,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 1039,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 1040,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 1042,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 1043,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 1044,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 1045,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 1046,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 1047,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1048,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 1049,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 1050,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 1052,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 1053,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 1054,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 1055,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 1056,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 1057,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 1058,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 1059,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 1061,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 1062,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 1063,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 1064,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 1065,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1066,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 1069,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 1070,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 1071,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 1072,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 1073,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 1074,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 1075,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 1076,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 1077,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 1079,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 1080,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 1081,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 1082,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 1083,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1084,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 1085,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 1086,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 1087,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 1088,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 1089,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 1090,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 1091,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 1092,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 1093,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 1096,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 1097,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 1098,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 1099,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 1100,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 1101,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1102,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 1103,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 1104,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 1105,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 1106,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 1107,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 1108,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 1109,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 1110,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 1111,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 1112,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 1113,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 1114,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 1115,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 1116,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 1118,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 1119,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1120,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 1121,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 1122,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 1124,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 1125,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 1126,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 1127,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat5 );
TEST_VMRL_OP( 1128,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 1129,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 1131,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 1133,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 1134,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 1136,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 1137,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1138,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 1139,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 1140,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 1142,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 1143,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 1144,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 1145,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1146,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1147,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 1148,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1149,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1150,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 1151,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1152,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat13 );
TEST_VMRL_OP( 1153,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1155,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 1156,  vmornot.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1159,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1161,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1162,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1163,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1165,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1166,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1167,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1168,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1169,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1170,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmornot.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1173,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1174,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 1175,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 1176,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 1177,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 1178,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 1179,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 1180,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 1181,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1182,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1183,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1184,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1185,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1186,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1187,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1188,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1189,  vmornot.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_ones_dat16 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 2346,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 2347,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 2348,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 2349,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 2350,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 2351,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 2352,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 2353,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 2354,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 2355,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 2356,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 2357,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 2358,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 2359,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 2360,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 2361,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 2362,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 2363,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 2364,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 2365,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 2366,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 2367,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 2368,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 2369,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 2370,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 2371,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 2372,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 2373,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 2374,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 2375,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 2376,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 2377,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 2378,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 2379,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 2380,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 2381,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 2382,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 2383,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 2384,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 2385,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 2386,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 2387,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 2388,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 2389,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 2390,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 2391,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 2392,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 2393,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 2394,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 2395,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 2396,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 2397,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 2398,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 2399,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 2400,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 2401,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 2402,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 2403,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 2404,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 2405,  vmornot.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_ones_dat1 );
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
    

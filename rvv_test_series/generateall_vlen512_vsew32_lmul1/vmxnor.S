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
    # vmxnor.S
    #-----------------------------------------------------------------------------
    #
    # Test vmxnor instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmxnor)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmxnor tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 0,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 10,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 11,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 12,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 13,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 14,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat14 );
TEST_VMRL_OP( 15,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 16,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat0, walking_ones_dat16 );
TEST_VMRL_OP( 17,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 18,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 19,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 20,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 23,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 26,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 28,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 29,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 30,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 31,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat14 );
TEST_VMRL_OP( 32,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 33,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 34,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 35,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 36,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 37,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 38,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 39,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 41,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 42,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 43,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 44,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 46,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 47,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat13 );
TEST_VMRL_OP( 48,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat14 );
TEST_VMRL_OP( 49,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat2, walking_ones_dat15 );
TEST_VMRL_OP( 51,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 52,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 54,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 55,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 56,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 57,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 58,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 59,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 60,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 61,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 62,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 63,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 64,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 65,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 66,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 67,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 68,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 70,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 71,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 72,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 73,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 74,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 75,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 76,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 77,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat9 );
TEST_VMRL_OP( 78,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 80,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat12 );
TEST_VMRL_OP( 81,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 82,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 83,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat15 );
TEST_VMRL_OP( 84,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 85,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 86,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 87,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 88,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 89,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 90,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 91,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 92,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 93,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 95,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 96,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 97,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 98,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 99,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 100,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 103,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 104,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 105,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 106,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 107,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 108,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 109,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 110,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 112,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 113,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 114,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 115,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat13 );
TEST_VMRL_OP( 116,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 117,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 118,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 119,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 120,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 121,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 123,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 124,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 126,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 127,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 129,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 130,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 131,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat12 );
TEST_VMRL_OP( 133,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 134,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 135,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 136,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 137,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 138,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 139,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 140,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 141,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 142,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 144,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 146,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 147,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 149,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 150,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 151,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 152,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 153,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 154,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 155,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 156,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat3 );
TEST_VMRL_OP( 157,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 158,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 159,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 160,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 161,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 162,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 164,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 166,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 167,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 168,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 169,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 170,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat10, walking_ones_dat0 );
TEST_VMRL_OP( 172,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 173,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 174,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 175,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 176,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 177,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 179,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 180,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 181,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 182,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 183,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 184,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 185,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 186,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat10, walking_ones_dat16 );
TEST_VMRL_OP( 187,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 188,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 189,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 190,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 191,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 192,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 193,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 194,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 195,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 196,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 197,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 198,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 200,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 201,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 202,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 203,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 204,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 205,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 206,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 207,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat3 );
TEST_VMRL_OP( 209,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 210,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 211,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 212,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat8 );
TEST_VMRL_OP( 213,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 214,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 215,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 216,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 217,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat13 );
TEST_VMRL_OP( 218,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 219,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 220,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat12, walking_ones_dat16 );
TEST_VMRL_OP( 221,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 222,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 223,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 224,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 225,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 226,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 227,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 228,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 229,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 230,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat9 );
TEST_VMRL_OP( 231,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 232,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 233,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat12 );
TEST_VMRL_OP( 234,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 236,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 237,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 238,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 239,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 240,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 241,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 242,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 243,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 244,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 245,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 246,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 247,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 249,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 250,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 251,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 252,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 253,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 254,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 255,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat15, walking_ones_dat0 );
TEST_VMRL_OP( 257,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 258,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 259,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat4 );
TEST_VMRL_OP( 261,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat6 );
TEST_VMRL_OP( 262,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 263,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 264,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat9 );
TEST_VMRL_OP( 265,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 266,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 267,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 268,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 269,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 270,  vmxnor.mm,  32,  0x0000000000000010, walking_ones_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 271,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 272,  vmxnor.mm,  32,  0x000000000000000f, walking_ones_dat16, walking_ones_dat0 );
TEST_VMRL_OP( 273,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat1 );
TEST_VMRL_OP( 274,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 275,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 276,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 277,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 278,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 279,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 280,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 281,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 282,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 283,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 284,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 287,  vmxnor.mm,  32,  0x000000000000000e, walking_ones_dat16, walking_ones_dat15 );
TEST_VMRL_OP( 289,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 290,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 291,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 294,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 296,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 297,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 298,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 299,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat10 );
TEST_VMRL_OP( 300,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 301,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat12 );
TEST_VMRL_OP( 303,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat14 );
TEST_VMRL_OP( 305,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 307,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 308,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 309,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 310,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 311,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 312,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 313,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 314,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 315,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 316,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 317,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 318,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 320,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 321,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 322,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 323,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 324,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 327,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 328,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 329,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 332,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 333,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 334,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 335,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 336,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 337,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat14 );
TEST_VMRL_OP( 338,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 339,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 340,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 341,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 343,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 344,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 345,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 346,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 347,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 348,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 349,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 350,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 351,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 352,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat12 );
TEST_VMRL_OP( 353,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 354,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat14 );
TEST_VMRL_OP( 355,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 356,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat3, walking_zeros_dat16 );
TEST_VMRL_OP( 357,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 359,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 360,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 361,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 362,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 364,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 365,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 366,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 367,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 368,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 369,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 370,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 371,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 373,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 374,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 375,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 377,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 378,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 379,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 380,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 381,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 382,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 383,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 384,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 385,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 386,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 387,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 388,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 390,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 391,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 392,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 394,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 395,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 396,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 397,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 398,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 400,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 401,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 402,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 404,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 405,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 406,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 407,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 408,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 409,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 410,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 411,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 412,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 413,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 414,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 415,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 416,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 417,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 418,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 419,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat11 );
TEST_VMRL_OP( 420,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat12 );
TEST_VMRL_OP( 421,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat13 );
TEST_VMRL_OP( 422,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 423,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 424,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 425,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 426,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 427,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 428,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 430,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 431,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 432,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 433,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 434,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 435,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 437,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat12 );
TEST_VMRL_OP( 438,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 439,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 440,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 441,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 442,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat9, walking_zeros_dat0 );
TEST_VMRL_OP( 444,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 447,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 448,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat6 );
TEST_VMRL_OP( 449,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 450,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat8 );
TEST_VMRL_OP( 451,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 454,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 455,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 456,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 457,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 458,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 459,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 460,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 461,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 462,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 463,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 464,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 465,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 467,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 468,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 469,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 470,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 471,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 472,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 473,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 474,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 476,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 477,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 478,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 479,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 480,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 481,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 482,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 483,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 484,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 485,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 486,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat10 );
TEST_VMRL_OP( 487,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 488,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 489,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 490,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 491,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 492,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 493,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 494,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat1 );
TEST_VMRL_OP( 495,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 496,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat3 );
TEST_VMRL_OP( 497,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 498,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 499,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 500,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat7 );
TEST_VMRL_OP( 501,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 502,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 504,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 505,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 506,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat13 );
TEST_VMRL_OP( 507,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 508,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 510,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 511,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 512,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 513,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 514,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 515,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 516,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 517,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 518,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 519,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 520,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 521,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 522,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 523,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 525,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 526,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 527,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 528,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 529,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 530,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat3 );
TEST_VMRL_OP( 531,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 532,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 534,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat7 );
TEST_VMRL_OP( 535,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 536,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 537,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 539,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 540,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 541,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 542,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 543,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 544,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 545,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat1 );
TEST_VMRL_OP( 546,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 547,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 548,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 549,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 550,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 551,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 552,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat8 );
TEST_VMRL_OP( 553,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat9 );
TEST_VMRL_OP( 555,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 556,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 557,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 558,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 559,  vmxnor.mm,  32,  0x0000000000000010, walking_zeros_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 560,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 561,  vmxnor.mm,  32,  0x000000000000000f, walking_zeros_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 562,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat1 );
TEST_VMRL_OP( 563,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 564,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 565,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 566,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 567,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat6 );
TEST_VMRL_OP( 568,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 569,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 570,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat9 );
TEST_VMRL_OP( 571,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 572,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 573,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 575,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 576,  vmxnor.mm,  32,  0x000000000000000e, walking_zeros_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 578,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 579,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 580,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 582,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 583,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 584,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 585,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 586,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 587,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat9 );
TEST_VMRL_OP( 589,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat11 );
TEST_VMRL_OP( 591,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat13 );
TEST_VMRL_OP( 593,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat15 );
TEST_VMRL_OP( 594,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat16 );
TEST_VMRL_OP( 595,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 596,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 597,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 598,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 599,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 600,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 602,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 603,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 604,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat9 );
TEST_VMRL_OP( 605,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat10 );
TEST_VMRL_OP( 606,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat11 );
TEST_VMRL_OP( 607,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat12 );
TEST_VMRL_OP( 608,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat13 );
TEST_VMRL_OP( 609,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat14 );
TEST_VMRL_OP( 610,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat15 );
TEST_VMRL_OP( 611,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat16 );
TEST_VMRL_OP( 612,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 614,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 615,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 616,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 617,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 618,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 619,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 620,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 621,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat9 );
TEST_VMRL_OP( 622,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat10 );
TEST_VMRL_OP( 623,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat11 );
TEST_VMRL_OP( 624,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat12 );
TEST_VMRL_OP( 625,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat13 );
TEST_VMRL_OP( 627,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat15 );
TEST_VMRL_OP( 628,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat16 );
TEST_VMRL_OP( 629,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 630,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 631,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 632,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 633,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 634,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 635,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 636,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 637,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 638,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat9 );
TEST_VMRL_OP( 639,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat10 );
TEST_VMRL_OP( 640,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat11 );
TEST_VMRL_OP( 642,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat13 );
TEST_VMRL_OP( 644,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat15 );
TEST_VMRL_OP( 646,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 647,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 649,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 650,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 651,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 652,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 654,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 655,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat9 );
TEST_VMRL_OP( 656,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat10 );
TEST_VMRL_OP( 657,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat11 );
TEST_VMRL_OP( 658,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat12 );
TEST_VMRL_OP( 659,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat13 );
TEST_VMRL_OP( 660,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat14 );
TEST_VMRL_OP( 661,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat15 );
TEST_VMRL_OP( 662,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat16 );
TEST_VMRL_OP( 664,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 665,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 667,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 669,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 670,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 671,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 672,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat9 );
TEST_VMRL_OP( 673,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat10 );
TEST_VMRL_OP( 674,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat11 );
TEST_VMRL_OP( 675,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat12 );
TEST_VMRL_OP( 676,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat13 );
TEST_VMRL_OP( 677,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat14 );
TEST_VMRL_OP( 678,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat15 );
TEST_VMRL_OP( 679,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat16 );
TEST_VMRL_OP( 680,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 681,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 682,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 684,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 685,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 686,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 688,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 689,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat9 );
TEST_VMRL_OP( 690,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat10 );
TEST_VMRL_OP( 691,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat11 );
TEST_VMRL_OP( 693,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat13 );
TEST_VMRL_OP( 694,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat14 );
TEST_VMRL_OP( 695,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat15 );
TEST_VMRL_OP( 696,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat16 );
TEST_VMRL_OP( 697,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 698,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 699,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 700,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 701,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 702,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 703,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 705,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 706,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat9 );
TEST_VMRL_OP( 707,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat10 );
TEST_VMRL_OP( 711,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat14 );
TEST_VMRL_OP( 712,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat15 );
TEST_VMRL_OP( 713,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat16 );
TEST_VMRL_OP( 714,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 716,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 717,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 718,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 719,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 720,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 721,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 722,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 723,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat9 );
TEST_VMRL_OP( 724,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat10 );
TEST_VMRL_OP( 725,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat11 );
TEST_VMRL_OP( 727,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat13 );
TEST_VMRL_OP( 728,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat14 );
TEST_VMRL_OP( 729,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat15 );
TEST_VMRL_OP( 730,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat16 );
TEST_VMRL_OP( 732,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat1 );
TEST_VMRL_OP( 733,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat2 );
TEST_VMRL_OP( 734,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat3 );
TEST_VMRL_OP( 736,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat5 );
TEST_VMRL_OP( 738,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat7 );
TEST_VMRL_OP( 740,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 741,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat10 );
TEST_VMRL_OP( 742,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat11 );
TEST_VMRL_OP( 743,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat12 );
TEST_VMRL_OP( 744,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat13 );
TEST_VMRL_OP( 745,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat14 );
TEST_VMRL_OP( 746,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat15 );
TEST_VMRL_OP( 747,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat9, walking_zeros_dat16 );
TEST_VMRL_OP( 748,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat10, walking_zeros_dat0 );
TEST_VMRL_OP( 749,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat1 );
TEST_VMRL_OP( 750,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat2 );
TEST_VMRL_OP( 751,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat3 );
TEST_VMRL_OP( 752,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat4 );
TEST_VMRL_OP( 753,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat5 );
TEST_VMRL_OP( 754,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat6 );
TEST_VMRL_OP( 755,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat7 );
TEST_VMRL_OP( 756,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat8 );
TEST_VMRL_OP( 757,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat9 );
TEST_VMRL_OP( 758,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 759,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat11 );
TEST_VMRL_OP( 760,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat12 );
TEST_VMRL_OP( 761,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat13 );
TEST_VMRL_OP( 762,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat14 );
TEST_VMRL_OP( 763,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat15 );
TEST_VMRL_OP( 764,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat10, walking_zeros_dat16 );
TEST_VMRL_OP( 765,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat11, walking_zeros_dat0 );
TEST_VMRL_OP( 766,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat1 );
TEST_VMRL_OP( 767,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat2 );
TEST_VMRL_OP( 768,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat3 );
TEST_VMRL_OP( 769,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat4 );
TEST_VMRL_OP( 770,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat5 );
TEST_VMRL_OP( 771,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat6 );
TEST_VMRL_OP( 772,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat7 );
TEST_VMRL_OP( 773,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat8 );
TEST_VMRL_OP( 774,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat9 );
TEST_VMRL_OP( 777,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat12 );
TEST_VMRL_OP( 778,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat13 );
TEST_VMRL_OP( 779,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat14 );
TEST_VMRL_OP( 780,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat15 );
TEST_VMRL_OP( 781,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat11, walking_zeros_dat16 );
TEST_VMRL_OP( 782,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat12, walking_zeros_dat0 );
TEST_VMRL_OP( 784,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat2 );
TEST_VMRL_OP( 786,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat4 );
TEST_VMRL_OP( 787,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat5 );
TEST_VMRL_OP( 788,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat6 );
TEST_VMRL_OP( 790,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat8 );
TEST_VMRL_OP( 791,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat9 );
TEST_VMRL_OP( 792,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat10 );
TEST_VMRL_OP( 793,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat11 );
TEST_VMRL_OP( 794,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 796,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat14 );
TEST_VMRL_OP( 797,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat15 );
TEST_VMRL_OP( 798,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat12, walking_zeros_dat16 );
TEST_VMRL_OP( 799,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat13, walking_zeros_dat0 );
TEST_VMRL_OP( 800,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat1 );
TEST_VMRL_OP( 801,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat2 );
TEST_VMRL_OP( 802,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat3 );
TEST_VMRL_OP( 803,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat4 );
TEST_VMRL_OP( 804,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat5 );
TEST_VMRL_OP( 805,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat6 );
TEST_VMRL_OP( 806,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat7 );
TEST_VMRL_OP( 807,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat8 );
TEST_VMRL_OP( 808,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat9 );
TEST_VMRL_OP( 809,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat10 );
TEST_VMRL_OP( 810,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat11 );
TEST_VMRL_OP( 811,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat12 );
TEST_VMRL_OP( 812,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 813,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat14 );
TEST_VMRL_OP( 814,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat15 );
TEST_VMRL_OP( 815,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat13, walking_zeros_dat16 );
TEST_VMRL_OP( 816,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat14, walking_zeros_dat0 );
TEST_VMRL_OP( 817,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat1 );
TEST_VMRL_OP( 818,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat2 );
TEST_VMRL_OP( 820,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat4 );
TEST_VMRL_OP( 821,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat5 );
TEST_VMRL_OP( 824,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat8 );
TEST_VMRL_OP( 825,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat9 );
TEST_VMRL_OP( 826,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat10 );
TEST_VMRL_OP( 827,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat11 );
TEST_VMRL_OP( 828,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat12 );
TEST_VMRL_OP( 829,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat13 );
TEST_VMRL_OP( 830,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 831,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat15 );
TEST_VMRL_OP( 832,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat14, walking_zeros_dat16 );
TEST_VMRL_OP( 833,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat15, walking_zeros_dat0 );
TEST_VMRL_OP( 835,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat2 );
TEST_VMRL_OP( 836,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat3 );
TEST_VMRL_OP( 837,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat4 );
TEST_VMRL_OP( 838,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat5 );
TEST_VMRL_OP( 839,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat6 );
TEST_VMRL_OP( 840,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat7 );
TEST_VMRL_OP( 843,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat10 );
TEST_VMRL_OP( 844,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat11 );
TEST_VMRL_OP( 845,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat12 );
TEST_VMRL_OP( 846,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat13 );
TEST_VMRL_OP( 847,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat14 );
TEST_VMRL_OP( 848,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 849,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat15, walking_zeros_dat16 );
TEST_VMRL_OP( 850,  vmxnor.mm,  32,  0x0000000000000001, walking_ones_dat16, walking_zeros_dat0 );
TEST_VMRL_OP( 852,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat2 );
TEST_VMRL_OP( 853,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat3 );
TEST_VMRL_OP( 854,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat4 );
TEST_VMRL_OP( 855,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat5 );
TEST_VMRL_OP( 857,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat7 );
TEST_VMRL_OP( 858,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat8 );
TEST_VMRL_OP( 860,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat10 );
TEST_VMRL_OP( 861,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat11 );
TEST_VMRL_OP( 862,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat12 );
TEST_VMRL_OP( 863,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat13 );
TEST_VMRL_OP( 864,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat14 );
TEST_VMRL_OP( 865,  vmxnor.mm,  32,  0x0000000000000002, walking_ones_dat16, walking_zeros_dat15 );
TEST_VMRL_OP( 866,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 867,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 868,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 869,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 870,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 871,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 872,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 873,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 874,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 875,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 876,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat9 );
TEST_VMRL_OP( 877,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat10 );
TEST_VMRL_OP( 878,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat11 );
TEST_VMRL_OP( 879,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat12 );
TEST_VMRL_OP( 880,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat13 );
TEST_VMRL_OP( 882,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat15 );
TEST_VMRL_OP( 884,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 885,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 886,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 887,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 889,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 890,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 891,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 892,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 893,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat9 );
TEST_VMRL_OP( 894,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat10 );
TEST_VMRL_OP( 895,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat11 );
TEST_VMRL_OP( 896,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat12 );
TEST_VMRL_OP( 897,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat13 );
TEST_VMRL_OP( 899,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat15 );
TEST_VMRL_OP( 900,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat16 );
TEST_VMRL_OP( 901,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 902,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 905,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 906,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 907,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 908,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 910,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat9 );
TEST_VMRL_OP( 911,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat10 );
TEST_VMRL_OP( 912,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat11 );
TEST_VMRL_OP( 913,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat12 );
TEST_VMRL_OP( 917,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat16 );
TEST_VMRL_OP( 918,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 919,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 920,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 921,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 922,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 923,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 924,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 925,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 926,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 927,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat9 );
TEST_VMRL_OP( 928,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat10 );
TEST_VMRL_OP( 929,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat11 );
TEST_VMRL_OP( 930,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat12 );
TEST_VMRL_OP( 931,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat13 );
TEST_VMRL_OP( 932,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat14 );
TEST_VMRL_OP( 933,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat15 );
TEST_VMRL_OP( 934,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat16 );
TEST_VMRL_OP( 936,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 937,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 938,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 939,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 940,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 941,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 942,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 943,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 945,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat10 );
TEST_VMRL_OP( 946,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat11 );
TEST_VMRL_OP( 948,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat13 );
TEST_VMRL_OP( 949,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat14 );
TEST_VMRL_OP( 951,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat16 );
TEST_VMRL_OP( 952,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 953,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 954,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 955,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 956,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 957,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 958,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 959,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 960,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 961,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat9 );
TEST_VMRL_OP( 962,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat10 );
TEST_VMRL_OP( 963,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat11 );
TEST_VMRL_OP( 964,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat12 );
TEST_VMRL_OP( 965,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat13 );
TEST_VMRL_OP( 966,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat14 );
TEST_VMRL_OP( 967,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat15 );
TEST_VMRL_OP( 968,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat16 );
TEST_VMRL_OP( 969,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 970,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 971,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 972,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 973,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 974,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 975,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 976,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 977,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 978,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat9 );
TEST_VMRL_OP( 979,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat10 );
TEST_VMRL_OP( 980,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat11 );
TEST_VMRL_OP( 981,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat12 );
TEST_VMRL_OP( 983,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat14 );
TEST_VMRL_OP( 984,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat15 );
TEST_VMRL_OP( 985,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat16 );
TEST_VMRL_OP( 986,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 987,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 988,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 989,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 990,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 992,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 993,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 994,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 995,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat9 );
TEST_VMRL_OP( 996,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat10 );
TEST_VMRL_OP( 997,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat11 );
TEST_VMRL_OP( 999,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat13 );
TEST_VMRL_OP( 1000,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat14 );
TEST_VMRL_OP( 1001,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat15 );
TEST_VMRL_OP( 1002,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat16 );
TEST_VMRL_OP( 1004,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 1006,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 1008,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 1009,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 1010,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 1011,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1013,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat10 );
TEST_VMRL_OP( 1014,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat11 );
TEST_VMRL_OP( 1015,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat12 );
TEST_VMRL_OP( 1016,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat13 );
TEST_VMRL_OP( 1017,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat14 );
TEST_VMRL_OP( 1018,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat15 );
TEST_VMRL_OP( 1019,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat16 );
TEST_VMRL_OP( 1020,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat9, walking_ones_dat0 );
TEST_VMRL_OP( 1021,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat1 );
TEST_VMRL_OP( 1022,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat2 );
TEST_VMRL_OP( 1024,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat4 );
TEST_VMRL_OP( 1025,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat5 );
TEST_VMRL_OP( 1026,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat6 );
TEST_VMRL_OP( 1027,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat7 );
TEST_VMRL_OP( 1028,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat8 );
TEST_VMRL_OP( 1029,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1030,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat10 );
TEST_VMRL_OP( 1031,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat11 );
TEST_VMRL_OP( 1032,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat12 );
TEST_VMRL_OP( 1033,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat13 );
TEST_VMRL_OP( 1034,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat14 );
TEST_VMRL_OP( 1035,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat15 );
TEST_VMRL_OP( 1036,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat9, walking_ones_dat16 );
TEST_VMRL_OP( 1038,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat1 );
TEST_VMRL_OP( 1039,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat2 );
TEST_VMRL_OP( 1040,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat3 );
TEST_VMRL_OP( 1041,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat4 );
TEST_VMRL_OP( 1042,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat5 );
TEST_VMRL_OP( 1043,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat6 );
TEST_VMRL_OP( 1044,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat7 );
TEST_VMRL_OP( 1045,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat8 );
TEST_VMRL_OP( 1046,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat9 );
TEST_VMRL_OP( 1047,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1048,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat11 );
TEST_VMRL_OP( 1049,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat12 );
TEST_VMRL_OP( 1050,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat13 );
TEST_VMRL_OP( 1051,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat14 );
TEST_VMRL_OP( 1052,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat10, walking_ones_dat15 );
TEST_VMRL_OP( 1054,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat11, walking_ones_dat0 );
TEST_VMRL_OP( 1055,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat1 );
TEST_VMRL_OP( 1056,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat2 );
TEST_VMRL_OP( 1057,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat3 );
TEST_VMRL_OP( 1058,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat4 );
TEST_VMRL_OP( 1059,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat5 );
TEST_VMRL_OP( 1060,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat6 );
TEST_VMRL_OP( 1061,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat7 );
TEST_VMRL_OP( 1062,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat8 );
TEST_VMRL_OP( 1063,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat9 );
TEST_VMRL_OP( 1064,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat10 );
TEST_VMRL_OP( 1065,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1066,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat12 );
TEST_VMRL_OP( 1067,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat13 );
TEST_VMRL_OP( 1068,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat14 );
TEST_VMRL_OP( 1069,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat15 );
TEST_VMRL_OP( 1070,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat11, walking_ones_dat16 );
TEST_VMRL_OP( 1071,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat12, walking_ones_dat0 );
TEST_VMRL_OP( 1072,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat1 );
TEST_VMRL_OP( 1073,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat2 );
TEST_VMRL_OP( 1075,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat4 );
TEST_VMRL_OP( 1076,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat5 );
TEST_VMRL_OP( 1077,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat6 );
TEST_VMRL_OP( 1078,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat7 );
TEST_VMRL_OP( 1080,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat9 );
TEST_VMRL_OP( 1081,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat10 );
TEST_VMRL_OP( 1082,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat11 );
TEST_VMRL_OP( 1083,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1085,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat14 );
TEST_VMRL_OP( 1086,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat12, walking_ones_dat15 );
TEST_VMRL_OP( 1088,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat13, walking_ones_dat0 );
TEST_VMRL_OP( 1089,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat1 );
TEST_VMRL_OP( 1090,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat2 );
TEST_VMRL_OP( 1091,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat3 );
TEST_VMRL_OP( 1092,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat4 );
TEST_VMRL_OP( 1093,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat5 );
TEST_VMRL_OP( 1094,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat6 );
TEST_VMRL_OP( 1095,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat7 );
TEST_VMRL_OP( 1096,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat8 );
TEST_VMRL_OP( 1098,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat10 );
TEST_VMRL_OP( 1099,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat11 );
TEST_VMRL_OP( 1101,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1102,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat14 );
TEST_VMRL_OP( 1103,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat15 );
TEST_VMRL_OP( 1104,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat13, walking_ones_dat16 );
TEST_VMRL_OP( 1105,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat14, walking_ones_dat0 );
TEST_VMRL_OP( 1106,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat1 );
TEST_VMRL_OP( 1107,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat2 );
TEST_VMRL_OP( 1108,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat3 );
TEST_VMRL_OP( 1109,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat4 );
TEST_VMRL_OP( 1110,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat5 );
TEST_VMRL_OP( 1111,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat6 );
TEST_VMRL_OP( 1112,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat7 );
TEST_VMRL_OP( 1113,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat8 );
TEST_VMRL_OP( 1114,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat9 );
TEST_VMRL_OP( 1115,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat10 );
TEST_VMRL_OP( 1116,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat11 );
TEST_VMRL_OP( 1117,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat12 );
TEST_VMRL_OP( 1118,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat13 );
TEST_VMRL_OP( 1120,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat15 );
TEST_VMRL_OP( 1121,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat14, walking_ones_dat16 );
TEST_VMRL_OP( 1123,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat1 );
TEST_VMRL_OP( 1124,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat2 );
TEST_VMRL_OP( 1125,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat3 );
TEST_VMRL_OP( 1129,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat7 );
TEST_VMRL_OP( 1130,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat8 );
TEST_VMRL_OP( 1132,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat10 );
TEST_VMRL_OP( 1133,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat11 );
TEST_VMRL_OP( 1134,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat12 );
TEST_VMRL_OP( 1135,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat13 );
TEST_VMRL_OP( 1136,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat14 );
TEST_VMRL_OP( 1138,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat15, walking_ones_dat16 );
TEST_VMRL_OP( 1141,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat2 );
TEST_VMRL_OP( 1142,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat3 );
TEST_VMRL_OP( 1143,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat4 );
TEST_VMRL_OP( 1144,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat5 );
TEST_VMRL_OP( 1145,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat6 );
TEST_VMRL_OP( 1146,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat7 );
TEST_VMRL_OP( 1147,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat8 );
TEST_VMRL_OP( 1148,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat9 );
TEST_VMRL_OP( 1149,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat10 );
TEST_VMRL_OP( 1150,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat11 );
TEST_VMRL_OP( 1151,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat12 );
TEST_VMRL_OP( 1153,  vmxnor.mm,  32,  0x0000000000000002, walking_zeros_dat16, walking_ones_dat14 );
TEST_VMRL_OP( 1155,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
TEST_VMRL_OP( 1156,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 1157,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 1158,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 1159,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 1160,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 1161,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 1162,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 1163,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 1164,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 1165,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat9, walking_zeros_dat9 );
TEST_VMRL_OP( 1166,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat10, walking_zeros_dat10 );
TEST_VMRL_OP( 1167,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat11, walking_zeros_dat11 );
TEST_VMRL_OP( 1168,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat12, walking_zeros_dat12 );
TEST_VMRL_OP( 1169,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat13, walking_zeros_dat13 );
TEST_VMRL_OP( 1170,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat14, walking_zeros_dat14 );
TEST_VMRL_OP( 1171,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat15, walking_zeros_dat15 );
TEST_VMRL_OP( 1172,  vmxnor.mm,  32,  0x0000000000000000, walking_ones_dat16, walking_zeros_dat16 );
TEST_VMRL_OP( 1173,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1174,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 1175,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 1176,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 1177,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 1178,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 1179,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 1180,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 1181,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 1182,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat9, walking_ones_dat9 );
TEST_VMRL_OP( 1183,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat10, walking_ones_dat10 );
TEST_VMRL_OP( 1184,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat11, walking_ones_dat11 );
TEST_VMRL_OP( 1185,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat12, walking_ones_dat12 );
TEST_VMRL_OP( 1186,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat13, walking_ones_dat13 );
TEST_VMRL_OP( 1187,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat14, walking_ones_dat14 );
TEST_VMRL_OP( 1188,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat15, walking_ones_dat15 );
TEST_VMRL_OP( 1189,  vmxnor.mm,  32,  0x0000000000000000, walking_zeros_dat16, walking_ones_dat16 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 2346,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 2347,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 2348,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 2349,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 2350,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 2351,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 2352,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 2353,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 2354,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 2355,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 2356,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 2357,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 2358,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 2359,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 2360,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 2361,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 2362,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 2363,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 2364,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 2365,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 2366,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 2367,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 2368,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 2369,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 2370,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 2371,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 2372,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 2373,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 2374,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 2375,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 2376,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 2377,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 2378,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 2379,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 2380,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 2381,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 2382,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 2383,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 2384,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 2385,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 2386,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 2387,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 2388,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 2389,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 2390,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 2391,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 2392,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 2393,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 2394,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 2395,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 2396,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 2397,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 2398,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 2399,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 2400,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 2401,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 2402,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 2403,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 2404,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 2405,  vmxnor.mm,  32,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

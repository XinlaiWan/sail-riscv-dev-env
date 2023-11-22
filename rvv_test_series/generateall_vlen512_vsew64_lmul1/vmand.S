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
    # vmand.S
    #-----------------------------------------------------------------------------
    #
    # Test vmand instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmand)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmand tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 0,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 10,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 11,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 13,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 14,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 15,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 16,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 17,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 18,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 19,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 20,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 26,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 27,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 28,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 29,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 30,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 31,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 32,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 33,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 34,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 35,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 36,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 40,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 45,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 46,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 47,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 49,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 50,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 51,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 52,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 53,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 54,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 55,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 56,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 57,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 58,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 59,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 60,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 61,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 62,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 63,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 64,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 65,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 66,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 67,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 68,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 69,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 70,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 71,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 72,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 73,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 74,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 75,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 76,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 77,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 78,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 80,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmand.mm,  64,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 82,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 83,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 84,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 85,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 86,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 87,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 88,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 89,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 90,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 91,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 92,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 93,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 94,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 95,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 96,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 97,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 98,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 99,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 100,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 101,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 102,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 103,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 104,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 105,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 106,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 107,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 108,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 109,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 110,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 111,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 112,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 113,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 114,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 115,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 116,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 117,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 118,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 119,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 120,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 121,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 122,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 123,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 124,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 125,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 126,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 127,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 128,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 129,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 130,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 131,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 132,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 133,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 134,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 135,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 136,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 137,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 138,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 139,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 140,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 141,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 142,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 143,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 144,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 145,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 146,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 147,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 148,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 149,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 150,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 151,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 152,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 153,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 154,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 155,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 156,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 157,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 158,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 159,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 160,  vmand.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 161,  vmand.mm,  64,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 162,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 163,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 164,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 165,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 166,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 167,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 168,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 169,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 170,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 171,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 172,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 173,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 174,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 175,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 176,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 177,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 178,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 179,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 180,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 181,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 182,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 183,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 184,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 185,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 186,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 187,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 188,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 189,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 190,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 191,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 192,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 193,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 194,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 195,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 196,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 197,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 198,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 199,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 200,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 201,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 202,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 203,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 204,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 205,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 206,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 207,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 208,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 209,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 210,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 211,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 212,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 213,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 214,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 215,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 216,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 217,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 218,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 219,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 220,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 221,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 222,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 223,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 224,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 225,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 226,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 227,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 228,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 229,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 230,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 231,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 232,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 233,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 234,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 235,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 236,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 237,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 238,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 239,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 240,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 241,  vmand.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 242,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 243,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 244,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 245,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 246,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 247,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 248,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 249,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 250,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 251,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 252,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 253,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 254,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 255,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 256,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 257,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 258,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 259,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 260,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 261,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 262,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 263,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 264,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 265,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 266,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 267,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 268,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 269,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 270,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 271,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 272,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 273,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 274,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 275,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 276,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 277,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 278,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 280,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 281,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 282,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 283,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 284,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 285,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 286,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 287,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 288,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 289,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 290,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 291,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 292,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 293,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 294,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 295,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 296,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 297,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 300,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 302,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 303,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 305,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 306,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 308,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 309,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 310,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 311,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 312,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 313,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 314,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 315,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 316,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 317,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 318,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 319,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 320,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 321,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 322,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 323,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 324,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 326,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 327,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 328,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 330,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 332,  vmand.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 333,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 334,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 335,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 337,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 338,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 339,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 340,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmand.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 666,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 667,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 668,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 669,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 670,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 671,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 672,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 673,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 674,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 675,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 676,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 677,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 678,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 679,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 680,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 681,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 682,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 683,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 684,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 685,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 686,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 687,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 688,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 689,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 690,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 691,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 692,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 693,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 694,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 695,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 696,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 697,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 698,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 699,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 700,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 701,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 702,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 703,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 704,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 705,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 706,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 707,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 708,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 709,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 710,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 711,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 712,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 713,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 714,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 715,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 716,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 717,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 718,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 719,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 720,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 721,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 722,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 723,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 724,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 725,  vmand.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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

walking_ones_dat1:
	.dword	0x1
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

walking_ones_dat3:
	.dword	0x0
	.dword	0x0
	.dword	0x1
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

walking_ones_dat5:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
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

walking_ones_dat7:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
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

walking_zeros_dat0:
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

walking_zeros_dat2:
	.dword	0x1
	.dword	0x0
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

walking_zeros_dat4:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
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

walking_zeros_dat6:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
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

walking_zeros_dat8:
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
    

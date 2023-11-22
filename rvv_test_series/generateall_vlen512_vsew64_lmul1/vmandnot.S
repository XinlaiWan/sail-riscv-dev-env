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
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmandnot tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 0,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 10,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 11,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 13,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 14,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 15,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 16,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 17,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 18,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 19,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 20,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 26,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 27,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 28,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 29,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 30,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 31,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 32,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 33,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 34,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 35,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 36,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 40,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 45,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 46,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 47,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 49,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 50,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 51,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 52,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 53,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 54,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 55,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 56,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 57,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 58,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 59,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 60,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 61,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 62,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 63,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 64,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 65,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 66,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 67,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 68,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 69,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 70,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 71,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 72,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 73,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 74,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 75,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 76,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 77,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 78,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 80,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 82,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 83,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 84,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 85,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 86,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 87,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 88,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 89,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 90,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 91,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 92,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 93,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 94,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 95,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 96,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 97,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 98,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 99,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 100,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 101,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 102,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 103,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 104,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 105,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 106,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 107,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 108,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 109,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 110,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 111,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 112,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 113,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 114,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 115,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 116,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 117,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 118,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 119,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 120,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 121,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 122,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 123,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 124,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 125,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 126,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 127,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 128,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 129,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 130,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 131,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 132,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 133,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 134,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 135,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 136,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 137,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 138,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 139,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 140,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 141,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 142,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 143,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 144,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 145,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 146,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 147,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 148,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 149,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 150,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 151,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 152,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 153,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 154,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 155,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 156,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 157,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 158,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 159,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 160,  vmandnot.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 161,  vmandnot.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 162,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 163,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 164,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 165,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 166,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 167,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 168,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 169,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 170,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 171,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 172,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 173,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 174,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 175,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 176,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 177,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 178,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 179,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 180,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 181,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 182,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 183,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 184,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 185,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 186,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 187,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 188,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 189,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 190,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 191,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 192,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 193,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 194,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 195,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 196,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 197,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 198,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 199,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 200,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 201,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 202,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 203,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 204,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 205,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 206,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 207,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 208,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 209,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 210,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 211,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 212,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 213,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 214,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 215,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 216,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 217,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 218,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 219,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 220,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 221,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 222,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 223,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 224,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 225,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 226,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 227,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 228,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 229,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 230,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 231,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 232,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 233,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 234,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 235,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 236,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 237,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 238,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 239,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 240,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 241,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 242,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 243,  vmandnot.mm,  64,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 244,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 245,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 246,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 247,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 248,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 249,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 250,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 251,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 252,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 253,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 254,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 255,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 256,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 257,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 258,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 259,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 260,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 261,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 262,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 263,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 264,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 265,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 266,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 267,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 268,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 269,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 270,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 271,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 272,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 273,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 274,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 275,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 276,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 277,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 278,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 280,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 281,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 282,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 283,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 284,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 285,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 286,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 287,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 288,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 289,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 290,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 291,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 292,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 293,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 294,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 295,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 296,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 297,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 300,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 302,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 303,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 305,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 306,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 308,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 309,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 310,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 311,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 312,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 313,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 314,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 315,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 316,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 317,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 318,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 319,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 320,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 321,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 322,  vmandnot.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 323,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 324,  vmandnot.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 326,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 327,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 328,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 330,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 332,  vmandnot.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 333,  vmandnot.mm,  64,  0x0000000000000008, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 334,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 335,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 337,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 338,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 339,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 340,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat8, walking_ones_dat8 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 666,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 667,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 668,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 669,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 670,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 671,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 672,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 673,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 674,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 675,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 676,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 677,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 678,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 679,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 680,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 681,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 682,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 683,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 684,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 685,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 686,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 687,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 688,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 689,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 690,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 691,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 692,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 693,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 694,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 695,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 696,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 697,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 698,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 699,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 700,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 701,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 702,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 703,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 704,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 705,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 706,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 707,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 708,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 709,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 710,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 711,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 712,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 713,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 714,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 715,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 716,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 717,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 718,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 719,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 720,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 721,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 722,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 723,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 724,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 725,  vmandnot.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_ones_dat1 );
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
    

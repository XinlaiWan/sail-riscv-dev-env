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
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmxnor tests
  #-------------------------------------------------------------
TEST_VMRL_OP( 0,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 1,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 2,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 3,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 4,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 5,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 6,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 7,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 8,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 9,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 10,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 11,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 12,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 13,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 14,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 15,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 16,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 17,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 18,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 19,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 20,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 21,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 22,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 23,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 24,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 25,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 26,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 27,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 28,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 29,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 30,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 31,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 32,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 33,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 34,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 35,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 36,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 37,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 38,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 39,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 40,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 41,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 42,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 43,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 44,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 45,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 46,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 47,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 48,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 49,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 50,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 51,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 52,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 53,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 54,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 55,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 56,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 57,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 58,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 59,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 60,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 61,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 62,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 63,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 64,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 65,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 66,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 67,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 68,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 69,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 70,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 71,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 72,  vmxnor.mm,  64,  0x0000000000000007, walking_ones_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 73,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 74,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 75,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 76,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 77,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 78,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 79,  vmxnor.mm,  64,  0x0000000000000006, walking_ones_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 80,  vmxnor.mm,  64,  0x0000000000000008, walking_ones_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 81,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 82,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 83,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 84,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 85,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 86,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 87,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 88,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 89,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 90,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 91,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 92,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 93,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 94,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 95,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 96,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 97,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 98,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 99,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 100,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 101,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 102,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 103,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 104,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 105,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 106,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 107,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 108,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 109,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 110,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 111,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 112,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 113,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 114,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 115,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 116,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 117,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 118,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 119,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 120,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 121,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 122,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 123,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 124,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 125,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 126,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 127,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 128,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 129,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 130,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 131,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 132,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 133,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 134,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 135,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 136,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 137,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 138,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 139,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 140,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 141,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 142,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 143,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 144,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 145,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 146,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 147,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 148,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 149,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 150,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 151,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 152,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 153,  vmxnor.mm,  64,  0x0000000000000007, walking_zeros_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 154,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 155,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 156,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 157,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 158,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 159,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 160,  vmxnor.mm,  64,  0x0000000000000006, walking_zeros_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 161,  vmxnor.mm,  64,  0x0000000000000008, walking_zeros_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 162,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 163,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat1 );
TEST_VMRL_OP( 164,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat2 );
TEST_VMRL_OP( 165,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat3 );
TEST_VMRL_OP( 166,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat4 );
TEST_VMRL_OP( 167,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat5 );
TEST_VMRL_OP( 168,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat6 );
TEST_VMRL_OP( 169,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat7 );
TEST_VMRL_OP( 170,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat0, walking_zeros_dat8 );
TEST_VMRL_OP( 171,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat1, walking_zeros_dat0 );
TEST_VMRL_OP( 172,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 173,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat2 );
TEST_VMRL_OP( 174,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat3 );
TEST_VMRL_OP( 175,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat4 );
TEST_VMRL_OP( 176,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat5 );
TEST_VMRL_OP( 177,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat6 );
TEST_VMRL_OP( 178,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat7 );
TEST_VMRL_OP( 179,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat1, walking_zeros_dat8 );
TEST_VMRL_OP( 180,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat2, walking_zeros_dat0 );
TEST_VMRL_OP( 181,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat1 );
TEST_VMRL_OP( 182,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 183,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat3 );
TEST_VMRL_OP( 184,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat4 );
TEST_VMRL_OP( 185,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat5 );
TEST_VMRL_OP( 186,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat6 );
TEST_VMRL_OP( 187,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat7 );
TEST_VMRL_OP( 188,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat2, walking_zeros_dat8 );
TEST_VMRL_OP( 189,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat3, walking_zeros_dat0 );
TEST_VMRL_OP( 190,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat1 );
TEST_VMRL_OP( 191,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat2 );
TEST_VMRL_OP( 192,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 193,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat4 );
TEST_VMRL_OP( 194,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat5 );
TEST_VMRL_OP( 195,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat6 );
TEST_VMRL_OP( 196,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat7 );
TEST_VMRL_OP( 197,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat3, walking_zeros_dat8 );
TEST_VMRL_OP( 198,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat4, walking_zeros_dat0 );
TEST_VMRL_OP( 199,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat1 );
TEST_VMRL_OP( 200,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat2 );
TEST_VMRL_OP( 201,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat3 );
TEST_VMRL_OP( 202,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 203,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat5 );
TEST_VMRL_OP( 204,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat6 );
TEST_VMRL_OP( 205,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat7 );
TEST_VMRL_OP( 206,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat4, walking_zeros_dat8 );
TEST_VMRL_OP( 207,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat5, walking_zeros_dat0 );
TEST_VMRL_OP( 208,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat1 );
TEST_VMRL_OP( 209,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat2 );
TEST_VMRL_OP( 210,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat3 );
TEST_VMRL_OP( 211,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat4 );
TEST_VMRL_OP( 212,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 213,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat6 );
TEST_VMRL_OP( 214,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat7 );
TEST_VMRL_OP( 215,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat5, walking_zeros_dat8 );
TEST_VMRL_OP( 216,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat6, walking_zeros_dat0 );
TEST_VMRL_OP( 217,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat1 );
TEST_VMRL_OP( 218,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat2 );
TEST_VMRL_OP( 219,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat3 );
TEST_VMRL_OP( 220,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat4 );
TEST_VMRL_OP( 221,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat5 );
TEST_VMRL_OP( 222,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 223,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat7 );
TEST_VMRL_OP( 224,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat6, walking_zeros_dat8 );
TEST_VMRL_OP( 225,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat7, walking_zeros_dat0 );
TEST_VMRL_OP( 226,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat1 );
TEST_VMRL_OP( 227,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat2 );
TEST_VMRL_OP( 228,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat3 );
TEST_VMRL_OP( 229,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat4 );
TEST_VMRL_OP( 230,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat5 );
TEST_VMRL_OP( 231,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat6 );
TEST_VMRL_OP( 232,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 233,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat7, walking_zeros_dat8 );
TEST_VMRL_OP( 234,  vmxnor.mm,  64,  0x0000000000000001, walking_ones_dat8, walking_zeros_dat0 );
TEST_VMRL_OP( 235,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat1 );
TEST_VMRL_OP( 236,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat2 );
TEST_VMRL_OP( 237,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat3 );
TEST_VMRL_OP( 238,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat4 );
TEST_VMRL_OP( 239,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat5 );
TEST_VMRL_OP( 240,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat6 );
TEST_VMRL_OP( 241,  vmxnor.mm,  64,  0x0000000000000002, walking_ones_dat8, walking_zeros_dat7 );
TEST_VMRL_OP( 242,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 243,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 244,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP( 245,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat2 );
TEST_VMRL_OP( 246,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat3 );
TEST_VMRL_OP( 247,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat4 );
TEST_VMRL_OP( 248,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat5 );
TEST_VMRL_OP( 249,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat6 );
TEST_VMRL_OP( 250,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat7 );
TEST_VMRL_OP( 251,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat8 );
TEST_VMRL_OP( 252,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat1, walking_ones_dat0 );
TEST_VMRL_OP( 253,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 254,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat2 );
TEST_VMRL_OP( 255,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat3 );
TEST_VMRL_OP( 256,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat4 );
TEST_VMRL_OP( 257,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat5 );
TEST_VMRL_OP( 258,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat6 );
TEST_VMRL_OP( 259,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat7 );
TEST_VMRL_OP( 260,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat1, walking_ones_dat8 );
TEST_VMRL_OP( 261,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat2, walking_ones_dat0 );
TEST_VMRL_OP( 262,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat1 );
TEST_VMRL_OP( 263,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 264,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat3 );
TEST_VMRL_OP( 265,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat4 );
TEST_VMRL_OP( 266,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat5 );
TEST_VMRL_OP( 267,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat6 );
TEST_VMRL_OP( 268,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat7 );
TEST_VMRL_OP( 269,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat2, walking_ones_dat8 );
TEST_VMRL_OP( 270,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat3, walking_ones_dat0 );
TEST_VMRL_OP( 271,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat1 );
TEST_VMRL_OP( 272,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat2 );
TEST_VMRL_OP( 273,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 274,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat4 );
TEST_VMRL_OP( 275,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat5 );
TEST_VMRL_OP( 276,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat6 );
TEST_VMRL_OP( 277,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat7 );
TEST_VMRL_OP( 278,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat3, walking_ones_dat8 );
TEST_VMRL_OP( 279,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat4, walking_ones_dat0 );
TEST_VMRL_OP( 280,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat1 );
TEST_VMRL_OP( 281,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat2 );
TEST_VMRL_OP( 282,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat3 );
TEST_VMRL_OP( 283,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 284,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat5 );
TEST_VMRL_OP( 285,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat6 );
TEST_VMRL_OP( 286,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat7 );
TEST_VMRL_OP( 287,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat4, walking_ones_dat8 );
TEST_VMRL_OP( 288,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat5, walking_ones_dat0 );
TEST_VMRL_OP( 289,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat1 );
TEST_VMRL_OP( 290,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat2 );
TEST_VMRL_OP( 291,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat3 );
TEST_VMRL_OP( 292,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat4 );
TEST_VMRL_OP( 293,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 294,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat6 );
TEST_VMRL_OP( 295,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat7 );
TEST_VMRL_OP( 296,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat5, walking_ones_dat8 );
TEST_VMRL_OP( 297,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat6, walking_ones_dat0 );
TEST_VMRL_OP( 298,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat1 );
TEST_VMRL_OP( 299,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat2 );
TEST_VMRL_OP( 300,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat3 );
TEST_VMRL_OP( 301,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat4 );
TEST_VMRL_OP( 302,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat5 );
TEST_VMRL_OP( 303,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 304,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat7 );
TEST_VMRL_OP( 305,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat6, walking_ones_dat8 );
TEST_VMRL_OP( 306,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat7, walking_ones_dat0 );
TEST_VMRL_OP( 307,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat1 );
TEST_VMRL_OP( 308,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat2 );
TEST_VMRL_OP( 309,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat3 );
TEST_VMRL_OP( 310,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat4 );
TEST_VMRL_OP( 311,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat5 );
TEST_VMRL_OP( 312,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat6 );
TEST_VMRL_OP( 313,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 314,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat7, walking_ones_dat8 );
TEST_VMRL_OP( 315,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat8, walking_ones_dat0 );
TEST_VMRL_OP( 316,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat1 );
TEST_VMRL_OP( 317,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat2 );
TEST_VMRL_OP( 318,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat3 );
TEST_VMRL_OP( 319,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat4 );
TEST_VMRL_OP( 320,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat5 );
TEST_VMRL_OP( 321,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat6 );
TEST_VMRL_OP( 322,  vmxnor.mm,  64,  0x0000000000000002, walking_zeros_dat8, walking_ones_dat7 );
TEST_VMRL_OP( 323,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
TEST_VMRL_OP( 324,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat0, walking_zeros_dat0 );
TEST_VMRL_OP( 325,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat1, walking_zeros_dat1 );
TEST_VMRL_OP( 326,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat2, walking_zeros_dat2 );
TEST_VMRL_OP( 327,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat3, walking_zeros_dat3 );
TEST_VMRL_OP( 328,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat4, walking_zeros_dat4 );
TEST_VMRL_OP( 329,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat5, walking_zeros_dat5 );
TEST_VMRL_OP( 330,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat6, walking_zeros_dat6 );
TEST_VMRL_OP( 331,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat7, walking_zeros_dat7 );
TEST_VMRL_OP( 332,  vmxnor.mm,  64,  0x0000000000000000, walking_ones_dat8, walking_zeros_dat8 );
TEST_VMRL_OP( 333,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat0, walking_ones_dat0 );
TEST_VMRL_OP( 334,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat1, walking_ones_dat1 );
TEST_VMRL_OP( 335,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat2, walking_ones_dat2 );
TEST_VMRL_OP( 336,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat3, walking_ones_dat3 );
TEST_VMRL_OP( 337,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat4, walking_ones_dat4 );
TEST_VMRL_OP( 338,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat5, walking_ones_dat5 );
TEST_VMRL_OP( 339,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat6, walking_ones_dat6 );
TEST_VMRL_OP( 340,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat7, walking_ones_dat7 );
TEST_VMRL_OP( 341,  vmxnor.mm,  64,  0x0000000000000000, walking_zeros_dat8, walking_ones_dat8 );
  #-------------------------------------------------------------
  # vmandnot Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VMRL_OP_rd_1( 666,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_2( 667,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_3( 668,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_4( 669,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_5( 670,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_6( 671,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_7( 672,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_8( 673,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_9( 674,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_10( 675,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_11( 676,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_12( 677,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_13( 678,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_14( 679,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_15( 680,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_16( 681,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_17( 682,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_18( 683,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_19( 684,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_20( 685,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_21( 686,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_22( 687,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_23( 688,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_24( 689,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_25( 690,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_26( 691,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_27( 692,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_28( 693,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_29( 694,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_30( 695,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rd_31( 696,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_2( 697,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_3( 698,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_4( 699,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_5( 700,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_6( 701,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_7( 702,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_8( 703,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_9( 704,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_10( 705,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_11( 706,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_12( 707,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_13( 708,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_14( 709,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_15( 710,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_17( 711,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_18( 712,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_19( 713,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_20( 714,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_21( 715,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_22( 716,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_23( 717,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_24( 718,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_25( 719,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_26( 720,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_27( 721,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_28( 722,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_29( 723,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_30( 724,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
TEST_VMRL_OP_rs1_31( 725,  vmxnor.mm,  64,  0x0000000000000001, walking_zeros_dat0, walking_ones_dat1 );
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
    

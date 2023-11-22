#define TEST_VCOMPRESS_OP_rd_1( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v1, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v1, (x2); \
            inst v1, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_2( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v2, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v2, (x2); \
            inst v2, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_3( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v3, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v3, (x2); \
            inst v3, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_4( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v4, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v4, (x2); \
            inst v4, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_5( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v5, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v5, (x2); \
            inst v5, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_6( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v6, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v6, (x2); \
            inst v6, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_7( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v7, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v7, (x2); \
            inst v7, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_9( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v9, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v9, (x2); \
            inst v9, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_10( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v10, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v10, (x2); \
            inst v10, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_11( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v11, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v11, (x2); \
            inst v11, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_12( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v12, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v12, (x2); \
            inst v12, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_13( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v13, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v13, (x2); \
            inst v13, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_14( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v14, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v14, (x2); \
            inst v14, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_17( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v17, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v17, (x2); \
            inst v17, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_18( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v18, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v18, (x2); \
            inst v18, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_19( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v19, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v19, (x2); \
            inst v19, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_20( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v20, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v20, (x2); \
            inst v20, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_21( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v21, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v21, (x2); \
            inst v21, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_22( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v22, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v22, (x2); \
            inst v22, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_23( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v23, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v23, (x2); \
            inst v23, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_24( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v24, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v24, (x2); \
            inst v24, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_25( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v25, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v25, (x2); \
            inst v25, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_26( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v26, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v26, (x2); \
            inst v26, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_27( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v27, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v27, (x2); \
            inst v27, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_28( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v28, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v28, (x2); \
            inst v28, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_29( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v29, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v29, (x2); \
            inst v29, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_30( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v30, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v30, (x2); \
            inst v30, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_31( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v31, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v31, (x2); \
            inst v31, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rs1_1( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v1, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v1; \
        )
#define TEST_VCOMPRESS_OP_rs1_2( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v2, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v2; \
        )
#define TEST_VCOMPRESS_OP_rs1_3( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v3, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v3; \
        )
#define TEST_VCOMPRESS_OP_rs1_4( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v4, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v4; \
        )
#define TEST_VCOMPRESS_OP_rs1_5( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v5, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v5; \
        )
#define TEST_VCOMPRESS_OP_rs1_6( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v6, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v6; \
        )
#define TEST_VCOMPRESS_OP_rs1_7( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v7, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v7; \
        )
#define TEST_VCOMPRESS_OP_rs1_9( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v9, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v9; \
        )
#define TEST_VCOMPRESS_OP_rs1_10( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v10, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v10; \
        )
#define TEST_VCOMPRESS_OP_rs1_11( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v11, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v11; \
        )
#define TEST_VCOMPRESS_OP_rs1_12( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v12, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v12; \
        )
#define TEST_VCOMPRESS_OP_rs1_13( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v13, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v13; \
        )
#define TEST_VCOMPRESS_OP_rs1_14( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v14, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v14; \
        )
#define TEST_VCOMPRESS_OP_rs1_17( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v17, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v17; \
        )
#define TEST_VCOMPRESS_OP_rs1_18( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v18, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v18; \
        )
#define TEST_VCOMPRESS_OP_rs1_19( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v19, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v19; \
        )
#define TEST_VCOMPRESS_OP_rs1_20( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v20, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v20; \
        )
#define TEST_VCOMPRESS_OP_rs1_21( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v21, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v21; \
        )
#define TEST_VCOMPRESS_OP_rs1_22( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v22, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v22; \
        )
#define TEST_VCOMPRESS_OP_rs1_23( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v23, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v23; \
        )
#define TEST_VCOMPRESS_OP_rs1_24( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v24, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v24; \
        )
#define TEST_VCOMPRESS_OP_rs1_25( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v25, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v25; \
        )
#define TEST_VCOMPRESS_OP_rs1_26( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v26, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v26; \
        )
#define TEST_VCOMPRESS_OP_rs1_27( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v27, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v27; \
        )
#define TEST_VCOMPRESS_OP_rs1_28( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v28, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v28; \
        )
#define TEST_VCOMPRESS_OP_rs1_29( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v29, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v29; \
        )
#define TEST_VCOMPRESS_OP_rs1_30( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v30, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v30; \
        )
#define TEST_VCOMPRESS_OP_rs1_31( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v31, v8, 1; \
            vle64.v v8, (x1); \
            vle64.v v16, (x2); \
            inst v16, v8, v31; \
        )
#define TEST_VCOMPRESS_OP_rs2_1( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v1, (x1); \
            vle64.v v16, (x2); \
            inst v16, v1, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_2( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v2, (x1); \
            vle64.v v16, (x2); \
            inst v16, v2, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_3( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v3, (x1); \
            vle64.v v16, (x2); \
            inst v16, v3, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_4( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v4, (x1); \
            vle64.v v16, (x2); \
            inst v16, v4, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_5( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v5, (x1); \
            vle64.v v16, (x2); \
            inst v16, v5, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_6( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v6, (x1); \
            vle64.v v16, (x2); \
            inst v16, v6, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_7( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v7, (x1); \
            vle64.v v16, (x2); \
            inst v16, v7, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_9( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v9, (x1); \
            vle64.v v16, (x2); \
            inst v16, v9, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_10( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v10, (x1); \
            vle64.v v16, (x2); \
            inst v16, v10, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_11( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v11, (x1); \
            vle64.v v16, (x2); \
            inst v16, v11, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_12( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v12, (x1); \
            vle64.v v16, (x2); \
            inst v16, v12, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_13( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v13, (x1); \
            vle64.v v16, (x2); \
            inst v16, v13, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_14( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v14, (x1); \
            vle64.v v16, (x2); \
            inst v16, v14, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_17( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v17, (x1); \
            vle64.v v16, (x2); \
            inst v16, v17, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_18( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v18, (x1); \
            vle64.v v16, (x2); \
            inst v16, v18, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_19( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v19, (x1); \
            vle64.v v16, (x2); \
            inst v16, v19, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_20( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v20, (x1); \
            vle64.v v16, (x2); \
            inst v16, v20, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_21( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v21, (x1); \
            vle64.v v16, (x2); \
            inst v16, v21, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_22( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v22, (x1); \
            vle64.v v16, (x2); \
            inst v16, v22, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_23( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v23, (x1); \
            vle64.v v16, (x2); \
            inst v16, v23, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_24( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v24, (x1); \
            vle64.v v16, (x2); \
            inst v16, v24, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_25( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v25, (x1); \
            vle64.v v16, (x2); \
            inst v16, v25, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_26( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v26, (x1); \
            vle64.v v16, (x2); \
            inst v16, v26, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_27( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v27, (x1); \
            vle64.v v16, (x2); \
            inst v16, v27, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_28( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v28, (x1); \
            vle64.v v16, (x2); \
            inst v16, v28, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_29( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v29, (x1); \
            vle64.v v16, (x2); \
            inst v16, v29, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_30( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v30, (x1); \
            vle64.v v16, (x2); \
            inst v16, v30, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_31( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle64.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle64.v v31, (x1); \
            vle64.v v16, (x2); \
            inst v16, v31, v0; \
        )
#----------------------------------------------------------------------------- 
    # vcompress.S
    #-----------------------------------------------------------------------------
    #
    # Test vcompress instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vcompress)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vcompress tests
  #-------------------------------------------------------------
TEST_VCOMPRESS_OP( 1,  vcompress.vm,  walking_data0_ans_mask0,  walking_data0, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 2,  vcompress.vm,  walking_data0_ans_mask1,  walking_data0, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 3,  vcompress.vm,  walking_data0_ans_mask2,  walking_data0, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 4,  vcompress.vm,  walking_data0_ans_mask3,  walking_data0, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 5,  vcompress.vm,  walking_data0_ans_mask4,  walking_data0, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 6,  vcompress.vm,  walking_data0_ans_mask5,  walking_data0, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 7,  vcompress.vm,  walking_data0_ans_mask6,  walking_data0, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 8,  vcompress.vm,  walking_data0_ans_mask7,  walking_data0, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 9,  vcompress.vm,  walking_data0_ans_mask8,  walking_data0, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 10,  vcompress.vm,  walking_data0_ans_mask9,  walking_data0, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 11,  vcompress.vm,  walking_data0_ans_mask10,  walking_data0, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 12,  vcompress.vm,  walking_data0_ans_mask11,  walking_data0, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 13,  vcompress.vm,  walking_data0_ans_mask12,  walking_data0, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 14,  vcompress.vm,  walking_data0_ans_mask13,  walking_data0, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 15,  vcompress.vm,  walking_data0_ans_mask14,  walking_data0, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 16,  vcompress.vm,  walking_data0_ans_mask15,  walking_data0, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 17,  vcompress.vm,  walking_data0_ans_mask16,  walking_data0, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 18,  vcompress.vm,  walking_data0_ans_mask17,  walking_data0, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 19,  vcompress.vm,  walking_data1_ans_mask0,  walking_data1, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 20,  vcompress.vm,  walking_data1_ans_mask1,  walking_data1, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 21,  vcompress.vm,  walking_data1_ans_mask2,  walking_data1, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 22,  vcompress.vm,  walking_data1_ans_mask3,  walking_data1, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 23,  vcompress.vm,  walking_data1_ans_mask4,  walking_data1, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 24,  vcompress.vm,  walking_data1_ans_mask5,  walking_data1, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 25,  vcompress.vm,  walking_data1_ans_mask6,  walking_data1, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 26,  vcompress.vm,  walking_data1_ans_mask7,  walking_data1, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 27,  vcompress.vm,  walking_data1_ans_mask8,  walking_data1, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 28,  vcompress.vm,  walking_data1_ans_mask9,  walking_data1, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 29,  vcompress.vm,  walking_data1_ans_mask10,  walking_data1, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 30,  vcompress.vm,  walking_data1_ans_mask11,  walking_data1, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 31,  vcompress.vm,  walking_data1_ans_mask12,  walking_data1, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 32,  vcompress.vm,  walking_data1_ans_mask13,  walking_data1, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 33,  vcompress.vm,  walking_data1_ans_mask14,  walking_data1, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 34,  vcompress.vm,  walking_data1_ans_mask15,  walking_data1, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 35,  vcompress.vm,  walking_data1_ans_mask16,  walking_data1, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 36,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 37,  vcompress.vm,  walking_data2_ans_mask0,  walking_data2, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 38,  vcompress.vm,  walking_data2_ans_mask1,  walking_data2, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 39,  vcompress.vm,  walking_data2_ans_mask2,  walking_data2, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 40,  vcompress.vm,  walking_data2_ans_mask3,  walking_data2, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 41,  vcompress.vm,  walking_data2_ans_mask4,  walking_data2, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 42,  vcompress.vm,  walking_data2_ans_mask5,  walking_data2, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 43,  vcompress.vm,  walking_data2_ans_mask6,  walking_data2, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 44,  vcompress.vm,  walking_data2_ans_mask7,  walking_data2, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 45,  vcompress.vm,  walking_data2_ans_mask8,  walking_data2, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 46,  vcompress.vm,  walking_data2_ans_mask9,  walking_data2, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 47,  vcompress.vm,  walking_data2_ans_mask10,  walking_data2, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 48,  vcompress.vm,  walking_data2_ans_mask11,  walking_data2, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 49,  vcompress.vm,  walking_data2_ans_mask12,  walking_data2, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 50,  vcompress.vm,  walking_data2_ans_mask13,  walking_data2, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 51,  vcompress.vm,  walking_data2_ans_mask14,  walking_data2, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 52,  vcompress.vm,  walking_data2_ans_mask15,  walking_data2, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 53,  vcompress.vm,  walking_data2_ans_mask16,  walking_data2, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 54,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 55,  vcompress.vm,  walking_data3_ans_mask0,  walking_data3, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 56,  vcompress.vm,  walking_data3_ans_mask1,  walking_data3, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 57,  vcompress.vm,  walking_data3_ans_mask2,  walking_data3, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 58,  vcompress.vm,  walking_data3_ans_mask3,  walking_data3, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 59,  vcompress.vm,  walking_data3_ans_mask4,  walking_data3, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 60,  vcompress.vm,  walking_data3_ans_mask5,  walking_data3, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 61,  vcompress.vm,  walking_data3_ans_mask6,  walking_data3, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 62,  vcompress.vm,  walking_data3_ans_mask7,  walking_data3, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 63,  vcompress.vm,  walking_data3_ans_mask8,  walking_data3, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 64,  vcompress.vm,  walking_data3_ans_mask9,  walking_data3, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 65,  vcompress.vm,  walking_data3_ans_mask10,  walking_data3, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 66,  vcompress.vm,  walking_data3_ans_mask11,  walking_data3, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 67,  vcompress.vm,  walking_data3_ans_mask12,  walking_data3, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 68,  vcompress.vm,  walking_data3_ans_mask13,  walking_data3, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 69,  vcompress.vm,  walking_data3_ans_mask14,  walking_data3, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 70,  vcompress.vm,  walking_data3_ans_mask15,  walking_data3, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 71,  vcompress.vm,  walking_data3_ans_mask16,  walking_data3, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 72,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 73,  vcompress.vm,  walking_data4_ans_mask0,  walking_data4, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 74,  vcompress.vm,  walking_data4_ans_mask1,  walking_data4, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 75,  vcompress.vm,  walking_data4_ans_mask2,  walking_data4, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 76,  vcompress.vm,  walking_data4_ans_mask3,  walking_data4, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 77,  vcompress.vm,  walking_data4_ans_mask4,  walking_data4, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 78,  vcompress.vm,  walking_data4_ans_mask5,  walking_data4, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 79,  vcompress.vm,  walking_data4_ans_mask6,  walking_data4, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 80,  vcompress.vm,  walking_data4_ans_mask7,  walking_data4, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 81,  vcompress.vm,  walking_data4_ans_mask8,  walking_data4, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 82,  vcompress.vm,  walking_data4_ans_mask9,  walking_data4, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 83,  vcompress.vm,  walking_data4_ans_mask10,  walking_data4, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 84,  vcompress.vm,  walking_data4_ans_mask11,  walking_data4, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 85,  vcompress.vm,  walking_data4_ans_mask12,  walking_data4, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 86,  vcompress.vm,  walking_data4_ans_mask13,  walking_data4, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 87,  vcompress.vm,  walking_data4_ans_mask14,  walking_data4, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 88,  vcompress.vm,  walking_data4_ans_mask15,  walking_data4, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 89,  vcompress.vm,  walking_data4_ans_mask16,  walking_data4, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 90,  vcompress.vm,  walking_data4_ans_mask17,  walking_data4, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 91,  vcompress.vm,  walking_data5_ans_mask0,  walking_data5, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 92,  vcompress.vm,  walking_data5_ans_mask1,  walking_data5, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 93,  vcompress.vm,  walking_data5_ans_mask2,  walking_data5, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 94,  vcompress.vm,  walking_data5_ans_mask3,  walking_data5, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 95,  vcompress.vm,  walking_data5_ans_mask4,  walking_data5, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 96,  vcompress.vm,  walking_data5_ans_mask5,  walking_data5, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 97,  vcompress.vm,  walking_data5_ans_mask6,  walking_data5, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 98,  vcompress.vm,  walking_data5_ans_mask7,  walking_data5, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 99,  vcompress.vm,  walking_data5_ans_mask8,  walking_data5, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 100,  vcompress.vm,  walking_data5_ans_mask9,  walking_data5, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 101,  vcompress.vm,  walking_data5_ans_mask10,  walking_data5, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 102,  vcompress.vm,  walking_data5_ans_mask11,  walking_data5, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 103,  vcompress.vm,  walking_data5_ans_mask12,  walking_data5, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 104,  vcompress.vm,  walking_data5_ans_mask13,  walking_data5, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 105,  vcompress.vm,  walking_data5_ans_mask14,  walking_data5, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 106,  vcompress.vm,  walking_data5_ans_mask15,  walking_data5, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 107,  vcompress.vm,  walking_data5_ans_mask16,  walking_data5, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 108,  vcompress.vm,  walking_data5_ans_mask17,  walking_data5, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 109,  vcompress.vm,  walking_data6_ans_mask0,  walking_data6, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 110,  vcompress.vm,  walking_data6_ans_mask1,  walking_data6, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 111,  vcompress.vm,  walking_data6_ans_mask2,  walking_data6, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 112,  vcompress.vm,  walking_data6_ans_mask3,  walking_data6, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 113,  vcompress.vm,  walking_data6_ans_mask4,  walking_data6, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 114,  vcompress.vm,  walking_data6_ans_mask5,  walking_data6, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 115,  vcompress.vm,  walking_data6_ans_mask6,  walking_data6, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 116,  vcompress.vm,  walking_data6_ans_mask7,  walking_data6, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 117,  vcompress.vm,  walking_data6_ans_mask8,  walking_data6, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 118,  vcompress.vm,  walking_data6_ans_mask9,  walking_data6, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 119,  vcompress.vm,  walking_data6_ans_mask10,  walking_data6, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 120,  vcompress.vm,  walking_data6_ans_mask11,  walking_data6, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 121,  vcompress.vm,  walking_data6_ans_mask12,  walking_data6, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 122,  vcompress.vm,  walking_data6_ans_mask13,  walking_data6, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 123,  vcompress.vm,  walking_data6_ans_mask14,  walking_data6, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 124,  vcompress.vm,  walking_data6_ans_mask15,  walking_data6, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 125,  vcompress.vm,  walking_data6_ans_mask16,  walking_data6, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 126,  vcompress.vm,  walking_data6_ans_mask17,  walking_data6, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 127,  vcompress.vm,  walking_data7_ans_mask0,  walking_data7, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 128,  vcompress.vm,  walking_data7_ans_mask1,  walking_data7, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 129,  vcompress.vm,  walking_data7_ans_mask2,  walking_data7, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 130,  vcompress.vm,  walking_data7_ans_mask3,  walking_data7, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 131,  vcompress.vm,  walking_data7_ans_mask4,  walking_data7, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 132,  vcompress.vm,  walking_data7_ans_mask5,  walking_data7, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 133,  vcompress.vm,  walking_data7_ans_mask6,  walking_data7, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 134,  vcompress.vm,  walking_data7_ans_mask7,  walking_data7, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 135,  vcompress.vm,  walking_data7_ans_mask8,  walking_data7, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 136,  vcompress.vm,  walking_data7_ans_mask9,  walking_data7, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 137,  vcompress.vm,  walking_data7_ans_mask10,  walking_data7, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 138,  vcompress.vm,  walking_data7_ans_mask11,  walking_data7, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 139,  vcompress.vm,  walking_data7_ans_mask12,  walking_data7, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 140,  vcompress.vm,  walking_data7_ans_mask13,  walking_data7, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 141,  vcompress.vm,  walking_data7_ans_mask14,  walking_data7, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 142,  vcompress.vm,  walking_data7_ans_mask15,  walking_data7, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 143,  vcompress.vm,  walking_data7_ans_mask16,  walking_data7, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 144,  vcompress.vm,  walking_data7_ans_mask17,  walking_data7, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 145,  vcompress.vm,  walking_data8_ans_mask0,  walking_data8, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 146,  vcompress.vm,  walking_data8_ans_mask1,  walking_data8, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 147,  vcompress.vm,  walking_data8_ans_mask2,  walking_data8, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 148,  vcompress.vm,  walking_data8_ans_mask3,  walking_data8, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 149,  vcompress.vm,  walking_data8_ans_mask4,  walking_data8, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 150,  vcompress.vm,  walking_data8_ans_mask5,  walking_data8, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 151,  vcompress.vm,  walking_data8_ans_mask6,  walking_data8, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 152,  vcompress.vm,  walking_data8_ans_mask7,  walking_data8, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 153,  vcompress.vm,  walking_data8_ans_mask8,  walking_data8, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 154,  vcompress.vm,  walking_data8_ans_mask9,  walking_data8, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 155,  vcompress.vm,  walking_data8_ans_mask10,  walking_data8, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 156,  vcompress.vm,  walking_data8_ans_mask11,  walking_data8, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 157,  vcompress.vm,  walking_data8_ans_mask12,  walking_data8, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 158,  vcompress.vm,  walking_data8_ans_mask13,  walking_data8, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 159,  vcompress.vm,  walking_data8_ans_mask14,  walking_data8, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 160,  vcompress.vm,  walking_data8_ans_mask15,  walking_data8, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 161,  vcompress.vm,  walking_data8_ans_mask16,  walking_data8, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 162,  vcompress.vm,  walking_data8_ans_mask17,  walking_data8, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 163,  vcompress.vm,  walking_data9_ans_mask0,  walking_data9, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 164,  vcompress.vm,  walking_data9_ans_mask1,  walking_data9, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 165,  vcompress.vm,  walking_data9_ans_mask2,  walking_data9, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 166,  vcompress.vm,  walking_data9_ans_mask3,  walking_data9, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 167,  vcompress.vm,  walking_data9_ans_mask4,  walking_data9, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 168,  vcompress.vm,  walking_data9_ans_mask5,  walking_data9, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 169,  vcompress.vm,  walking_data9_ans_mask6,  walking_data9, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 170,  vcompress.vm,  walking_data9_ans_mask7,  walking_data9, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 171,  vcompress.vm,  walking_data9_ans_mask8,  walking_data9, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 172,  vcompress.vm,  walking_data9_ans_mask9,  walking_data9, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 173,  vcompress.vm,  walking_data9_ans_mask10,  walking_data9, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 174,  vcompress.vm,  walking_data9_ans_mask11,  walking_data9, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 175,  vcompress.vm,  walking_data9_ans_mask12,  walking_data9, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 176,  vcompress.vm,  walking_data9_ans_mask13,  walking_data9, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 177,  vcompress.vm,  walking_data9_ans_mask14,  walking_data9, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 178,  vcompress.vm,  walking_data9_ans_mask15,  walking_data9, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 179,  vcompress.vm,  walking_data9_ans_mask16,  walking_data9, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 180,  vcompress.vm,  walking_data9_ans_mask17,  walking_data9, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 181,  vcompress.vm,  walking_data10_ans_mask0,  walking_data10, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 182,  vcompress.vm,  walking_data10_ans_mask1,  walking_data10, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 183,  vcompress.vm,  walking_data10_ans_mask2,  walking_data10, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 184,  vcompress.vm,  walking_data10_ans_mask3,  walking_data10, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 185,  vcompress.vm,  walking_data10_ans_mask4,  walking_data10, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 186,  vcompress.vm,  walking_data10_ans_mask5,  walking_data10, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 187,  vcompress.vm,  walking_data10_ans_mask6,  walking_data10, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 188,  vcompress.vm,  walking_data10_ans_mask7,  walking_data10, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 189,  vcompress.vm,  walking_data10_ans_mask8,  walking_data10, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 190,  vcompress.vm,  walking_data10_ans_mask9,  walking_data10, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 191,  vcompress.vm,  walking_data10_ans_mask10,  walking_data10, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 192,  vcompress.vm,  walking_data10_ans_mask11,  walking_data10, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 193,  vcompress.vm,  walking_data10_ans_mask12,  walking_data10, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 194,  vcompress.vm,  walking_data10_ans_mask13,  walking_data10, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 195,  vcompress.vm,  walking_data10_ans_mask14,  walking_data10, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 196,  vcompress.vm,  walking_data10_ans_mask15,  walking_data10, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 197,  vcompress.vm,  walking_data10_ans_mask16,  walking_data10, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 198,  vcompress.vm,  walking_data10_ans_mask17,  walking_data10, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 199,  vcompress.vm,  walking_data11_ans_mask0,  walking_data11, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 200,  vcompress.vm,  walking_data11_ans_mask1,  walking_data11, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 201,  vcompress.vm,  walking_data11_ans_mask2,  walking_data11, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 202,  vcompress.vm,  walking_data11_ans_mask3,  walking_data11, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 203,  vcompress.vm,  walking_data11_ans_mask4,  walking_data11, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 204,  vcompress.vm,  walking_data11_ans_mask5,  walking_data11, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 205,  vcompress.vm,  walking_data11_ans_mask6,  walking_data11, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 206,  vcompress.vm,  walking_data11_ans_mask7,  walking_data11, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 207,  vcompress.vm,  walking_data11_ans_mask8,  walking_data11, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 208,  vcompress.vm,  walking_data11_ans_mask9,  walking_data11, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 209,  vcompress.vm,  walking_data11_ans_mask10,  walking_data11, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 210,  vcompress.vm,  walking_data11_ans_mask11,  walking_data11, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 211,  vcompress.vm,  walking_data11_ans_mask12,  walking_data11, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 212,  vcompress.vm,  walking_data11_ans_mask13,  walking_data11, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 213,  vcompress.vm,  walking_data11_ans_mask14,  walking_data11, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 214,  vcompress.vm,  walking_data11_ans_mask15,  walking_data11, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 215,  vcompress.vm,  walking_data11_ans_mask16,  walking_data11, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 216,  vcompress.vm,  walking_data11_ans_mask17,  walking_data11, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 217,  vcompress.vm,  walking_data12_ans_mask0,  walking_data12, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 218,  vcompress.vm,  walking_data12_ans_mask1,  walking_data12, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 219,  vcompress.vm,  walking_data12_ans_mask2,  walking_data12, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 220,  vcompress.vm,  walking_data12_ans_mask3,  walking_data12, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 221,  vcompress.vm,  walking_data12_ans_mask4,  walking_data12, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 222,  vcompress.vm,  walking_data12_ans_mask5,  walking_data12, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 223,  vcompress.vm,  walking_data12_ans_mask6,  walking_data12, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 224,  vcompress.vm,  walking_data12_ans_mask7,  walking_data12, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 225,  vcompress.vm,  walking_data12_ans_mask8,  walking_data12, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 226,  vcompress.vm,  walking_data12_ans_mask9,  walking_data12, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 227,  vcompress.vm,  walking_data12_ans_mask10,  walking_data12, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 228,  vcompress.vm,  walking_data12_ans_mask11,  walking_data12, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 229,  vcompress.vm,  walking_data12_ans_mask12,  walking_data12, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 230,  vcompress.vm,  walking_data12_ans_mask13,  walking_data12, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 231,  vcompress.vm,  walking_data12_ans_mask14,  walking_data12, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 232,  vcompress.vm,  walking_data12_ans_mask15,  walking_data12, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 233,  vcompress.vm,  walking_data12_ans_mask16,  walking_data12, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 234,  vcompress.vm,  walking_data12_ans_mask17,  walking_data12, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 235,  vcompress.vm,  walking_data13_ans_mask0,  walking_data13, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 236,  vcompress.vm,  walking_data13_ans_mask1,  walking_data13, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 237,  vcompress.vm,  walking_data13_ans_mask2,  walking_data13, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 238,  vcompress.vm,  walking_data13_ans_mask3,  walking_data13, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 239,  vcompress.vm,  walking_data13_ans_mask4,  walking_data13, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 240,  vcompress.vm,  walking_data13_ans_mask5,  walking_data13, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 241,  vcompress.vm,  walking_data13_ans_mask6,  walking_data13, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 242,  vcompress.vm,  walking_data13_ans_mask7,  walking_data13, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 243,  vcompress.vm,  walking_data13_ans_mask8,  walking_data13, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 244,  vcompress.vm,  walking_data13_ans_mask9,  walking_data13, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 245,  vcompress.vm,  walking_data13_ans_mask10,  walking_data13, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 246,  vcompress.vm,  walking_data13_ans_mask11,  walking_data13, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 247,  vcompress.vm,  walking_data13_ans_mask12,  walking_data13, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 248,  vcompress.vm,  walking_data13_ans_mask13,  walking_data13, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 249,  vcompress.vm,  walking_data13_ans_mask14,  walking_data13, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 250,  vcompress.vm,  walking_data13_ans_mask15,  walking_data13, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 251,  vcompress.vm,  walking_data13_ans_mask16,  walking_data13, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 252,  vcompress.vm,  walking_data13_ans_mask17,  walking_data13, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 253,  vcompress.vm,  walking_data14_ans_mask0,  walking_data14, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 254,  vcompress.vm,  walking_data14_ans_mask1,  walking_data14, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 255,  vcompress.vm,  walking_data14_ans_mask2,  walking_data14, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 256,  vcompress.vm,  walking_data14_ans_mask3,  walking_data14, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 257,  vcompress.vm,  walking_data14_ans_mask4,  walking_data14, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 258,  vcompress.vm,  walking_data14_ans_mask5,  walking_data14, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 259,  vcompress.vm,  walking_data14_ans_mask6,  walking_data14, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 260,  vcompress.vm,  walking_data14_ans_mask7,  walking_data14, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 261,  vcompress.vm,  walking_data14_ans_mask8,  walking_data14, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 262,  vcompress.vm,  walking_data14_ans_mask9,  walking_data14, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 263,  vcompress.vm,  walking_data14_ans_mask10,  walking_data14, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 264,  vcompress.vm,  walking_data14_ans_mask11,  walking_data14, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 265,  vcompress.vm,  walking_data14_ans_mask12,  walking_data14, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 266,  vcompress.vm,  walking_data14_ans_mask13,  walking_data14, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 267,  vcompress.vm,  walking_data14_ans_mask14,  walking_data14, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 268,  vcompress.vm,  walking_data14_ans_mask15,  walking_data14, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 269,  vcompress.vm,  walking_data14_ans_mask16,  walking_data14, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 270,  vcompress.vm,  walking_data14_ans_mask17,  walking_data14, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 271,  vcompress.vm,  walking_data15_ans_mask0,  walking_data15, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 272,  vcompress.vm,  walking_data15_ans_mask1,  walking_data15, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 273,  vcompress.vm,  walking_data15_ans_mask2,  walking_data15, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 274,  vcompress.vm,  walking_data15_ans_mask3,  walking_data15, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 275,  vcompress.vm,  walking_data15_ans_mask4,  walking_data15, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 276,  vcompress.vm,  walking_data15_ans_mask5,  walking_data15, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 277,  vcompress.vm,  walking_data15_ans_mask6,  walking_data15, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 278,  vcompress.vm,  walking_data15_ans_mask7,  walking_data15, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 279,  vcompress.vm,  walking_data15_ans_mask8,  walking_data15, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 280,  vcompress.vm,  walking_data15_ans_mask9,  walking_data15, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 281,  vcompress.vm,  walking_data15_ans_mask10,  walking_data15, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 282,  vcompress.vm,  walking_data15_ans_mask11,  walking_data15, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 283,  vcompress.vm,  walking_data15_ans_mask12,  walking_data15, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 284,  vcompress.vm,  walking_data15_ans_mask13,  walking_data15, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 285,  vcompress.vm,  walking_data15_ans_mask14,  walking_data15, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 286,  vcompress.vm,  walking_data15_ans_mask15,  walking_data15, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 287,  vcompress.vm,  walking_data15_ans_mask16,  walking_data15, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 288,  vcompress.vm,  walking_data15_ans_mask17,  walking_data15, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 289,  vcompress.vm,  walking_data16_ans_mask0,  walking_data16, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 290,  vcompress.vm,  walking_data16_ans_mask1,  walking_data16, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 291,  vcompress.vm,  walking_data16_ans_mask2,  walking_data16, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 292,  vcompress.vm,  walking_data16_ans_mask3,  walking_data16, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 293,  vcompress.vm,  walking_data16_ans_mask4,  walking_data16, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 294,  vcompress.vm,  walking_data16_ans_mask5,  walking_data16, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 295,  vcompress.vm,  walking_data16_ans_mask6,  walking_data16, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 296,  vcompress.vm,  walking_data16_ans_mask7,  walking_data16, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 297,  vcompress.vm,  walking_data16_ans_mask8,  walking_data16, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 298,  vcompress.vm,  walking_data16_ans_mask9,  walking_data16, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 299,  vcompress.vm,  walking_data16_ans_mask10,  walking_data16, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 300,  vcompress.vm,  walking_data16_ans_mask11,  walking_data16, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 301,  vcompress.vm,  walking_data16_ans_mask12,  walking_data16, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 302,  vcompress.vm,  walking_data16_ans_mask13,  walking_data16, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 303,  vcompress.vm,  walking_data16_ans_mask14,  walking_data16, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 304,  vcompress.vm,  walking_data16_ans_mask15,  walking_data16, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 305,  vcompress.vm,  walking_data16_ans_mask16,  walking_data16, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 306,  vcompress.vm,  walking_data16_ans_mask17,  walking_data16, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 307,  vcompress.vm,  walking_data17_ans_mask0,  walking_data17, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 308,  vcompress.vm,  walking_data17_ans_mask1,  walking_data17, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 309,  vcompress.vm,  walking_data17_ans_mask2,  walking_data17, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 310,  vcompress.vm,  walking_data17_ans_mask3,  walking_data17, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 311,  vcompress.vm,  walking_data17_ans_mask4,  walking_data17, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 312,  vcompress.vm,  walking_data17_ans_mask5,  walking_data17, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 313,  vcompress.vm,  walking_data17_ans_mask6,  walking_data17, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 314,  vcompress.vm,  walking_data17_ans_mask7,  walking_data17, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 315,  vcompress.vm,  walking_data17_ans_mask8,  walking_data17, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 316,  vcompress.vm,  walking_data17_ans_mask9,  walking_data17, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 317,  vcompress.vm,  walking_data17_ans_mask10,  walking_data17, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 318,  vcompress.vm,  walking_data17_ans_mask11,  walking_data17, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 319,  vcompress.vm,  walking_data17_ans_mask12,  walking_data17, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 320,  vcompress.vm,  walking_data17_ans_mask13,  walking_data17, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 321,  vcompress.vm,  walking_data17_ans_mask14,  walking_data17, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 322,  vcompress.vm,  walking_data17_ans_mask15,  walking_data17, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 323,  vcompress.vm,  walking_data17_ans_mask16,  walking_data17, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 324,  vcompress.vm,  walking_data17_ans_mask17,  walking_data17, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 325,  vcompress.vm,  walking_data18_ans_mask0,  walking_data18, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 326,  vcompress.vm,  walking_data18_ans_mask1,  walking_data18, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 327,  vcompress.vm,  walking_data18_ans_mask2,  walking_data18, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 328,  vcompress.vm,  walking_data18_ans_mask3,  walking_data18, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 329,  vcompress.vm,  walking_data18_ans_mask4,  walking_data18, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 330,  vcompress.vm,  walking_data18_ans_mask5,  walking_data18, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 331,  vcompress.vm,  walking_data18_ans_mask6,  walking_data18, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 332,  vcompress.vm,  walking_data18_ans_mask7,  walking_data18, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 333,  vcompress.vm,  walking_data18_ans_mask8,  walking_data18, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 334,  vcompress.vm,  walking_data18_ans_mask9,  walking_data18, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 335,  vcompress.vm,  walking_data18_ans_mask10,  walking_data18, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 336,  vcompress.vm,  walking_data18_ans_mask11,  walking_data18, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 337,  vcompress.vm,  walking_data18_ans_mask12,  walking_data18, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 338,  vcompress.vm,  walking_data18_ans_mask13,  walking_data18, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 339,  vcompress.vm,  walking_data18_ans_mask14,  walking_data18, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 340,  vcompress.vm,  walking_data18_ans_mask15,  walking_data18, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 341,  vcompress.vm,  walking_data18_ans_mask16,  walking_data18, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 342,  vcompress.vm,  walking_data18_ans_mask17,  walking_data18, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 343,  vcompress.vm,  walking_data19_ans_mask0,  walking_data19, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 344,  vcompress.vm,  walking_data19_ans_mask1,  walking_data19, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 345,  vcompress.vm,  walking_data19_ans_mask2,  walking_data19, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 346,  vcompress.vm,  walking_data19_ans_mask3,  walking_data19, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 347,  vcompress.vm,  walking_data19_ans_mask4,  walking_data19, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 348,  vcompress.vm,  walking_data19_ans_mask5,  walking_data19, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 349,  vcompress.vm,  walking_data19_ans_mask6,  walking_data19, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 350,  vcompress.vm,  walking_data19_ans_mask7,  walking_data19, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 351,  vcompress.vm,  walking_data19_ans_mask8,  walking_data19, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 352,  vcompress.vm,  walking_data19_ans_mask9,  walking_data19, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 353,  vcompress.vm,  walking_data19_ans_mask10,  walking_data19, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 354,  vcompress.vm,  walking_data19_ans_mask11,  walking_data19, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 355,  vcompress.vm,  walking_data19_ans_mask12,  walking_data19, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 356,  vcompress.vm,  walking_data19_ans_mask13,  walking_data19, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 357,  vcompress.vm,  walking_data19_ans_mask14,  walking_data19, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 358,  vcompress.vm,  walking_data19_ans_mask15,  walking_data19, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 359,  vcompress.vm,  walking_data19_ans_mask16,  walking_data19, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 360,  vcompress.vm,  walking_data19_ans_mask17,  walking_data19, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 361,  vcompress.vm,  walking_data20_ans_mask0,  walking_data20, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 362,  vcompress.vm,  walking_data20_ans_mask1,  walking_data20, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 363,  vcompress.vm,  walking_data20_ans_mask2,  walking_data20, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 364,  vcompress.vm,  walking_data20_ans_mask3,  walking_data20, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 365,  vcompress.vm,  walking_data20_ans_mask4,  walking_data20, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 366,  vcompress.vm,  walking_data20_ans_mask5,  walking_data20, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 367,  vcompress.vm,  walking_data20_ans_mask6,  walking_data20, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 368,  vcompress.vm,  walking_data20_ans_mask7,  walking_data20, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 369,  vcompress.vm,  walking_data20_ans_mask8,  walking_data20, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 370,  vcompress.vm,  walking_data20_ans_mask9,  walking_data20, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 371,  vcompress.vm,  walking_data20_ans_mask10,  walking_data20, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 372,  vcompress.vm,  walking_data20_ans_mask11,  walking_data20, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 373,  vcompress.vm,  walking_data20_ans_mask12,  walking_data20, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 374,  vcompress.vm,  walking_data20_ans_mask13,  walking_data20, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 375,  vcompress.vm,  walking_data20_ans_mask14,  walking_data20, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 376,  vcompress.vm,  walking_data20_ans_mask15,  walking_data20, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 377,  vcompress.vm,  walking_data20_ans_mask16,  walking_data20, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 378,  vcompress.vm,  walking_data20_ans_mask17,  walking_data20, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 379,  vcompress.vm,  walking_data21_ans_mask0,  walking_data21, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 380,  vcompress.vm,  walking_data21_ans_mask1,  walking_data21, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 381,  vcompress.vm,  walking_data21_ans_mask2,  walking_data21, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 382,  vcompress.vm,  walking_data21_ans_mask3,  walking_data21, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 383,  vcompress.vm,  walking_data21_ans_mask4,  walking_data21, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 384,  vcompress.vm,  walking_data21_ans_mask5,  walking_data21, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 385,  vcompress.vm,  walking_data21_ans_mask6,  walking_data21, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 386,  vcompress.vm,  walking_data21_ans_mask7,  walking_data21, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 387,  vcompress.vm,  walking_data21_ans_mask8,  walking_data21, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 388,  vcompress.vm,  walking_data21_ans_mask9,  walking_data21, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 389,  vcompress.vm,  walking_data21_ans_mask10,  walking_data21, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 390,  vcompress.vm,  walking_data21_ans_mask11,  walking_data21, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 391,  vcompress.vm,  walking_data21_ans_mask12,  walking_data21, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 392,  vcompress.vm,  walking_data21_ans_mask13,  walking_data21, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 393,  vcompress.vm,  walking_data21_ans_mask14,  walking_data21, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 394,  vcompress.vm,  walking_data21_ans_mask15,  walking_data21, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 395,  vcompress.vm,  walking_data21_ans_mask16,  walking_data21, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 396,  vcompress.vm,  walking_data21_ans_mask17,  walking_data21, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 397,  vcompress.vm,  walking_data22_ans_mask0,  walking_data22, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 398,  vcompress.vm,  walking_data22_ans_mask1,  walking_data22, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 399,  vcompress.vm,  walking_data22_ans_mask2,  walking_data22, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 400,  vcompress.vm,  walking_data22_ans_mask3,  walking_data22, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 401,  vcompress.vm,  walking_data22_ans_mask4,  walking_data22, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 402,  vcompress.vm,  walking_data22_ans_mask5,  walking_data22, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 403,  vcompress.vm,  walking_data22_ans_mask6,  walking_data22, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 404,  vcompress.vm,  walking_data22_ans_mask7,  walking_data22, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 405,  vcompress.vm,  walking_data22_ans_mask8,  walking_data22, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 406,  vcompress.vm,  walking_data22_ans_mask9,  walking_data22, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 407,  vcompress.vm,  walking_data22_ans_mask10,  walking_data22, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 408,  vcompress.vm,  walking_data22_ans_mask11,  walking_data22, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 409,  vcompress.vm,  walking_data22_ans_mask12,  walking_data22, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 410,  vcompress.vm,  walking_data22_ans_mask13,  walking_data22, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 411,  vcompress.vm,  walking_data22_ans_mask14,  walking_data22, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 412,  vcompress.vm,  walking_data22_ans_mask15,  walking_data22, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 413,  vcompress.vm,  walking_data22_ans_mask16,  walking_data22, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 414,  vcompress.vm,  walking_data22_ans_mask17,  walking_data22, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 415,  vcompress.vm,  walking_data23_ans_mask0,  walking_data23, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 416,  vcompress.vm,  walking_data23_ans_mask1,  walking_data23, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 417,  vcompress.vm,  walking_data23_ans_mask2,  walking_data23, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 418,  vcompress.vm,  walking_data23_ans_mask3,  walking_data23, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 419,  vcompress.vm,  walking_data23_ans_mask4,  walking_data23, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 420,  vcompress.vm,  walking_data23_ans_mask5,  walking_data23, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 421,  vcompress.vm,  walking_data23_ans_mask6,  walking_data23, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 422,  vcompress.vm,  walking_data23_ans_mask7,  walking_data23, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 423,  vcompress.vm,  walking_data23_ans_mask8,  walking_data23, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 424,  vcompress.vm,  walking_data23_ans_mask9,  walking_data23, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 425,  vcompress.vm,  walking_data23_ans_mask10,  walking_data23, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 426,  vcompress.vm,  walking_data23_ans_mask11,  walking_data23, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 427,  vcompress.vm,  walking_data23_ans_mask12,  walking_data23, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 428,  vcompress.vm,  walking_data23_ans_mask13,  walking_data23, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 429,  vcompress.vm,  walking_data23_ans_mask14,  walking_data23, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 430,  vcompress.vm,  walking_data23_ans_mask15,  walking_data23, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 431,  vcompress.vm,  walking_data23_ans_mask16,  walking_data23, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 432,  vcompress.vm,  walking_data23_ans_mask17,  walking_data23, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 433,  vcompress.vm,  walking_data24_ans_mask0,  walking_data24, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 434,  vcompress.vm,  walking_data24_ans_mask1,  walking_data24, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 435,  vcompress.vm,  walking_data24_ans_mask2,  walking_data24, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 436,  vcompress.vm,  walking_data24_ans_mask3,  walking_data24, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 437,  vcompress.vm,  walking_data24_ans_mask4,  walking_data24, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 438,  vcompress.vm,  walking_data24_ans_mask5,  walking_data24, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 439,  vcompress.vm,  walking_data24_ans_mask6,  walking_data24, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 440,  vcompress.vm,  walking_data24_ans_mask7,  walking_data24, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 441,  vcompress.vm,  walking_data24_ans_mask8,  walking_data24, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 442,  vcompress.vm,  walking_data24_ans_mask9,  walking_data24, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 443,  vcompress.vm,  walking_data24_ans_mask10,  walking_data24, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 444,  vcompress.vm,  walking_data24_ans_mask11,  walking_data24, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 445,  vcompress.vm,  walking_data24_ans_mask12,  walking_data24, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 446,  vcompress.vm,  walking_data24_ans_mask13,  walking_data24, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 447,  vcompress.vm,  walking_data24_ans_mask14,  walking_data24, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 448,  vcompress.vm,  walking_data24_ans_mask15,  walking_data24, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 449,  vcompress.vm,  walking_data24_ans_mask16,  walking_data24, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 450,  vcompress.vm,  walking_data24_ans_mask17,  walking_data24, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 451,  vcompress.vm,  walking_data25_ans_mask0,  walking_data25, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 452,  vcompress.vm,  walking_data25_ans_mask1,  walking_data25, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 453,  vcompress.vm,  walking_data25_ans_mask2,  walking_data25, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 454,  vcompress.vm,  walking_data25_ans_mask3,  walking_data25, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 455,  vcompress.vm,  walking_data25_ans_mask4,  walking_data25, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 456,  vcompress.vm,  walking_data25_ans_mask5,  walking_data25, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 457,  vcompress.vm,  walking_data25_ans_mask6,  walking_data25, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 458,  vcompress.vm,  walking_data25_ans_mask7,  walking_data25, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 459,  vcompress.vm,  walking_data25_ans_mask8,  walking_data25, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 460,  vcompress.vm,  walking_data25_ans_mask9,  walking_data25, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 461,  vcompress.vm,  walking_data25_ans_mask10,  walking_data25, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 462,  vcompress.vm,  walking_data25_ans_mask11,  walking_data25, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 463,  vcompress.vm,  walking_data25_ans_mask12,  walking_data25, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 464,  vcompress.vm,  walking_data25_ans_mask13,  walking_data25, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 465,  vcompress.vm,  walking_data25_ans_mask14,  walking_data25, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 466,  vcompress.vm,  walking_data25_ans_mask15,  walking_data25, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 467,  vcompress.vm,  walking_data25_ans_mask16,  walking_data25, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 468,  vcompress.vm,  walking_data25_ans_mask17,  walking_data25, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 469,  vcompress.vm,  walking_data26_ans_mask0,  walking_data26, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 470,  vcompress.vm,  walking_data26_ans_mask1,  walking_data26, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 471,  vcompress.vm,  walking_data26_ans_mask2,  walking_data26, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 472,  vcompress.vm,  walking_data26_ans_mask3,  walking_data26, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 473,  vcompress.vm,  walking_data26_ans_mask4,  walking_data26, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 474,  vcompress.vm,  walking_data26_ans_mask5,  walking_data26, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 475,  vcompress.vm,  walking_data26_ans_mask6,  walking_data26, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 476,  vcompress.vm,  walking_data26_ans_mask7,  walking_data26, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 477,  vcompress.vm,  walking_data26_ans_mask8,  walking_data26, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 478,  vcompress.vm,  walking_data26_ans_mask9,  walking_data26, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 479,  vcompress.vm,  walking_data26_ans_mask10,  walking_data26, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 480,  vcompress.vm,  walking_data26_ans_mask11,  walking_data26, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 481,  vcompress.vm,  walking_data26_ans_mask12,  walking_data26, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 482,  vcompress.vm,  walking_data26_ans_mask13,  walking_data26, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 483,  vcompress.vm,  walking_data26_ans_mask14,  walking_data26, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 484,  vcompress.vm,  walking_data26_ans_mask15,  walking_data26, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 485,  vcompress.vm,  walking_data26_ans_mask16,  walking_data26, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 486,  vcompress.vm,  walking_data26_ans_mask17,  walking_data26, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 487,  vcompress.vm,  walking_data27_ans_mask0,  walking_data27, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 488,  vcompress.vm,  walking_data27_ans_mask1,  walking_data27, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 489,  vcompress.vm,  walking_data27_ans_mask2,  walking_data27, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 490,  vcompress.vm,  walking_data27_ans_mask3,  walking_data27, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 491,  vcompress.vm,  walking_data27_ans_mask4,  walking_data27, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 492,  vcompress.vm,  walking_data27_ans_mask5,  walking_data27, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 493,  vcompress.vm,  walking_data27_ans_mask6,  walking_data27, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 494,  vcompress.vm,  walking_data27_ans_mask7,  walking_data27, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 495,  vcompress.vm,  walking_data27_ans_mask8,  walking_data27, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 496,  vcompress.vm,  walking_data27_ans_mask9,  walking_data27, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 497,  vcompress.vm,  walking_data27_ans_mask10,  walking_data27, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 498,  vcompress.vm,  walking_data27_ans_mask11,  walking_data27, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 499,  vcompress.vm,  walking_data27_ans_mask12,  walking_data27, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 500,  vcompress.vm,  walking_data27_ans_mask13,  walking_data27, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 501,  vcompress.vm,  walking_data27_ans_mask14,  walking_data27, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 502,  vcompress.vm,  walking_data27_ans_mask15,  walking_data27, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 503,  vcompress.vm,  walking_data27_ans_mask16,  walking_data27, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 504,  vcompress.vm,  walking_data27_ans_mask17,  walking_data27, rd_data, walking_mask_dat17 );
  #-------------------------------------------------------------
  # vcompress Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VCOMPRESS_OP_rd_1( 505,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_2( 506,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_3( 507,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_4( 508,  vcompress.vm,  walking_data4_ans_mask17,  walking_data4, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_5( 509,  vcompress.vm,  walking_data5_ans_mask17,  walking_data5, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_6( 510,  vcompress.vm,  walking_data6_ans_mask17,  walking_data6, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_7( 511,  vcompress.vm,  walking_data7_ans_mask17,  walking_data7, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_9( 512,  vcompress.vm,  walking_data9_ans_mask17,  walking_data9, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_10( 513,  vcompress.vm,  walking_data10_ans_mask17,  walking_data10, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_11( 514,  vcompress.vm,  walking_data11_ans_mask17,  walking_data11, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_12( 515,  vcompress.vm,  walking_data12_ans_mask17,  walking_data12, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_13( 516,  vcompress.vm,  walking_data13_ans_mask17,  walking_data13, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_14( 517,  vcompress.vm,  walking_data14_ans_mask17,  walking_data14, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_17( 518,  vcompress.vm,  walking_data17_ans_mask17,  walking_data17, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_18( 519,  vcompress.vm,  walking_data18_ans_mask17,  walking_data18, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_19( 520,  vcompress.vm,  walking_data19_ans_mask17,  walking_data19, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_20( 521,  vcompress.vm,  walking_data20_ans_mask17,  walking_data20, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_21( 522,  vcompress.vm,  walking_data21_ans_mask17,  walking_data21, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_22( 523,  vcompress.vm,  walking_data22_ans_mask17,  walking_data22, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_23( 524,  vcompress.vm,  walking_data23_ans_mask17,  walking_data23, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_24( 525,  vcompress.vm,  walking_data24_ans_mask17,  walking_data24, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_25( 526,  vcompress.vm,  walking_data25_ans_mask17,  walking_data25, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_26( 527,  vcompress.vm,  walking_data26_ans_mask17,  walking_data26, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_27( 528,  vcompress.vm,  walking_data27_ans_mask17,  walking_data27, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_28( 529,  vcompress.vm,  walking_data0_ans_mask17,  walking_data0, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_29( 530,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_30( 531,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rd_31( 532,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_1( 533,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_2( 534,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_3( 535,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_4( 536,  vcompress.vm,  walking_data4_ans_mask17,  walking_data4, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_5( 537,  vcompress.vm,  walking_data5_ans_mask17,  walking_data5, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_6( 538,  vcompress.vm,  walking_data6_ans_mask17,  walking_data6, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_7( 539,  vcompress.vm,  walking_data7_ans_mask17,  walking_data7, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_9( 540,  vcompress.vm,  walking_data9_ans_mask17,  walking_data9, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_10( 541,  vcompress.vm,  walking_data10_ans_mask17,  walking_data10, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_11( 542,  vcompress.vm,  walking_data11_ans_mask17,  walking_data11, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_12( 543,  vcompress.vm,  walking_data12_ans_mask17,  walking_data12, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_13( 544,  vcompress.vm,  walking_data13_ans_mask17,  walking_data13, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_14( 545,  vcompress.vm,  walking_data14_ans_mask17,  walking_data14, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_17( 546,  vcompress.vm,  walking_data17_ans_mask17,  walking_data17, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_18( 547,  vcompress.vm,  walking_data18_ans_mask17,  walking_data18, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_19( 548,  vcompress.vm,  walking_data19_ans_mask17,  walking_data19, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_20( 549,  vcompress.vm,  walking_data20_ans_mask17,  walking_data20, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_21( 550,  vcompress.vm,  walking_data21_ans_mask17,  walking_data21, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_22( 551,  vcompress.vm,  walking_data22_ans_mask17,  walking_data22, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_23( 552,  vcompress.vm,  walking_data23_ans_mask17,  walking_data23, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_24( 553,  vcompress.vm,  walking_data24_ans_mask17,  walking_data24, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_25( 554,  vcompress.vm,  walking_data25_ans_mask17,  walking_data25, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_26( 555,  vcompress.vm,  walking_data26_ans_mask17,  walking_data26, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_27( 556,  vcompress.vm,  walking_data27_ans_mask17,  walking_data27, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_28( 557,  vcompress.vm,  walking_data0_ans_mask17,  walking_data0, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_29( 558,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_30( 559,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs1_31( 560,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_1( 561,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_2( 562,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_3( 563,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_4( 564,  vcompress.vm,  walking_data4_ans_mask17,  walking_data4, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_5( 565,  vcompress.vm,  walking_data5_ans_mask17,  walking_data5, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_6( 566,  vcompress.vm,  walking_data6_ans_mask17,  walking_data6, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_7( 567,  vcompress.vm,  walking_data7_ans_mask17,  walking_data7, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_9( 568,  vcompress.vm,  walking_data9_ans_mask17,  walking_data9, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_10( 569,  vcompress.vm,  walking_data10_ans_mask17,  walking_data10, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_11( 570,  vcompress.vm,  walking_data11_ans_mask17,  walking_data11, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_12( 571,  vcompress.vm,  walking_data12_ans_mask17,  walking_data12, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_13( 572,  vcompress.vm,  walking_data13_ans_mask17,  walking_data13, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_14( 573,  vcompress.vm,  walking_data14_ans_mask17,  walking_data14, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_17( 574,  vcompress.vm,  walking_data17_ans_mask17,  walking_data17, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_18( 575,  vcompress.vm,  walking_data18_ans_mask17,  walking_data18, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_19( 576,  vcompress.vm,  walking_data19_ans_mask17,  walking_data19, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_20( 577,  vcompress.vm,  walking_data20_ans_mask17,  walking_data20, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_21( 578,  vcompress.vm,  walking_data21_ans_mask17,  walking_data21, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_22( 579,  vcompress.vm,  walking_data22_ans_mask17,  walking_data22, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_23( 580,  vcompress.vm,  walking_data23_ans_mask17,  walking_data23, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_24( 581,  vcompress.vm,  walking_data24_ans_mask17,  walking_data24, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_25( 582,  vcompress.vm,  walking_data25_ans_mask17,  walking_data25, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_26( 583,  vcompress.vm,  walking_data26_ans_mask17,  walking_data26, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_27( 584,  vcompress.vm,  walking_data27_ans_mask17,  walking_data27, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_28( 585,  vcompress.vm,  walking_data0_ans_mask17,  walking_data0, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_29( 586,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_30( 587,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP_rs2_31( 588,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
walking_mask_dat0:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat1:
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat2:
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat3:
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat4:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat5:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat6:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0

walking_mask_dat7:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0

walking_mask_dat8:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1

walking_mask_dat9:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat10:
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat11:
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat12:
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat13:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat14:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat15:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1

walking_mask_dat16:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1

walking_mask_dat17:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0

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

rd_data:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745

walking_data0_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask1:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask2:
.dword	-6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask3:
.dword	-6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask4:
.dword	-4611686018427387905
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask5:
.dword	-2305843009213693953
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask6:
.dword	-1152921504606846977
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask7:
.dword	-576460752303423489
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask8:
.dword	-288230376151711745
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data0_ans_mask9:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745

walking_data0_ans_mask10:
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	12

walking_data0_ans_mask11:
.dword	-9223372036854775808
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	12

walking_data0_ans_mask12:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	12

walking_data0_ans_mask13:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	12

walking_data0_ans_mask14:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	12

walking_data0_ans_mask15:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-576460752303423489
.dword	-288230376151711745
.dword	12

walking_data0_ans_mask16:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-288230376151711745
.dword	12

walking_data0_ans_mask17:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	12

walking_data1:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625

walking_data1_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask1:
.dword	-144115188075855873
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask2:
.dword	-72057594037927937
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask3:
.dword	-36028797018963969
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask4:
.dword	-18014398509481985
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask5:
.dword	-9007199254740993
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask6:
.dword	-4503599627370497
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask7:
.dword	-2251799813685249
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask8:
.dword	-1125899906842625
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data1_ans_mask9:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625

walking_data1_ans_mask10:
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	12

walking_data1_ans_mask11:
.dword	-144115188075855873
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	12

walking_data1_ans_mask12:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	12

walking_data1_ans_mask13:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	12

walking_data1_ans_mask14:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	12

walking_data1_ans_mask15:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-2251799813685249
.dword	-1125899906842625
.dword	12

walking_data1_ans_mask16:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-1125899906842625
.dword	12

walking_data1_ans_mask17:
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	12

walking_data2:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105

walking_data2_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask1:
.dword	-562949953421313
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask2:
.dword	-281474976710657
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask3:
.dword	-140737488355329
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask4:
.dword	-70368744177665
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask5:
.dword	-35184372088833
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask6:
.dword	-17592186044417
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask7:
.dword	-8796093022209
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask8:
.dword	-4398046511105
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data2_ans_mask9:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105

walking_data2_ans_mask10:
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	12

walking_data2_ans_mask11:
.dword	-562949953421313
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	12

walking_data2_ans_mask12:
.dword	-562949953421313
.dword	-281474976710657
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	12

walking_data2_ans_mask13:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	12

walking_data2_ans_mask14:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	12

walking_data2_ans_mask15:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-8796093022209
.dword	-4398046511105
.dword	12

walking_data2_ans_mask16:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-4398046511105
.dword	12

walking_data2_ans_mask17:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	12

walking_data3:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185

walking_data3_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask1:
.dword	-2199023255553
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask2:
.dword	-1099511627777
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask3:
.dword	-549755813889
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask4:
.dword	-274877906945
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask5:
.dword	-137438953473
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask6:
.dword	-68719476737
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask7:
.dword	-34359738369
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask8:
.dword	-17179869185
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data3_ans_mask9:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185

walking_data3_ans_mask10:
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	12

walking_data3_ans_mask11:
.dword	-2199023255553
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	12

walking_data3_ans_mask12:
.dword	-2199023255553
.dword	-1099511627777
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	12

walking_data3_ans_mask13:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	12

walking_data3_ans_mask14:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	12

walking_data3_ans_mask15:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-34359738369
.dword	-17179869185
.dword	12

walking_data3_ans_mask16:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-17179869185
.dword	12

walking_data3_ans_mask17:
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	12

walking_data4:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457

walking_data4_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask1:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask2:
.dword	-4294967297
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask3:
.dword	-3037000499
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask4:
.dword	-3037000498
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask5:
.dword	-2147483649
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask6:
.dword	-1073741825
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask7:
.dword	-536870913
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask8:
.dword	-268435457
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data4_ans_mask9:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457

walking_data4_ans_mask10:
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	12

walking_data4_ans_mask11:
.dword	-8589934593
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	12

walking_data4_ans_mask12:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	12

walking_data4_ans_mask13:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	12

walking_data4_ans_mask14:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	12

walking_data4_ans_mask15:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-536870913
.dword	-268435457
.dword	12

walking_data4_ans_mask16:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-268435457
.dword	12

walking_data4_ans_mask17:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	12

walking_data5:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577

walking_data5_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask1:
.dword	-134217729
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask2:
.dword	-67108865
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask3:
.dword	-33554433
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask4:
.dword	-16777217
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask5:
.dword	-8388609
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask6:
.dword	-4194305
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask7:
.dword	-2097153
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask8:
.dword	-1048577
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data5_ans_mask9:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577

walking_data5_ans_mask10:
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	12

walking_data5_ans_mask11:
.dword	-134217729
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	12

walking_data5_ans_mask12:
.dword	-134217729
.dword	-67108865
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	12

walking_data5_ans_mask13:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	12

walking_data5_ans_mask14:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	12

walking_data5_ans_mask15:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-2097153
.dword	-1048577
.dword	12

walking_data5_ans_mask16:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-1048577
.dword	12

walking_data5_ans_mask17:
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	12

walking_data6:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097

walking_data6_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask1:
.dword	-524289
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask2:
.dword	-262145
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask3:
.dword	-131073
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask4:
.dword	-65537
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask5:
.dword	-32769
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask6:
.dword	-16385
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask7:
.dword	-8193
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask8:
.dword	-4097
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data6_ans_mask9:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097

walking_data6_ans_mask10:
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	12

walking_data6_ans_mask11:
.dword	-524289
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	12

walking_data6_ans_mask12:
.dword	-524289
.dword	-262145
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	12

walking_data6_ans_mask13:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	12

walking_data6_ans_mask14:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-16385
.dword	-8193
.dword	-4097
.dword	12

walking_data6_ans_mask15:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-8193
.dword	-4097
.dword	12

walking_data6_ans_mask16:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-4097
.dword	12

walking_data6_ans_mask17:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	12

walking_data7:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17

walking_data7_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask1:
.dword	-2049
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask2:
.dword	-1025
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask3:
.dword	-513
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask4:
.dword	-257
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask5:
.dword	-129
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask6:
.dword	-65
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask7:
.dword	-33
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask8:
.dword	-17
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data7_ans_mask9:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17

walking_data7_ans_mask10:
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	12

walking_data7_ans_mask11:
.dword	-2049
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	12

walking_data7_ans_mask12:
.dword	-2049
.dword	-1025
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	12

walking_data7_ans_mask13:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	12

walking_data7_ans_mask14:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-65
.dword	-33
.dword	-17
.dword	12

walking_data7_ans_mask15:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-33
.dword	-17
.dword	12

walking_data7_ans_mask16:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-17
.dword	12

walking_data7_ans_mask17:
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	12

walking_data8:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3

walking_data8_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask1:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask2:
.dword	-5
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask3:
.dword	-3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask4:
.dword	-2
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask5:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask6:
.dword	1
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask7:
.dword	2
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data8_ans_mask9:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3

walking_data8_ans_mask10:
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	12

walking_data8_ans_mask11:
.dword	-9
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	12

walking_data8_ans_mask12:
.dword	-9
.dword	-5
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	12

walking_data8_ans_mask13:
.dword	-9
.dword	-5
.dword	-3
.dword	0
.dword	1
.dword	2
.dword	3
.dword	12

walking_data8_ans_mask14:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	1
.dword	2
.dword	3
.dword	12

walking_data8_ans_mask15:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	2
.dword	3
.dword	12

walking_data8_ans_mask16:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	3
.dword	12

walking_data8_ans_mask17:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	12

walking_data9:
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128

walking_data9_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask1:
.dword	4
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask2:
.dword	5
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask3:
.dword	6
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask4:
.dword	8
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask5:
.dword	16
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask6:
.dword	32
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask7:
.dword	64
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask8:
.dword	128
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data9_ans_mask9:
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128

walking_data9_ans_mask10:
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	12

walking_data9_ans_mask11:
.dword	4
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	12

walking_data9_ans_mask12:
.dword	4
.dword	5
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	12

walking_data9_ans_mask13:
.dword	4
.dword	5
.dword	6
.dword	16
.dword	32
.dword	64
.dword	128
.dword	12

walking_data9_ans_mask14:
.dword	4
.dword	5
.dword	6
.dword	8
.dword	32
.dword	64
.dword	128
.dword	12

walking_data9_ans_mask15:
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	64
.dword	128
.dword	12

walking_data9_ans_mask16:
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	128
.dword	12

walking_data9_ans_mask17:
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	12

walking_data10:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768

walking_data10_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask1:
.dword	256
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask2:
.dword	512
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask3:
.dword	1024
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask4:
.dword	2048
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask5:
.dword	4096
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask6:
.dword	8192
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask7:
.dword	16384
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask8:
.dword	32768
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data10_ans_mask9:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768

walking_data10_ans_mask10:
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	12

walking_data10_ans_mask11:
.dword	256
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	12

walking_data10_ans_mask12:
.dword	256
.dword	512
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	12

walking_data10_ans_mask13:
.dword	256
.dword	512
.dword	1024
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	12

walking_data10_ans_mask14:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	8192
.dword	16384
.dword	32768
.dword	12

walking_data10_ans_mask15:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	16384
.dword	32768
.dword	12

walking_data10_ans_mask16:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	32768
.dword	12

walking_data10_ans_mask17:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	12

walking_data11:
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608

walking_data11_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask1:
.dword	65536
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask2:
.dword	131072
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask3:
.dword	262144
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask4:
.dword	524288
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask5:
.dword	1048576
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask6:
.dword	2097152
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask7:
.dword	4194304
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask8:
.dword	8388608
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data11_ans_mask9:
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608

walking_data11_ans_mask10:
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	12

walking_data11_ans_mask11:
.dword	65536
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	12

walking_data11_ans_mask12:
.dword	65536
.dword	131072
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	12

walking_data11_ans_mask13:
.dword	65536
.dword	131072
.dword	262144
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	12

walking_data11_ans_mask14:
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	2097152
.dword	4194304
.dword	8388608
.dword	12

walking_data11_ans_mask15:
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	4194304
.dword	8388608
.dword	12

walking_data11_ans_mask16:
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	8388608
.dword	12

walking_data11_ans_mask17:
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	12

walking_data12:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648

walking_data12_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask1:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask2:
.dword	33554432
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask3:
.dword	67108864
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask4:
.dword	134217728
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask5:
.dword	268435456
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask6:
.dword	536870912
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask7:
.dword	1073741824
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask8:
.dword	2147483648
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data12_ans_mask9:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648

walking_data12_ans_mask10:
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	12

walking_data12_ans_mask11:
.dword	16777216
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	12

walking_data12_ans_mask12:
.dword	16777216
.dword	33554432
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	12

walking_data12_ans_mask13:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	12

walking_data12_ans_mask14:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	12

walking_data12_ans_mask15:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	1073741824
.dword	2147483648
.dword	12

walking_data12_ans_mask16:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	2147483648
.dword	12

walking_data12_ans_mask17:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	12

walking_data13:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736

walking_data13_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask1:
.dword	3037000498
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask2:
.dword	3037000499
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask3:
.dword	3037000500
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask4:
.dword	4294967296
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask5:
.dword	8589934592
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask6:
.dword	17179869184
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask7:
.dword	34359738368
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask8:
.dword	68719476736
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data13_ans_mask9:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736

walking_data13_ans_mask10:
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	12

walking_data13_ans_mask11:
.dword	3037000498
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	12

walking_data13_ans_mask12:
.dword	3037000498
.dword	3037000499
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	12

walking_data13_ans_mask13:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	12

walking_data13_ans_mask14:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	12

walking_data13_ans_mask15:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	34359738368
.dword	68719476736
.dword	12

walking_data13_ans_mask16:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	68719476736
.dword	12

walking_data13_ans_mask17:
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	12

walking_data14:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416

walking_data14_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask1:
.dword	137438953472
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask2:
.dword	274877906944
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask3:
.dword	549755813888
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask4:
.dword	1099511627776
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask5:
.dword	2199023255552
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask6:
.dword	4398046511104
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask7:
.dword	8796093022208
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask8:
.dword	17592186044416
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data14_ans_mask9:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416

walking_data14_ans_mask10:
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	12

walking_data14_ans_mask11:
.dword	137438953472
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	12

walking_data14_ans_mask12:
.dword	137438953472
.dword	274877906944
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	12

walking_data14_ans_mask13:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	12

walking_data14_ans_mask14:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	12

walking_data14_ans_mask15:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	8796093022208
.dword	17592186044416
.dword	12

walking_data14_ans_mask16:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	17592186044416
.dword	12

walking_data14_ans_mask17:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	12

walking_data15:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496

walking_data15_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask1:
.dword	35184372088832
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask2:
.dword	70368744177664
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask3:
.dword	140737488355328
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask4:
.dword	281474976710656
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask5:
.dword	562949953421312
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask6:
.dword	1125899906842624
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask7:
.dword	2251799813685248
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask8:
.dword	4503599627370496
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data15_ans_mask9:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496

walking_data15_ans_mask10:
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	12

walking_data15_ans_mask11:
.dword	35184372088832
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	12

walking_data15_ans_mask12:
.dword	35184372088832
.dword	70368744177664
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	12

walking_data15_ans_mask13:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	12

walking_data15_ans_mask14:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	12

walking_data15_ans_mask15:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	2251799813685248
.dword	4503599627370496
.dword	12

walking_data15_ans_mask16:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	4503599627370496
.dword	12

walking_data15_ans_mask17:
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	12

walking_data16:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976

walking_data16_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask1:
.dword	9007199254740992
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask2:
.dword	18014398509481984
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask3:
.dword	36028797018963968
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask4:
.dword	72057594037927936
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask5:
.dword	144115188075855872
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask6:
.dword	288230376151711744
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask7:
.dword	576460752303423488
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask8:
.dword	1152921504606846976
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data16_ans_mask9:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976

walking_data16_ans_mask10:
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	12

walking_data16_ans_mask11:
.dword	9007199254740992
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	12

walking_data16_ans_mask12:
.dword	9007199254740992
.dword	18014398509481984
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	12

walking_data16_ans_mask13:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	12

walking_data16_ans_mask14:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	12

walking_data16_ans_mask15:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	576460752303423488
.dword	1152921504606846976
.dword	12

walking_data16_ans_mask16:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	1152921504606846976
.dword	12

walking_data16_ans_mask17:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	12

walking_data17:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206

walking_data17_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask1:
.dword	2305843009213693952
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask2:
.dword	3689348814741910322
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask3:
.dword	3689348814741910323
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask4:
.dword	3689348814741910324
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask5:
.dword	4611686018427387904
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask6:
.dword	6148914691236517204
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask7:
.dword	6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask8:
.dword	6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data17_ans_mask9:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206

walking_data17_ans_mask10:
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	12

walking_data17_ans_mask11:
.dword	2305843009213693952
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	12

walking_data17_ans_mask12:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	12

walking_data17_ans_mask13:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	12

walking_data17_ans_mask14:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	12

walking_data17_ans_mask15:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517205
.dword	6148914691236517206
.dword	12

walking_data17_ans_mask16:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517206
.dword	12

walking_data17_ans_mask17:
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	12

walking_data18:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	-2898262178229026173

walking_data18_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask1:
.dword	7378697629483820645
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask2:
.dword	7378697629483820646
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask3:
.dword	7378697629483820647
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask4:
.dword	9223372036854775807
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask5:
.dword	-8973855300859841162
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask6:
.dword	-6556928030115650775
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask7:
.dword	-7004698792774860992
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask8:
.dword	-2898262178229026173
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data18_ans_mask9:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	-2898262178229026173

walking_data18_ans_mask10:
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	-2898262178229026173
.dword	12

walking_data18_ans_mask11:
.dword	7378697629483820645
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	-2898262178229026173
.dword	12

walking_data18_ans_mask12:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	-2898262178229026173
.dword	12

walking_data18_ans_mask13:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	-2898262178229026173
.dword	12

walking_data18_ans_mask14:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	-2898262178229026173
.dword	12

walking_data18_ans_mask15:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-7004698792774860992
.dword	-2898262178229026173
.dword	12

walking_data18_ans_mask16:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-2898262178229026173
.dword	12

walking_data18_ans_mask17:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-8973855300859841162
.dword	-6556928030115650775
.dword	-7004698792774860992
.dword	12

walking_data19:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	7748191292183533177

walking_data19_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask1:
.dword	7710667069481197276
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask2:
.dword	-281262462840902060
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask3:
.dword	-6260066695934607758
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask4:
.dword	2599084020046994323
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask5:
.dword	6470883343794710367
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask6:
.dword	-6797023421040388581
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask7:
.dword	6586045132809993779
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask8:
.dword	7748191292183533177
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data19_ans_mask9:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	7748191292183533177

walking_data19_ans_mask10:
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	7748191292183533177
.dword	12

walking_data19_ans_mask11:
.dword	7710667069481197276
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	7748191292183533177
.dword	12

walking_data19_ans_mask12:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	2599084020046994323
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	7748191292183533177
.dword	12

walking_data19_ans_mask13:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	7748191292183533177
.dword	12

walking_data19_ans_mask14:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	7748191292183533177
.dword	12

walking_data19_ans_mask15:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	6470883343794710367
.dword	6586045132809993779
.dword	7748191292183533177
.dword	12

walking_data19_ans_mask16:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	7748191292183533177
.dword	12

walking_data19_ans_mask17:
.dword	7710667069481197276
.dword	-281262462840902060
.dword	-6260066695934607758
.dword	2599084020046994323
.dword	6470883343794710367
.dword	-6797023421040388581
.dword	6586045132809993779
.dword	12

walking_data20:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	864897981463091579
.dword	107693310896954312

walking_data20_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask1:
.dword	2962049820336637503
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask2:
.dword	-382925133943191757
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask3:
.dword	-6144171770406665148
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask4:
.dword	-6123544923797647410
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask5:
.dword	1739407128585247882
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask6:
.dword	-3775147846824307431
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask7:
.dword	864897981463091579
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask8:
.dword	107693310896954312
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data20_ans_mask9:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	864897981463091579
.dword	107693310896954312

walking_data20_ans_mask10:
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	864897981463091579
.dword	107693310896954312
.dword	12

walking_data20_ans_mask11:
.dword	2962049820336637503
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	864897981463091579
.dword	107693310896954312
.dword	12

walking_data20_ans_mask12:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	864897981463091579
.dword	107693310896954312
.dword	12

walking_data20_ans_mask13:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	864897981463091579
.dword	107693310896954312
.dword	12

walking_data20_ans_mask14:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	-3775147846824307431
.dword	864897981463091579
.dword	107693310896954312
.dword	12

walking_data20_ans_mask15:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	864897981463091579
.dword	107693310896954312
.dword	12

walking_data20_ans_mask16:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	107693310896954312
.dword	12

walking_data20_ans_mask17:
.dword	2962049820336637503
.dword	-382925133943191757
.dword	-6144171770406665148
.dword	-6123544923797647410
.dword	1739407128585247882
.dword	-3775147846824307431
.dword	864897981463091579
.dword	12

walking_data21:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2163472921496397149
.dword	2516020877518307237

walking_data21_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask1:
.dword	4437659436212581787
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask2:
.dword	2261029395266836745
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask3:
.dword	-8124850958153163786
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask4:
.dword	-9204390381433591267
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask5:
.dword	3675201595629275963
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask6:
.dword	5108425820801446604
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask7:
.dword	2163472921496397149
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask8:
.dword	2516020877518307237
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data21_ans_mask9:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2163472921496397149
.dword	2516020877518307237

walking_data21_ans_mask10:
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2163472921496397149
.dword	2516020877518307237
.dword	12

walking_data21_ans_mask11:
.dword	4437659436212581787
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2163472921496397149
.dword	2516020877518307237
.dword	12

walking_data21_ans_mask12:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2163472921496397149
.dword	2516020877518307237
.dword	12

walking_data21_ans_mask13:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2163472921496397149
.dword	2516020877518307237
.dword	12

walking_data21_ans_mask14:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	5108425820801446604
.dword	2163472921496397149
.dword	2516020877518307237
.dword	12

walking_data21_ans_mask15:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	2163472921496397149
.dword	2516020877518307237
.dword	12

walking_data21_ans_mask16:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2516020877518307237
.dword	12

walking_data21_ans_mask17:
.dword	4437659436212581787
.dword	2261029395266836745
.dword	-8124850958153163786
.dword	-9204390381433591267
.dword	3675201595629275963
.dword	5108425820801446604
.dword	2163472921496397149
.dword	12

walking_data22:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	6663077980511937410

walking_data22_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask1:
.dword	3025341049917074411
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask2:
.dword	5484592060331802574
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask3:
.dword	4537446525317136545
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask4:
.dword	8109577536877214798
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask5:
.dword	-1281135417889555498
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask6:
.dword	-9117774454847495984
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask7:
.dword	8927296512147140927
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask8:
.dword	6663077980511937410
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data22_ans_mask9:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	6663077980511937410

walking_data22_ans_mask10:
.dword	5484592060331802574
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	6663077980511937410
.dword	12

walking_data22_ans_mask11:
.dword	3025341049917074411
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	6663077980511937410
.dword	12

walking_data22_ans_mask12:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	6663077980511937410
.dword	12

walking_data22_ans_mask13:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	4537446525317136545
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	6663077980511937410
.dword	12

walking_data22_ans_mask14:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	6663077980511937410
.dword	12

walking_data22_ans_mask15:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	8927296512147140927
.dword	6663077980511937410
.dword	12

walking_data22_ans_mask16:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	6663077980511937410
.dword	12

walking_data22_ans_mask17:
.dword	3025341049917074411
.dword	5484592060331802574
.dword	4537446525317136545
.dword	8109577536877214798
.dword	-1281135417889555498
.dword	-9117774454847495984
.dword	8927296512147140927
.dword	12

walking_data23:
.dword	2343887812649772666
.dword	310370460373923028
.dword	637734081688330972
.dword	4487497506987454502
.dword	3515279970439365220
.dword	6247057769010797786
.dword	1120407989902965823
.dword	8732142082481347806

walking_data23_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask1:
.dword	2343887812649772666
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask2:
.dword	310370460373923028
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask3:
.dword	637734081688330972
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask4:
.dword	4487497506987454502
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask5:
.dword	3515279970439365220
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask6:
.dword	6247057769010797786
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask7:
.dword	1120407989902965823
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask8:
.dword	8732142082481347806
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data23_ans_mask9:
.dword	2343887812649772666
.dword	310370460373923028
.dword	637734081688330972
.dword	4487497506987454502
.dword	3515279970439365220
.dword	6247057769010797786
.dword	1120407989902965823
.dword	8732142082481347806

walking_data23_ans_mask10:
.dword	310370460373923028
.dword	637734081688330972
.dword	4487497506987454502
.dword	3515279970439365220
.dword	6247057769010797786
.dword	1120407989902965823
.dword	8732142082481347806
.dword	12

walking_data23_ans_mask11:
.dword	2343887812649772666
.dword	637734081688330972
.dword	4487497506987454502
.dword	3515279970439365220
.dword	6247057769010797786
.dword	1120407989902965823
.dword	8732142082481347806
.dword	12

walking_data23_ans_mask12:
.dword	2343887812649772666
.dword	310370460373923028
.dword	4487497506987454502
.dword	3515279970439365220
.dword	6247057769010797786
.dword	1120407989902965823
.dword	8732142082481347806
.dword	12

walking_data23_ans_mask13:
.dword	2343887812649772666
.dword	310370460373923028
.dword	637734081688330972
.dword	3515279970439365220
.dword	6247057769010797786
.dword	1120407989902965823
.dword	8732142082481347806
.dword	12

walking_data23_ans_mask14:
.dword	2343887812649772666
.dword	310370460373923028
.dword	637734081688330972
.dword	4487497506987454502
.dword	6247057769010797786
.dword	1120407989902965823
.dword	8732142082481347806
.dword	12

walking_data23_ans_mask15:
.dword	2343887812649772666
.dword	310370460373923028
.dword	637734081688330972
.dword	4487497506987454502
.dword	3515279970439365220
.dword	1120407989902965823
.dword	8732142082481347806
.dword	12

walking_data23_ans_mask16:
.dword	2343887812649772666
.dword	310370460373923028
.dword	637734081688330972
.dword	4487497506987454502
.dword	3515279970439365220
.dword	6247057769010797786
.dword	8732142082481347806
.dword	12

walking_data23_ans_mask17:
.dword	2343887812649772666
.dword	310370460373923028
.dword	637734081688330972
.dword	4487497506987454502
.dword	3515279970439365220
.dword	6247057769010797786
.dword	1120407989902965823
.dword	12

walking_data24:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	1589401675362308740
.dword	5824132200938343628
.dword	1859702588480827610

walking_data24_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask1:
.dword	-1975547463139225677
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask2:
.dword	-1649193797829379255
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask3:
.dword	-933800590272490212
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask4:
.dword	-1140351701798225227
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask5:
.dword	3057431365252490848
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask6:
.dword	1589401675362308740
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask7:
.dword	5824132200938343628
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask8:
.dword	1859702588480827610
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data24_ans_mask9:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	1589401675362308740
.dword	5824132200938343628
.dword	1859702588480827610

walking_data24_ans_mask10:
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	1589401675362308740
.dword	5824132200938343628
.dword	1859702588480827610
.dword	12

walking_data24_ans_mask11:
.dword	-1975547463139225677
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	1589401675362308740
.dword	5824132200938343628
.dword	1859702588480827610
.dword	12

walking_data24_ans_mask12:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	1589401675362308740
.dword	5824132200938343628
.dword	1859702588480827610
.dword	12

walking_data24_ans_mask13:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	3057431365252490848
.dword	1589401675362308740
.dword	5824132200938343628
.dword	1859702588480827610
.dword	12

walking_data24_ans_mask14:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	1589401675362308740
.dword	5824132200938343628
.dword	1859702588480827610
.dword	12

walking_data24_ans_mask15:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	5824132200938343628
.dword	1859702588480827610
.dword	12

walking_data24_ans_mask16:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	1589401675362308740
.dword	1859702588480827610
.dword	12

walking_data24_ans_mask17:
.dword	-1975547463139225677
.dword	-1649193797829379255
.dword	-933800590272490212
.dword	-1140351701798225227
.dword	3057431365252490848
.dword	1589401675362308740
.dword	5824132200938343628
.dword	12

walking_data25:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	1647737885051134100
.dword	-876847099344152669

walking_data25_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask1:
.dword	-6834417113892765308
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask2:
.dword	2681268675511435448
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask3:
.dword	-5934784121803194647
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask4:
.dword	4950735785173058988
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask5:
.dword	-1039451032249931388
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask6:
.dword	6459803969772486505
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask7:
.dword	1647737885051134100
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask8:
.dword	-876847099344152669
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data25_ans_mask9:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	1647737885051134100
.dword	-876847099344152669

walking_data25_ans_mask10:
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	1647737885051134100
.dword	-876847099344152669
.dword	12

walking_data25_ans_mask11:
.dword	-6834417113892765308
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	1647737885051134100
.dword	-876847099344152669
.dword	12

walking_data25_ans_mask12:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	1647737885051134100
.dword	-876847099344152669
.dword	12

walking_data25_ans_mask13:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	1647737885051134100
.dword	-876847099344152669
.dword	12

walking_data25_ans_mask14:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	6459803969772486505
.dword	1647737885051134100
.dword	-876847099344152669
.dword	12

walking_data25_ans_mask15:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	1647737885051134100
.dword	-876847099344152669
.dword	12

walking_data25_ans_mask16:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	-876847099344152669
.dword	12

walking_data25_ans_mask17:
.dword	-6834417113892765308
.dword	2681268675511435448
.dword	-5934784121803194647
.dword	4950735785173058988
.dword	-1039451032249931388
.dword	6459803969772486505
.dword	1647737885051134100
.dword	12

walking_data26:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	-795437460668523354
.dword	8850509328794012300
.dword	3390405953940468491

walking_data26_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask1:
.dword	-2431270102854148892
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask2:
.dword	5546662711119714476
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask3:
.dword	-3510446981054265001
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask4:
.dword	-6983202760716621740
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask5:
.dword	3166728449258406756
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask6:
.dword	-795437460668523354
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask7:
.dword	8850509328794012300
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask8:
.dword	3390405953940468491
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data26_ans_mask9:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	-795437460668523354
.dword	8850509328794012300
.dword	3390405953940468491

walking_data26_ans_mask10:
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	-795437460668523354
.dword	8850509328794012300
.dword	3390405953940468491
.dword	12

walking_data26_ans_mask11:
.dword	-2431270102854148892
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	-795437460668523354
.dword	8850509328794012300
.dword	3390405953940468491
.dword	12

walking_data26_ans_mask12:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	-795437460668523354
.dword	8850509328794012300
.dword	3390405953940468491
.dword	12

walking_data26_ans_mask13:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	3166728449258406756
.dword	-795437460668523354
.dword	8850509328794012300
.dword	3390405953940468491
.dword	12

walking_data26_ans_mask14:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	-795437460668523354
.dword	8850509328794012300
.dword	3390405953940468491
.dword	12

walking_data26_ans_mask15:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	8850509328794012300
.dword	3390405953940468491
.dword	12

walking_data26_ans_mask16:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	-795437460668523354
.dword	3390405953940468491
.dword	12

walking_data26_ans_mask17:
.dword	-2431270102854148892
.dword	5546662711119714476
.dword	-3510446981054265001
.dword	-6983202760716621740
.dword	3166728449258406756
.dword	-795437460668523354
.dword	8850509328794012300
.dword	12

walking_data27:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	7718955049015486795

walking_data27_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask1:
.dword	-743634050779210576
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask2:
.dword	2954804038845177164
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask3:
.dword	-3436551969572391693
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask4:
.dword	1858167069986421649
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask5:
.dword	-1130807967030475033
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask6:
.dword	6046506110489028122
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask7:
.dword	-7941006674246034529
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask8:
.dword	7718955049015486795
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12

walking_data27_ans_mask9:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	7718955049015486795

walking_data27_ans_mask10:
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	7718955049015486795
.dword	12

walking_data27_ans_mask11:
.dword	-743634050779210576
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	7718955049015486795
.dword	12

walking_data27_ans_mask12:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	7718955049015486795
.dword	12

walking_data27_ans_mask13:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	7718955049015486795
.dword	12

walking_data27_ans_mask14:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	7718955049015486795
.dword	12

walking_data27_ans_mask15:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	-7941006674246034529
.dword	7718955049015486795
.dword	12

walking_data27_ans_mask16:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	7718955049015486795
.dword	12

walking_data27_ans_mask17:
.dword	-743634050779210576
.dword	2954804038845177164
.dword	-3436551969572391693
.dword	1858167069986421649
.dword	-1130807967030475033
.dword	6046506110489028122
.dword	-7941006674246034529
.dword	12

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
    

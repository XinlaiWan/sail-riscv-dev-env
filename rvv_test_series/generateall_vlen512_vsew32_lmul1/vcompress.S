#define TEST_VCOMPRESS_OP_rd_1( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v1, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v1, (x2); \
            inst v1, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_2( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v2, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v2, (x2); \
            inst v2, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_3( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v3, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v3, (x2); \
            inst v3, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_4( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v4, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v4, (x2); \
            inst v4, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_5( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v5, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v5, (x2); \
            inst v5, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_6( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v6, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v6, (x2); \
            inst v6, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_7( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v7, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v7, (x2); \
            inst v7, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_9( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v9, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v9, (x2); \
            inst v9, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_10( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v10, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v10, (x2); \
            inst v10, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_11( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v11, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v11, (x2); \
            inst v11, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_12( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v12, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v12, (x2); \
            inst v12, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_13( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v13, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v13, (x2); \
            inst v13, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_14( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v14, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v14, (x2); \
            inst v14, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_17( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v17, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v17, (x2); \
            inst v17, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_18( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v18, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v18, (x2); \
            inst v18, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_19( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v19, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v19, (x2); \
            inst v19, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_20( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v20, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v20, (x2); \
            inst v20, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_21( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v21, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v21, (x2); \
            inst v21, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_22( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v22, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v22, (x2); \
            inst v22, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_23( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v23, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v23, (x2); \
            inst v23, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_24( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v24, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v24, (x2); \
            inst v24, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_25( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v25, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v25, (x2); \
            inst v25, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_26( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v26, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v26, (x2); \
            inst v26, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_27( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v27, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v27, (x2); \
            inst v27, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_28( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v28, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v28, (x2); \
            inst v28, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_29( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v29, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v29, (x2); \
            inst v29, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_30( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v30, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v30, (x2); \
            inst v30, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rd_31( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v31, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v31, (x2); \
            inst v31, v8, v0; \
        )
#define TEST_VCOMPRESS_OP_rs1_1( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v1, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v1; \
        )
#define TEST_VCOMPRESS_OP_rs1_2( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v2, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v2; \
        )
#define TEST_VCOMPRESS_OP_rs1_3( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v3, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v3; \
        )
#define TEST_VCOMPRESS_OP_rs1_4( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v4, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v4; \
        )
#define TEST_VCOMPRESS_OP_rs1_5( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v5, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v5; \
        )
#define TEST_VCOMPRESS_OP_rs1_6( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v6, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v6; \
        )
#define TEST_VCOMPRESS_OP_rs1_7( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v7, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v7; \
        )
#define TEST_VCOMPRESS_OP_rs1_9( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v9, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v9; \
        )
#define TEST_VCOMPRESS_OP_rs1_10( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v10, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v10; \
        )
#define TEST_VCOMPRESS_OP_rs1_11( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v11, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v11; \
        )
#define TEST_VCOMPRESS_OP_rs1_12( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v12, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v12; \
        )
#define TEST_VCOMPRESS_OP_rs1_13( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v13, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v13; \
        )
#define TEST_VCOMPRESS_OP_rs1_14( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v14, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v14; \
        )
#define TEST_VCOMPRESS_OP_rs1_17( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v17, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v17; \
        )
#define TEST_VCOMPRESS_OP_rs1_18( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v18, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v18; \
        )
#define TEST_VCOMPRESS_OP_rs1_19( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v19, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v19; \
        )
#define TEST_VCOMPRESS_OP_rs1_20( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v20, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v20; \
        )
#define TEST_VCOMPRESS_OP_rs1_21( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v21, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v21; \
        )
#define TEST_VCOMPRESS_OP_rs1_22( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v22, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v22; \
        )
#define TEST_VCOMPRESS_OP_rs1_23( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v23, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v23; \
        )
#define TEST_VCOMPRESS_OP_rs1_24( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v24, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v24; \
        )
#define TEST_VCOMPRESS_OP_rs1_25( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v25, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v25; \
        )
#define TEST_VCOMPRESS_OP_rs1_26( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v26, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v26; \
        )
#define TEST_VCOMPRESS_OP_rs1_27( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v27, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v27; \
        )
#define TEST_VCOMPRESS_OP_rs1_28( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v28, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v28; \
        )
#define TEST_VCOMPRESS_OP_rs1_29( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v29, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v29; \
        )
#define TEST_VCOMPRESS_OP_rs1_30( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v30, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v30; \
        )
#define TEST_VCOMPRESS_OP_rs1_31( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v31, v8, 1; \
            vle32.v v8, (x1); \
            vle32.v v16, (x2); \
            inst v16, v8, v31; \
        )
#define TEST_VCOMPRESS_OP_rs2_1( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v1, (x1); \
            vle32.v v16, (x2); \
            inst v16, v1, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_2( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v2, (x1); \
            vle32.v v16, (x2); \
            inst v16, v2, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_3( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v3, (x1); \
            vle32.v v16, (x2); \
            inst v16, v3, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_4( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v4, (x1); \
            vle32.v v16, (x2); \
            inst v16, v4, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_5( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v5, (x1); \
            vle32.v v16, (x2); \
            inst v16, v5, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_6( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v6, (x1); \
            vle32.v v16, (x2); \
            inst v16, v6, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_7( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v7, (x1); \
            vle32.v v16, (x2); \
            inst v16, v7, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_9( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v9, (x1); \
            vle32.v v16, (x2); \
            inst v16, v9, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_10( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v10, (x1); \
            vle32.v v16, (x2); \
            inst v16, v10, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_11( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v11, (x1); \
            vle32.v v16, (x2); \
            inst v16, v11, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_12( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v12, (x1); \
            vle32.v v16, (x2); \
            inst v16, v12, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_13( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v13, (x1); \
            vle32.v v16, (x2); \
            inst v16, v13, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_14( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v14, (x1); \
            vle32.v v16, (x2); \
            inst v16, v14, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_17( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v17, (x1); \
            vle32.v v16, (x2); \
            inst v16, v17, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_18( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v18, (x1); \
            vle32.v v16, (x2); \
            inst v16, v18, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_19( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v19, (x1); \
            vle32.v v16, (x2); \
            inst v16, v19, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_20( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v20, (x1); \
            vle32.v v16, (x2); \
            inst v16, v20, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_21( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v21, (x1); \
            vle32.v v16, (x2); \
            inst v16, v21, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_22( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v22, (x1); \
            vle32.v v16, (x2); \
            inst v16, v22, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_23( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v23, (x1); \
            vle32.v v16, (x2); \
            inst v16, v23, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_24( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v24, (x1); \
            vle32.v v16, (x2); \
            inst v16, v24, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_25( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v25, (x1); \
            vle32.v v16, (x2); \
            inst v16, v25, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_26( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v26, (x1); \
            vle32.v v16, (x2); \
            inst v16, v26, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_27( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v27, (x1); \
            vle32.v v16, (x2); \
            inst v16, v27, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_28( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v28, (x1); \
            vle32.v v16, (x2); \
            inst v16, v28, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_29( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v29, (x1); \
            vle32.v v16, (x2); \
            inst v16, v29, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_30( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v30, (x1); \
            vle32.v v16, (x2); \
            inst v16, v30, v0; \
        )
#define TEST_VCOMPRESS_OP_rs2_31( testnum, inst, result_addr, src_addr, rd_addr, vm_addr ) \
        TEST_CASE_LOOP( testnum, v16, result_addr, \
            VSET_VSEW_4AVL \
            la  x1, src_addr; \
            la  x2, rd_addr; \
            la  x3, vm_addr; \
            vle32.v v8, (x3); \
            vmseq.vi v0, v8, 1; \
            vle32.v v31, (x1); \
            vle32.v v16, (x2); \
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
    
    RVTEST_RV64UV
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
TEST_VCOMPRESS_OP( 19,  vcompress.vm,  walking_data0_ans_mask18,  walking_data0, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 20,  vcompress.vm,  walking_data0_ans_mask19,  walking_data0, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 21,  vcompress.vm,  walking_data0_ans_mask20,  walking_data0, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 22,  vcompress.vm,  walking_data0_ans_mask21,  walking_data0, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 23,  vcompress.vm,  walking_data0_ans_mask22,  walking_data0, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 24,  vcompress.vm,  walking_data0_ans_mask23,  walking_data0, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 25,  vcompress.vm,  walking_data0_ans_mask24,  walking_data0, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 26,  vcompress.vm,  walking_data0_ans_mask25,  walking_data0, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 27,  vcompress.vm,  walking_data0_ans_mask26,  walking_data0, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 28,  vcompress.vm,  walking_data0_ans_mask27,  walking_data0, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 29,  vcompress.vm,  walking_data0_ans_mask28,  walking_data0, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 30,  vcompress.vm,  walking_data0_ans_mask29,  walking_data0, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 31,  vcompress.vm,  walking_data0_ans_mask30,  walking_data0, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 32,  vcompress.vm,  walking_data0_ans_mask31,  walking_data0, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 33,  vcompress.vm,  walking_data0_ans_mask32,  walking_data0, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 34,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 35,  vcompress.vm,  walking_data1_ans_mask0,  walking_data1, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 36,  vcompress.vm,  walking_data1_ans_mask1,  walking_data1, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 37,  vcompress.vm,  walking_data1_ans_mask2,  walking_data1, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 38,  vcompress.vm,  walking_data1_ans_mask3,  walking_data1, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 39,  vcompress.vm,  walking_data1_ans_mask4,  walking_data1, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 40,  vcompress.vm,  walking_data1_ans_mask5,  walking_data1, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 41,  vcompress.vm,  walking_data1_ans_mask6,  walking_data1, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 42,  vcompress.vm,  walking_data1_ans_mask7,  walking_data1, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 43,  vcompress.vm,  walking_data1_ans_mask8,  walking_data1, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 44,  vcompress.vm,  walking_data1_ans_mask9,  walking_data1, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 45,  vcompress.vm,  walking_data1_ans_mask10,  walking_data1, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 46,  vcompress.vm,  walking_data1_ans_mask11,  walking_data1, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 47,  vcompress.vm,  walking_data1_ans_mask12,  walking_data1, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 48,  vcompress.vm,  walking_data1_ans_mask13,  walking_data1, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 49,  vcompress.vm,  walking_data1_ans_mask14,  walking_data1, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 50,  vcompress.vm,  walking_data1_ans_mask15,  walking_data1, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 51,  vcompress.vm,  walking_data1_ans_mask16,  walking_data1, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 52,  vcompress.vm,  walking_data1_ans_mask17,  walking_data1, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 53,  vcompress.vm,  walking_data1_ans_mask18,  walking_data1, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 54,  vcompress.vm,  walking_data1_ans_mask19,  walking_data1, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 55,  vcompress.vm,  walking_data1_ans_mask20,  walking_data1, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 56,  vcompress.vm,  walking_data1_ans_mask21,  walking_data1, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 57,  vcompress.vm,  walking_data1_ans_mask22,  walking_data1, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 58,  vcompress.vm,  walking_data1_ans_mask23,  walking_data1, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 59,  vcompress.vm,  walking_data1_ans_mask24,  walking_data1, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 60,  vcompress.vm,  walking_data1_ans_mask25,  walking_data1, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 61,  vcompress.vm,  walking_data1_ans_mask26,  walking_data1, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 62,  vcompress.vm,  walking_data1_ans_mask27,  walking_data1, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 63,  vcompress.vm,  walking_data1_ans_mask28,  walking_data1, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 64,  vcompress.vm,  walking_data1_ans_mask29,  walking_data1, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 65,  vcompress.vm,  walking_data1_ans_mask30,  walking_data1, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 66,  vcompress.vm,  walking_data1_ans_mask31,  walking_data1, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 67,  vcompress.vm,  walking_data1_ans_mask32,  walking_data1, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 68,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 69,  vcompress.vm,  walking_data2_ans_mask0,  walking_data2, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 70,  vcompress.vm,  walking_data2_ans_mask1,  walking_data2, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 71,  vcompress.vm,  walking_data2_ans_mask2,  walking_data2, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 72,  vcompress.vm,  walking_data2_ans_mask3,  walking_data2, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 73,  vcompress.vm,  walking_data2_ans_mask4,  walking_data2, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 74,  vcompress.vm,  walking_data2_ans_mask5,  walking_data2, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 75,  vcompress.vm,  walking_data2_ans_mask6,  walking_data2, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 76,  vcompress.vm,  walking_data2_ans_mask7,  walking_data2, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 77,  vcompress.vm,  walking_data2_ans_mask8,  walking_data2, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 78,  vcompress.vm,  walking_data2_ans_mask9,  walking_data2, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 79,  vcompress.vm,  walking_data2_ans_mask10,  walking_data2, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 80,  vcompress.vm,  walking_data2_ans_mask11,  walking_data2, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 81,  vcompress.vm,  walking_data2_ans_mask12,  walking_data2, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 82,  vcompress.vm,  walking_data2_ans_mask13,  walking_data2, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 83,  vcompress.vm,  walking_data2_ans_mask14,  walking_data2, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 84,  vcompress.vm,  walking_data2_ans_mask15,  walking_data2, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 85,  vcompress.vm,  walking_data2_ans_mask16,  walking_data2, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 86,  vcompress.vm,  walking_data2_ans_mask17,  walking_data2, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 87,  vcompress.vm,  walking_data2_ans_mask18,  walking_data2, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 88,  vcompress.vm,  walking_data2_ans_mask19,  walking_data2, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 89,  vcompress.vm,  walking_data2_ans_mask20,  walking_data2, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 90,  vcompress.vm,  walking_data2_ans_mask21,  walking_data2, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 91,  vcompress.vm,  walking_data2_ans_mask22,  walking_data2, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 92,  vcompress.vm,  walking_data2_ans_mask23,  walking_data2, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 93,  vcompress.vm,  walking_data2_ans_mask24,  walking_data2, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 94,  vcompress.vm,  walking_data2_ans_mask25,  walking_data2, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 95,  vcompress.vm,  walking_data2_ans_mask26,  walking_data2, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 96,  vcompress.vm,  walking_data2_ans_mask27,  walking_data2, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 97,  vcompress.vm,  walking_data2_ans_mask28,  walking_data2, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 98,  vcompress.vm,  walking_data2_ans_mask29,  walking_data2, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 99,  vcompress.vm,  walking_data2_ans_mask30,  walking_data2, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 100,  vcompress.vm,  walking_data2_ans_mask31,  walking_data2, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 101,  vcompress.vm,  walking_data2_ans_mask32,  walking_data2, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 102,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 103,  vcompress.vm,  walking_data3_ans_mask0,  walking_data3, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 104,  vcompress.vm,  walking_data3_ans_mask1,  walking_data3, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 105,  vcompress.vm,  walking_data3_ans_mask2,  walking_data3, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 106,  vcompress.vm,  walking_data3_ans_mask3,  walking_data3, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 107,  vcompress.vm,  walking_data3_ans_mask4,  walking_data3, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 108,  vcompress.vm,  walking_data3_ans_mask5,  walking_data3, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 109,  vcompress.vm,  walking_data3_ans_mask6,  walking_data3, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 110,  vcompress.vm,  walking_data3_ans_mask7,  walking_data3, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 111,  vcompress.vm,  walking_data3_ans_mask8,  walking_data3, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 112,  vcompress.vm,  walking_data3_ans_mask9,  walking_data3, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 113,  vcompress.vm,  walking_data3_ans_mask10,  walking_data3, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 114,  vcompress.vm,  walking_data3_ans_mask11,  walking_data3, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 115,  vcompress.vm,  walking_data3_ans_mask12,  walking_data3, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 116,  vcompress.vm,  walking_data3_ans_mask13,  walking_data3, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 117,  vcompress.vm,  walking_data3_ans_mask14,  walking_data3, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 118,  vcompress.vm,  walking_data3_ans_mask15,  walking_data3, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 119,  vcompress.vm,  walking_data3_ans_mask16,  walking_data3, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 120,  vcompress.vm,  walking_data3_ans_mask17,  walking_data3, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 121,  vcompress.vm,  walking_data3_ans_mask18,  walking_data3, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 122,  vcompress.vm,  walking_data3_ans_mask19,  walking_data3, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 123,  vcompress.vm,  walking_data3_ans_mask20,  walking_data3, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 124,  vcompress.vm,  walking_data3_ans_mask21,  walking_data3, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 125,  vcompress.vm,  walking_data3_ans_mask22,  walking_data3, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 126,  vcompress.vm,  walking_data3_ans_mask23,  walking_data3, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 127,  vcompress.vm,  walking_data3_ans_mask24,  walking_data3, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 128,  vcompress.vm,  walking_data3_ans_mask25,  walking_data3, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 129,  vcompress.vm,  walking_data3_ans_mask26,  walking_data3, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 130,  vcompress.vm,  walking_data3_ans_mask27,  walking_data3, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 131,  vcompress.vm,  walking_data3_ans_mask28,  walking_data3, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 132,  vcompress.vm,  walking_data3_ans_mask29,  walking_data3, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 133,  vcompress.vm,  walking_data3_ans_mask30,  walking_data3, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 134,  vcompress.vm,  walking_data3_ans_mask31,  walking_data3, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 135,  vcompress.vm,  walking_data3_ans_mask32,  walking_data3, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 136,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 137,  vcompress.vm,  walking_data4_ans_mask0,  walking_data4, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 138,  vcompress.vm,  walking_data4_ans_mask1,  walking_data4, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 139,  vcompress.vm,  walking_data4_ans_mask2,  walking_data4, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 140,  vcompress.vm,  walking_data4_ans_mask3,  walking_data4, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 141,  vcompress.vm,  walking_data4_ans_mask4,  walking_data4, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 142,  vcompress.vm,  walking_data4_ans_mask5,  walking_data4, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 143,  vcompress.vm,  walking_data4_ans_mask6,  walking_data4, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 144,  vcompress.vm,  walking_data4_ans_mask7,  walking_data4, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 145,  vcompress.vm,  walking_data4_ans_mask8,  walking_data4, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 146,  vcompress.vm,  walking_data4_ans_mask9,  walking_data4, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 147,  vcompress.vm,  walking_data4_ans_mask10,  walking_data4, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 148,  vcompress.vm,  walking_data4_ans_mask11,  walking_data4, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 149,  vcompress.vm,  walking_data4_ans_mask12,  walking_data4, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 150,  vcompress.vm,  walking_data4_ans_mask13,  walking_data4, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 151,  vcompress.vm,  walking_data4_ans_mask14,  walking_data4, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 152,  vcompress.vm,  walking_data4_ans_mask15,  walking_data4, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 153,  vcompress.vm,  walking_data4_ans_mask16,  walking_data4, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 154,  vcompress.vm,  walking_data4_ans_mask17,  walking_data4, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 155,  vcompress.vm,  walking_data4_ans_mask18,  walking_data4, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 156,  vcompress.vm,  walking_data4_ans_mask19,  walking_data4, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 157,  vcompress.vm,  walking_data4_ans_mask20,  walking_data4, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 158,  vcompress.vm,  walking_data4_ans_mask21,  walking_data4, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 159,  vcompress.vm,  walking_data4_ans_mask22,  walking_data4, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 160,  vcompress.vm,  walking_data4_ans_mask23,  walking_data4, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 161,  vcompress.vm,  walking_data4_ans_mask24,  walking_data4, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 162,  vcompress.vm,  walking_data4_ans_mask25,  walking_data4, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 163,  vcompress.vm,  walking_data4_ans_mask26,  walking_data4, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 164,  vcompress.vm,  walking_data4_ans_mask27,  walking_data4, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 165,  vcompress.vm,  walking_data4_ans_mask28,  walking_data4, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 166,  vcompress.vm,  walking_data4_ans_mask29,  walking_data4, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 167,  vcompress.vm,  walking_data4_ans_mask30,  walking_data4, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 168,  vcompress.vm,  walking_data4_ans_mask31,  walking_data4, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 169,  vcompress.vm,  walking_data4_ans_mask32,  walking_data4, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 170,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 171,  vcompress.vm,  walking_data5_ans_mask0,  walking_data5, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 172,  vcompress.vm,  walking_data5_ans_mask1,  walking_data5, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 173,  vcompress.vm,  walking_data5_ans_mask2,  walking_data5, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 174,  vcompress.vm,  walking_data5_ans_mask3,  walking_data5, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 175,  vcompress.vm,  walking_data5_ans_mask4,  walking_data5, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 176,  vcompress.vm,  walking_data5_ans_mask5,  walking_data5, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 177,  vcompress.vm,  walking_data5_ans_mask6,  walking_data5, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 178,  vcompress.vm,  walking_data5_ans_mask7,  walking_data5, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 179,  vcompress.vm,  walking_data5_ans_mask8,  walking_data5, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 180,  vcompress.vm,  walking_data5_ans_mask9,  walking_data5, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 181,  vcompress.vm,  walking_data5_ans_mask10,  walking_data5, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 182,  vcompress.vm,  walking_data5_ans_mask11,  walking_data5, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 183,  vcompress.vm,  walking_data5_ans_mask12,  walking_data5, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 184,  vcompress.vm,  walking_data5_ans_mask13,  walking_data5, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 185,  vcompress.vm,  walking_data5_ans_mask14,  walking_data5, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 186,  vcompress.vm,  walking_data5_ans_mask15,  walking_data5, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 187,  vcompress.vm,  walking_data5_ans_mask16,  walking_data5, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 188,  vcompress.vm,  walking_data5_ans_mask17,  walking_data5, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 189,  vcompress.vm,  walking_data5_ans_mask18,  walking_data5, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 190,  vcompress.vm,  walking_data5_ans_mask19,  walking_data5, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 191,  vcompress.vm,  walking_data5_ans_mask20,  walking_data5, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 192,  vcompress.vm,  walking_data5_ans_mask21,  walking_data5, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 193,  vcompress.vm,  walking_data5_ans_mask22,  walking_data5, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 194,  vcompress.vm,  walking_data5_ans_mask23,  walking_data5, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 195,  vcompress.vm,  walking_data5_ans_mask24,  walking_data5, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 196,  vcompress.vm,  walking_data5_ans_mask25,  walking_data5, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 197,  vcompress.vm,  walking_data5_ans_mask26,  walking_data5, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 198,  vcompress.vm,  walking_data5_ans_mask27,  walking_data5, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 199,  vcompress.vm,  walking_data5_ans_mask28,  walking_data5, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 200,  vcompress.vm,  walking_data5_ans_mask29,  walking_data5, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 201,  vcompress.vm,  walking_data5_ans_mask30,  walking_data5, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 202,  vcompress.vm,  walking_data5_ans_mask31,  walking_data5, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 203,  vcompress.vm,  walking_data5_ans_mask32,  walking_data5, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 204,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 205,  vcompress.vm,  walking_data6_ans_mask0,  walking_data6, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 206,  vcompress.vm,  walking_data6_ans_mask1,  walking_data6, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 207,  vcompress.vm,  walking_data6_ans_mask2,  walking_data6, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 208,  vcompress.vm,  walking_data6_ans_mask3,  walking_data6, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 209,  vcompress.vm,  walking_data6_ans_mask4,  walking_data6, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 210,  vcompress.vm,  walking_data6_ans_mask5,  walking_data6, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 211,  vcompress.vm,  walking_data6_ans_mask6,  walking_data6, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 212,  vcompress.vm,  walking_data6_ans_mask7,  walking_data6, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 213,  vcompress.vm,  walking_data6_ans_mask8,  walking_data6, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 214,  vcompress.vm,  walking_data6_ans_mask9,  walking_data6, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 215,  vcompress.vm,  walking_data6_ans_mask10,  walking_data6, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 216,  vcompress.vm,  walking_data6_ans_mask11,  walking_data6, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 217,  vcompress.vm,  walking_data6_ans_mask12,  walking_data6, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 218,  vcompress.vm,  walking_data6_ans_mask13,  walking_data6, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 219,  vcompress.vm,  walking_data6_ans_mask14,  walking_data6, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 220,  vcompress.vm,  walking_data6_ans_mask15,  walking_data6, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 221,  vcompress.vm,  walking_data6_ans_mask16,  walking_data6, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 222,  vcompress.vm,  walking_data6_ans_mask17,  walking_data6, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 223,  vcompress.vm,  walking_data6_ans_mask18,  walking_data6, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 224,  vcompress.vm,  walking_data6_ans_mask19,  walking_data6, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 225,  vcompress.vm,  walking_data6_ans_mask20,  walking_data6, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 226,  vcompress.vm,  walking_data6_ans_mask21,  walking_data6, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 227,  vcompress.vm,  walking_data6_ans_mask22,  walking_data6, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 228,  vcompress.vm,  walking_data6_ans_mask23,  walking_data6, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 229,  vcompress.vm,  walking_data6_ans_mask24,  walking_data6, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 230,  vcompress.vm,  walking_data6_ans_mask25,  walking_data6, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 231,  vcompress.vm,  walking_data6_ans_mask26,  walking_data6, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 232,  vcompress.vm,  walking_data6_ans_mask27,  walking_data6, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 233,  vcompress.vm,  walking_data6_ans_mask28,  walking_data6, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 234,  vcompress.vm,  walking_data6_ans_mask29,  walking_data6, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 235,  vcompress.vm,  walking_data6_ans_mask30,  walking_data6, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 236,  vcompress.vm,  walking_data6_ans_mask31,  walking_data6, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 237,  vcompress.vm,  walking_data6_ans_mask32,  walking_data6, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 238,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 239,  vcompress.vm,  walking_data7_ans_mask0,  walking_data7, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 240,  vcompress.vm,  walking_data7_ans_mask1,  walking_data7, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 241,  vcompress.vm,  walking_data7_ans_mask2,  walking_data7, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 242,  vcompress.vm,  walking_data7_ans_mask3,  walking_data7, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 243,  vcompress.vm,  walking_data7_ans_mask4,  walking_data7, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 244,  vcompress.vm,  walking_data7_ans_mask5,  walking_data7, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 245,  vcompress.vm,  walking_data7_ans_mask6,  walking_data7, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 246,  vcompress.vm,  walking_data7_ans_mask7,  walking_data7, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 247,  vcompress.vm,  walking_data7_ans_mask8,  walking_data7, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 248,  vcompress.vm,  walking_data7_ans_mask9,  walking_data7, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 249,  vcompress.vm,  walking_data7_ans_mask10,  walking_data7, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 250,  vcompress.vm,  walking_data7_ans_mask11,  walking_data7, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 251,  vcompress.vm,  walking_data7_ans_mask12,  walking_data7, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 252,  vcompress.vm,  walking_data7_ans_mask13,  walking_data7, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 253,  vcompress.vm,  walking_data7_ans_mask14,  walking_data7, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 254,  vcompress.vm,  walking_data7_ans_mask15,  walking_data7, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 255,  vcompress.vm,  walking_data7_ans_mask16,  walking_data7, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 256,  vcompress.vm,  walking_data7_ans_mask17,  walking_data7, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 257,  vcompress.vm,  walking_data7_ans_mask18,  walking_data7, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 258,  vcompress.vm,  walking_data7_ans_mask19,  walking_data7, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 259,  vcompress.vm,  walking_data7_ans_mask20,  walking_data7, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 260,  vcompress.vm,  walking_data7_ans_mask21,  walking_data7, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 261,  vcompress.vm,  walking_data7_ans_mask22,  walking_data7, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 262,  vcompress.vm,  walking_data7_ans_mask23,  walking_data7, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 263,  vcompress.vm,  walking_data7_ans_mask24,  walking_data7, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 264,  vcompress.vm,  walking_data7_ans_mask25,  walking_data7, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 265,  vcompress.vm,  walking_data7_ans_mask26,  walking_data7, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 266,  vcompress.vm,  walking_data7_ans_mask27,  walking_data7, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 267,  vcompress.vm,  walking_data7_ans_mask28,  walking_data7, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 268,  vcompress.vm,  walking_data7_ans_mask29,  walking_data7, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 269,  vcompress.vm,  walking_data7_ans_mask30,  walking_data7, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 270,  vcompress.vm,  walking_data7_ans_mask31,  walking_data7, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 271,  vcompress.vm,  walking_data7_ans_mask32,  walking_data7, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 272,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 273,  vcompress.vm,  walking_data8_ans_mask0,  walking_data8, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 274,  vcompress.vm,  walking_data8_ans_mask1,  walking_data8, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 275,  vcompress.vm,  walking_data8_ans_mask2,  walking_data8, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 276,  vcompress.vm,  walking_data8_ans_mask3,  walking_data8, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 277,  vcompress.vm,  walking_data8_ans_mask4,  walking_data8, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 278,  vcompress.vm,  walking_data8_ans_mask5,  walking_data8, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 279,  vcompress.vm,  walking_data8_ans_mask6,  walking_data8, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 280,  vcompress.vm,  walking_data8_ans_mask7,  walking_data8, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 281,  vcompress.vm,  walking_data8_ans_mask8,  walking_data8, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 282,  vcompress.vm,  walking_data8_ans_mask9,  walking_data8, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 283,  vcompress.vm,  walking_data8_ans_mask10,  walking_data8, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 284,  vcompress.vm,  walking_data8_ans_mask11,  walking_data8, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 285,  vcompress.vm,  walking_data8_ans_mask12,  walking_data8, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 286,  vcompress.vm,  walking_data8_ans_mask13,  walking_data8, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 287,  vcompress.vm,  walking_data8_ans_mask14,  walking_data8, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 288,  vcompress.vm,  walking_data8_ans_mask15,  walking_data8, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 289,  vcompress.vm,  walking_data8_ans_mask16,  walking_data8, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 290,  vcompress.vm,  walking_data8_ans_mask17,  walking_data8, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 291,  vcompress.vm,  walking_data8_ans_mask18,  walking_data8, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 292,  vcompress.vm,  walking_data8_ans_mask19,  walking_data8, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 293,  vcompress.vm,  walking_data8_ans_mask20,  walking_data8, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 294,  vcompress.vm,  walking_data8_ans_mask21,  walking_data8, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 295,  vcompress.vm,  walking_data8_ans_mask22,  walking_data8, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 296,  vcompress.vm,  walking_data8_ans_mask23,  walking_data8, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 297,  vcompress.vm,  walking_data8_ans_mask24,  walking_data8, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 298,  vcompress.vm,  walking_data8_ans_mask25,  walking_data8, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 299,  vcompress.vm,  walking_data8_ans_mask26,  walking_data8, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 300,  vcompress.vm,  walking_data8_ans_mask27,  walking_data8, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 301,  vcompress.vm,  walking_data8_ans_mask28,  walking_data8, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 302,  vcompress.vm,  walking_data8_ans_mask29,  walking_data8, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 303,  vcompress.vm,  walking_data8_ans_mask30,  walking_data8, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 304,  vcompress.vm,  walking_data8_ans_mask31,  walking_data8, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 305,  vcompress.vm,  walking_data8_ans_mask32,  walking_data8, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 306,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 307,  vcompress.vm,  walking_data9_ans_mask0,  walking_data9, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 308,  vcompress.vm,  walking_data9_ans_mask1,  walking_data9, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 309,  vcompress.vm,  walking_data9_ans_mask2,  walking_data9, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 310,  vcompress.vm,  walking_data9_ans_mask3,  walking_data9, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 311,  vcompress.vm,  walking_data9_ans_mask4,  walking_data9, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 312,  vcompress.vm,  walking_data9_ans_mask5,  walking_data9, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 313,  vcompress.vm,  walking_data9_ans_mask6,  walking_data9, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 314,  vcompress.vm,  walking_data9_ans_mask7,  walking_data9, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 315,  vcompress.vm,  walking_data9_ans_mask8,  walking_data9, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 316,  vcompress.vm,  walking_data9_ans_mask9,  walking_data9, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 317,  vcompress.vm,  walking_data9_ans_mask10,  walking_data9, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 318,  vcompress.vm,  walking_data9_ans_mask11,  walking_data9, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 319,  vcompress.vm,  walking_data9_ans_mask12,  walking_data9, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 320,  vcompress.vm,  walking_data9_ans_mask13,  walking_data9, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 321,  vcompress.vm,  walking_data9_ans_mask14,  walking_data9, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 322,  vcompress.vm,  walking_data9_ans_mask15,  walking_data9, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 323,  vcompress.vm,  walking_data9_ans_mask16,  walking_data9, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 324,  vcompress.vm,  walking_data9_ans_mask17,  walking_data9, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 325,  vcompress.vm,  walking_data9_ans_mask18,  walking_data9, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 326,  vcompress.vm,  walking_data9_ans_mask19,  walking_data9, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 327,  vcompress.vm,  walking_data9_ans_mask20,  walking_data9, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 328,  vcompress.vm,  walking_data9_ans_mask21,  walking_data9, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 329,  vcompress.vm,  walking_data9_ans_mask22,  walking_data9, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 330,  vcompress.vm,  walking_data9_ans_mask23,  walking_data9, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 331,  vcompress.vm,  walking_data9_ans_mask24,  walking_data9, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 332,  vcompress.vm,  walking_data9_ans_mask25,  walking_data9, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 333,  vcompress.vm,  walking_data9_ans_mask26,  walking_data9, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 334,  vcompress.vm,  walking_data9_ans_mask27,  walking_data9, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 335,  vcompress.vm,  walking_data9_ans_mask28,  walking_data9, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 336,  vcompress.vm,  walking_data9_ans_mask29,  walking_data9, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 337,  vcompress.vm,  walking_data9_ans_mask30,  walking_data9, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 338,  vcompress.vm,  walking_data9_ans_mask31,  walking_data9, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 339,  vcompress.vm,  walking_data9_ans_mask32,  walking_data9, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 340,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
  #-------------------------------------------------------------
  # vcompress Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VCOMPRESS_OP_rd_1( 341,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_2( 342,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_3( 343,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_4( 344,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_5( 345,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_6( 346,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_7( 347,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_9( 348,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_10( 349,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_11( 350,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_12( 351,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_13( 352,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_14( 353,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_17( 354,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_18( 355,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_19( 356,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_20( 357,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_21( 358,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_22( 359,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_23( 360,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_24( 361,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_25( 362,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_26( 363,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_27( 364,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_28( 365,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_29( 366,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_30( 367,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_31( 368,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_1( 369,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_2( 370,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_3( 371,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_4( 372,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_5( 373,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_6( 374,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_7( 375,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_9( 376,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_10( 377,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_11( 378,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_12( 379,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_13( 380,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_14( 381,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_17( 382,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_18( 383,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_19( 384,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_20( 385,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_21( 386,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_22( 387,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_23( 388,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_24( 389,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_25( 390,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_26( 391,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_27( 392,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_28( 393,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_29( 394,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_30( 395,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_31( 396,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_1( 397,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_2( 398,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_3( 399,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_4( 400,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_5( 401,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_6( 402,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_7( 403,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_9( 404,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_10( 405,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_11( 406,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_12( 407,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_13( 408,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_14( 409,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_17( 410,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_18( 411,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_19( 412,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_20( 413,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_21( 414,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_22( 415,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_23( 416,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_24( 417,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_25( 418,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_26( 419,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_27( 420,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_28( 421,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_29( 422,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_30( 423,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_31( 424,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
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
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat1:
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat2:
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat3:
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat4:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat5:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat6:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat7:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat8:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat9:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat10:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat11:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat12:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat13:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0
	.word 0x0

walking_mask_dat14:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0
	.word 0x0

walking_mask_dat15:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1
	.word 0x0

walking_mask_dat16:
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x1

walking_mask_dat17:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat18:
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat19:
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat20:
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat21:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat22:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat23:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat24:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat25:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat26:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat27:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat28:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat29:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat30:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1
	.word 0x1

walking_mask_dat31:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1
	.word 0x1

walking_mask_dat32:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0
	.word 0x1

walking_mask_dat33:
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x1
	.word 0x0

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

rd_data:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145

walking_data0_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask1:
.word	-2147483648
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask2:
.word	-1431655766
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask3:
.word	-1431655765
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask4:
.word	-1073741825
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask5:
.word	-536870913
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask6:
.word	-268435457
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask7:
.word	-134217729
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask8:
.word	-67108865
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask9:
.word	-33554433
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask10:
.word	-16777217
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask11:
.word	-8388609
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask12:
.word	-4194305
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask13:
.word	-2097153
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask14:
.word	-1048577
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask15:
.word	-524289
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask16:
.word	-262145
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data0_ans_mask17:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145

walking_data0_ans_mask18:
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask19:
.word	-2147483648
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask20:
.word	-2147483648
.word	-1431655766
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask21:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask22:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask23:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask24:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask25:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask26:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask27:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask28:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask29:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-2097153
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask30:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-1048577
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask31:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-524289
.word	-262145
.word	21

walking_data0_ans_mask32:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-262145
.word	21

walking_data0_ans_mask33:
.word	-2147483648
.word	-1431655766
.word	-1431655765
.word	-1073741825
.word	-536870913
.word	-268435457
.word	-134217729
.word	-67108865
.word	-33554433
.word	-16777217
.word	-8388609
.word	-4194305
.word	-2097153
.word	-1048577
.word	-524289
.word	21

walking_data1:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17

walking_data1_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask1:
.word	-131073
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask2:
.word	-65537
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask3:
.word	-46340
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask4:
.word	-46339
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask5:
.word	-32769
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask6:
.word	-16385
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask7:
.word	-8193
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask8:
.word	-4097
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask9:
.word	-2049
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask10:
.word	-1025
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask11:
.word	-513
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask12:
.word	-257
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask13:
.word	-129
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask14:
.word	-65
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask15:
.word	-33
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask16:
.word	-17
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data1_ans_mask17:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17

walking_data1_ans_mask18:
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask19:
.word	-131073
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask20:
.word	-131073
.word	-65537
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask21:
.word	-131073
.word	-65537
.word	-46340
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask22:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask23:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask24:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask25:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask26:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask27:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask28:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-257
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask29:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-129
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask30:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-65
.word	-33
.word	-17
.word	21

walking_data1_ans_mask31:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-33
.word	-17
.word	21

walking_data1_ans_mask32:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-17
.word	21

walking_data1_ans_mask33:
.word	-131073
.word	-65537
.word	-46340
.word	-46339
.word	-32769
.word	-16385
.word	-8193
.word	-4097
.word	-2049
.word	-1025
.word	-513
.word	-257
.word	-129
.word	-65
.word	-33
.word	21

walking_data2:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128

walking_data2_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask1:
.word	-9
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask2:
.word	-5
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask3:
.word	-3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask4:
.word	-2
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask5:
.word	0
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask6:
.word	1
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask7:
.word	2
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask8:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask9:
.word	4
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask10:
.word	5
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask11:
.word	6
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask12:
.word	8
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask13:
.word	16
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask14:
.word	32
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask15:
.word	64
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask16:
.word	128
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data2_ans_mask17:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128

walking_data2_ans_mask18:
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask19:
.word	-9
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask20:
.word	-9
.word	-5
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask21:
.word	-9
.word	-5
.word	-3
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask22:
.word	-9
.word	-5
.word	-3
.word	-2
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask23:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask24:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask25:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask26:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask27:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	6
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask28:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	8
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask29:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	16
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask30:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	32
.word	64
.word	128
.word	21

walking_data2_ans_mask31:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	64
.word	128
.word	21

walking_data2_ans_mask32:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	128
.word	21

walking_data2_ans_mask33:
.word	-9
.word	-5
.word	-3
.word	-2
.word	0
.word	1
.word	2
.word	3
.word	4
.word	5
.word	6
.word	8
.word	16
.word	32
.word	64
.word	21

walking_data3:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576

walking_data3_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask1:
.word	256
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask2:
.word	512
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask3:
.word	1024
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask4:
.word	2048
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask5:
.word	4096
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask6:
.word	8192
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask7:
.word	16384
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask8:
.word	32768
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask9:
.word	46339
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask10:
.word	46340
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask11:
.word	46341
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask12:
.word	65536
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask13:
.word	131072
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask14:
.word	262144
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask15:
.word	524288
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask16:
.word	1048576
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data3_ans_mask17:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576

walking_data3_ans_mask18:
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask19:
.word	256
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask20:
.word	256
.word	512
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask21:
.word	256
.word	512
.word	1024
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask22:
.word	256
.word	512
.word	1024
.word	2048
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask23:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask24:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask25:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask26:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask27:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask28:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	65536
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask29:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	131072
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask30:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	262144
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask31:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	524288
.word	1048576
.word	21

walking_data3_ans_mask32:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	1048576
.word	21

walking_data3_ans_mask33:
.word	256
.word	512
.word	1024
.word	2048
.word	4096
.word	8192
.word	16384
.word	32768
.word	46339
.word	46340
.word	46341
.word	65536
.word	131072
.word	262144
.word	524288
.word	21

walking_data4:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766

walking_data4_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask1:
.word	2097152
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask2:
.word	4194304
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask3:
.word	8388608
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask4:
.word	16777216
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask5:
.word	33554432
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask6:
.word	67108864
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask7:
.word	134217728
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask8:
.word	268435456
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask9:
.word	536870912
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask10:
.word	858993458
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask11:
.word	858993459
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask12:
.word	858993460
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask13:
.word	1073741824
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask14:
.word	1431655764
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask15:
.word	1431655765
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask16:
.word	1431655766
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data4_ans_mask17:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766

walking_data4_ans_mask18:
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask19:
.word	2097152
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask20:
.word	2097152
.word	4194304
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask21:
.word	2097152
.word	4194304
.word	8388608
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask22:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask23:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask24:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask25:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask26:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask27:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask28:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask29:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	1073741824
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask30:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1431655764
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask31:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655765
.word	1431655766
.word	21

walking_data4_ans_mask32:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655766
.word	21

walking_data4_ans_mask33:
.word	2097152
.word	4194304
.word	8388608
.word	16777216
.word	33554432
.word	67108864
.word	134217728
.word	268435456
.word	536870912
.word	858993458
.word	858993459
.word	858993460
.word	1073741824
.word	1431655764
.word	1431655765
.word	21

walking_data5:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502

walking_data5_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask1:
.word	1717986917
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask2:
.word	1717986918
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask3:
.word	1717986919
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask4:
.word	2147483647
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask5:
.word	-613473209
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask6:
.word	1744518053
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask7:
.word	-643547615
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask8:
.word	1622294508
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask9:
.word	439851874
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask10:
.word	-1796653614
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask11:
.word	1753772137
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask12:
.word	-1666810593
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask13:
.word	-122668509
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask14:
.word	1666718653
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask15:
.word	2098334740
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask16:
.word	808485502
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data5_ans_mask17:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502

walking_data5_ans_mask18:
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask19:
.word	1717986917
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask20:
.word	1717986917
.word	1717986918
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask21:
.word	1717986917
.word	1717986918
.word	1717986919
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask22:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask23:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask24:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask25:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask26:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask27:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask28:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask29:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-122668509
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask30:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	1666718653
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask31:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	2098334740
.word	808485502
.word	21

walking_data5_ans_mask32:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	808485502
.word	21

walking_data5_ans_mask33:
.word	1717986917
.word	1717986918
.word	1717986919
.word	2147483647
.word	-613473209
.word	1744518053
.word	-643547615
.word	1622294508
.word	439851874
.word	-1796653614
.word	1753772137
.word	-1666810593
.word	-122668509
.word	1666718653
.word	2098334740
.word	21

walking_data6:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609

walking_data6_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask1:
.word	1081022358
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask2:
.word	623213277
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask3:
.word	-859481443
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask4:
.word	-1156683442
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask5:
.word	-1040425174
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask6:
.word	1344458131
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask7:
.word	-160498420
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask8:
.word	241863964
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask9:
.word	-684832136
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask10:
.word	2060106892
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask11:
.word	744815801
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask12:
.word	-657910395
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask13:
.word	864475500
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask14:
.word	565333465
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask15:
.word	268695777
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask16:
.word	-373918609
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data6_ans_mask17:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609

walking_data6_ans_mask18:
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask19:
.word	1081022358
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask20:
.word	1081022358
.word	623213277
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask21:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask22:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask23:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask24:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask25:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask26:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask27:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask28:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask29:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	864475500
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask30:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	565333465
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask31:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	268695777
.word	-373918609
.word	21

walking_data6_ans_mask32:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	-373918609
.word	21

walking_data6_ans_mask33:
.word	1081022358
.word	623213277
.word	-859481443
.word	-1156683442
.word	-1040425174
.word	1344458131
.word	-160498420
.word	241863964
.word	-684832136
.word	2060106892
.word	744815801
.word	-657910395
.word	864475500
.word	565333465
.word	268695777
.word	21

walking_data7:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534

walking_data7_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask1:
.word	-2020362444
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask2:
.word	491307452
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask3:
.word	-715956342
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask4:
.word	1230495033
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask5:
.word	-743621814
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask6:
.word	-529785332
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask7:
.word	-1987397949
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask8:
.word	859240994
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask9:
.word	592694067
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask10:
.word	-1006769600
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask11:
.word	-1336337277
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask12:
.word	-2128119588
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask13:
.word	647277943
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask14:
.word	503429571
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask15:
.word	-371796989
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask16:
.word	702700534
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data7_ans_mask17:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534

walking_data7_ans_mask18:
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask19:
.word	-2020362444
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask20:
.word	-2020362444
.word	491307452
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask21:
.word	-2020362444
.word	491307452
.word	-715956342
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask22:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask23:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask24:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask25:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask26:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask27:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask28:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask29:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	647277943
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask30:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	503429571
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask31:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	-371796989
.word	702700534
.word	21

walking_data7_ans_mask32:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	702700534
.word	21

walking_data7_ans_mask33:
.word	-2020362444
.word	491307452
.word	-715956342
.word	1230495033
.word	-743621814
.word	-529785332
.word	-1987397949
.word	859240994
.word	592694067
.word	-1006769600
.word	-1336337277
.word	-2128119588
.word	647277943
.word	503429571
.word	-371796989
.word	21

walking_data8:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353

walking_data8_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask1:
.word	139522370
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask2:
.word	-2131573863
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask3:
.word	-1072244778
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask4:
.word	-1292512311
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask5:
.word	-1898720770
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask6:
.word	174891374
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask7:
.word	-928944647
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask8:
.word	853421660
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask9:
.word	-1953268483
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask10:
.word	-1311024941
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask11:
.word	1263143708
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask12:
.word	1555357252
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask13:
.word	-1974211902
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask14:
.word	1582397011
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask15:
.word	1385461379
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask16:
.word	1175155353
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data8_ans_mask17:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353

walking_data8_ans_mask18:
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask19:
.word	139522370
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask20:
.word	139522370
.word	-2131573863
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask21:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask22:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask23:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask24:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask25:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask26:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask27:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask28:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask29:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	-1974211902
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask30:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	1582397011
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask31:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1385461379
.word	1175155353
.word	21

walking_data8_ans_mask32:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1175155353
.word	21

walking_data8_ans_mask33:
.word	139522370
.word	-2131573863
.word	-1072244778
.word	-1292512311
.word	-1898720770
.word	174891374
.word	-928944647
.word	853421660
.word	-1953268483
.word	-1311024941
.word	1263143708
.word	1555357252
.word	-1974211902
.word	1582397011
.word	1385461379
.word	21

walking_data9:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627

walking_data9_ans_mask0:
.word	3
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask1:
.word	118097128
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask2:
.word	-2025864735
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask3:
.word	-1173747526
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask4:
.word	-1181114015
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask5:
.word	585511614
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask6:
.word	1963401019
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask7:
.word	47319844
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask8:
.word	68757226
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask9:
.word	44238895
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask10:
.word	333209398
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask11:
.word	1419777963
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask12:
.word	1524387708
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask13:
.word	585929971
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask14:
.word	64906436
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask15:
.word	1188987254
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask16:
.word	-1235071627
.word	5
.word	6
.word	7
.word	9
.word	10
.word	11
.word	12
.word	13
.word	14
.word	15
.word	17
.word	18
.word	19
.word	20
.word	21

walking_data9_ans_mask17:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627

walking_data9_ans_mask18:
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask19:
.word	118097128
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask20:
.word	118097128
.word	-2025864735
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask21:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask22:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask23:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask24:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask25:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask26:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask27:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask28:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask29:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	585929971
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask30:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	64906436
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask31:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	1188987254
.word	-1235071627
.word	21

walking_data9_ans_mask32:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	-1235071627
.word	21

walking_data9_ans_mask33:
.word	118097128
.word	-2025864735
.word	-1173747526
.word	-1181114015
.word	585511614
.word	1963401019
.word	47319844
.word	68757226
.word	44238895
.word	333209398
.word	1419777963
.word	1524387708
.word	585929971
.word	64906436
.word	1188987254
.word	21

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
    

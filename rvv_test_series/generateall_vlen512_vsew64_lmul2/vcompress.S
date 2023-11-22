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
TEST_VCOMPRESS_OP( 341,  vcompress.vm,  walking_data10_ans_mask0,  walking_data10, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 342,  vcompress.vm,  walking_data10_ans_mask1,  walking_data10, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 343,  vcompress.vm,  walking_data10_ans_mask2,  walking_data10, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 344,  vcompress.vm,  walking_data10_ans_mask3,  walking_data10, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 345,  vcompress.vm,  walking_data10_ans_mask4,  walking_data10, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 346,  vcompress.vm,  walking_data10_ans_mask5,  walking_data10, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 347,  vcompress.vm,  walking_data10_ans_mask6,  walking_data10, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 348,  vcompress.vm,  walking_data10_ans_mask7,  walking_data10, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 349,  vcompress.vm,  walking_data10_ans_mask8,  walking_data10, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 350,  vcompress.vm,  walking_data10_ans_mask9,  walking_data10, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 351,  vcompress.vm,  walking_data10_ans_mask10,  walking_data10, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 352,  vcompress.vm,  walking_data10_ans_mask11,  walking_data10, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 353,  vcompress.vm,  walking_data10_ans_mask12,  walking_data10, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 354,  vcompress.vm,  walking_data10_ans_mask13,  walking_data10, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 355,  vcompress.vm,  walking_data10_ans_mask14,  walking_data10, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 356,  vcompress.vm,  walking_data10_ans_mask15,  walking_data10, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 357,  vcompress.vm,  walking_data10_ans_mask16,  walking_data10, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 358,  vcompress.vm,  walking_data10_ans_mask17,  walking_data10, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 359,  vcompress.vm,  walking_data10_ans_mask18,  walking_data10, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 360,  vcompress.vm,  walking_data10_ans_mask19,  walking_data10, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 361,  vcompress.vm,  walking_data10_ans_mask20,  walking_data10, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 362,  vcompress.vm,  walking_data10_ans_mask21,  walking_data10, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 363,  vcompress.vm,  walking_data10_ans_mask22,  walking_data10, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 364,  vcompress.vm,  walking_data10_ans_mask23,  walking_data10, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 365,  vcompress.vm,  walking_data10_ans_mask24,  walking_data10, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 366,  vcompress.vm,  walking_data10_ans_mask25,  walking_data10, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 367,  vcompress.vm,  walking_data10_ans_mask26,  walking_data10, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 368,  vcompress.vm,  walking_data10_ans_mask27,  walking_data10, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 369,  vcompress.vm,  walking_data10_ans_mask28,  walking_data10, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 370,  vcompress.vm,  walking_data10_ans_mask29,  walking_data10, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 371,  vcompress.vm,  walking_data10_ans_mask30,  walking_data10, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 372,  vcompress.vm,  walking_data10_ans_mask31,  walking_data10, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 373,  vcompress.vm,  walking_data10_ans_mask32,  walking_data10, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 374,  vcompress.vm,  walking_data10_ans_mask33,  walking_data10, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 375,  vcompress.vm,  walking_data11_ans_mask0,  walking_data11, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 376,  vcompress.vm,  walking_data11_ans_mask1,  walking_data11, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 377,  vcompress.vm,  walking_data11_ans_mask2,  walking_data11, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 378,  vcompress.vm,  walking_data11_ans_mask3,  walking_data11, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 379,  vcompress.vm,  walking_data11_ans_mask4,  walking_data11, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 380,  vcompress.vm,  walking_data11_ans_mask5,  walking_data11, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 381,  vcompress.vm,  walking_data11_ans_mask6,  walking_data11, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 382,  vcompress.vm,  walking_data11_ans_mask7,  walking_data11, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 383,  vcompress.vm,  walking_data11_ans_mask8,  walking_data11, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 384,  vcompress.vm,  walking_data11_ans_mask9,  walking_data11, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 385,  vcompress.vm,  walking_data11_ans_mask10,  walking_data11, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 386,  vcompress.vm,  walking_data11_ans_mask11,  walking_data11, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 387,  vcompress.vm,  walking_data11_ans_mask12,  walking_data11, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 388,  vcompress.vm,  walking_data11_ans_mask13,  walking_data11, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 389,  vcompress.vm,  walking_data11_ans_mask14,  walking_data11, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 390,  vcompress.vm,  walking_data11_ans_mask15,  walking_data11, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 391,  vcompress.vm,  walking_data11_ans_mask16,  walking_data11, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 392,  vcompress.vm,  walking_data11_ans_mask17,  walking_data11, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 393,  vcompress.vm,  walking_data11_ans_mask18,  walking_data11, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 394,  vcompress.vm,  walking_data11_ans_mask19,  walking_data11, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 395,  vcompress.vm,  walking_data11_ans_mask20,  walking_data11, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 396,  vcompress.vm,  walking_data11_ans_mask21,  walking_data11, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 397,  vcompress.vm,  walking_data11_ans_mask22,  walking_data11, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 398,  vcompress.vm,  walking_data11_ans_mask23,  walking_data11, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 399,  vcompress.vm,  walking_data11_ans_mask24,  walking_data11, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 400,  vcompress.vm,  walking_data11_ans_mask25,  walking_data11, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 401,  vcompress.vm,  walking_data11_ans_mask26,  walking_data11, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 402,  vcompress.vm,  walking_data11_ans_mask27,  walking_data11, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 403,  vcompress.vm,  walking_data11_ans_mask28,  walking_data11, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 404,  vcompress.vm,  walking_data11_ans_mask29,  walking_data11, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 405,  vcompress.vm,  walking_data11_ans_mask30,  walking_data11, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 406,  vcompress.vm,  walking_data11_ans_mask31,  walking_data11, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 407,  vcompress.vm,  walking_data11_ans_mask32,  walking_data11, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 408,  vcompress.vm,  walking_data11_ans_mask33,  walking_data11, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 409,  vcompress.vm,  walking_data12_ans_mask0,  walking_data12, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 410,  vcompress.vm,  walking_data12_ans_mask1,  walking_data12, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 411,  vcompress.vm,  walking_data12_ans_mask2,  walking_data12, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 412,  vcompress.vm,  walking_data12_ans_mask3,  walking_data12, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 413,  vcompress.vm,  walking_data12_ans_mask4,  walking_data12, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 414,  vcompress.vm,  walking_data12_ans_mask5,  walking_data12, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 415,  vcompress.vm,  walking_data12_ans_mask6,  walking_data12, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 416,  vcompress.vm,  walking_data12_ans_mask7,  walking_data12, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 417,  vcompress.vm,  walking_data12_ans_mask8,  walking_data12, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 418,  vcompress.vm,  walking_data12_ans_mask9,  walking_data12, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 419,  vcompress.vm,  walking_data12_ans_mask10,  walking_data12, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 420,  vcompress.vm,  walking_data12_ans_mask11,  walking_data12, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 421,  vcompress.vm,  walking_data12_ans_mask12,  walking_data12, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 422,  vcompress.vm,  walking_data12_ans_mask13,  walking_data12, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 423,  vcompress.vm,  walking_data12_ans_mask14,  walking_data12, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 424,  vcompress.vm,  walking_data12_ans_mask15,  walking_data12, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 425,  vcompress.vm,  walking_data12_ans_mask16,  walking_data12, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 426,  vcompress.vm,  walking_data12_ans_mask17,  walking_data12, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 427,  vcompress.vm,  walking_data12_ans_mask18,  walking_data12, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 428,  vcompress.vm,  walking_data12_ans_mask19,  walking_data12, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 429,  vcompress.vm,  walking_data12_ans_mask20,  walking_data12, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 430,  vcompress.vm,  walking_data12_ans_mask21,  walking_data12, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 431,  vcompress.vm,  walking_data12_ans_mask22,  walking_data12, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 432,  vcompress.vm,  walking_data12_ans_mask23,  walking_data12, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 433,  vcompress.vm,  walking_data12_ans_mask24,  walking_data12, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 434,  vcompress.vm,  walking_data12_ans_mask25,  walking_data12, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 435,  vcompress.vm,  walking_data12_ans_mask26,  walking_data12, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 436,  vcompress.vm,  walking_data12_ans_mask27,  walking_data12, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 437,  vcompress.vm,  walking_data12_ans_mask28,  walking_data12, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 438,  vcompress.vm,  walking_data12_ans_mask29,  walking_data12, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 439,  vcompress.vm,  walking_data12_ans_mask30,  walking_data12, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 440,  vcompress.vm,  walking_data12_ans_mask31,  walking_data12, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 441,  vcompress.vm,  walking_data12_ans_mask32,  walking_data12, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 442,  vcompress.vm,  walking_data12_ans_mask33,  walking_data12, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP( 443,  vcompress.vm,  walking_data13_ans_mask0,  walking_data13, rd_data, walking_mask_dat0 );
TEST_VCOMPRESS_OP( 444,  vcompress.vm,  walking_data13_ans_mask1,  walking_data13, rd_data, walking_mask_dat1 );
TEST_VCOMPRESS_OP( 445,  vcompress.vm,  walking_data13_ans_mask2,  walking_data13, rd_data, walking_mask_dat2 );
TEST_VCOMPRESS_OP( 446,  vcompress.vm,  walking_data13_ans_mask3,  walking_data13, rd_data, walking_mask_dat3 );
TEST_VCOMPRESS_OP( 447,  vcompress.vm,  walking_data13_ans_mask4,  walking_data13, rd_data, walking_mask_dat4 );
TEST_VCOMPRESS_OP( 448,  vcompress.vm,  walking_data13_ans_mask5,  walking_data13, rd_data, walking_mask_dat5 );
TEST_VCOMPRESS_OP( 449,  vcompress.vm,  walking_data13_ans_mask6,  walking_data13, rd_data, walking_mask_dat6 );
TEST_VCOMPRESS_OP( 450,  vcompress.vm,  walking_data13_ans_mask7,  walking_data13, rd_data, walking_mask_dat7 );
TEST_VCOMPRESS_OP( 451,  vcompress.vm,  walking_data13_ans_mask8,  walking_data13, rd_data, walking_mask_dat8 );
TEST_VCOMPRESS_OP( 452,  vcompress.vm,  walking_data13_ans_mask9,  walking_data13, rd_data, walking_mask_dat9 );
TEST_VCOMPRESS_OP( 453,  vcompress.vm,  walking_data13_ans_mask10,  walking_data13, rd_data, walking_mask_dat10 );
TEST_VCOMPRESS_OP( 454,  vcompress.vm,  walking_data13_ans_mask11,  walking_data13, rd_data, walking_mask_dat11 );
TEST_VCOMPRESS_OP( 455,  vcompress.vm,  walking_data13_ans_mask12,  walking_data13, rd_data, walking_mask_dat12 );
TEST_VCOMPRESS_OP( 456,  vcompress.vm,  walking_data13_ans_mask13,  walking_data13, rd_data, walking_mask_dat13 );
TEST_VCOMPRESS_OP( 457,  vcompress.vm,  walking_data13_ans_mask14,  walking_data13, rd_data, walking_mask_dat14 );
TEST_VCOMPRESS_OP( 458,  vcompress.vm,  walking_data13_ans_mask15,  walking_data13, rd_data, walking_mask_dat15 );
TEST_VCOMPRESS_OP( 459,  vcompress.vm,  walking_data13_ans_mask16,  walking_data13, rd_data, walking_mask_dat16 );
TEST_VCOMPRESS_OP( 460,  vcompress.vm,  walking_data13_ans_mask17,  walking_data13, rd_data, walking_mask_dat17 );
TEST_VCOMPRESS_OP( 461,  vcompress.vm,  walking_data13_ans_mask18,  walking_data13, rd_data, walking_mask_dat18 );
TEST_VCOMPRESS_OP( 462,  vcompress.vm,  walking_data13_ans_mask19,  walking_data13, rd_data, walking_mask_dat19 );
TEST_VCOMPRESS_OP( 463,  vcompress.vm,  walking_data13_ans_mask20,  walking_data13, rd_data, walking_mask_dat20 );
TEST_VCOMPRESS_OP( 464,  vcompress.vm,  walking_data13_ans_mask21,  walking_data13, rd_data, walking_mask_dat21 );
TEST_VCOMPRESS_OP( 465,  vcompress.vm,  walking_data13_ans_mask22,  walking_data13, rd_data, walking_mask_dat22 );
TEST_VCOMPRESS_OP( 466,  vcompress.vm,  walking_data13_ans_mask23,  walking_data13, rd_data, walking_mask_dat23 );
TEST_VCOMPRESS_OP( 467,  vcompress.vm,  walking_data13_ans_mask24,  walking_data13, rd_data, walking_mask_dat24 );
TEST_VCOMPRESS_OP( 468,  vcompress.vm,  walking_data13_ans_mask25,  walking_data13, rd_data, walking_mask_dat25 );
TEST_VCOMPRESS_OP( 469,  vcompress.vm,  walking_data13_ans_mask26,  walking_data13, rd_data, walking_mask_dat26 );
TEST_VCOMPRESS_OP( 470,  vcompress.vm,  walking_data13_ans_mask27,  walking_data13, rd_data, walking_mask_dat27 );
TEST_VCOMPRESS_OP( 471,  vcompress.vm,  walking_data13_ans_mask28,  walking_data13, rd_data, walking_mask_dat28 );
TEST_VCOMPRESS_OP( 472,  vcompress.vm,  walking_data13_ans_mask29,  walking_data13, rd_data, walking_mask_dat29 );
TEST_VCOMPRESS_OP( 473,  vcompress.vm,  walking_data13_ans_mask30,  walking_data13, rd_data, walking_mask_dat30 );
TEST_VCOMPRESS_OP( 474,  vcompress.vm,  walking_data13_ans_mask31,  walking_data13, rd_data, walking_mask_dat31 );
TEST_VCOMPRESS_OP( 475,  vcompress.vm,  walking_data13_ans_mask32,  walking_data13, rd_data, walking_mask_dat32 );
TEST_VCOMPRESS_OP( 476,  vcompress.vm,  walking_data13_ans_mask33,  walking_data13, rd_data, walking_mask_dat33 );
  #-------------------------------------------------------------
  # vcompress Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VCOMPRESS_OP_rd_2( 477,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_4( 478,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_6( 479,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_10( 480,  vcompress.vm,  walking_data10_ans_mask33,  walking_data10, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_12( 481,  vcompress.vm,  walking_data12_ans_mask33,  walking_data12, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_14( 482,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_18( 483,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_20( 484,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_22( 485,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_24( 486,  vcompress.vm,  walking_data10_ans_mask33,  walking_data10, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_26( 487,  vcompress.vm,  walking_data12_ans_mask33,  walking_data12, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_28( 488,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rd_30( 489,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_1( 490,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_2( 491,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_3( 492,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_4( 493,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_5( 494,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_6( 495,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_10( 496,  vcompress.vm,  walking_data10_ans_mask33,  walking_data10, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_11( 497,  vcompress.vm,  walking_data11_ans_mask33,  walking_data11, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_12( 498,  vcompress.vm,  walking_data12_ans_mask33,  walking_data12, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_13( 499,  vcompress.vm,  walking_data13_ans_mask33,  walking_data13, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_14( 500,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_18( 501,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_19( 502,  vcompress.vm,  walking_data5_ans_mask33,  walking_data5, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_20( 503,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_21( 504,  vcompress.vm,  walking_data7_ans_mask33,  walking_data7, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_22( 505,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_23( 506,  vcompress.vm,  walking_data9_ans_mask33,  walking_data9, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_24( 507,  vcompress.vm,  walking_data10_ans_mask33,  walking_data10, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_25( 508,  vcompress.vm,  walking_data11_ans_mask33,  walking_data11, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_26( 509,  vcompress.vm,  walking_data12_ans_mask33,  walking_data12, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_27( 510,  vcompress.vm,  walking_data13_ans_mask33,  walking_data13, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_28( 511,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_29( 512,  vcompress.vm,  walking_data1_ans_mask33,  walking_data1, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_30( 513,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs1_31( 514,  vcompress.vm,  walking_data3_ans_mask33,  walking_data3, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_2( 515,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_4( 516,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_6( 517,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_10( 518,  vcompress.vm,  walking_data10_ans_mask33,  walking_data10, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_12( 519,  vcompress.vm,  walking_data12_ans_mask33,  walking_data12, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_14( 520,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_18( 521,  vcompress.vm,  walking_data4_ans_mask33,  walking_data4, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_20( 522,  vcompress.vm,  walking_data6_ans_mask33,  walking_data6, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_22( 523,  vcompress.vm,  walking_data8_ans_mask33,  walking_data8, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_24( 524,  vcompress.vm,  walking_data10_ans_mask33,  walking_data10, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_26( 525,  vcompress.vm,  walking_data12_ans_mask33,  walking_data12, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_28( 526,  vcompress.vm,  walking_data0_ans_mask33,  walking_data0, rd_data, walking_mask_dat33 );
TEST_VCOMPRESS_OP_rs2_30( 527,  vcompress.vm,  walking_data2_ans_mask33,  walking_data2, rd_data, walking_mask_dat33 );
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
	.dword 0x0
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
	.dword 0x0
	.dword 0x0
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
	.dword 0x0
	.dword 0x0
	.dword 0x0
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
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
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
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
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
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
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
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
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
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat9:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat10:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat11:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat12:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat13:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0
	.dword 0x0

walking_mask_dat14:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0
	.dword 0x0

walking_mask_dat15:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x1
	.dword 0x0

walking_mask_dat16:
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
	.dword 0x0
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
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat18:
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat19:
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat20:
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat21:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat22:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat23:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat24:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat25:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat26:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat27:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat28:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat29:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat30:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1
	.dword 0x1

walking_mask_dat31:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1
	.dword 0x1

walking_mask_dat32:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x0
	.dword 0x1

walking_mask_dat33:
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
	.dword 0x1
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
	.dword	0x0
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
	.dword	0x0
	.dword	0x0
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
	.dword	0x0
	.dword	0x0
	.dword	0x0
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
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
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
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
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
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
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
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
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
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat9:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat10:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat11:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat12:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat13:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0
	.dword	0x0

walking_ones_dat14:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0
	.dword	0x0

walking_ones_dat15:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x1
	.dword	0x0

walking_ones_dat16:
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
	.dword	0x0
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
	.dword	0x1
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
	.dword	0x1
	.dword	0x1
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
	.dword	0x1
	.dword	0x1
	.dword	0x1
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
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
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
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
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
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
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
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
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
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat9:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat10:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat11:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat12:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat13:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1
	.dword	0x1

walking_zeros_dat14:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1
	.dword	0x1

walking_zeros_dat15:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x0
	.dword	0x1

walking_zeros_dat16:
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
	.dword	0x1
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
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625

walking_data0_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask1:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask2:
.dword	-6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask3:
.dword	-6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask4:
.dword	-4611686018427387905
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask5:
.dword	-2305843009213693953
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask6:
.dword	-1152921504606846977
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask7:
.dword	-576460752303423489
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask8:
.dword	-288230376151711745
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask9:
.dword	-144115188075855873
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask10:
.dword	-72057594037927937
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask11:
.dword	-36028797018963969
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask12:
.dword	-18014398509481985
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask13:
.dword	-9007199254740993
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask14:
.dword	-4503599627370497
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask15:
.dword	-2251799813685249
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask16:
.dword	-1125899906842625
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data0_ans_mask17:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625

walking_data0_ans_mask18:
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask19:
.dword	-9223372036854775808
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask20:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask21:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask22:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask23:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask24:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask25:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask26:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask27:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask28:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask29:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask30:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-4503599627370497
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask31:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-2251799813685249
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask32:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-1125899906842625
.dword	21

walking_data0_ans_mask33:
.dword	-9223372036854775808
.dword	-6148914691236517206
.dword	-6148914691236517205
.dword	-4611686018427387905
.dword	-2305843009213693953
.dword	-1152921504606846977
.dword	-576460752303423489
.dword	-288230376151711745
.dword	-144115188075855873
.dword	-72057594037927937
.dword	-36028797018963969
.dword	-18014398509481985
.dword	-9007199254740993
.dword	-4503599627370497
.dword	-2251799813685249
.dword	21

walking_data1:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185

walking_data1_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask1:
.dword	-562949953421313
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask2:
.dword	-281474976710657
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask3:
.dword	-140737488355329
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask4:
.dword	-70368744177665
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask5:
.dword	-35184372088833
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask6:
.dword	-17592186044417
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask7:
.dword	-8796093022209
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask8:
.dword	-4398046511105
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask9:
.dword	-2199023255553
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask10:
.dword	-1099511627777
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask11:
.dword	-549755813889
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask12:
.dword	-274877906945
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask13:
.dword	-137438953473
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask14:
.dword	-68719476737
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask15:
.dword	-34359738369
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask16:
.dword	-17179869185
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data1_ans_mask17:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185

walking_data1_ans_mask18:
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask19:
.dword	-562949953421313
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask20:
.dword	-562949953421313
.dword	-281474976710657
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask21:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask22:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask23:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask24:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask25:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask26:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask27:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask28:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask29:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask30:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-68719476737
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask31:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-34359738369
.dword	-17179869185
.dword	21

walking_data1_ans_mask32:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-17179869185
.dword	21

walking_data1_ans_mask33:
.dword	-562949953421313
.dword	-281474976710657
.dword	-140737488355329
.dword	-70368744177665
.dword	-35184372088833
.dword	-17592186044417
.dword	-8796093022209
.dword	-4398046511105
.dword	-2199023255553
.dword	-1099511627777
.dword	-549755813889
.dword	-274877906945
.dword	-137438953473
.dword	-68719476737
.dword	-34359738369
.dword	21

walking_data2:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577

walking_data2_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask1:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask2:
.dword	-4294967297
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask3:
.dword	-3037000499
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask4:
.dword	-3037000498
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask5:
.dword	-2147483649
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask6:
.dword	-1073741825
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask7:
.dword	-536870913
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask8:
.dword	-268435457
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask9:
.dword	-134217729
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask10:
.dword	-67108865
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask11:
.dword	-33554433
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask12:
.dword	-16777217
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask13:
.dword	-8388609
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask14:
.dword	-4194305
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask15:
.dword	-2097153
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask16:
.dword	-1048577
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data2_ans_mask17:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577

walking_data2_ans_mask18:
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask19:
.dword	-8589934593
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask20:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask21:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask22:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask23:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask24:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask25:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask26:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask27:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask28:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask29:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask30:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-4194305
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask31:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-2097153
.dword	-1048577
.dword	21

walking_data2_ans_mask32:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-1048577
.dword	21

walking_data2_ans_mask33:
.dword	-8589934593
.dword	-4294967297
.dword	-3037000499
.dword	-3037000498
.dword	-2147483649
.dword	-1073741825
.dword	-536870913
.dword	-268435457
.dword	-134217729
.dword	-67108865
.dword	-33554433
.dword	-16777217
.dword	-8388609
.dword	-4194305
.dword	-2097153
.dword	21

walking_data3:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17

walking_data3_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask1:
.dword	-524289
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask2:
.dword	-262145
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask3:
.dword	-131073
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask4:
.dword	-65537
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask5:
.dword	-32769
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask6:
.dword	-16385
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask7:
.dword	-8193
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask8:
.dword	-4097
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask9:
.dword	-2049
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask10:
.dword	-1025
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask11:
.dword	-513
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask12:
.dword	-257
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask13:
.dword	-129
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask14:
.dword	-65
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask15:
.dword	-33
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask16:
.dword	-17
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data3_ans_mask17:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17

walking_data3_ans_mask18:
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask19:
.dword	-524289
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask20:
.dword	-524289
.dword	-262145
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask21:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask22:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask23:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask24:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask25:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask26:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask27:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask28:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask29:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-129
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask30:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-65
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask31:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-33
.dword	-17
.dword	21

walking_data3_ans_mask32:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-17
.dword	21

walking_data3_ans_mask33:
.dword	-524289
.dword	-262145
.dword	-131073
.dword	-65537
.dword	-32769
.dword	-16385
.dword	-8193
.dword	-4097
.dword	-2049
.dword	-1025
.dword	-513
.dword	-257
.dword	-129
.dword	-65
.dword	-33
.dword	21

walking_data4:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128

walking_data4_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask1:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask2:
.dword	-5
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask3:
.dword	-3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask4:
.dword	-2
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask5:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask6:
.dword	1
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask7:
.dword	2
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask9:
.dword	4
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask10:
.dword	5
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask11:
.dword	6
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask12:
.dword	8
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask13:
.dword	16
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask14:
.dword	32
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask15:
.dword	64
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask16:
.dword	128
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data4_ans_mask17:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128

walking_data4_ans_mask18:
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask19:
.dword	-9
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask20:
.dword	-9
.dword	-5
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask21:
.dword	-9
.dword	-5
.dword	-3
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask22:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask23:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask24:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask25:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask26:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask27:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask28:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	8
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask29:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	16
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask30:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	32
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask31:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	64
.dword	128
.dword	21

walking_data4_ans_mask32:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	128
.dword	21

walking_data4_ans_mask33:
.dword	-9
.dword	-5
.dword	-3
.dword	-2
.dword	0
.dword	1
.dword	2
.dword	3
.dword	4
.dword	5
.dword	6
.dword	8
.dword	16
.dword	32
.dword	64
.dword	21

walking_data5:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608

walking_data5_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask1:
.dword	256
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask2:
.dword	512
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask3:
.dword	1024
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask4:
.dword	2048
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask5:
.dword	4096
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask6:
.dword	8192
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask7:
.dword	16384
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask8:
.dword	32768
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask9:
.dword	65536
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask10:
.dword	131072
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask11:
.dword	262144
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask12:
.dword	524288
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask13:
.dword	1048576
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask14:
.dword	2097152
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask15:
.dword	4194304
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask16:
.dword	8388608
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data5_ans_mask17:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608

walking_data5_ans_mask18:
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask19:
.dword	256
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask20:
.dword	256
.dword	512
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask21:
.dword	256
.dword	512
.dword	1024
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask22:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask23:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask24:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask25:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask26:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask27:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask28:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask29:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	1048576
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask30:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	2097152
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask31:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	4194304
.dword	8388608
.dword	21

walking_data5_ans_mask32:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	8388608
.dword	21

walking_data5_ans_mask33:
.dword	256
.dword	512
.dword	1024
.dword	2048
.dword	4096
.dword	8192
.dword	16384
.dword	32768
.dword	65536
.dword	131072
.dword	262144
.dword	524288
.dword	1048576
.dword	2097152
.dword	4194304
.dword	21

walking_data6:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736

walking_data6_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask1:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask2:
.dword	33554432
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask3:
.dword	67108864
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask4:
.dword	134217728
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask5:
.dword	268435456
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask6:
.dword	536870912
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask7:
.dword	1073741824
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask8:
.dword	2147483648
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask9:
.dword	3037000498
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask10:
.dword	3037000499
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask11:
.dword	3037000500
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask12:
.dword	4294967296
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask13:
.dword	8589934592
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask14:
.dword	17179869184
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask15:
.dword	34359738368
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask16:
.dword	68719476736
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data6_ans_mask17:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736

walking_data6_ans_mask18:
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask19:
.dword	16777216
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask20:
.dword	16777216
.dword	33554432
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask21:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask22:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask23:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask24:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask25:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask26:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask27:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask28:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask29:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask30:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	17179869184
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask31:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	34359738368
.dword	68719476736
.dword	21

walking_data6_ans_mask32:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	68719476736
.dword	21

walking_data6_ans_mask33:
.dword	16777216
.dword	33554432
.dword	67108864
.dword	134217728
.dword	268435456
.dword	536870912
.dword	1073741824
.dword	2147483648
.dword	3037000498
.dword	3037000499
.dword	3037000500
.dword	4294967296
.dword	8589934592
.dword	17179869184
.dword	34359738368
.dword	21

walking_data7:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496

walking_data7_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask1:
.dword	137438953472
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask2:
.dword	274877906944
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask3:
.dword	549755813888
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask4:
.dword	1099511627776
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask5:
.dword	2199023255552
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask6:
.dword	4398046511104
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask7:
.dword	8796093022208
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask8:
.dword	17592186044416
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask9:
.dword	35184372088832
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask10:
.dword	70368744177664
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask11:
.dword	140737488355328
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask12:
.dword	281474976710656
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask13:
.dword	562949953421312
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask14:
.dword	1125899906842624
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask15:
.dword	2251799813685248
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask16:
.dword	4503599627370496
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data7_ans_mask17:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496

walking_data7_ans_mask18:
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask19:
.dword	137438953472
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask20:
.dword	137438953472
.dword	274877906944
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask21:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask22:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask23:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask24:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask25:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask26:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask27:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask28:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask29:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask30:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	1125899906842624
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask31:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	2251799813685248
.dword	4503599627370496
.dword	21

walking_data7_ans_mask32:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	4503599627370496
.dword	21

walking_data7_ans_mask33:
.dword	137438953472
.dword	274877906944
.dword	549755813888
.dword	1099511627776
.dword	2199023255552
.dword	4398046511104
.dword	8796093022208
.dword	17592186044416
.dword	35184372088832
.dword	70368744177664
.dword	140737488355328
.dword	281474976710656
.dword	562949953421312
.dword	1125899906842624
.dword	2251799813685248
.dword	21

walking_data8:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206

walking_data8_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask1:
.dword	9007199254740992
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask2:
.dword	18014398509481984
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask3:
.dword	36028797018963968
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask4:
.dword	72057594037927936
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask5:
.dword	144115188075855872
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask6:
.dword	288230376151711744
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask7:
.dword	576460752303423488
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask8:
.dword	1152921504606846976
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask9:
.dword	2305843009213693952
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask10:
.dword	3689348814741910322
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask11:
.dword	3689348814741910323
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask12:
.dword	3689348814741910324
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask13:
.dword	4611686018427387904
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask14:
.dword	6148914691236517204
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask15:
.dword	6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask16:
.dword	6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data8_ans_mask17:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206

walking_data8_ans_mask18:
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask19:
.dword	9007199254740992
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask20:
.dword	9007199254740992
.dword	18014398509481984
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask21:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask22:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask23:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask24:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask25:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask26:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask27:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask28:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask29:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask30:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	6148914691236517204
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask31:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517205
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask32:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517206
.dword	21

walking_data8_ans_mask33:
.dword	9007199254740992
.dword	18014398509481984
.dword	36028797018963968
.dword	72057594037927936
.dword	144115188075855872
.dword	288230376151711744
.dword	576460752303423488
.dword	1152921504606846976
.dword	2305843009213693952
.dword	3689348814741910322
.dword	3689348814741910323
.dword	3689348814741910324
.dword	4611686018427387904
.dword	6148914691236517204
.dword	6148914691236517205
.dword	21

walking_data9:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762

walking_data9_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask1:
.dword	7378697629483820645
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask2:
.dword	7378697629483820646
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask3:
.dword	7378697629483820647
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask4:
.dword	9223372036854775807
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask5:
.dword	8754410784145015064
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask6:
.dword	-9120991004489300186
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask7:
.dword	-6827221125228143455
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask8:
.dword	8072265551145373842
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask9:
.dword	8552946009339293353
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask10:
.dword	-5865375391526554953
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask11:
.dword	7223721401196370341
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask12:
.dword	-8522715439727294336
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask13:
.dword	8046002562568150252
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask14:
.dword	5410643188681466469
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask15:
.dword	-2628444156864546621
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask16:
.dword	-4879333105662836762
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data9_ans_mask17:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762

walking_data9_ans_mask18:
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask19:
.dword	7378697629483820645
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask20:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask21:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask22:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask23:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask24:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask25:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask26:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask27:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask28:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask29:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask30:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask31:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	-2628444156864546621
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask32:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-4879333105662836762
.dword	21

walking_data9_ans_mask33:
.dword	7378697629483820645
.dword	7378697629483820646
.dword	7378697629483820647
.dword	9223372036854775807
.dword	8754410784145015064
.dword	-9120991004489300186
.dword	-6827221125228143455
.dword	8072265551145373842
.dword	8552946009339293353
.dword	-5865375391526554953
.dword	7223721401196370341
.dword	-8522715439727294336
.dword	8046002562568150252
.dword	5410643188681466469
.dword	-2628444156864546621
.dword	21

walking_data10:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348

walking_data10_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask1:
.dword	768318656696361192
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask2:
.dword	-9215075555312505296
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask3:
.dword	3360279321854954847
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask4:
.dword	-74713620314338668
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask5:
.dword	3210400438423654983
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask6:
.dword	856973008964645624
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask7:
.dword	-8141348256652018477
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask8:
.dword	-2304441088416871838
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask9:
.dword	5617278270213406806
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask10:
.dword	7068216214161475787
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask11:
.dword	-2013055977814831022
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask12:
.dword	-562512894513047346
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask13:
.dword	3197093624985544397
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask14:
.dword	-9220035302487315183
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask15:
.dword	-2918168516061667685
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask16:
.dword	-2310156637801266348
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data10_ans_mask17:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348

walking_data10_ans_mask18:
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask19:
.dword	768318656696361192
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask20:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask21:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask22:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask23:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask24:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask25:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask26:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask27:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask28:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask29:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask30:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask31:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-2918168516061667685
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask32:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2310156637801266348
.dword	21

walking_data10_ans_mask33:
.dword	768318656696361192
.dword	-9215075555312505296
.dword	3360279321854954847
.dword	-74713620314338668
.dword	3210400438423654983
.dword	856973008964645624
.dword	-8141348256652018477
.dword	-2304441088416871838
.dword	5617278270213406806
.dword	7068216214161475787
.dword	-2013055977814831022
.dword	-562512894513047346
.dword	3197093624985544397
.dword	-9220035302487315183
.dword	-2918168516061667685
.dword	21

walking_data11:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067

walking_data11_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask1:
.dword	1568454639658554568
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask2:
.dword	-1957630801740188061
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask3:
.dword	-549784054078735994
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask4:
.dword	5040578746675009391
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask5:
.dword	-2743211511243219077
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask6:
.dword	2120128850087682298
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask7:
.dword	6958175871142587086
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask8:
.dword	-2443396699438598148
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask9:
.dword	5264409011192320087
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask10:
.dword	-4320554896170744694
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask11:
.dword	8535318455331797383
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask12:
.dword	9184406168965727342
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask13:
.dword	5930447822721322101
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask14:
.dword	8760423623552897557
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask15:
.dword	1261624697503285878
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask16:
.dword	8892445505442688067
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data11_ans_mask17:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067

walking_data11_ans_mask18:
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask19:
.dword	1568454639658554568
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask20:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask21:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask22:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask23:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask24:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask25:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask26:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask27:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask28:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask29:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask30:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	8760423623552897557
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask31:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	1261624697503285878
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask32:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	8892445505442688067
.dword	21

walking_data11_ans_mask33:
.dword	1568454639658554568
.dword	-1957630801740188061
.dword	-549784054078735994
.dword	5040578746675009391
.dword	-2743211511243219077
.dword	2120128850087682298
.dword	6958175871142587086
.dword	-2443396699438598148
.dword	5264409011192320087
.dword	-4320554896170744694
.dword	8535318455331797383
.dword	9184406168965727342
.dword	5930447822721322101
.dword	8760423623552897557
.dword	1261624697503285878
.dword	21

walking_data12:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442

walking_data12_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask1:
.dword	-3267300310623294441
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask2:
.dword	-8774265799497791619
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask3:
.dword	-2101791972719145200
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask4:
.dword	4225148679302863707
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask5:
.dword	-5541532040053993238
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask6:
.dword	5532593343718601239
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask7:
.dword	7284872723282193485
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask8:
.dword	7910543929381532467
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask9:
.dword	2089082903486694440
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask10:
.dword	6473300362285105058
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask11:
.dword	-4507033520185957241
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask12:
.dword	7912128204215947108
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask13:
.dword	-9172050866630557419
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask14:
.dword	3307352412225732124
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask15:
.dword	9150579971854623552
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask16:
.dword	3979998721321456442
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data12_ans_mask17:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442

walking_data12_ans_mask18:
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask19:
.dword	-3267300310623294441
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask20:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask21:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask22:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask23:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask24:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask25:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask26:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask27:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask28:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask29:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask30:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	3307352412225732124
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask31:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	9150579971854623552
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask32:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	3979998721321456442
.dword	21

walking_data12_ans_mask33:
.dword	-3267300310623294441
.dword	-8774265799497791619
.dword	-2101791972719145200
.dword	4225148679302863707
.dword	-5541532040053993238
.dword	5532593343718601239
.dword	7284872723282193485
.dword	7910543929381532467
.dword	2089082903486694440
.dword	6473300362285105058
.dword	-4507033520185957241
.dword	7912128204215947108
.dword	-9172050866630557419
.dword	3307352412225732124
.dword	9150579971854623552
.dword	21

walking_data13:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325

walking_data13_ans_mask0:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask1:
.dword	-2943325601045275605
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask2:
.dword	3634273075434220454
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask3:
.dword	6592126256718193469
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask4:
.dword	-6064099798596873591
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask5:
.dword	6255007457578944377
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask6:
.dword	8501999570370143436
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask7:
.dword	2603303268763419497
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask8:
.dword	4791705118972086349
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask9:
.dword	-6261594753175691952
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask10:
.dword	9122613364198300998
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask11:
.dword	575515583839258869
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask12:
.dword	1648487560945372657
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask13:
.dword	-2639018853905187636
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask14:
.dword	4372057252998094807
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask15:
.dword	-1179970556173643250
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask16:
.dword	-3013026524218443325
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	13
.dword	14
.dword	15
.dword	17
.dword	18
.dword	19
.dword	20
.dword	21

walking_data13_ans_mask17:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325

walking_data13_ans_mask18:
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask19:
.dword	-2943325601045275605
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask20:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask21:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask22:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask23:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask24:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask25:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask26:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask27:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask28:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask29:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask30:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask31:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	-1179970556173643250
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask32:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-3013026524218443325
.dword	21

walking_data13_ans_mask33:
.dword	-2943325601045275605
.dword	3634273075434220454
.dword	6592126256718193469
.dword	-6064099798596873591
.dword	6255007457578944377
.dword	8501999570370143436
.dword	2603303268763419497
.dword	4791705118972086349
.dword	-6261594753175691952
.dword	9122613364198300998
.dword	575515583839258869
.dword	1648487560945372657
.dword	-2639018853905187636
.dword	4372057252998094807
.dword	-1179970556173643250
.dword	21

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
    

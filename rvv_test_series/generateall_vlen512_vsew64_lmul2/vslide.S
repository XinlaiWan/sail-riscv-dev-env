#undef TEST_VSLIDE_VX_OP 
#define TEST_VSLIDE_VX_OP( testnum, inst, result_base, rd_base, offset, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle64.v v0, (x7); \
               la  x1, base; \
            vle64.v v8, (x1); \
            la  x1, rd_base; \
            vle64.v v16, (x1); \
            li x1, offset; \
            inst v16, v8, x1, v0.t; \
        )
#undef TEST_VSLIDE_VI_OP 
#define TEST_VSLIDE_VI_OP( testnum, inst, result_base, rd_base, offset_imm, base) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            VSET_VSEW_4AVL \
            la x7, mask_data; \
    vle64.v v0, (x7); \
               la  x1, base; \
            vle64.v v8, (x1); \
            la  x1, rd_base; \
            vle64.v v16, (x1); \
            inst v16, v8, offset_imm, v0.t; \
        )
#define TEST_VSLIDE_VX_OP_rd_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v2, (x1); \
                li x1, offset; \
                inst v2, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v4, (x1); \
                li x1, offset; \
                inst v4, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v6, (x1); \
                li x1, offset; \
                inst v6, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v10, (x1); \
                li x1, offset; \
                inst v10, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v12, (x1); \
                li x1, offset; \
                inst v12, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v14, (x1); \
                li x1, offset; \
                inst v14, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v18, (x1); \
                li x1, offset; \
                inst v18, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v20, (x1); \
                li x1, offset; \
                inst v20, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v22, (x1); \
                li x1, offset; \
                inst v22, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v26, (x1); \
                li x1, offset; \
                inst v26, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v28, (x1); \
                li x1, offset; \
                inst v28, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rd_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v30, (x1); \
                li x1, offset; \
                inst v30, v8, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v2, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v2, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v4, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v4, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v6, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v6, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v10, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v10, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v12, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v12, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v14, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v14, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v18, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v18, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v20, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v20, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v22, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v22, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v26, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v26, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v28, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v28, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs2_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v30, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x1, offset; \
                inst v16, v30, x1, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_2( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x2, offset; \
                inst v16, v8, x2, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_4( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x4, offset; \
                inst v16, v8, x4, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_6( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x6, offset; \
                inst v16, v8, x6, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_8( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x8, offset; \
                inst v16, v8, x8, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_10( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x10, offset; \
                inst v16, v8, x10, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_12( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x12, offset; \
                inst v16, v8, x12, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_14( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x14, offset; \
                inst v16, v8, x14, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_16( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x16, offset; \
                inst v16, v8, x16, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_18( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x18, offset; \
                inst v16, v8, x18, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_20( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x20, offset; \
                inst v16, v8, x20, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_22( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x22, offset; \
                inst v16, v8, x22, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_24( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x24, offset; \
                inst v16, v8, x24, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_26( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x26, offset; \
                inst v16, v8, x26, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_28( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x28, offset; \
                inst v16, v8, x28, v0.t; \
            )
#define TEST_VSLIDE_VX_OP_rs1_30( testnum, inst, result_base, rd_base, offset, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                li x30, offset; \
                inst v16, v8, x30, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_2( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v2, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v2, (x1); \
                inst v2, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_4( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v4, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v4, (x1); \
                inst v4, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_6( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v6, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v6, (x1); \
                inst v6, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_10( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v10, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v10, (x1); \
                inst v10, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_12( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v12, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v12, (x1); \
                inst v12, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_14( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v14, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v14, (x1); \
                inst v14, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_18( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v18, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v18, (x1); \
                inst v18, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_20( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v20, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v20, (x1); \
                inst v20, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_22( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v22, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v22, (x1); \
                inst v22, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_26( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v26, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v26, (x1); \
                inst v26, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_28( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v28, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v28, (x1); \
                inst v28, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rd_30( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v30, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v8, (x1); \
                la  x1, rd_base; \
                vle64.v v30, (x1); \
                inst v30, v8, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_2( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v2, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v2, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_4( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v4, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v4, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_6( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v6, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v6, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_10( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v10, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v10, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_12( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v12, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v12, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_14( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v14, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v14, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_18( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v18, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v18, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_20( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v20, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v20, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_22( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v22, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v22, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_26( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v26, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v26, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_28( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v28, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v28, offset_imm, v0.t; \
            )
#define TEST_VSLIDE_VI_OP_rs2_30( testnum, inst, result_base, rd_base, offset_imm, base ) \
            TEST_CASE_LOOP( testnum, v16, result_base, \
                VSET_VSEW_4AVL \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                   la  x1, base; \
                vle64.v v30, (x1); \
                la  x1, rd_base; \
                vle64.v v16, (x1); \
                inst v16, v30, offset_imm, v0.t; \
            )
#----------------------------------------------------------------------------- 
    # vslide.S
    #-----------------------------------------------------------------------------
    #
    # Test vslide instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vslide)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vslideup.vx/vi Test    ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VSLIDE_VX_OP( 1, vslideup.vx, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VX_OP( 2, vslidedown.vx, walking_data0_slidedownans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VI_OP( 3, vslideup.vi, walking_data0_slideupans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VI_OP( 4, vslidedown.vi, walking_data0_slidedownans_offset_0, rd_data, 0, walking_data0 );
  TEST_VSLIDE_VX_OP( 5, vslideup.vx, walking_data0_slideupans_offset_10, rd_data, 10, walking_data0 );
  TEST_VSLIDE_VX_OP( 6, vslidedown.vx, walking_data0_slidedownans_offset_10, rd_data, 10, walking_data0 );
  TEST_VSLIDE_VI_OP( 7, vslideup.vi, walking_data0_slideupans_offset_10, rd_data, 10, walking_data0 );
  TEST_VSLIDE_VI_OP( 8, vslidedown.vi, walking_data0_slidedownans_offset_10, rd_data, 10, walking_data0 );
  TEST_VSLIDE_VX_OP( 9, vslideup.vx, walking_data1_slideupans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VX_OP( 10, vslidedown.vx, walking_data1_slidedownans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VI_OP( 11, vslideup.vi, walking_data1_slideupans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VI_OP( 12, vslidedown.vi, walking_data1_slidedownans_offset_0, rd_data, 0, walking_data1 );
  TEST_VSLIDE_VX_OP( 13, vslideup.vx, walking_data1_slideupans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VX_OP( 14, vslidedown.vx, walking_data1_slidedownans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VI_OP( 15, vslideup.vi, walking_data1_slideupans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VI_OP( 16, vslidedown.vi, walking_data1_slidedownans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VX_OP( 17, vslideup.vx, walking_data2_slideupans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VX_OP( 18, vslidedown.vx, walking_data2_slidedownans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VI_OP( 19, vslideup.vi, walking_data2_slideupans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VI_OP( 20, vslidedown.vi, walking_data2_slidedownans_offset_0, rd_data, 0, walking_data2 );
  TEST_VSLIDE_VX_OP( 21, vslideup.vx, walking_data2_slideupans_offset_10, rd_data, 10, walking_data2 );
  TEST_VSLIDE_VX_OP( 22, vslidedown.vx, walking_data2_slidedownans_offset_10, rd_data, 10, walking_data2 );
  TEST_VSLIDE_VI_OP( 23, vslideup.vi, walking_data2_slideupans_offset_10, rd_data, 10, walking_data2 );
  TEST_VSLIDE_VI_OP( 24, vslidedown.vi, walking_data2_slidedownans_offset_10, rd_data, 10, walking_data2 );
  TEST_VSLIDE_VX_OP( 25, vslideup.vx, walking_data3_slideupans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VX_OP( 26, vslidedown.vx, walking_data3_slidedownans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VI_OP( 27, vslideup.vi, walking_data3_slideupans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VI_OP( 28, vslidedown.vi, walking_data3_slidedownans_offset_0, rd_data, 0, walking_data3 );
  TEST_VSLIDE_VX_OP( 29, vslideup.vx, walking_data3_slideupans_offset_10, rd_data, 10, walking_data3 );
  TEST_VSLIDE_VX_OP( 30, vslidedown.vx, walking_data3_slidedownans_offset_10, rd_data, 10, walking_data3 );
  TEST_VSLIDE_VI_OP( 31, vslideup.vi, walking_data3_slideupans_offset_10, rd_data, 10, walking_data3 );
  TEST_VSLIDE_VI_OP( 32, vslidedown.vi, walking_data3_slidedownans_offset_10, rd_data, 10, walking_data3 );
  TEST_VSLIDE_VX_OP( 33, vslideup.vx, walking_data4_slideupans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VX_OP( 34, vslidedown.vx, walking_data4_slidedownans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VI_OP( 35, vslideup.vi, walking_data4_slideupans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VI_OP( 36, vslidedown.vi, walking_data4_slidedownans_offset_0, rd_data, 0, walking_data4 );
  TEST_VSLIDE_VX_OP( 37, vslideup.vx, walking_data4_slideupans_offset_10, rd_data, 10, walking_data4 );
  TEST_VSLIDE_VX_OP( 38, vslidedown.vx, walking_data4_slidedownans_offset_10, rd_data, 10, walking_data4 );
  TEST_VSLIDE_VI_OP( 39, vslideup.vi, walking_data4_slideupans_offset_10, rd_data, 10, walking_data4 );
  TEST_VSLIDE_VI_OP( 40, vslidedown.vi, walking_data4_slidedownans_offset_10, rd_data, 10, walking_data4 );
  TEST_VSLIDE_VX_OP( 41, vslideup.vx, walking_data5_slideupans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VX_OP( 42, vslidedown.vx, walking_data5_slidedownans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VI_OP( 43, vslideup.vi, walking_data5_slideupans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VI_OP( 44, vslidedown.vi, walking_data5_slidedownans_offset_0, rd_data, 0, walking_data5 );
  TEST_VSLIDE_VX_OP( 45, vslideup.vx, walking_data5_slideupans_offset_10, rd_data, 10, walking_data5 );
  TEST_VSLIDE_VX_OP( 46, vslidedown.vx, walking_data5_slidedownans_offset_10, rd_data, 10, walking_data5 );
  TEST_VSLIDE_VI_OP( 47, vslideup.vi, walking_data5_slideupans_offset_10, rd_data, 10, walking_data5 );
  TEST_VSLIDE_VI_OP( 48, vslidedown.vi, walking_data5_slidedownans_offset_10, rd_data, 10, walking_data5 );
  TEST_VSLIDE_VX_OP( 49, vslideup.vx, walking_data6_slideupans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VX_OP( 50, vslidedown.vx, walking_data6_slidedownans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VI_OP( 51, vslideup.vi, walking_data6_slideupans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VI_OP( 52, vslidedown.vi, walking_data6_slidedownans_offset_0, rd_data, 0, walking_data6 );
  TEST_VSLIDE_VX_OP( 53, vslideup.vx, walking_data6_slideupans_offset_10, rd_data, 10, walking_data6 );
  TEST_VSLIDE_VX_OP( 54, vslidedown.vx, walking_data6_slidedownans_offset_10, rd_data, 10, walking_data6 );
  TEST_VSLIDE_VI_OP( 55, vslideup.vi, walking_data6_slideupans_offset_10, rd_data, 10, walking_data6 );
  TEST_VSLIDE_VI_OP( 56, vslidedown.vi, walking_data6_slidedownans_offset_10, rd_data, 10, walking_data6 );
  TEST_VSLIDE_VX_OP( 57, vslideup.vx, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VX_OP( 58, vslidedown.vx, walking_data7_slidedownans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VI_OP( 59, vslideup.vi, walking_data7_slideupans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VI_OP( 60, vslidedown.vi, walking_data7_slidedownans_offset_0, rd_data, 0, walking_data7 );
  TEST_VSLIDE_VX_OP( 61, vslideup.vx, walking_data7_slideupans_offset_10, rd_data, 10, walking_data7 );
  TEST_VSLIDE_VX_OP( 62, vslidedown.vx, walking_data7_slidedownans_offset_10, rd_data, 10, walking_data7 );
  TEST_VSLIDE_VI_OP( 63, vslideup.vi, walking_data7_slideupans_offset_10, rd_data, 10, walking_data7 );
  TEST_VSLIDE_VI_OP( 64, vslidedown.vi, walking_data7_slidedownans_offset_10, rd_data, 10, walking_data7 );
  TEST_VSLIDE_VX_OP( 65, vslideup.vx, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VX_OP( 66, vslidedown.vx, walking_data8_slidedownans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VI_OP( 67, vslideup.vi, walking_data8_slideupans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VI_OP( 68, vslidedown.vi, walking_data8_slidedownans_offset_0, rd_data, 0, walking_data8 );
  TEST_VSLIDE_VX_OP( 69, vslideup.vx, walking_data8_slideupans_offset_10, rd_data, 10, walking_data8 );
  TEST_VSLIDE_VX_OP( 70, vslidedown.vx, walking_data8_slidedownans_offset_10, rd_data, 10, walking_data8 );
  TEST_VSLIDE_VI_OP( 71, vslideup.vi, walking_data8_slideupans_offset_10, rd_data, 10, walking_data8 );
  TEST_VSLIDE_VI_OP( 72, vslidedown.vi, walking_data8_slidedownans_offset_10, rd_data, 10, walking_data8 );
  #-------------------------------------------------------------
  # vslideup.vx/vi Test  (Different Registers)  ------------------------------------------
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_2)
  TEST_VSLIDE_VX_OP_rd_2( 73, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs2_2( 74, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rd_2( 75, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VI_OP_rs2_2( 76, vslideup.vi, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rs1_2( 77, vslideup.vx, walking_data2_slideupans_offset_2, rd_data, 2, walking_data2 );
  TEST_VSLIDE_VX_OP_rd_4( 78, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs2_4( 79, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rd_4( 80, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VI_OP_rs2_4( 81, vslideup.vi, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rs1_4( 82, vslideup.vx, walking_data4_slideupans_offset_4, rd_data, 4, walking_data4 );
  TEST_VSLIDE_VX_OP_rd_6( 83, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rs2_6( 84, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VI_OP_rd_6( 85, vslideup.vi, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VI_OP_rs2_6( 86, vslideup.vi, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rs1_6( 87, vslideup.vx, walking_data6_slideupans_offset_6, rd_data, 6, walking_data6 );
  TEST_VSLIDE_VX_OP_rs1_8( 88, vslideup.vx, walking_data8_slideupans_offset_8, rd_data, 8, walking_data8 );
  TEST_VSLIDE_VX_OP_rd_10( 89, vslideup.vx, walking_data1_slideupans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_10( 90, vslideup.vx, walking_data1_slideupans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VI_OP_rd_10( 91, vslideup.vi, walking_data1_slideupans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VI_OP_rs2_10( 92, vslideup.vi, walking_data1_slideupans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VX_OP_rs1_10( 93, vslideup.vx, walking_data1_slideupans_offset_10, rd_data, 10, walking_data1 );
  TEST_VSLIDE_VX_OP_rd_12( 94, vslideup.vx, walking_data3_slideupans_offset_12, rd_data, 12, walking_data3 );
  TEST_VSLIDE_VX_OP_rs2_12( 95, vslideup.vx, walking_data3_slideupans_offset_12, rd_data, 12, walking_data3 );
  TEST_VSLIDE_VI_OP_rd_12( 96, vslideup.vi, walking_data3_slideupans_offset_12, rd_data, 12, walking_data3 );
  TEST_VSLIDE_VI_OP_rs2_12( 97, vslideup.vi, walking_data3_slideupans_offset_12, rd_data, 12, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_12( 98, vslideup.vx, walking_data3_slideupans_offset_12, rd_data, 12, walking_data3 );
  TEST_VSLIDE_VX_OP_rd_14( 99, vslideup.vx, walking_data5_slideupans_offset_14, rd_data, 14, walking_data5 );
  TEST_VSLIDE_VX_OP_rs2_14( 100, vslideup.vx, walking_data5_slideupans_offset_14, rd_data, 14, walking_data5 );
  TEST_VSLIDE_VI_OP_rd_14( 101, vslideup.vi, walking_data5_slideupans_offset_14, rd_data, 14, walking_data5 );
  TEST_VSLIDE_VI_OP_rs2_14( 102, vslideup.vi, walking_data5_slideupans_offset_14, rd_data, 14, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_14( 103, vslideup.vx, walking_data5_slideupans_offset_14, rd_data, 14, walking_data5 );
  TEST_VSLIDE_VX_OP_rs1_16( 104, vslideup.vx, walking_data7_slideupans_offset_16, rd_data, 16, walking_data7 );
  TEST_VSLIDE_VX_OP_rd_18( 105, vslideup.vx, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VX_OP_rs2_18( 106, vslideup.vx, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VI_OP_rd_18( 107, vslideup.vi, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VI_OP_rs2_18( 108, vslideup.vi, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VX_OP_rs1_18( 109, vslideup.vx, walking_data0_slideupans_offset_1, rd_data, 1, walking_data0 );
  TEST_VSLIDE_VX_OP_rd_20( 110, vslideup.vx, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VX_OP_rs2_20( 111, vslideup.vx, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VI_OP_rd_20( 112, vslideup.vi, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VI_OP_rs2_20( 113, vslideup.vi, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VX_OP_rs1_20( 114, vslideup.vx, walking_data2_slideupans_offset_3, rd_data, 3, walking_data2 );
  TEST_VSLIDE_VX_OP_rd_22( 115, vslideup.vx, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VX_OP_rs2_22( 116, vslideup.vx, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VI_OP_rd_22( 117, vslideup.vi, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VI_OP_rs2_22( 118, vslideup.vi, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VX_OP_rs1_22( 119, vslideup.vx, walking_data4_slideupans_offset_5, rd_data, 5, walking_data4 );
  TEST_VSLIDE_VX_OP_rs1_24( 120, vslideup.vx, walking_data6_slideupans_offset_7, rd_data, 7, walking_data6 );
  TEST_VSLIDE_VX_OP_rd_26( 121, vslideup.vx, walking_data8_slideupans_offset_9, rd_data, 9, walking_data8 );
  TEST_VSLIDE_VX_OP_rs2_26( 122, vslideup.vx, walking_data8_slideupans_offset_9, rd_data, 9, walking_data8 );
  TEST_VSLIDE_VI_OP_rd_26( 123, vslideup.vi, walking_data8_slideupans_offset_9, rd_data, 9, walking_data8 );
  TEST_VSLIDE_VI_OP_rs2_26( 124, vslideup.vi, walking_data8_slideupans_offset_9, rd_data, 9, walking_data8 );
  TEST_VSLIDE_VX_OP_rs1_26( 125, vslideup.vx, walking_data8_slideupans_offset_9, rd_data, 9, walking_data8 );
  TEST_VSLIDE_VX_OP_rd_28( 126, vslideup.vx, walking_data1_slideupans_offset_11, rd_data, 11, walking_data1 );
  TEST_VSLIDE_VX_OP_rs2_28( 127, vslideup.vx, walking_data1_slideupans_offset_11, rd_data, 11, walking_data1 );
  TEST_VSLIDE_VI_OP_rd_28( 128, vslideup.vi, walking_data1_slideupans_offset_11, rd_data, 11, walking_data1 );
  TEST_VSLIDE_VI_OP_rs2_28( 129, vslideup.vi, walking_data1_slideupans_offset_11, rd_data, 11, walking_data1 );
  TEST_VSLIDE_VX_OP_rs1_28( 130, vslideup.vx, walking_data1_slideupans_offset_11, rd_data, 11, walking_data1 );
  TEST_VSLIDE_VX_OP_rd_30( 131, vslideup.vx, walking_data3_slideupans_offset_13, rd_data, 13, walking_data3 );
  TEST_VSLIDE_VX_OP_rs2_30( 132, vslideup.vx, walking_data3_slideupans_offset_13, rd_data, 13, walking_data3 );
  TEST_VSLIDE_VI_OP_rd_30( 133, vslideup.vi, walking_data3_slideupans_offset_13, rd_data, 13, walking_data3 );
  TEST_VSLIDE_VI_OP_rs2_30( 134, vslideup.vi, walking_data3_slideupans_offset_13, rd_data, 13, walking_data3 );
  TEST_VSLIDE_VX_OP_rs1_30( 135, vslideup.vx, walking_data3_slideupans_offset_13, rd_data, 13, walking_data3 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
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

walking_data0_slideupans_offset_0:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	-2305843009213693953
.dword	10
.dword	11
.dword	12
.dword	-144115188075855873
.dword	14
.dword	15
.dword	17
.dword	-9007199254740993
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-4611686018427387905
.dword	10
.dword	11
.dword	12
.dword	-288230376151711745
.dword	14
.dword	15
.dword	17
.dword	-18014398509481985
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-6148914691236517205
.dword	10
.dword	11
.dword	12
.dword	-576460752303423489
.dword	14
.dword	15
.dword	17
.dword	-36028797018963969
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-6148914691236517206
.dword	10
.dword	11
.dword	12
.dword	-1152921504606846977
.dword	14
.dword	15
.dword	17
.dword	-72057594037927937
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-9223372036854775808
.dword	10
.dword	11
.dword	12
.dword	-2305843009213693953
.dword	14
.dword	15
.dword	17
.dword	-144115188075855873
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-4611686018427387905
.dword	14
.dword	15
.dword	17
.dword	-288230376151711745
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-6148914691236517205
.dword	14
.dword	15
.dword	17
.dword	-576460752303423489
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-6148914691236517206
.dword	14
.dword	15
.dword	17
.dword	-1152921504606846977
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-9223372036854775808
.dword	14
.dword	15
.dword	17
.dword	-2305843009213693953
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_9:
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
.dword	-4611686018427387905
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_10:
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
.dword	-6148914691236517205
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_11:
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
.dword	-6148914691236517206
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_12:
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
.dword	-9223372036854775808
.dword	19
.dword	20
.dword	21

walking_data0_slideupans_offset_13:
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

walking_data0_slideupans_offset_14:
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

walking_data0_slideupans_offset_15:
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

walking_data0_slideupans_offset_16:
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

walking_data0_slidedownans_offset_0:
.dword	-9223372036854775808
.dword	5
.dword	6
.dword	7
.dword	-2305843009213693953
.dword	10
.dword	11
.dword	12
.dword	-144115188075855873
.dword	14
.dword	15
.dword	17
.dword	-9007199254740993
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_1:
.dword	-6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	-1152921504606846977
.dword	10
.dword	11
.dword	12
.dword	-72057594037927937
.dword	14
.dword	15
.dword	17
.dword	-4503599627370497
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_2:
.dword	-6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	-576460752303423489
.dword	10
.dword	11
.dword	12
.dword	-36028797018963969
.dword	14
.dword	15
.dword	17
.dword	-2251799813685249
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_3:
.dword	-4611686018427387905
.dword	5
.dword	6
.dword	7
.dword	-288230376151711745
.dword	10
.dword	11
.dword	12
.dword	-18014398509481985
.dword	14
.dword	15
.dword	17
.dword	-1125899906842625
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_4:
.dword	-2305843009213693953
.dword	5
.dword	6
.dword	7
.dword	-144115188075855873
.dword	10
.dword	11
.dword	12
.dword	-9007199254740993
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_5:
.dword	-1152921504606846977
.dword	5
.dword	6
.dword	7
.dword	-72057594037927937
.dword	10
.dword	11
.dword	12
.dword	-4503599627370497
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_6:
.dword	-576460752303423489
.dword	5
.dword	6
.dword	7
.dword	-36028797018963969
.dword	10
.dword	11
.dword	12
.dword	-2251799813685249
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_7:
.dword	-288230376151711745
.dword	5
.dword	6
.dword	7
.dword	-18014398509481985
.dword	10
.dword	11
.dword	12
.dword	-1125899906842625
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_8:
.dword	-144115188075855873
.dword	5
.dword	6
.dword	7
.dword	-9007199254740993
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_9:
.dword	-72057594037927937
.dword	5
.dword	6
.dword	7
.dword	-4503599627370497
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_10:
.dword	-36028797018963969
.dword	5
.dword	6
.dword	7
.dword	-2251799813685249
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_11:
.dword	-18014398509481985
.dword	5
.dword	6
.dword	7
.dword	-1125899906842625
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_12:
.dword	-9007199254740993
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_13:
.dword	-4503599627370497
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_14:
.dword	-2251799813685249
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_15:
.dword	-1125899906842625
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data0_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data1_slideupans_offset_0:
.dword	-562949953421313
.dword	5
.dword	6
.dword	7
.dword	-35184372088833
.dword	10
.dword	11
.dword	12
.dword	-2199023255553
.dword	14
.dword	15
.dword	17
.dword	-137438953473
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-70368744177665
.dword	10
.dword	11
.dword	12
.dword	-4398046511105
.dword	14
.dword	15
.dword	17
.dword	-274877906945
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-140737488355329
.dword	10
.dword	11
.dword	12
.dword	-8796093022209
.dword	14
.dword	15
.dword	17
.dword	-549755813889
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-281474976710657
.dword	10
.dword	11
.dword	12
.dword	-17592186044417
.dword	14
.dword	15
.dword	17
.dword	-1099511627777
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-562949953421313
.dword	10
.dword	11
.dword	12
.dword	-35184372088833
.dword	14
.dword	15
.dword	17
.dword	-2199023255553
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-70368744177665
.dword	14
.dword	15
.dword	17
.dword	-4398046511105
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-140737488355329
.dword	14
.dword	15
.dword	17
.dword	-8796093022209
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-281474976710657
.dword	14
.dword	15
.dword	17
.dword	-17592186044417
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-562949953421313
.dword	14
.dword	15
.dword	17
.dword	-35184372088833
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_9:
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
.dword	-70368744177665
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_10:
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
.dword	-140737488355329
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_11:
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
.dword	-281474976710657
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_12:
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
.dword	-562949953421313
.dword	19
.dword	20
.dword	21

walking_data1_slideupans_offset_13:
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

walking_data1_slideupans_offset_14:
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

walking_data1_slideupans_offset_15:
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

walking_data1_slideupans_offset_16:
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

walking_data1_slidedownans_offset_0:
.dword	-562949953421313
.dword	5
.dword	6
.dword	7
.dword	-35184372088833
.dword	10
.dword	11
.dword	12
.dword	-2199023255553
.dword	14
.dword	15
.dword	17
.dword	-137438953473
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_1:
.dword	-281474976710657
.dword	5
.dword	6
.dword	7
.dword	-17592186044417
.dword	10
.dword	11
.dword	12
.dword	-1099511627777
.dword	14
.dword	15
.dword	17
.dword	-68719476737
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_2:
.dword	-140737488355329
.dword	5
.dword	6
.dword	7
.dword	-8796093022209
.dword	10
.dword	11
.dword	12
.dword	-549755813889
.dword	14
.dword	15
.dword	17
.dword	-34359738369
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_3:
.dword	-70368744177665
.dword	5
.dword	6
.dword	7
.dword	-4398046511105
.dword	10
.dword	11
.dword	12
.dword	-274877906945
.dword	14
.dword	15
.dword	17
.dword	-17179869185
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_4:
.dword	-35184372088833
.dword	5
.dword	6
.dword	7
.dword	-2199023255553
.dword	10
.dword	11
.dword	12
.dword	-137438953473
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_5:
.dword	-17592186044417
.dword	5
.dword	6
.dword	7
.dword	-1099511627777
.dword	10
.dword	11
.dword	12
.dword	-68719476737
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_6:
.dword	-8796093022209
.dword	5
.dword	6
.dword	7
.dword	-549755813889
.dword	10
.dword	11
.dword	12
.dword	-34359738369
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_7:
.dword	-4398046511105
.dword	5
.dword	6
.dword	7
.dword	-274877906945
.dword	10
.dword	11
.dword	12
.dword	-17179869185
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_8:
.dword	-2199023255553
.dword	5
.dword	6
.dword	7
.dword	-137438953473
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_9:
.dword	-1099511627777
.dword	5
.dword	6
.dword	7
.dword	-68719476737
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_10:
.dword	-549755813889
.dword	5
.dword	6
.dword	7
.dword	-34359738369
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_11:
.dword	-274877906945
.dword	5
.dword	6
.dword	7
.dword	-17179869185
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_12:
.dword	-137438953473
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_13:
.dword	-68719476737
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_14:
.dword	-34359738369
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_15:
.dword	-17179869185
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data1_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data2_slideupans_offset_0:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	-2147483649
.dword	10
.dword	11
.dword	12
.dword	-134217729
.dword	14
.dword	15
.dword	17
.dword	-8388609
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-3037000498
.dword	10
.dword	11
.dword	12
.dword	-268435457
.dword	14
.dword	15
.dword	17
.dword	-16777217
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-3037000499
.dword	10
.dword	11
.dword	12
.dword	-536870913
.dword	14
.dword	15
.dword	17
.dword	-33554433
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-4294967297
.dword	10
.dword	11
.dword	12
.dword	-1073741825
.dword	14
.dword	15
.dword	17
.dword	-67108865
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-8589934593
.dword	10
.dword	11
.dword	12
.dword	-2147483649
.dword	14
.dword	15
.dword	17
.dword	-134217729
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-3037000498
.dword	14
.dword	15
.dword	17
.dword	-268435457
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-3037000499
.dword	14
.dword	15
.dword	17
.dword	-536870913
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-4294967297
.dword	14
.dword	15
.dword	17
.dword	-1073741825
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-8589934593
.dword	14
.dword	15
.dword	17
.dword	-2147483649
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_9:
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
.dword	-3037000498
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_10:
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
.dword	-3037000499
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_11:
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
.dword	-4294967297
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_12:
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
.dword	-8589934593
.dword	19
.dword	20
.dword	21

walking_data2_slideupans_offset_13:
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

walking_data2_slideupans_offset_14:
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

walking_data2_slideupans_offset_15:
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

walking_data2_slideupans_offset_16:
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

walking_data2_slidedownans_offset_0:
.dword	-8589934593
.dword	5
.dword	6
.dword	7
.dword	-2147483649
.dword	10
.dword	11
.dword	12
.dword	-134217729
.dword	14
.dword	15
.dword	17
.dword	-8388609
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_1:
.dword	-4294967297
.dword	5
.dword	6
.dword	7
.dword	-1073741825
.dword	10
.dword	11
.dword	12
.dword	-67108865
.dword	14
.dword	15
.dword	17
.dword	-4194305
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_2:
.dword	-3037000499
.dword	5
.dword	6
.dword	7
.dword	-536870913
.dword	10
.dword	11
.dword	12
.dword	-33554433
.dword	14
.dword	15
.dword	17
.dword	-2097153
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_3:
.dword	-3037000498
.dword	5
.dword	6
.dword	7
.dword	-268435457
.dword	10
.dword	11
.dword	12
.dword	-16777217
.dword	14
.dword	15
.dword	17
.dword	-1048577
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_4:
.dword	-2147483649
.dword	5
.dword	6
.dword	7
.dword	-134217729
.dword	10
.dword	11
.dword	12
.dword	-8388609
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_5:
.dword	-1073741825
.dword	5
.dword	6
.dword	7
.dword	-67108865
.dword	10
.dword	11
.dword	12
.dword	-4194305
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_6:
.dword	-536870913
.dword	5
.dword	6
.dword	7
.dword	-33554433
.dword	10
.dword	11
.dword	12
.dword	-2097153
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_7:
.dword	-268435457
.dword	5
.dword	6
.dword	7
.dword	-16777217
.dword	10
.dword	11
.dword	12
.dword	-1048577
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_8:
.dword	-134217729
.dword	5
.dword	6
.dword	7
.dword	-8388609
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_9:
.dword	-67108865
.dword	5
.dword	6
.dword	7
.dword	-4194305
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_10:
.dword	-33554433
.dword	5
.dword	6
.dword	7
.dword	-2097153
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_11:
.dword	-16777217
.dword	5
.dword	6
.dword	7
.dword	-1048577
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_12:
.dword	-8388609
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_13:
.dword	-4194305
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_14:
.dword	-2097153
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_15:
.dword	-1048577
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data2_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data3_slideupans_offset_0:
.dword	-524289
.dword	5
.dword	6
.dword	7
.dword	-32769
.dword	10
.dword	11
.dword	12
.dword	-2049
.dword	14
.dword	15
.dword	17
.dword	-129
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-65537
.dword	10
.dword	11
.dword	12
.dword	-4097
.dword	14
.dword	15
.dword	17
.dword	-257
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-131073
.dword	10
.dword	11
.dword	12
.dword	-8193
.dword	14
.dword	15
.dword	17
.dword	-513
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-262145
.dword	10
.dword	11
.dword	12
.dword	-16385
.dword	14
.dword	15
.dword	17
.dword	-1025
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-524289
.dword	10
.dword	11
.dword	12
.dword	-32769
.dword	14
.dword	15
.dword	17
.dword	-2049
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-65537
.dword	14
.dword	15
.dword	17
.dword	-4097
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-131073
.dword	14
.dword	15
.dword	17
.dword	-8193
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-262145
.dword	14
.dword	15
.dword	17
.dword	-16385
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-524289
.dword	14
.dword	15
.dword	17
.dword	-32769
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_9:
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
.dword	-65537
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_10:
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
.dword	-131073
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_11:
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
.dword	-262145
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_12:
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
.dword	-524289
.dword	19
.dword	20
.dword	21

walking_data3_slideupans_offset_13:
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

walking_data3_slideupans_offset_14:
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

walking_data3_slideupans_offset_15:
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

walking_data3_slideupans_offset_16:
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

walking_data3_slidedownans_offset_0:
.dword	-524289
.dword	5
.dword	6
.dword	7
.dword	-32769
.dword	10
.dword	11
.dword	12
.dword	-2049
.dword	14
.dword	15
.dword	17
.dword	-129
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_1:
.dword	-262145
.dword	5
.dword	6
.dword	7
.dword	-16385
.dword	10
.dword	11
.dword	12
.dword	-1025
.dword	14
.dword	15
.dword	17
.dword	-65
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_2:
.dword	-131073
.dword	5
.dword	6
.dword	7
.dword	-8193
.dword	10
.dword	11
.dword	12
.dword	-513
.dword	14
.dword	15
.dword	17
.dword	-33
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_3:
.dword	-65537
.dword	5
.dword	6
.dword	7
.dword	-4097
.dword	10
.dword	11
.dword	12
.dword	-257
.dword	14
.dword	15
.dword	17
.dword	-17
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_4:
.dword	-32769
.dword	5
.dword	6
.dword	7
.dword	-2049
.dword	10
.dword	11
.dword	12
.dword	-129
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_5:
.dword	-16385
.dword	5
.dword	6
.dword	7
.dword	-1025
.dword	10
.dword	11
.dword	12
.dword	-65
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_6:
.dword	-8193
.dword	5
.dword	6
.dword	7
.dword	-513
.dword	10
.dword	11
.dword	12
.dword	-33
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_7:
.dword	-4097
.dword	5
.dword	6
.dword	7
.dword	-257
.dword	10
.dword	11
.dword	12
.dword	-17
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_8:
.dword	-2049
.dword	5
.dword	6
.dword	7
.dword	-129
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_9:
.dword	-1025
.dword	5
.dword	6
.dword	7
.dword	-65
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_10:
.dword	-513
.dword	5
.dword	6
.dword	7
.dword	-33
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_11:
.dword	-257
.dword	5
.dword	6
.dword	7
.dword	-17
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_12:
.dword	-129
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_13:
.dword	-65
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_14:
.dword	-33
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_15:
.dword	-17
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data3_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data4_slideupans_offset_0:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	4
.dword	14
.dword	15
.dword	17
.dword	16
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-2
.dword	10
.dword	11
.dword	12
.dword	3
.dword	14
.dword	15
.dword	17
.dword	8
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-3
.dword	10
.dword	11
.dword	12
.dword	2
.dword	14
.dword	15
.dword	17
.dword	6
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-5
.dword	10
.dword	11
.dword	12
.dword	1
.dword	14
.dword	15
.dword	17
.dword	5
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	-9
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	4
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-2
.dword	14
.dword	15
.dword	17
.dword	3
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-3
.dword	14
.dword	15
.dword	17
.dword	2
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-5
.dword	14
.dword	15
.dword	17
.dword	1
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	-9
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_9:
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
.dword	-2
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_10:
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
.dword	-3
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_11:
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
.dword	-5
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_12:
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
.dword	-9
.dword	19
.dword	20
.dword	21

walking_data4_slideupans_offset_13:
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

walking_data4_slideupans_offset_14:
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

walking_data4_slideupans_offset_15:
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

walking_data4_slideupans_offset_16:
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

walking_data4_slidedownans_offset_0:
.dword	-9
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	4
.dword	14
.dword	15
.dword	17
.dword	16
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_1:
.dword	-5
.dword	5
.dword	6
.dword	7
.dword	1
.dword	10
.dword	11
.dword	12
.dword	5
.dword	14
.dword	15
.dword	17
.dword	32
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_2:
.dword	-3
.dword	5
.dword	6
.dword	7
.dword	2
.dword	10
.dword	11
.dword	12
.dword	6
.dword	14
.dword	15
.dword	17
.dword	64
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_3:
.dword	-2
.dword	5
.dword	6
.dword	7
.dword	3
.dword	10
.dword	11
.dword	12
.dword	8
.dword	14
.dword	15
.dword	17
.dword	128
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_4:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	4
.dword	10
.dword	11
.dword	12
.dword	16
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_5:
.dword	1
.dword	5
.dword	6
.dword	7
.dword	5
.dword	10
.dword	11
.dword	12
.dword	32
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_6:
.dword	2
.dword	5
.dword	6
.dword	7
.dword	6
.dword	10
.dword	11
.dword	12
.dword	64
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	8
.dword	10
.dword	11
.dword	12
.dword	128
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_8:
.dword	4
.dword	5
.dword	6
.dword	7
.dword	16
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_9:
.dword	5
.dword	5
.dword	6
.dword	7
.dword	32
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_10:
.dword	6
.dword	5
.dword	6
.dword	7
.dword	64
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_11:
.dword	8
.dword	5
.dword	6
.dword	7
.dword	128
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_12:
.dword	16
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_13:
.dword	32
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_14:
.dword	64
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_15:
.dword	128
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data4_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data5_slideupans_offset_0:
.dword	256
.dword	5
.dword	6
.dword	7
.dword	4096
.dword	10
.dword	11
.dword	12
.dword	65536
.dword	14
.dword	15
.dword	17
.dword	1048576
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	2048
.dword	10
.dword	11
.dword	12
.dword	32768
.dword	14
.dword	15
.dword	17
.dword	524288
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	1024
.dword	10
.dword	11
.dword	12
.dword	16384
.dword	14
.dword	15
.dword	17
.dword	262144
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	512
.dword	10
.dword	11
.dword	12
.dword	8192
.dword	14
.dword	15
.dword	17
.dword	131072
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	256
.dword	10
.dword	11
.dword	12
.dword	4096
.dword	14
.dword	15
.dword	17
.dword	65536
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	2048
.dword	14
.dword	15
.dword	17
.dword	32768
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	1024
.dword	14
.dword	15
.dword	17
.dword	16384
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	512
.dword	14
.dword	15
.dword	17
.dword	8192
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	256
.dword	14
.dword	15
.dword	17
.dword	4096
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_9:
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
.dword	2048
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_10:
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
.dword	1024
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_11:
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
.dword	512
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_12:
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
.dword	256
.dword	19
.dword	20
.dword	21

walking_data5_slideupans_offset_13:
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

walking_data5_slideupans_offset_14:
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

walking_data5_slideupans_offset_15:
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

walking_data5_slideupans_offset_16:
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

walking_data5_slidedownans_offset_0:
.dword	256
.dword	5
.dword	6
.dword	7
.dword	4096
.dword	10
.dword	11
.dword	12
.dword	65536
.dword	14
.dword	15
.dword	17
.dword	1048576
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_1:
.dword	512
.dword	5
.dword	6
.dword	7
.dword	8192
.dword	10
.dword	11
.dword	12
.dword	131072
.dword	14
.dword	15
.dword	17
.dword	2097152
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_2:
.dword	1024
.dword	5
.dword	6
.dword	7
.dword	16384
.dword	10
.dword	11
.dword	12
.dword	262144
.dword	14
.dword	15
.dword	17
.dword	4194304
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_3:
.dword	2048
.dword	5
.dword	6
.dword	7
.dword	32768
.dword	10
.dword	11
.dword	12
.dword	524288
.dword	14
.dword	15
.dword	17
.dword	8388608
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_4:
.dword	4096
.dword	5
.dword	6
.dword	7
.dword	65536
.dword	10
.dword	11
.dword	12
.dword	1048576
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_5:
.dword	8192
.dword	5
.dword	6
.dword	7
.dword	131072
.dword	10
.dword	11
.dword	12
.dword	2097152
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_6:
.dword	16384
.dword	5
.dword	6
.dword	7
.dword	262144
.dword	10
.dword	11
.dword	12
.dword	4194304
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_7:
.dword	32768
.dword	5
.dword	6
.dword	7
.dword	524288
.dword	10
.dword	11
.dword	12
.dword	8388608
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_8:
.dword	65536
.dword	5
.dword	6
.dword	7
.dword	1048576
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_9:
.dword	131072
.dword	5
.dword	6
.dword	7
.dword	2097152
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_10:
.dword	262144
.dword	5
.dword	6
.dword	7
.dword	4194304
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_11:
.dword	524288
.dword	5
.dword	6
.dword	7
.dword	8388608
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_12:
.dword	1048576
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_13:
.dword	2097152
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_14:
.dword	4194304
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_15:
.dword	8388608
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data5_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data6_slideupans_offset_0:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	268435456
.dword	10
.dword	11
.dword	12
.dword	3037000498
.dword	14
.dword	15
.dword	17
.dword	8589934592
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	134217728
.dword	10
.dword	11
.dword	12
.dword	2147483648
.dword	14
.dword	15
.dword	17
.dword	4294967296
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	67108864
.dword	10
.dword	11
.dword	12
.dword	1073741824
.dword	14
.dword	15
.dword	17
.dword	3037000500
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	33554432
.dword	10
.dword	11
.dword	12
.dword	536870912
.dword	14
.dword	15
.dword	17
.dword	3037000499
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	16777216
.dword	10
.dword	11
.dword	12
.dword	268435456
.dword	14
.dword	15
.dword	17
.dword	3037000498
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	134217728
.dword	14
.dword	15
.dword	17
.dword	2147483648
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	67108864
.dword	14
.dword	15
.dword	17
.dword	1073741824
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	33554432
.dword	14
.dword	15
.dword	17
.dword	536870912
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	16777216
.dword	14
.dword	15
.dword	17
.dword	268435456
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_9:
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
.dword	134217728
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_10:
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
.dword	67108864
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_11:
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
.dword	33554432
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_12:
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
.dword	16777216
.dword	19
.dword	20
.dword	21

walking_data6_slideupans_offset_13:
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

walking_data6_slideupans_offset_14:
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

walking_data6_slideupans_offset_15:
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

walking_data6_slideupans_offset_16:
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

walking_data6_slidedownans_offset_0:
.dword	16777216
.dword	5
.dword	6
.dword	7
.dword	268435456
.dword	10
.dword	11
.dword	12
.dword	3037000498
.dword	14
.dword	15
.dword	17
.dword	8589934592
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_1:
.dword	33554432
.dword	5
.dword	6
.dword	7
.dword	536870912
.dword	10
.dword	11
.dword	12
.dword	3037000499
.dword	14
.dword	15
.dword	17
.dword	17179869184
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_2:
.dword	67108864
.dword	5
.dword	6
.dword	7
.dword	1073741824
.dword	10
.dword	11
.dword	12
.dword	3037000500
.dword	14
.dword	15
.dword	17
.dword	34359738368
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_3:
.dword	134217728
.dword	5
.dword	6
.dword	7
.dword	2147483648
.dword	10
.dword	11
.dword	12
.dword	4294967296
.dword	14
.dword	15
.dword	17
.dword	68719476736
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_4:
.dword	268435456
.dword	5
.dword	6
.dword	7
.dword	3037000498
.dword	10
.dword	11
.dword	12
.dword	8589934592
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_5:
.dword	536870912
.dword	5
.dword	6
.dword	7
.dword	3037000499
.dword	10
.dword	11
.dword	12
.dword	17179869184
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_6:
.dword	1073741824
.dword	5
.dword	6
.dword	7
.dword	3037000500
.dword	10
.dword	11
.dword	12
.dword	34359738368
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_7:
.dword	2147483648
.dword	5
.dword	6
.dword	7
.dword	4294967296
.dword	10
.dword	11
.dword	12
.dword	68719476736
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_8:
.dword	3037000498
.dword	5
.dword	6
.dword	7
.dword	8589934592
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_9:
.dword	3037000499
.dword	5
.dword	6
.dword	7
.dword	17179869184
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_10:
.dword	3037000500
.dword	5
.dword	6
.dword	7
.dword	34359738368
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_11:
.dword	4294967296
.dword	5
.dword	6
.dword	7
.dword	68719476736
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_12:
.dword	8589934592
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_13:
.dword	17179869184
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_14:
.dword	34359738368
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_15:
.dword	68719476736
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data6_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data7_slideupans_offset_0:
.dword	137438953472
.dword	5
.dword	6
.dword	7
.dword	2199023255552
.dword	10
.dword	11
.dword	12
.dword	35184372088832
.dword	14
.dword	15
.dword	17
.dword	562949953421312
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	1099511627776
.dword	10
.dword	11
.dword	12
.dword	17592186044416
.dword	14
.dword	15
.dword	17
.dword	281474976710656
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	549755813888
.dword	10
.dword	11
.dword	12
.dword	8796093022208
.dword	14
.dword	15
.dword	17
.dword	140737488355328
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	274877906944
.dword	10
.dword	11
.dword	12
.dword	4398046511104
.dword	14
.dword	15
.dword	17
.dword	70368744177664
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	137438953472
.dword	10
.dword	11
.dword	12
.dword	2199023255552
.dword	14
.dword	15
.dword	17
.dword	35184372088832
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	1099511627776
.dword	14
.dword	15
.dword	17
.dword	17592186044416
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	549755813888
.dword	14
.dword	15
.dword	17
.dword	8796093022208
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	274877906944
.dword	14
.dword	15
.dword	17
.dword	4398046511104
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	137438953472
.dword	14
.dword	15
.dword	17
.dword	2199023255552
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_9:
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
.dword	1099511627776
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_10:
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
.dword	549755813888
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_11:
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
.dword	274877906944
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_12:
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
.dword	137438953472
.dword	19
.dword	20
.dword	21

walking_data7_slideupans_offset_13:
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

walking_data7_slideupans_offset_14:
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

walking_data7_slideupans_offset_15:
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

walking_data7_slideupans_offset_16:
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

walking_data7_slidedownans_offset_0:
.dword	137438953472
.dword	5
.dword	6
.dword	7
.dword	2199023255552
.dword	10
.dword	11
.dword	12
.dword	35184372088832
.dword	14
.dword	15
.dword	17
.dword	562949953421312
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_1:
.dword	274877906944
.dword	5
.dword	6
.dword	7
.dword	4398046511104
.dword	10
.dword	11
.dword	12
.dword	70368744177664
.dword	14
.dword	15
.dword	17
.dword	1125899906842624
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_2:
.dword	549755813888
.dword	5
.dword	6
.dword	7
.dword	8796093022208
.dword	10
.dword	11
.dword	12
.dword	140737488355328
.dword	14
.dword	15
.dword	17
.dword	2251799813685248
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_3:
.dword	1099511627776
.dword	5
.dword	6
.dword	7
.dword	17592186044416
.dword	10
.dword	11
.dword	12
.dword	281474976710656
.dword	14
.dword	15
.dword	17
.dword	4503599627370496
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_4:
.dword	2199023255552
.dword	5
.dword	6
.dword	7
.dword	35184372088832
.dword	10
.dword	11
.dword	12
.dword	562949953421312
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_5:
.dword	4398046511104
.dword	5
.dword	6
.dword	7
.dword	70368744177664
.dword	10
.dword	11
.dword	12
.dword	1125899906842624
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_6:
.dword	8796093022208
.dword	5
.dword	6
.dword	7
.dword	140737488355328
.dword	10
.dword	11
.dword	12
.dword	2251799813685248
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_7:
.dword	17592186044416
.dword	5
.dword	6
.dword	7
.dword	281474976710656
.dword	10
.dword	11
.dword	12
.dword	4503599627370496
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_8:
.dword	35184372088832
.dword	5
.dword	6
.dword	7
.dword	562949953421312
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_9:
.dword	70368744177664
.dword	5
.dword	6
.dword	7
.dword	1125899906842624
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_10:
.dword	140737488355328
.dword	5
.dword	6
.dword	7
.dword	2251799813685248
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_11:
.dword	281474976710656
.dword	5
.dword	6
.dword	7
.dword	4503599627370496
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_12:
.dword	562949953421312
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_13:
.dword	1125899906842624
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_14:
.dword	2251799813685248
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_15:
.dword	4503599627370496
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data7_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
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

walking_data8_slideupans_offset_0:
.dword	9007199254740992
.dword	5
.dword	6
.dword	7
.dword	144115188075855872
.dword	10
.dword	11
.dword	12
.dword	2305843009213693952
.dword	14
.dword	15
.dword	17
.dword	4611686018427387904
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_1:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	72057594037927936
.dword	10
.dword	11
.dword	12
.dword	1152921504606846976
.dword	14
.dword	15
.dword	17
.dword	3689348814741910324
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_2:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	36028797018963968
.dword	10
.dword	11
.dword	12
.dword	576460752303423488
.dword	14
.dword	15
.dword	17
.dword	3689348814741910323
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_3:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	18014398509481984
.dword	10
.dword	11
.dword	12
.dword	288230376151711744
.dword	14
.dword	15
.dword	17
.dword	3689348814741910322
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_4:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9007199254740992
.dword	10
.dword	11
.dword	12
.dword	144115188075855872
.dword	14
.dword	15
.dword	17
.dword	2305843009213693952
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_5:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	72057594037927936
.dword	14
.dword	15
.dword	17
.dword	1152921504606846976
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_6:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	36028797018963968
.dword	14
.dword	15
.dword	17
.dword	576460752303423488
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_7:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	18014398509481984
.dword	14
.dword	15
.dword	17
.dword	288230376151711744
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_8:
.dword	3
.dword	5
.dword	6
.dword	7
.dword	9
.dword	10
.dword	11
.dword	12
.dword	9007199254740992
.dword	14
.dword	15
.dword	17
.dword	144115188075855872
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_9:
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
.dword	72057594037927936
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_10:
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
.dword	36028797018963968
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_11:
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
.dword	18014398509481984
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_12:
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
.dword	9007199254740992
.dword	19
.dword	20
.dword	21

walking_data8_slideupans_offset_13:
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

walking_data8_slideupans_offset_14:
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

walking_data8_slideupans_offset_15:
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

walking_data8_slideupans_offset_16:
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

walking_data8_slidedownans_offset_0:
.dword	9007199254740992
.dword	5
.dword	6
.dword	7
.dword	144115188075855872
.dword	10
.dword	11
.dword	12
.dword	2305843009213693952
.dword	14
.dword	15
.dword	17
.dword	4611686018427387904
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_1:
.dword	18014398509481984
.dword	5
.dword	6
.dword	7
.dword	288230376151711744
.dword	10
.dword	11
.dword	12
.dword	3689348814741910322
.dword	14
.dword	15
.dword	17
.dword	6148914691236517204
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_2:
.dword	36028797018963968
.dword	5
.dword	6
.dword	7
.dword	576460752303423488
.dword	10
.dword	11
.dword	12
.dword	3689348814741910323
.dword	14
.dword	15
.dword	17
.dword	6148914691236517205
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_3:
.dword	72057594037927936
.dword	5
.dword	6
.dword	7
.dword	1152921504606846976
.dword	10
.dword	11
.dword	12
.dword	3689348814741910324
.dword	14
.dword	15
.dword	17
.dword	6148914691236517206
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_4:
.dword	144115188075855872
.dword	5
.dword	6
.dword	7
.dword	2305843009213693952
.dword	10
.dword	11
.dword	12
.dword	4611686018427387904
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_5:
.dword	288230376151711744
.dword	5
.dword	6
.dword	7
.dword	3689348814741910322
.dword	10
.dword	11
.dword	12
.dword	6148914691236517204
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_6:
.dword	576460752303423488
.dword	5
.dword	6
.dword	7
.dword	3689348814741910323
.dword	10
.dword	11
.dword	12
.dword	6148914691236517205
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_7:
.dword	1152921504606846976
.dword	5
.dword	6
.dword	7
.dword	3689348814741910324
.dword	10
.dword	11
.dword	12
.dword	6148914691236517206
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_8:
.dword	2305843009213693952
.dword	5
.dword	6
.dword	7
.dword	4611686018427387904
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_9:
.dword	3689348814741910322
.dword	5
.dword	6
.dword	7
.dword	6148914691236517204
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_10:
.dword	3689348814741910323
.dword	5
.dword	6
.dword	7
.dword	6148914691236517205
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_11:
.dword	3689348814741910324
.dword	5
.dword	6
.dword	7
.dword	6148914691236517206
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_12:
.dword	4611686018427387904
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_13:
.dword	6148914691236517204
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_14:
.dword	6148914691236517205
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_15:
.dword	6148914691236517206
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21

walking_data8_slidedownans_offset_16:
.dword	0
.dword	5
.dword	6
.dword	7
.dword	0
.dword	10
.dword	11
.dword	12
.dword	0
.dword	14
.dword	15
.dword	17
.dword	0
.dword	19
.dword	20
.dword	21


.align 4
mask_data:
	.word 0x11111111
	.word 0x86569d27
	.word 0x429ede3d
	.word 0x20219a51
	.word 0x91a8d5fd
	.word 0xbd8f6c65
	.word 0x466250f
	.word 0xe31ffa64
	.word 0xc737ad3a
	.word 0xe54c8c1e
	.word 0x7ca660db
	.word 0x692dadf
	.word 0x2c63c847
	.word 0xfbba7ae7
	.word 0x195b62bf
	.word 0xf600a3d1
	.word 0x34b80fd4
	.word 0x3aef5ff4
	.word 0x34267ad9
	.word 0x681454c0
	.word 0x67dd3492
	.word 0xb02d663e
	.word 0xb2d3f1c5
	.word 0x824d39ae
 

.align 4
rd_origin_data:
    .word 0x66da64aa
	.word 0xf682191a
	.word 0xfd2ce83f
	.word 0x67f9ab29
	.word 0x112e3ffd
	.word 0xc4d9b1e2
	.word 0x9ed4e137
	.word 0xb49ae54e
	.word 0xd075dd45
	.word 0x74daa72e
	.word 0x48324db4
	.word 0x167d97b5
	.word 0x8b536536
	.word 0xe85755eb
	.word 0x1cd86c0a
	.word 0x4c811ecf
	.word 0x8085dbf1
	.word 0x547cdce3
	.word 0x65d27882
	.word 0xb72d2ec4
	.word 0x954ee841
	.word 0xb36fd636
	.word 0xbc4988da
	.word 0xaea05c04
	.word 0xce7483a6
	.word 0xea0309d7
	.word 0x62498466
	.word 0x1cd29ac4
	.word 0x97f38b62
	.word 0x690bcf85
	.word 0x97f38b62
	.word 0x9bd83b8b
    
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
    

#define TEST_VPOPC_OP( testnum, inst, result, vm_addr ) \
    TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
        VSET_VSEW_4AVL \
        la  x2, vm_addr; \
        vle32.v v14, (x2); \
        la x7, mask_data; \
    vle32.v v0, (x7); \
            inst x14, v14, v0.t;  \
    )
#define TEST_VPOPC_OP_rs2_1( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v1, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v1, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_2( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v2, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v2, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_4( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v4, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v4, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_5( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v5, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v5, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_6( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v6, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v6, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_8( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v8, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v8, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_9( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v9, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v9, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_10( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v10, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v10, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_11( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v11, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v11, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_12( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v12, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v12, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_13( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v13, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v13, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_14( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v14, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v14, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_15( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v15, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v15, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_17( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v17, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v17, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_18( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v18, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v18, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_19( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v19, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v19, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_20( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v20, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v20, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_21( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v21, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v21, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_22( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v22, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v22, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_23( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v23, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v23, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_24( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v24, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v24, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_25( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v25, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v25, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_26( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v26, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v26, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_27( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v27, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v27, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_28( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v28, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v28, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_29( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v29, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v29, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_30( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v30, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v30, v0.t;  \
            )
#define TEST_VPOPC_OP_rs2_31( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v31, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v31, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_1( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x1, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x1, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_2( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x2, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x2, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_4( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x4, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x4, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_5( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x5, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x5, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_6( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x6, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x6, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_8( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x8, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x8, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_9( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x9, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x9, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_10( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x10, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x10, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_11( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x11, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x11, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_12( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x12, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x12, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_13( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x13, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x13, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_14( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x14, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x14, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_15( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x15, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x15, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_17( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x17, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x17, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_18( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x18, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x18, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_19( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x19, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x19, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_20( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x20, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x20, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_21( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x21, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x21, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_22( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x22, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x22, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_23( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x23, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x23, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_24( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x24, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x24, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_25( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x25, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x25, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_26( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x26, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x26, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_27( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x27, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x27, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_28( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x28, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x28, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_29( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x29, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x29, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_30( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x30, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x30, v16, v0.t;  \
            )
#define TEST_VPOPC_OP_rd_31( testnum, inst, result, vm_addr ) \
            TEST_CASE_SCALAR_SETVSEW_AFTER(testnum, x31, result, \
                VSET_VSEW_4AVL \
                la  x2, vm_addr; \
                vle32.v v16, (x2); \
                la x7, mask_data; \
    vle32.v v0, (x7); \
                    inst x31, v16, v0.t;  \
            )
#----------------------------------------------------------------------------- 
    # vpopc.S
    #-----------------------------------------------------------------------------
    #
    # Test vpopc instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vpopc)
    
    RVTEST_RV64UV
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vpopc tests
  #-------------------------------------------------------------
TEST_VPOPC_OP( 1, vpopc.m, 0x0000000000000001, walking_dat_vpopc0 );
TEST_VPOPC_OP( 2, vpopc.m, 0x0000000000000001, walking_dat_vpopc1 );
TEST_VPOPC_OP( 3, vpopc.m, 0x0000000000000001, walking_dat_vpopc2 );
TEST_VPOPC_OP( 4, vpopc.m, 0x0000000000000001, walking_dat_vpopc3 );
TEST_VPOPC_OP( 5, vpopc.m, 0x0000000000000001, walking_dat_vpopc4 );
TEST_VPOPC_OP( 6, vpopc.m, 0x0000000000000001, walking_dat_vpopc5 );
TEST_VPOPC_OP( 7, vpopc.m, 0x0000000000000001, walking_dat_vpopc6 );
TEST_VPOPC_OP( 8, vpopc.m, 0x0000000000000001, walking_dat_vpopc7 );
TEST_VPOPC_OP( 9, vpopc.m, 0x0000000000000001, walking_dat_vpopc8 );
TEST_VPOPC_OP( 10, vpopc.m, 0x0000000000000001, walking_dat_vpopc9 );
TEST_VPOPC_OP( 11, vpopc.m, 0x0000000000000001, walking_dat_vpopc10 );
TEST_VPOPC_OP( 12, vpopc.m, 0x0000000000000001, walking_dat_vpopc11 );
TEST_VPOPC_OP( 13, vpopc.m, 0x0000000000000001, walking_dat_vpopc12 );
TEST_VPOPC_OP( 14, vpopc.m, 0x0000000000000001, walking_dat_vpopc13 );
TEST_VPOPC_OP( 15, vpopc.m, 0x0000000000000001, walking_dat_vpopc14 );
TEST_VPOPC_OP( 16, vpopc.m, 0x0000000000000001, walking_dat_vpopc15 );
TEST_VPOPC_OP( 17, vpopc.m, 0x0000000000000000, walking_dat_vpopc16 );
TEST_VPOPC_OP( 18, vpopc.m, 0x000000000000000f, walking_dat_vpopc17 );
TEST_VPOPC_OP( 19, vpopc.m, 0x000000000000000f, walking_dat_vpopc18 );
TEST_VPOPC_OP( 20, vpopc.m, 0x000000000000000f, walking_dat_vpopc19 );
TEST_VPOPC_OP( 21, vpopc.m, 0x000000000000000f, walking_dat_vpopc20 );
TEST_VPOPC_OP( 22, vpopc.m, 0x000000000000000f, walking_dat_vpopc21 );
TEST_VPOPC_OP( 23, vpopc.m, 0x000000000000000f, walking_dat_vpopc22 );
TEST_VPOPC_OP( 24, vpopc.m, 0x000000000000000f, walking_dat_vpopc23 );
TEST_VPOPC_OP( 25, vpopc.m, 0x000000000000000f, walking_dat_vpopc24 );
TEST_VPOPC_OP( 26, vpopc.m, 0x000000000000000f, walking_dat_vpopc25 );
TEST_VPOPC_OP( 27, vpopc.m, 0x000000000000000f, walking_dat_vpopc26 );
TEST_VPOPC_OP( 28, vpopc.m, 0x000000000000000f, walking_dat_vpopc27 );
TEST_VPOPC_OP( 29, vpopc.m, 0x000000000000000f, walking_dat_vpopc28 );
TEST_VPOPC_OP( 30, vpopc.m, 0x000000000000000f, walking_dat_vpopc29 );
TEST_VPOPC_OP( 31, vpopc.m, 0x000000000000000f, walking_dat_vpopc30 );
TEST_VPOPC_OP( 32, vpopc.m, 0x000000000000000f, walking_dat_vpopc31 );
TEST_VPOPC_OP( 33, vpopc.m, 0x000000000000000f, walking_dat_vpopc32 );
TEST_VPOPC_OP( 34, vpopc.m, 0x0000000000000010, walking_dat_vpopc33 );
  #-------------------------------------------------------------
  # vpopc Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_VPOPC_OP_rd_1( 35, vpopc.m, 0x0000000000000000, walking_dat_vpopc1 );
TEST_VPOPC_OP_rd_2( 36, vpopc.m, 0x0000000000000000, walking_dat_vpopc2 );
TEST_VPOPC_OP_rd_4( 37, vpopc.m, 0x0000000000000000, walking_dat_vpopc4 );
TEST_VPOPC_OP_rd_5( 38, vpopc.m, 0x0000000000000000, walking_dat_vpopc5 );
TEST_VPOPC_OP_rd_6( 39, vpopc.m, 0x0000000000000000, walking_dat_vpopc6 );
TEST_VPOPC_OP_rd_8( 40, vpopc.m, 0x0000000000000000, walking_dat_vpopc8 );
TEST_VPOPC_OP_rd_9( 41, vpopc.m, 0x0000000000000000, walking_dat_vpopc9 );
TEST_VPOPC_OP_rd_10( 42, vpopc.m, 0x0000000000000000, walking_dat_vpopc10 );
TEST_VPOPC_OP_rd_11( 43, vpopc.m, 0x0000000000000001, walking_dat_vpopc11 );
TEST_VPOPC_OP_rd_12( 44, vpopc.m, 0x0000000000000000, walking_dat_vpopc12 );
TEST_VPOPC_OP_rd_13( 45, vpopc.m, 0x0000000000000000, walking_dat_vpopc13 );
TEST_VPOPC_OP_rd_14( 46, vpopc.m, 0x0000000000000000, walking_dat_vpopc14 );
TEST_VPOPC_OP_rd_15( 47, vpopc.m, 0x0000000000000001, walking_dat_vpopc15 );
TEST_VPOPC_OP_rd_17( 48, vpopc.m, 0x0000000000000004, walking_dat_vpopc17 );
TEST_VPOPC_OP_rd_18( 49, vpopc.m, 0x0000000000000004, walking_dat_vpopc18 );
TEST_VPOPC_OP_rd_19( 50, vpopc.m, 0x0000000000000004, walking_dat_vpopc19 );
TEST_VPOPC_OP_rd_20( 51, vpopc.m, 0x0000000000000003, walking_dat_vpopc20 );
TEST_VPOPC_OP_rd_21( 52, vpopc.m, 0x0000000000000004, walking_dat_vpopc21 );
TEST_VPOPC_OP_rd_22( 53, vpopc.m, 0x0000000000000004, walking_dat_vpopc22 );
TEST_VPOPC_OP_rd_23( 54, vpopc.m, 0x0000000000000004, walking_dat_vpopc23 );
TEST_VPOPC_OP_rd_24( 55, vpopc.m, 0x0000000000000003, walking_dat_vpopc24 );
TEST_VPOPC_OP_rd_25( 56, vpopc.m, 0x0000000000000004, walking_dat_vpopc25 );
TEST_VPOPC_OP_rd_26( 57, vpopc.m, 0x0000000000000004, walking_dat_vpopc26 );
TEST_VPOPC_OP_rd_27( 58, vpopc.m, 0x0000000000000004, walking_dat_vpopc27 );
TEST_VPOPC_OP_rd_28( 59, vpopc.m, 0x0000000000000003, walking_dat_vpopc28 );
TEST_VPOPC_OP_rd_29( 60, vpopc.m, 0x0000000000000004, walking_dat_vpopc29 );
TEST_VPOPC_OP_rd_30( 61, vpopc.m, 0x0000000000000004, walking_dat_vpopc30 );
TEST_VPOPC_OP_rs2_1( 62, vpopc.m, 0x0000000000000000, walking_dat_vpopc1 );
TEST_VPOPC_OP_rs2_2( 63, vpopc.m, 0x0000000000000000, walking_dat_vpopc2 );
TEST_VPOPC_OP_rs2_4( 64, vpopc.m, 0x0000000000000000, walking_dat_vpopc4 );
TEST_VPOPC_OP_rs2_5( 65, vpopc.m, 0x0000000000000000, walking_dat_vpopc5 );
TEST_VPOPC_OP_rs2_6( 66, vpopc.m, 0x0000000000000000, walking_dat_vpopc6 );
TEST_VPOPC_OP_rs2_8( 67, vpopc.m, 0x0000000000000000, walking_dat_vpopc8 );
TEST_VPOPC_OP_rs2_9( 68, vpopc.m, 0x0000000000000000, walking_dat_vpopc9 );
TEST_VPOPC_OP_rs2_10( 69, vpopc.m, 0x0000000000000000, walking_dat_vpopc10 );
TEST_VPOPC_OP_rs2_11( 70, vpopc.m, 0x0000000000000001, walking_dat_vpopc11 );
TEST_VPOPC_OP_rs2_12( 71, vpopc.m, 0x0000000000000000, walking_dat_vpopc12 );
TEST_VPOPC_OP_rs2_13( 72, vpopc.m, 0x0000000000000000, walking_dat_vpopc13 );
TEST_VPOPC_OP_rs2_14( 73, vpopc.m, 0x0000000000000000, walking_dat_vpopc14 );
TEST_VPOPC_OP_rs2_15( 74, vpopc.m, 0x0000000000000001, walking_dat_vpopc15 );
TEST_VPOPC_OP_rs2_17( 75, vpopc.m, 0x0000000000000004, walking_dat_vpopc17 );
TEST_VPOPC_OP_rs2_18( 76, vpopc.m, 0x0000000000000004, walking_dat_vpopc18 );
TEST_VPOPC_OP_rs2_19( 77, vpopc.m, 0x0000000000000004, walking_dat_vpopc19 );
TEST_VPOPC_OP_rs2_20( 78, vpopc.m, 0x0000000000000003, walking_dat_vpopc20 );
TEST_VPOPC_OP_rs2_21( 79, vpopc.m, 0x0000000000000004, walking_dat_vpopc21 );
TEST_VPOPC_OP_rs2_22( 80, vpopc.m, 0x0000000000000004, walking_dat_vpopc22 );
TEST_VPOPC_OP_rs2_23( 81, vpopc.m, 0x0000000000000004, walking_dat_vpopc23 );
TEST_VPOPC_OP_rs2_24( 82, vpopc.m, 0x0000000000000003, walking_dat_vpopc24 );
TEST_VPOPC_OP_rs2_25( 83, vpopc.m, 0x0000000000000004, walking_dat_vpopc25 );
TEST_VPOPC_OP_rs2_26( 84, vpopc.m, 0x0000000000000004, walking_dat_vpopc26 );
TEST_VPOPC_OP_rs2_27( 85, vpopc.m, 0x0000000000000004, walking_dat_vpopc27 );
TEST_VPOPC_OP_rs2_28( 86, vpopc.m, 0x0000000000000003, walking_dat_vpopc28 );
TEST_VPOPC_OP_rs2_29( 87, vpopc.m, 0x0000000000000004, walking_dat_vpopc29 );
TEST_VPOPC_OP_rs2_30( 88, vpopc.m, 0x0000000000000004, walking_dat_vpopc30 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
walking_dat_vpopc0:
.dword	0b1000000000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc1:
.dword	0b0100000000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc2:
.dword	0b0010000000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc3:
.dword	0b0001000000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc4:
.dword	0b0000100000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc5:
.dword	0b0000010000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc6:
.dword	0b0000001000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc7:
.dword	0b0000000100000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc8:
.dword	0b0000000010000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc9:
.dword	0b0000000001000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc10:
.dword	0b0000000000100000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc11:
.dword	0b0000000000010000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc12:
.dword	0b0000000000001000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc13:
.dword	0b0000000000000100
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc14:
.dword	0b0000000000000010
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc15:
.dword	0b0000000000000001
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc16:
.dword	0b0000000000000000
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc17:
.dword	0b0111111111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc18:
.dword	0b1011111111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc19:
.dword	0b1101111111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc20:
.dword	0b1110111111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc21:
.dword	0b1111011111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc22:
.dword	0b1111101111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc23:
.dword	0b1111110111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc24:
.dword	0b1111111011111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc25:
.dword	0b1111111101111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc26:
.dword	0b1111111110111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc27:
.dword	0b1111111111011111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc28:
.dword	0b1111111111101111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc29:
.dword	0b1111111111110111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc30:
.dword	0b1111111111111011
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc31:
.dword	0b1111111111111101
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc32:
.dword	0b1111111111111110
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
walking_dat_vpopc33:
.dword	0b1111111111111111
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0
.dword	0x0

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
    

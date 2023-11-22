#----------------------------------------------------------------------------- 
    # vfmerge.S
    #-----------------------------------------------------------------------------
    #
    # Test vfmerge instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vfmerge)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
#undef TEST_FP_VF_OP_AFTER_VMSEQ 
#define TEST_FP_VF_OP_AFTER_VMSEQ( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
    TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
        VSET_VSEW_4AVL \
        li x7, MASK_VSEW(vmseqop1); \
        vmv.v.x v8, x7; \
        vmseq.vi v0, v8, vmseqop2; \
        la x7, val1; \
        vle64.v v8, (x7); \
        la x7, val2; \
        fld f1, (x7); \
        la x7, val2; \
        vle64.v v24, (x7); \
        vfmerge.vfm v24, v8, f1, v0;  \
    )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_1( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_2( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f2, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f2, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_3( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f3, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f3, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_4( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f4, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f4, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_5( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f5, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f5, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_6( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f6, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f6, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_7( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f7, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f7, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_8( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f8, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f8, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_9( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f9, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f9, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_10( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f10, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f10, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_11( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f11, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f11, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_12( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f12, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f12, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_13( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f13, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f13, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_14( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f14, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f14, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_15( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f15, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f15, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_16( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f16, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f16, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_17( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f17, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f17, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_18( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f18, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f18, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_19( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f19, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f19, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_20( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f20, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f20, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_21( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f21, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f21, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_22( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f22, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f22, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_23( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f23, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f23, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_24( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f24, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f24, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_25( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f25, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f25, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_26( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f26, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f26, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_27( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f27, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f27, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_28( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f28, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f28, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_29( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f29, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f29, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_30( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f30, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f30, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rs1_31( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,     \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f31, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f31, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_1( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v1, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v1, (x7); \
                vfmerge.vfm v1, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_2( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v2, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v2, (x7); \
                vfmerge.vfm v2, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_3( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v3, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v3, (x7); \
                vfmerge.vfm v3, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_4( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v4, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v4, (x7); \
                vfmerge.vfm v4, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_5( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v5, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v5, (x7); \
                vfmerge.vfm v5, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_6( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v6, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v6, (x7); \
                vfmerge.vfm v6, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_7( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v7, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v7, (x7); \
                vfmerge.vfm v7, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_8( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v8, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                vfmerge.vfm v8, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_9( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v9, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v9, (x7); \
                vfmerge.vfm v9, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_10( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v10, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v10, (x7); \
                vfmerge.vfm v10, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_11( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v11, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v11, (x7); \
                vfmerge.vfm v11, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_12( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v12, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v12, (x7); \
                vfmerge.vfm v12, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_13( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v13, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v13, (x7); \
                vfmerge.vfm v13, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_14( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v14, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v14, (x7); \
                vfmerge.vfm v14, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_15( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v15, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v15, (x7); \
                vfmerge.vfm v15, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_16( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v16, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                vfmerge.vfm v16, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_17( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v17, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v17, (x7); \
                vfmerge.vfm v17, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_18( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v18, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v18, (x7); \
                vfmerge.vfm v18, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_19( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v19, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v19, (x7); \
                vfmerge.vfm v19, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_20( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v20, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v20, (x7); \
                vfmerge.vfm v20, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_21( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v21, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v21, (x7); \
                vfmerge.vfm v21, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_22( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v22, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v22, (x7); \
                vfmerge.vfm v22, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_23( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v23, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v23, (x7); \
                vfmerge.vfm v23, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_24( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v24, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v24, (x7); \
                vfmerge.vfm v24, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_25( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v25, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v25, (x7); \
                vfmerge.vfm v25, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_26( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v26, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v26, (x7); \
                vfmerge.vfm v26, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_27( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v27, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v27, (x7); \
                vfmerge.vfm v27, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_28( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v28, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v28, (x7); \
                vfmerge.vfm v28, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_29( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v29, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v29, (x7); \
                vfmerge.vfm v29, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_30( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v30, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v30, (x7); \
                vfmerge.vfm v30, v8, f1, v0;  \
            )
#define TEST_FP_VF_OP_AFTER_VMSEQ_rd_31( testnum, flags, result, val1, val2, vmseqop1, vmseqop2 ) \
            TEST_CASE_LOOP_FP( testnum, v31, flags, result, v8,   \
                VSET_VSEW_4AVL \
                li x7, MASK_VSEW(vmseqop1); \
                vmv.v.x v8, x7; \
                vmseq.vi v0, v8, vmseqop2; \
                la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                fld f1, (x7); \
                la x7, val2; \
                vle64.v v31, (x7); \
                vfmerge.vfm v31, v8, f1, v0;  \
            )
  #-------------------------------------------------------------
  # vfmerge.vfm Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
TEST_FP_VF_OP_AFTER_VMSEQ( 1,        0x0000000000000000,        rd_data_vf+0, rs2_data+0, rs1_data+0, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 2,        0x0000000000000000,        rd_data_vf+64, rs2_data+64, rs1_data+64, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 3,        0x0000000000000000,        rd_data_vf+128, rs2_data+128, rs1_data+128, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 4,        0x0000000000000000,        rd_data_vf+192, rs2_data+192, rs1_data+192, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 5,        0x0000000000000000,        rd_data_vf+256, rs2_data+256, rs1_data+256, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 6,        0x0000000000000000,        rd_data_vf+320, rs2_data+320, rs1_data+320, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 7,        0x0000000000000000,        rd_data_vf+384, rs2_data+384, rs1_data+384, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 8,        0x0000000000000000,        rd_data_vf+448, rs2_data+448, rs1_data+448, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 9,        0x0000000000000000,        rd_data_vf+512, rs2_data+512, rs1_data+512, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 10,        0x0000000000000000,        rd_data_vf+576, rs2_data+576, rs1_data+576, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 11,        0x0000000000000000,        rd_data_vf+640, rs2_data+640, rs1_data+640, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 12,        0x0000000000000000,        rd_data_vf+704, rs2_data+704, rs1_data+704, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 13,        0x0000000000000000,        rd_data_vf+768, rs2_data+768, rs1_data+768, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 14,        0x0000000000000000,        rd_data_vf+832, rs2_data+832, rs1_data+832, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 15,        0x0000000000000000,        rd_data_vf+896, rs2_data+896, rs1_data+896, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 16,        0x0000000000000000,        rd_data_vf+960, rs2_data+960, rs1_data+960, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 17,        0x0000000000000000,        rd_data_vf+1024, rs2_data+1024, rs1_data+1024, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 18,        0x0000000000000000,        rd_data_vf+1088, rs2_data+1088, rs1_data+1088, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 19,        0x0000000000000000,        rd_data_vf+1152, rs2_data+1152, rs1_data+1152, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 20,        0x0000000000000000,        rd_data_vf+1216, rs2_data+1216, rs1_data+1216, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 21,        0x0000000000000000,        rd_data_vf+1280, rs2_data+1280, rs1_data+1280, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 22,        0x0000000000000000,        rd_data_vf+1344, rs2_data+1344, rs1_data+1344, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 23,        0x0000000000000000,        rd_data_vf+1408, rs2_data+1408, rs1_data+1408, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 24,        0x0000000000000000,        rd_data_vf+1472, rs2_data+1472, rs1_data+1472, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 25,        0x0000000000000000,        rd_data_vf+1536, rs2_data+1536, rs1_data+1536, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 26,        0x0000000000000000,        rd_data_vf+1600, rs2_data+1600, rs1_data+1600, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 27,        0x0000000000000000,        rd_data_vf+1664, rs2_data+1664, rs1_data+1664, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 28,        0x0000000000000000,        rd_data_vf+1728, rs2_data+1728, rs1_data+1728, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 29,        0x0000000000000000,        rd_data_vf+1792, rs2_data+1792, rs1_data+1792, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 30,        0x0000000000000000,        rd_data_vf+1856, rs2_data+1856, rs1_data+1856, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 31,        0x0000000000000000,        rd_data_vf+1920, rs2_data+1920, rs1_data+1920, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 32,        0x0000000000000000,        rd_data_vf+1984, rs2_data+1984, rs1_data+1984, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 33,        0x0000000000000000,        rd_data_vf+2048, rs2_data+2048, rs1_data+2048, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 34,        0x0000000000000000,        rd_data_vf+2112, rs2_data+2112, rs1_data+2112, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 35,        0x0000000000000000,        rd_data_vf+2176, rs2_data+2176, rs1_data+2176, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 36,        0x0000000000000000,        rd_data_vf+2240, rs2_data+2240, rs1_data+2240, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 37,        0x0000000000000000,        rd_data_vf+2304, rs2_data+2304, rs1_data+2304, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 38,        0x0000000000000000,        rd_data_vf+2368, rs2_data+2368, rs1_data+2368, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 39,        0x0000000000000000,        rd_data_vf+2432, rs2_data+2432, rs1_data+2432, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 40,        0x0000000000000000,        rd_data_vf+2496, rs2_data+2496, rs1_data+2496, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 41,        0x0000000000000000,        rd_data_vf+2560, rs2_data+2560, rs1_data+2560, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 42,        0x0000000000000000,        rd_data_vf+2624, rs2_data+2624, rs1_data+2624, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 43,        0x0000000000000000,        rd_data_vf+2688, rs2_data+2688, rs1_data+2688, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 44,        0x0000000000000000,        rd_data_vf+2752, rs2_data+2752, rs1_data+2752, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 45,        0x0000000000000000,        rd_data_vf+2816, rs2_data+2816, rs1_data+2816, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 46,        0x0000000000000000,        rd_data_vf+2880, rs2_data+2880, rs1_data+2880, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 47,        0x0000000000000000,        rd_data_vf+2944, rs2_data+2944, rs1_data+2944, 0xe, 1);
TEST_FP_VF_OP_AFTER_VMSEQ( 48,        0x0000000000000000,        rd_data_vf+3008, rs2_data+3008, rs1_data+3008, 0xe, 1);
  #-------------------------------------------------------------
  # vfmerge.vfm Tests (different register)
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_1( 49, 0x0000000000000000, rd_data_vf+0, rs2_data+0, rs1_data+0, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_1( 50, 0x0000000000000000, rd_data_vf+0, rs2_data+0, rs1_data+0, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_2( 51, 0x0000000000000000, rd_data_vf+64, rs2_data+64, rs1_data+64, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_2( 52, 0x0000000000000000, rd_data_vf+64, rs2_data+64, rs1_data+64, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_3( 53, 0x0000000000000000, rd_data_vf+128, rs2_data+128, rs1_data+128, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_3( 54, 0x0000000000000000, rd_data_vf+128, rs2_data+128, rs1_data+128, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_4( 55, 0x0000000000000000, rd_data_vf+192, rs2_data+192, rs1_data+192, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_4( 56, 0x0000000000000000, rd_data_vf+192, rs2_data+192, rs1_data+192, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_5( 57, 0x0000000000000000, rd_data_vf+256, rs2_data+256, rs1_data+256, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_5( 58, 0x0000000000000000, rd_data_vf+256, rs2_data+256, rs1_data+256, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_6( 59, 0x0000000000000000, rd_data_vf+320, rs2_data+320, rs1_data+320, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_6( 60, 0x0000000000000000, rd_data_vf+320, rs2_data+320, rs1_data+320, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_7( 61, 0x0000000000000000, rd_data_vf+384, rs2_data+384, rs1_data+384, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_7( 62, 0x0000000000000000, rd_data_vf+384, rs2_data+384, rs1_data+384, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_9( 63, 0x0000000000000000, rd_data_vf+512, rs2_data+512, rs1_data+512, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_9( 64, 0x0000000000000000, rd_data_vf+512, rs2_data+512, rs1_data+512, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_10( 65, 0x0000000000000000, rd_data_vf+576, rs2_data+576, rs1_data+576, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_10( 66, 0x0000000000000000, rd_data_vf+576, rs2_data+576, rs1_data+576, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_11( 67, 0x0000000000000000, rd_data_vf+640, rs2_data+640, rs1_data+640, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_11( 68, 0x0000000000000000, rd_data_vf+640, rs2_data+640, rs1_data+640, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_12( 69, 0x0000000000000000, rd_data_vf+704, rs2_data+704, rs1_data+704, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_12( 70, 0x0000000000000000, rd_data_vf+704, rs2_data+704, rs1_data+704, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_13( 71, 0x0000000000000000, rd_data_vf+768, rs2_data+768, rs1_data+768, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_13( 72, 0x0000000000000000, rd_data_vf+768, rs2_data+768, rs1_data+768, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_14( 73, 0x0000000000000000, rd_data_vf+832, rs2_data+832, rs1_data+832, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_14( 74, 0x0000000000000000, rd_data_vf+832, rs2_data+832, rs1_data+832, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_15( 75, 0x0000000000000000, rd_data_vf+896, rs2_data+896, rs1_data+896, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_15( 76, 0x0000000000000000, rd_data_vf+896, rs2_data+896, rs1_data+896, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_17( 77, 0x0000000000000000, rd_data_vf+1024, rs2_data+1024, rs1_data+1024, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_17( 78, 0x0000000000000000, rd_data_vf+1024, rs2_data+1024, rs1_data+1024, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_18( 79, 0x0000000000000000, rd_data_vf+1088, rs2_data+1088, rs1_data+1088, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_18( 80, 0x0000000000000000, rd_data_vf+1088, rs2_data+1088, rs1_data+1088, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_19( 81, 0x0000000000000000, rd_data_vf+1152, rs2_data+1152, rs1_data+1152, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_19( 82, 0x0000000000000000, rd_data_vf+1152, rs2_data+1152, rs1_data+1152, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_20( 83, 0x0000000000000000, rd_data_vf+1216, rs2_data+1216, rs1_data+1216, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_20( 84, 0x0000000000000000, rd_data_vf+1216, rs2_data+1216, rs1_data+1216, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_21( 85, 0x0000000000000000, rd_data_vf+1280, rs2_data+1280, rs1_data+1280, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_21( 86, 0x0000000000000000, rd_data_vf+1280, rs2_data+1280, rs1_data+1280, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_22( 87, 0x0000000000000000, rd_data_vf+1344, rs2_data+1344, rs1_data+1344, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_22( 88, 0x0000000000000000, rd_data_vf+1344, rs2_data+1344, rs1_data+1344, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_23( 89, 0x0000000000000000, rd_data_vf+1408, rs2_data+1408, rs1_data+1408, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_23( 90, 0x0000000000000000, rd_data_vf+1408, rs2_data+1408, rs1_data+1408, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_25( 91, 0x0000000000000000, rd_data_vf+1536, rs2_data+1536, rs1_data+1536, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_25( 92, 0x0000000000000000, rd_data_vf+1536, rs2_data+1536, rs1_data+1536, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_26( 93, 0x0000000000000000, rd_data_vf+1600, rs2_data+1600, rs1_data+1600, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_26( 94, 0x0000000000000000, rd_data_vf+1600, rs2_data+1600, rs1_data+1600, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_27( 95, 0x0000000000000000, rd_data_vf+1664, rs2_data+1664, rs1_data+1664, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_27( 96, 0x0000000000000000, rd_data_vf+1664, rs2_data+1664, rs1_data+1664, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_28( 97, 0x0000000000000000, rd_data_vf+1728, rs2_data+1728, rs1_data+1728, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_28( 98, 0x0000000000000000, rd_data_vf+1728, rs2_data+1728, rs1_data+1728, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_29( 99, 0x0000000000000000, rd_data_vf+1792, rs2_data+1792, rs1_data+1792, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_29( 100, 0x0000000000000000, rd_data_vf+1792, rs2_data+1792, rs1_data+1792, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_30( 101, 0x0000000000000000, rd_data_vf+1856, rs2_data+1856, rs1_data+1856, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_30( 102, 0x0000000000000000, rd_data_vf+1856, rs2_data+1856, rs1_data+1856, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_31( 103, 0x0000000000000000, rd_data_vf+1920, rs2_data+1920, rs1_data+1920, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_31( 104, 0x0000000000000000, rd_data_vf+1920, rs2_data+1920, rs1_data+1920, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rd_1( 105, 0x0000000000000000, rd_data_vf+1984, rs2_data+1984, rs1_data+1984, 0xe, 1);
  TEST_FP_VF_OP_AFTER_VMSEQ_rs1_1( 106, 0x0000000000000000, rd_data_vf+1984, rs2_data+1984, rs1_data+1984, 0xe, 1);
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
.align 8
rs1_data:
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0xBF80000000000000
.dword	0x287d8c15f97aadc9
.dword	0x44b8289eee0b08d4
.dword	0x32374a299b3ac7af
.dword	0xd18bd69c3d9ffea1
.dword	0xf2f31dae7be377b4
.dword	0xf9c63a355a3a8772
.dword	0xbde5879669cd8e4b
.dword	0xcdfc6fdabb706ded
.dword	0xbad2a80d351a6d23
.dword	0x2e12df04b2caacd1
.dword	0x4a200fb3148c5fe2
.dword	0x655e624ed7c37ed4
.dword	0x352badbc7cfe54db
.dword	0x6207b7935a22fba2
.dword	0x6a96cbf27b3a0572
.dword	0x4b65fd0a17bd3219
.dword	0x23df8a084bd80ea3
.dword	0x38067c5dfce0c534
.dword	0x50b384c812f63a4f
.dword	0xd708334b155cb31e
.dword	0x5110acded39aafec
.dword	0x4ec9780717ace8d5
.dword	0x1f738ac4f533d238
.dword	0xf61eda23a016dda0
.dword	0x0bab3447fb4e6cce
.dword	0x49b2fd00d0dc615d
.dword	0x6ec815a873d565c0
.dword	0xd369ea28f3ceadde
.dword	0xbecdf4b751bd2e47
.dword	0xbfd4a5a6a160eed7
.dword	0xc6270e3086c30969
.dword	0xd025bc3393035915
.dword	0x8862c0202789f9f7
.dword	0xaf748dcb2185d65f
.dword	0x39c3983a0aca4c12
.dword	0x7d60d873f0f436f0
.dword	0xc756fb6e9bdaa61a
.dword	0xe8813727ffcc96c6
.dword	0x8886824904e7f3f8
.dword	0xb8cff1c60f6c4556
.dword	0xd5485ef1cc713427
.dword	0x1cc81cbf71411edb
.dword	0xe385347f10a7b5ed
.dword	0x24c3474548f5fb3f
.dword	0xb6048afbec8d1642
.dword	0xfec9fafae2ad486a
.dword	0xf3add264ffc754bd
.dword	0x689da73dca199361
.dword	0xb48ea93363550db9
.dword	0xf1d8822a449e806e
.dword	0x7add0a7a31afc247
.dword	0x5149f4e187992503
.dword	0x9af729c3443ffe86
.dword	0x25d12d059e08f51b
.dword	0xd8a10962933e15bd
.dword	0x5d67baf8fe198daf
.dword	0x95b563a995fb5ba7
.dword	0x0b32b9372fe0bce9
.dword	0xeb337923a729e30f
.dword	0xe9f053fcc032b1d6
.dword	0x0c110ae733010d25
.dword	0x0cd18f0969a599b1
.dword	0x6d565e6b565b2ad1
.dword	0xd892bfcd7ba31f17
.dword	0x029d713335ad1fae
.dword	0x969db08e119eeecd
.dword	0x47070d7289cb99e7
.dword	0x128c793bf944f040
.dword	0x366744c816113f1b
.dword	0xf96029c769dd8c75
.dword	0x9c5e141a77a6ceab
.dword	0x73430efab67794c9
.dword	0xa4ee1fe7cd8bb7de
.dword	0x05185cdfe7c14986
.dword	0x059c0f7c28036c22
.dword	0x76c2ed076f96b993
.dword	0xdfbd9b8ac0d0381b
.dword	0x03df4a7f82c2a875
.dword	0x2e56d77270ffade7
.dword	0x71130ee0978174ac
.dword	0x243033c7baaedaa1
.dword	0xfdbf3d43027bf014
.dword	0xdb3c9eb36f5fcab5
.dword	0xa8de8618c219791a
.dword	0xa96a7e2de60004f0
.dword	0x01c76e77de85b197
.dword	0x35dcc7648b63b812
.dword	0x21114400c7c40593
.dword	0xb8ec9e24ef7ccb27
.dword	0xa55587f3dcede08b
.dword	0xb26002aa1c740295
.dword	0x57f573b19289946c
.dword	0xc60c7f7301d69015
.dword	0xf4b39b7e483fae55
.dword	0x41cedfb82bf16bc9
.dword	0xa17d9ea138fcfe1a
.dword	0x1de6fc9e2ea32f49
.dword	0x73d57af1656e0ec7
.dword	0xe43b887d3732bf98
.dword	0x9e382ec65643810b
.dword	0x6dd32d73e1801926
.dword	0xbebebd75835ccdc9
.dword	0xbd5c9ef131730499
.dword	0xd83f14c8bf8a2e1a
.dword	0xc8715c308da43ea6
.dword	0xab756d97d2740439
.dword	0x0f95997b18ff7989
.dword	0x086523549822ebd9
.dword	0x9786199c71ffae32
.dword	0xf8e9ea0f5ce6e606
.dword	0xee4af8d45560c83f
.dword	0x16db150c008ede0f
.dword	0x44fae17fc3a3f94f
.dword	0x4a121a27b290c0bc
.dword	0xac4034571caeec15
.dword	0x7045093f14d2fa9a
.dword	0xbd98cba38abc05fe
.dword	0xe3df0d85f8ef40df
.dword	0x9d21173e2d4717bd
.dword	0xc1884643063c00b9
.dword	0x90ec89cbde233beb
.dword	0xf18915693a6713df
.dword	0xf3d65eeaed55d53d
.dword	0xace7c6059b620bd7
.dword	0x6942fc94e9909bb3
.dword	0xd4d32cf62ea33ff8
.dword	0x2a6876bc4ea19485
.dword	0x62c4e0911702453b

.align 8
rs2_data:
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000FFFFFFFFFFFFF
.dword	0x800FFFFFFFFFFFFF
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7FEFFFFFFFFFFFFF
.dword	0xFFEFFFFFFFFFFFFF
.dword	0x3FF0000000000000
.dword	0xBF80000000000000
.dword	0x8c5fb19bc11df6bf
.dword	0x513c9cc3a6d05c60
.dword	0x6c1e50ea1c4c0904
.dword	0xbcce36a4ea2e073c
.dword	0xe93686ad573ac3ea
.dword	0xab23e40ff9b44f35
.dword	0x88345d514f0ed9b1
.dword	0xe398452da7a322ce
.dword	0xd9eace733df87393
.dword	0xc81593dad9a0d54e
.dword	0x1b809cf6332b2845
.dword	0x69d97d5e8bcff755
.dword	0x898622dcfff2d599
.dword	0x70f978be54ed7687
.dword	0x76b51fb5288a87c1
.dword	0xaca8aba5b6787f82
.dword	0x872ad316864f6302
.dword	0x7f55b187ec3d34a2
.dword	0xc9ba75a7a3204dd7
.dword	0x6ae296496e39c63e
.dword	0x693a26c4c15f26ff
.dword	0x96df12c2783db4a2
.dword	0x4c0d6288959ec61e
.dword	0xf7bdcda44267bf4b
.dword	0xb7704960b18a128a
.dword	0xc9eb305ad26d0ec9
.dword	0xc9ecc64ef8ccbcc4
.dword	0x10d37eb2301af9a5
.dword	0x6e1646940216d165
.dword	0x1637d7cc103f5daa
.dword	0x423b04bf9347445e
.dword	0x487a9e340ecf662f
.dword	0x3bd11c2a06c01b4a
.dword	0x42a9731f38a94368
.dword	0x4cc0a65525bf4b48
.dword	0xf95d58ef93c687a8
.dword	0x7ac8ef3fbe104ff0
.dword	0xfa1f01c3e96acc82
.dword	0x1f84c8b875692896
.dword	0x39510d7797590b51
.dword	0xc0dae30a0a277839
.dword	0xb3772df99dafebd3
.dword	0xdf0a6b16c24390b3
.dword	0x0eed32ac19bd6e20
.dword	0xa4516ecbe25b3735
.dword	0x0513613798e408f9
.dword	0x77c20ff03d74d279
.dword	0x63495ea1c2b94cc0
.dword	0xb0dde1fdc6d7d612
.dword	0x04e933f72952c76f
.dword	0xa016d951e41a8ae3
.dword	0xb022688fe3db5627
.dword	0x04f1569df0334d2b
.dword	0xf78fea873d54d8c9
.dword	0x48a6d6799ed158ae
.dword	0xd0d56957c1f989ec
.dword	0x507d42579f1b30c1
.dword	0xbec601e6ac77700b
.dword	0x5190cae6f85a8d23
.dword	0x2e800b8886570168
.dword	0x989ad11a146fa261
.dword	0x7728f4a1abc957e1
.dword	0x762d77aeca8aa81a
.dword	0x18c4c857050e7a94
.dword	0xe4683ee0be29f1e8
.dword	0xa618026503b9801e
.dword	0xd839aa2f24d575d6
.dword	0xc0a0733ac0bb11c6
.dword	0xdde5f8d6229c1737
.dword	0x05151e912e7aae4c
.dword	0xb463146f6d2a49d6
.dword	0xf7da8ace0e0305fe
.dword	0xab350651865a1ca5
.dword	0x64a57112602ffde4
.dword	0x27d5f04b71e61194
.dword	0xf175ddae40ef0ceb
.dword	0x28f9386871cc9153
.dword	0x5a8e15e18bf63141
.dword	0x17873cd77d5839f8
.dword	0x02221aee03035d74
.dword	0x0b6d73f969db55bb
.dword	0x82e3f55d6fbbcc8b
.dword	0xd93277512dd02ed3
.dword	0xc55060831648976a
.dword	0xdb4e496419d7ee82
.dword	0x5f03d45f6fd1691a
.dword	0x8d93c9b276b4bb61
.dword	0xa989cce975309325
.dword	0x00f99609771cf8d5
.dword	0x2da6c11b9ec12bb7
.dword	0xd087129a3f858e45
.dword	0xb8556e88bc783450
.dword	0x5a6c75cfe369b8fa
.dword	0x5ddfdf6e75b0a91e
.dword	0x06ecea8ee0bae841
.dword	0x88498de5aaf179c1
.dword	0x5abc5eac3031916e
.dword	0xa161a79678c0adae
.dword	0x097b9051bdb40772
.dword	0xfc766f0c976b653a
.dword	0x28b20ff760740be0
.dword	0x57df4467c61fb6dd
.dword	0x81e417514b3deeff
.dword	0x5974407dddc651a0
.dword	0x71cf238d90e9b6f5
.dword	0x15b65c6f606a80eb
.dword	0xd67891686486deb9
.dword	0xf3b44ac722626d16
.dword	0x52a44ef6bcfea4e9
.dword	0xe183fdb8df660210
.dword	0x42039f18e91b73ca
.dword	0xa6003940f4e05aa6
.dword	0x545fc4995e5d9392
.dword	0xd7fe8a88618dd57e
.dword	0x3cf73fd1210a504c
.dword	0x00a36dcbab729d65
.dword	0x4a78605ec8eb2a29
.dword	0xad3df02237202a35
.dword	0x8f9e6c24f1e1a7e4
.dword	0xe3bb750487e8962a
.dword	0xf06abb22fdabd911
.dword	0xcea4b7ea01d1083e
.dword	0x2af8c695b7ce6de6
.dword	0xac11211c7677137b
.dword	0x0598a363a1141ce6
.dword	0xfcf7ec2f3b95f492
.dword	0x10a995e3f56bbe06
.dword	0x818e70a2e93fb6de

.align 8
rd_data_vv:

rd_data_vf:
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x8c5fb19bc11df6bf
.dword	0x513c9cc3a6d05c60
.dword	0x6c1e50ea1c4c0904
.dword	0xbcce36a4ea2e073c
.dword	0xe93686ad573ac3ea
.dword	0xab23e40ff9b44f35
.dword	0x88345d514f0ed9b1
.dword	0xe398452da7a322ce
.dword	0xd9eace733df87393
.dword	0xc81593dad9a0d54e
.dword	0x1b809cf6332b2845
.dword	0x69d97d5e8bcff755
.dword	0x898622dcfff2d599
.dword	0x70f978be54ed7687
.dword	0x76b51fb5288a87c1
.dword	0xaca8aba5b6787f82
.dword	0x872ad316864f6302
.dword	0x7f55b187ec3d34a2
.dword	0xc9ba75a7a3204dd7
.dword	0x6ae296496e39c63e
.dword	0x693a26c4c15f26ff
.dword	0x96df12c2783db4a2
.dword	0x4c0d6288959ec61e
.dword	0xf7bdcda44267bf4b
.dword	0xb7704960b18a128a
.dword	0xc9eb305ad26d0ec9
.dword	0xc9ecc64ef8ccbcc4
.dword	0x10d37eb2301af9a5
.dword	0x6e1646940216d165
.dword	0x1637d7cc103f5daa
.dword	0x423b04bf9347445e
.dword	0x487a9e340ecf662f
.dword	0x3bd11c2a06c01b4a
.dword	0x42a9731f38a94368
.dword	0x4cc0a65525bf4b48
.dword	0xf95d58ef93c687a8
.dword	0x7ac8ef3fbe104ff0
.dword	0xfa1f01c3e96acc82
.dword	0x1f84c8b875692896
.dword	0x39510d7797590b51
.dword	0xc0dae30a0a277839
.dword	0xb3772df99dafebd3
.dword	0xdf0a6b16c24390b3
.dword	0x0eed32ac19bd6e20
.dword	0xa4516ecbe25b3735
.dword	0x0513613798e408f9
.dword	0x77c20ff03d74d279
.dword	0x63495ea1c2b94cc0
.dword	0xb0dde1fdc6d7d612
.dword	0x04e933f72952c76f
.dword	0xa016d951e41a8ae3
.dword	0xb022688fe3db5627
.dword	0x04f1569df0334d2b
.dword	0xf78fea873d54d8c9
.dword	0x48a6d6799ed158ae
.dword	0xd0d56957c1f989ec
.dword	0x507d42579f1b30c1
.dword	0xbec601e6ac77700b
.dword	0x5190cae6f85a8d23
.dword	0x2e800b8886570168
.dword	0x989ad11a146fa261
.dword	0x7728f4a1abc957e1
.dword	0x762d77aeca8aa81a
.dword	0x18c4c857050e7a94
.dword	0xe4683ee0be29f1e8
.dword	0xa618026503b9801e
.dword	0xd839aa2f24d575d6
.dword	0xc0a0733ac0bb11c6
.dword	0xdde5f8d6229c1737
.dword	0x05151e912e7aae4c
.dword	0xb463146f6d2a49d6
.dword	0xf7da8ace0e0305fe
.dword	0xab350651865a1ca5
.dword	0x64a57112602ffde4
.dword	0x27d5f04b71e61194
.dword	0xf175ddae40ef0ceb
.dword	0x28f9386871cc9153
.dword	0x5a8e15e18bf63141
.dword	0x17873cd77d5839f8
.dword	0x02221aee03035d74
.dword	0x0b6d73f969db55bb
.dword	0x82e3f55d6fbbcc8b
.dword	0xd93277512dd02ed3
.dword	0xc55060831648976a
.dword	0xdb4e496419d7ee82
.dword	0x5f03d45f6fd1691a
.dword	0x8d93c9b276b4bb61
.dword	0xa989cce975309325
.dword	0x00f99609771cf8d5
.dword	0x2da6c11b9ec12bb7
.dword	0xd087129a3f858e45
.dword	0xb8556e88bc783450
.dword	0x5a6c75cfe369b8fa
.dword	0x5ddfdf6e75b0a91e
.dword	0x06ecea8ee0bae841
.dword	0x88498de5aaf179c1
.dword	0x5abc5eac3031916e
.dword	0xa161a79678c0adae
.dword	0x097b9051bdb40772
.dword	0xfc766f0c976b653a
.dword	0x28b20ff760740be0
.dword	0x57df4467c61fb6dd
.dword	0x81e417514b3deeff
.dword	0x5974407dddc651a0
.dword	0x71cf238d90e9b6f5
.dword	0x15b65c6f606a80eb
.dword	0xd67891686486deb9
.dword	0xf3b44ac722626d16
.dword	0x52a44ef6bcfea4e9
.dword	0xe183fdb8df660210
.dword	0x42039f18e91b73ca
.dword	0xa6003940f4e05aa6
.dword	0x545fc4995e5d9392
.dword	0xd7fe8a88618dd57e
.dword	0x3cf73fd1210a504c
.dword	0x00a36dcbab729d65
.dword	0x4a78605ec8eb2a29
.dword	0xad3df02237202a35
.dword	0x8f9e6c24f1e1a7e4
.dword	0xe3bb750487e8962a
.dword	0xf06abb22fdabd911
.dword	0xcea4b7ea01d1083e
.dword	0x2af8c695b7ce6de6
.dword	0xac11211c7677137b
.dword	0x0598a363a1141ce6
.dword	0xfcf7ec2f3b95f492
.dword	0x10a995e3f56bbe06
.dword	0x818e70a2e93fb6de
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0000000000000000
.dword	0x8000000000000000
.dword	0x0000000000000001
.dword	0x8000000000000001
.dword	0x0000000000000002
.dword	0x8000000000000002
.dword	0x000fffffffffffff
.dword	0x800fffffffffffff
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000
.dword	0x0010000000000000
.dword	0x8010000000000000
.dword	0x0010000000000002
.dword	0x8010000000000002
.dword	0x7fefffffffffffff
.dword	0xffefffffffffffff
.dword	0x3ff0000000000000
.dword	0xbf80000000000000

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
    

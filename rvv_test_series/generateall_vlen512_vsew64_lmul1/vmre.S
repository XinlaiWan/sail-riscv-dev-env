#define TEST_VMRE1_OP( testnum, inst, result_base, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            li x1, 8; \
            vsetvli x31, x1, e64, m1, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) 
#define TEST_VMRE2_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 16; \
            vsetvli x31, x1, e64, m1, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \
        TEST_CASE_LOOP_CONTINUE( testnum, v17, x7, \
            li x1, 16; \
            vsetvli x31, x1, e64, m1, tu, mu; \
            la x7, result_base2; \
        )

#define TEST_VMRE4_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 32; \
            vsetvli x31, x1, e64, m1, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \
        TEST_CASE_LOOP_CONTINUE( testnum, v19, x7, \
            li x1, 32; \
            vsetvli x31, x1, e64, m1, tu, mu; \
            la x7, result_base2; \
        )

#define TEST_VMRE8_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 64; \
            vsetvli x31, x1, e64, m1, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \
        TEST_CASE_LOOP_CONTINUE( testnum, v23, x7, \
            li x1, 64; \
            vsetvli x31, x1, e64, m1, tu, mu; \
            la x7, result_base2; \
        )

#----------------------------------------------------------------------------- 
    # vmre.S
    #-----------------------------------------------------------------------------
    #
    # Test vmre instructions.
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
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmre)
    
    RVTEST_RV64UV(64,1)
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
  #-------------------------------------------------------------
  # vmre tests
  #-------------------------------------------------------------
TEST_VMRE1_OP( 2,  vmv1r.v, walking_data0, walking_data0);
TEST_VMRE2_OP( 3,  vmv2r.v, walking_data0, walking_data1, walking_data0 );
TEST_VMRE4_OP( 4,  vmv4r.v, walking_data0, walking_data3, walking_data0 );
TEST_VMRE8_OP( 5,  vmv8r.v, walking_data0, walking_data7, walking_data0 );
TEST_VMRE1_OP( 7,  vmv1r.v, walking_data1, walking_data1);
TEST_VMRE2_OP( 8,  vmv2r.v, walking_data1, walking_data2, walking_data1 );
TEST_VMRE4_OP( 9,  vmv4r.v, walking_data1, walking_data4, walking_data1 );
TEST_VMRE8_OP( 10,  vmv8r.v, walking_data1, walking_data8, walking_data1 );
TEST_VMRE1_OP( 12,  vmv1r.v, walking_data2, walking_data2);
TEST_VMRE2_OP( 13,  vmv2r.v, walking_data2, walking_data3, walking_data2 );
TEST_VMRE4_OP( 14,  vmv4r.v, walking_data2, walking_data5, walking_data2 );
TEST_VMRE8_OP( 15,  vmv8r.v, walking_data2, walking_data9, walking_data2 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    TEST_VV_OP_NOUSE(32766, vadd.vv, 2, 1, 1)
    TEST_PASSFAIL
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
walking_data0:
.dword	4256666755793376111
.dword	-1448582321003192213
.dword	1967209756949802345
.dword	-4017853567045750465
.dword	4574861456988570466
.dword	-5939260794863742865
.dword	-4857975094137918538
.dword	-6481046471157256673

walking_data1:
.dword	8786136406897946626
.dword	-7974765390197873415
.dword	-558104438500930271
.dword	-2538987046070594790
.dword	-1512443706130853454
.dword	-989756208267318519
.dword	4620123942854894590
.dword	1818493929329485080

walking_data2:
.dword	-2527991971770951008
.dword	6090498373971911068
.dword	-2604125893258529670
.dword	-2219576909479834057
.dword	2400346578124770835
.dword	6020648939530021981
.dword	-6459801346772803363
.dword	6876116348523939824

walking_data3:
.dword	-3751457308047742047
.dword	-3774295399013659672
.dword	-4109262745603817279
.dword	215735248938640478
.dword	-5184546729955432948
.dword	7852233031658666845
.dword	-8075722581796838236
.dword	-6397805613815576361

walking_data4:
.dword	-4555133585449831507
.dword	-4138272279293346635
.dword	-4112785142650249129
.dword	8581768447603890849
.dword	-3238863176565081711
.dword	4936147452618403321
.dword	4827003459982344451
.dword	6727974392354503111

walking_data5:
.dword	5850401726314734809
.dword	4377382058121450391
.dword	-5724045377969376134
.dword	-3036407460802085994
.dword	1376688182557459391
.dword	174263413133246871
.dword	-6520743581069651148
.dword	-1229664496933121924

walking_data6:
.dword	-8628620439976574631
.dword	-309320491777974704
.dword	5347356283246671219
.dword	4867904526443492210
.dword	-8499259544652843692
.dword	-5961125746920726849
.dword	5183321919047245361
.dword	6192324414804092719

walking_data7:
.dword	7354817082164463355
.dword	-3350952600724135676
.dword	-2003591019323882658
.dword	5167773718191698560
.dword	5693316381131637699
.dword	8097811624861677595
.dword	-2370602508765798743
.dword	-408711240060647684

walking_data8:
.dword	2955393151532005829
.dword	-355427889387797754
.dword	-211368763702067749
.dword	-6446030695302360198
.dword	5929935469412230289
.dword	-4909811469256021568
.dword	5660837572321103497
.dword	-2640050576545341915

walking_data9:
.dword	-8123076776986603908
.dword	3124992651912573460
.dword	-926574663654722393
.dword	4098079285453762093
.dword	-8198723430825805066
.dword	7839808206051360730
.dword	9112166590185543863
.dword	-873060501548666559

walking_data10:
.dword	4641795633991644356
.dword	182465528871194596
.dword	6375843543376274330
.dword	2105795571907903355
.dword	887895718840316499
.dword	2244739627141479888
.dword	-4537912621944021279
.dword	5802039131589363493

walking_data11:
.dword	2389908271792831528
.dword	-8368023702648311610
.dword	-4382292467876029486
.dword	-5439575570806173540
.dword	6483138643451802460
.dword	851696388990057213
.dword	-4737105506577929621
.dword	7178152132871474386

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
    

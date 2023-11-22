#define TEST_VMRE1_OP( testnum, inst, result_base, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            li x1, 8; \
            vsetvli x31, x1, e64, m2, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) 
#define TEST_VMRE2_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 16; \
            vsetvli x31, x1, e64, m2, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE4_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 32; \
            vsetvli x31, x1, e64, m2, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE8_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 64; \
            vsetvli x31, x1, e64, m2, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \


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
    
    RVTEST_RV64UV
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
.dword	-3451782969314752686
.dword	-5027016064485328982
.dword	3936673010969104058
.dword	-6856295643963260204
.dword	-7704144904714016736
.dword	-3262139930158336685
.dword	-5691077560965656217
.dword	534765590843048910
.dword	8164411766079288210
.dword	7498160646100579400
.dword	-1993794427028974686
.dword	1341227217603206339
.dword	8401971081306514398
.dword	5053316908067547993
.dword	-985111242779185915
.dword	2526560636126812593

walking_data1:
.dword	8659150591859288576
.dword	-6695264453322948122
.dword	7875503097593515119
.dword	-2180190693111885839
.dword	-817222087722844066
.dword	-3967538830883169326
.dword	875371631306848821
.dword	-5600491830777717741
.dword	-4495571656372635095
.dword	4199263315385890604
.dword	-9177385193389996661
.dword	-6796850310763386259
.dword	-3795047789748288171
.dword	-2779606275995349201
.dword	-5302811111817609175
.dword	-667567919280182469

walking_data2:
.dword	1575291099986118631
.dword	2858737618451645383
.dword	9199615744322798308
.dword	-2930643507838656448
.dword	19313861778482942
.dword	-2862671055244127380
.dword	-947564032805440794
.dword	-8081893640086987393
.dword	1120182031057115578
.dword	-8050937899791480991
.dword	7765762107532886770
.dword	9142426097701279205
.dword	8614705252801775293
.dword	5417456790803617809
.dword	2710719595489543548
.dword	7989107252863011273

walking_data3:
.dword	-6917764650558955333
.dword	-7385221894609367742
.dword	-4425783723173281915
.dword	-6477515418977152082
.dword	8145728509295691706
.dword	-3183599299410647836
.dword	1279107893310666685
.dword	-1940784637591056048
.dword	-3640926412323960899
.dword	4393783006655066957
.dword	-4587996256305513653
.dword	5966435029409227642
.dword	3167721024692952587
.dword	-6090654710772348581
.dword	1873371384691420434
.dword	-3074835772153019268

walking_data4:
.dword	9012245416994127126
.dword	4852578401740202832
.dword	-6964091459737496404
.dword	-8887630993203205849
.dword	-1650532645178055089
.dword	-5021295986285201057
.dword	8510735363025204338
.dword	6033548751252830963
.dword	-1235336942465743699
.dword	1370902826648948881
.dword	-234686942035619502
.dword	379870720127692265
.dword	7475325074329851009
.dword	-8906777542864318964
.dword	-4642883672226510838
.dword	3874062245937847557

walking_data5:
.dword	-7336788771501319055
.dword	788523257310618585
.dword	8950495101310437241
.dword	8624879547941421697
.dword	5903625854758964092
.dword	5888115394452189404
.dword	-8347915566407572453
.dword	-3405237846499022501
.dword	-3218947912099836972
.dword	3391361015719450560
.dword	-4617483154565826406
.dword	-6202108974443230084
.dword	1203587072274167703
.dword	-5944366351982566991
.dword	610583284836523318
.dword	-3572336848268104452

walking_data6:
.dword	-6693730038729680028
.dword	5107329070458213014
.dword	-5521354804460741912
.dword	-2674466976670912468
.dword	-8919317462958290420
.dword	-2421859914539518995
.dword	-7261782534454141620
.dword	-5440590204527395964
.dword	-5888495101783128259
.dword	-1414691137876143424
.dword	4445939463021630248
.dword	-8436111034505053867
.dword	176267515461918682
.dword	-2501744919589914154
.dword	-932159031882483391
.dword	-2924233163779341893

walking_data7:
.dword	6572796809626323081
.dword	-4683789230231961801
.dword	-5601521083446669838
.dword	9166111844392324719
.dword	3726726346214888013
.dword	3302331690163512157
.dword	5140744209974149877
.dword	-5786125405038298008
.dword	-5160913841531728488
.dword	8913558786586767932
.dword	2354045133712394077
.dword	-6877818711720604497
.dword	2049317119827047189
.dword	5231506619103701482
.dword	9163624760488968208
.dword	-3654042861597088187

walking_data8:
.dword	2380659594768965446
.dword	-3760445633131626618
.dword	-6395499783229255116
.dword	3386035084926774258
.dword	-9206100647088576008
.dword	338140386832602883
.dword	3865328148091047489
.dword	-277188683814592235
.dword	8271900782935497231
.dword	4345819112699919442
.dword	-2841124908695301509
.dword	-4281073624895704633
.dword	6604230712988575933
.dword	-979933072439172592
.dword	-9099582031394498842
.dword	2618749871310000619

walking_data9:
.dword	1446994567458143729
.dword	-6000531085553582921
.dword	-3723722202126332770
.dword	-4039446202266562651
.dword	1176229667162579262
.dword	-2016755921795100474
.dword	-170984285116225411
.dword	-3418798966507896417
.dword	6282490515548701734
.dword	58100532669602181
.dword	-7760105638327738553
.dword	-7836200872680972446
.dword	7208877550306270072
.dword	-5265405493349598029
.dword	-791937223200851739
.dword	-1680604044179413088

walking_data10:
.dword	-5952655191509381077
.dword	-3309813784406192990
.dword	6978250313619706551
.dword	8659718027259199027
.dword	-1510249747164048259
.dword	-5744848762896173448
.dword	824197395921322564
.dword	2534552677632783389
.dword	8230797675643283599
.dword	3191125500928895185
.dword	-7904657691972240627
.dword	-763408614661418079
.dword	565657920619481430
.dword	-2577787472062080440
.dword	-4495316478805293949
.dword	-2754363911254375163

walking_data11:
.dword	-4335424724528032639
.dword	-4974813819218053041
.dword	6863421358902848995
.dword	5636441685222805244
.dword	-2919516468684399574
.dword	4573579023805583299
.dword	-4602784221507912106
.dword	-6136730816203043561
.dword	5593668162701000637
.dword	8403881220748347061
.dword	-2763362894572652784
.dword	3978701449770609550
.dword	-2333804104867217082
.dword	-6157559088738169785
.dword	-6652952775279675318
.dword	2515707912642211152

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
    

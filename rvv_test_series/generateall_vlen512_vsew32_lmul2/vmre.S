#define TEST_VMRE1_OP( testnum, inst, result_base, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            li x1, 16; \
            vsetvli x31, x1, e32, m2, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) 
#define TEST_VMRE2_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 32; \
            vsetvli x31, x1, e32, m2, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE4_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 64; \
            vsetvli x31, x1, e32, m2, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE8_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 128; \
            vsetvli x31, x1, e32, m2, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
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
.word	-1804521028
.word	2091557591
.word	-1651934211
.word	-4718346
.word	-1887738613
.word	-1621030956
.word	2009181277
.word	-1980454077
.word	161231044
.word	1968202074
.word	-236475957
.word	-1124341299
.word	-436215078
.word	-832997310
.word	60915469
.word	-2134040364
.word	1044278208
.word	841919918
.word	1866219288
.word	1897254555
.word	-614682356
.word	-1992460211
.word	2042721711
.word	-1343129417
.word	-717577023
.word	1956294622
.word	659419245
.word	2016427229
.word	402207991
.word	-1046044473
.word	1019001327
.word	947560917

walking_data1:
.word	-1609176178
.word	-639738146
.word	73159436
.word	-1771826943
.word	-1631455114
.word	-147542556
.word	540788336
.word	1357828947
.word	143969485
.word	267993366
.word	1191070329
.word	-576506553
.word	1200263155
.word	-451133353
.word	496359080
.word	429993530
.word	958856650
.word	346979232
.word	-1502755519
.word	795694234
.word	1863794166
.word	-1988743383
.word	1592605287
.word	1240420058
.word	1708707047
.word	2108578016
.word	-1292846076
.word	452914759
.word	-969824996
.word	-2142697987
.word	991801302
.word	-1726222264

walking_data2:
.word	-444350480
.word	-307845377
.word	-1655000005
.word	2015192793
.word	-1176198357
.word	-46783224
.word	639702225
.word	993549198
.word	671926783
.word	-319480754
.word	907431978
.word	-1580279172
.word	-120405024
.word	-2040148206
.word	1418040169
.word	894346368
.word	-1481536641
.word	626795717
.word	66242791
.word	-63001795
.word	1130245771
.word	-429048301
.word	113989520
.word	-969068801
.word	-1836411784
.word	-454285568
.word	549060871
.word	-1057632121
.word	199236710
.word	1963710710
.word	-1229089573
.word	-2027051243

walking_data3:
.word	1042061261
.word	-1484558146
.word	1278738081
.word	-260382905
.word	-861977690
.word	1025580245
.word	-719889798
.word	-1443752914
.word	1487076144
.word	-1190897363
.word	-1830262802
.word	-1963703262
.word	-447707070
.word	148430659
.word	-1420538256
.word	-93401365
.word	1572038685
.word	281303069
.word	-1939842603
.word	-748189754
.word	1971019234
.word	1466539394
.word	1935636858
.word	-1525220636
.word	423873752
.word	692129201
.word	368524653
.word	847638850
.word	2056458437
.word	-1010526259
.word	677976013
.word	208141283

walking_data4:
.word	853951594
.word	1807143592
.word	885476373
.word	-1512866526
.word	1000190768
.word	149054655
.word	-1021459045
.word	782899391
.word	-879189257
.word	1150273790
.word	1886228426
.word	1323168816
.word	-888061833
.word	451638708
.word	94528366
.word	-877578498
.word	2043207792
.word	-418859724
.word	-1802734309
.word	-191720118
.word	220566650
.word	1021868500
.word	622529000
.word	563609089
.word	-1181795174
.word	1134602770
.word	-694290966
.word	310721694
.word	1823875309
.word	245795689
.word	-1350184785
.word	-669798741

walking_data5:
.word	2108325034
.word	1395095353
.word	69245708
.word	571324116
.word	-938102209
.word	-1989033654
.word	488028382
.word	254436611
.word	823907117
.word	1312336836
.word	1818457040
.word	-2021032449
.word	1746373890
.word	-1048159545
.word	865878346
.word	-1592323731
.word	-89763914
.word	982154629
.word	426161065
.word	1497668497
.word	-856136852
.word	-1204594284
.word	986080945
.word	159385146
.word	1522914055
.word	-1751808091
.word	-511539411
.word	-1333839596
.word	-1078044084
.word	-1308311501
.word	-293350420
.word	1624662310

walking_data6:
.word	-1898628200
.word	1667267905
.word	2090774675
.word	-266117661
.word	-1127851737
.word	-350075774
.word	1641121596
.word	-2010469202
.word	1308005491
.word	-99765303
.word	627825343
.word	-967859485
.word	627999603
.word	-503693735
.word	1076750852
.word	-1706072373
.word	-612775603
.word	15798872
.word	1296422197
.word	-1702025145
.word	-1265511540
.word	-1669334676
.word	-1895362449
.word	-1048540286
.word	1546476036
.word	-284646938
.word	1766195555
.word	-97601565
.word	-1572295144
.word	-1010293464
.word	2018817010
.word	-961898358

walking_data7:
.word	-1115410067
.word	12900769
.word	-290018065
.word	-587231270
.word	-1860344921
.word	628167616
.word	1210507310
.word	-1411921956
.word	-1381432949
.word	-336143905
.word	-1819413998
.word	470065871
.word	2129801091
.word	594037765
.word	2064726249
.word	1607364727
.word	1176944641
.word	-1267706136
.word	1446593388
.word	-1241022748
.word	-1992896737
.word	-242617056
.word	-745803437
.word	-415455125
.word	885061621
.word	-2076832888
.word	-394416286
.word	543748399
.word	-1468593883
.word	-1426179260
.word	796916966
.word	1502040967

walking_data8:
.word	1470350959
.word	1976641134
.word	442553020
.word	1431325467
.word	857720654
.word	-1792856517
.word	1512958321
.word	870323279
.word	79030921
.word	1065709056
.word	1475287118
.word	-641084190
.word	2118948273
.word	-1513479135
.word	984103839
.word	-785662037
.word	-1707954068
.word	-443635426
.word	-1007427060
.word	2012772318
.word	1943380827
.word	-1039712747
.word	1554768808
.word	1668343227
.word	-850135904
.word	2008577035
.word	-1772146100
.word	-970189453
.word	1286626264
.word	-705884471
.word	445828881
.word	-109005443

walking_data9:
.word	-297024597
.word	4702369
.word	-1836441762
.word	1584491827
.word	1877449180
.word	628855676
.word	1503774991
.word	-982789516
.word	-1039251641
.word	-1078618916
.word	-1226597048
.word	1489550442
.word	1198715626
.word	1719093873
.word	-616539622
.word	-1656684503
.word	1776327072
.word	-1622439015
.word	-1922032881
.word	796947032
.word	1732157248
.word	-1792786709
.word	-283532804
.word	1809553477
.word	-333089878
.word	2025871889
.word	-1783778679
.word	16107669
.word	2010374193
.word	-388140335
.word	545344420
.word	-2063869745

walking_data10:
.word	248019280
.word	-1868445250
.word	2002007682
.word	656391328
.word	1544143523
.word	1641158693
.word	-1264907600
.word	1891449714
.word	440288497
.word	1561213551
.word	1284119002
.word	-111849833
.word	-443365196
.word	1632638011
.word	-1442507783
.word	-209218319
.word	1193647720
.word	1670181842
.word	502972976
.word	-494420665
.word	895665717
.word	-1130840479
.word	-808199284
.word	899098654
.word	-2106356260
.word	-584529116
.word	-393518520
.word	1883913968
.word	-267158876
.word	785364596
.word	-1745060723
.word	-398048407

walking_data11:
.word	-464447503
.word	-235312350
.word	-602391923
.word	386463457
.word	-99313779
.word	-979467832
.word	-283966252
.word	1791851511
.word	121350303
.word	-1065088876
.word	786388175
.word	235395260
.word	1003652183
.word	-395646179
.word	1229861041
.word	-545960161
.word	-1515419827
.word	-203691450
.word	-1454176432
.word	-1268190664
.word	2121118769
.word	176407547
.word	1178354491
.word	1662027197
.word	-1453928332
.word	963915915
.word	770960728
.word	487885943
.word	1910703720
.word	-1969105911
.word	-117676433
.word	-2041621824

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
    

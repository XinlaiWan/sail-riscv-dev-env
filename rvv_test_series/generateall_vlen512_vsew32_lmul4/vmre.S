#define TEST_VMRE1_OP( testnum, inst, result_base, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            li x1, 16; \
            vsetvli x31, x1, e32, m4, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) 
#define TEST_VMRE2_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 32; \
            vsetvli x31, x1, e32, m4, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE4_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 64; \
            vsetvli x31, x1, e32, m4, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE8_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 128; \
            vsetvli x31, x1, e32, m4, tu, mu; \
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
.word	-13010025
.word	361371742
.word	-650304471
.word	-321981633
.word	-1000771934
.word	534910690
.word	-1810625288
.word	-176942433
.word	1576962578
.word	-841397399
.word	-703854120
.word	1054678267
.word	-1791739221
.word	-90310178
.word	-1265520678
.word	47172539
.word	-1266696169
.word	-1102770855
.word	-1270332711
.word	-448386342
.word	472070921
.word	-1397425968
.word	2078240009
.word	-1656052448
.word	1978467130
.word	1210106432
.word	-220392944
.word	-254096031
.word	916726314
.word	-1437158999
.word	-1999840592
.word	535615815
.word	857146049
.word	506624226
.word	1210546872
.word	-360882036
.word	493956075
.word	-1891296468
.word	-1276988925
.word	1801883172
.word	-1576314965
.word	1597993539
.word	-967359994
.word	1881773479
.word	-975908774
.word	-704980037
.word	1645857283
.word	-1767807876
.word	1587490546
.word	1717396131
.word	1838799151
.word	1093507464
.word	592532003
.word	-1953080948
.word	-521536668
.word	-1803766354
.word	208402468
.word	-2102852591
.word	596042100
.word	-1277711032
.word	1198657498
.word	-1798242681
.word	-723357648
.word	-1760486833

walking_data1:
.word	1356728926
.word	-996988072
.word	1533123819
.word	2124847793
.word	2014749915
.word	1079222251
.word	1665011085
.word	1111149139
.word	-82408570
.word	-563980159
.word	79784120
.word	-777938644
.word	630545787
.word	-1111745692
.word	822881123
.word	1645163811
.word	508722595
.word	-208730511
.word	975646371
.word	1276519651
.word	-323113620
.word	-251615595
.word	-1225845635
.word	-1691849101
.word	-603803017
.word	2048659456
.word	1902201572
.word	762827475
.word	2031785500
.word	-513717158
.word	-808795927
.word	850584627
.word	2011369700
.word	-1940487283
.word	1446650425
.word	298185427
.word	-910607662
.word	-1311706814
.word	1208052466
.word	688732624
.word	-1447012474
.word	1160474977
.word	-1444080927
.word	14958823
.word	-990602438
.word	1822622307
.word	-2008218323
.word	-133603188
.word	729966984
.word	-1578519189
.word	-1968737658
.word	122483889
.word	-1844913152
.word	966648627
.word	-1751695798
.word	1632768778
.word	-2067675147
.word	-554319485
.word	1951439540
.word	-1270686166
.word	732640468
.word	1974346469
.word	11425655
.word	1722799950

walking_data2:
.word	-415172781
.word	-863973567
.word	658047299
.word	-2062326560
.word	1635219590
.word	712929571
.word	-129736931
.word	1323004600
.word	-392042620
.word	1176213613
.word	-1981017576
.word	-1352899752
.word	1217821918
.word	-816522807
.word	468928412
.word	-1086520412
.word	-108100674
.word	-1937344034
.word	544414761
.word	-133302335
.word	-837811337
.word	674234551
.word	1709626770
.word	-966225579
.word	-270671159
.word	1179725001
.word	1772164601
.word	1232253275
.word	-685117919
.word	-1500037148
.word	-1539371566
.word	1693800059
.word	887774669
.word	-1972256430
.word	52212862
.word	682718563
.word	-2012013717
.word	-1450714220
.word	-244042192
.word	1533842045
.word	-895781403
.word	1102932596
.word	-897296636
.word	-226499676
.word	270886355
.word	-1689656359
.word	-1983605690
.word	-900817355
.word	-875788339
.word	-1909718426
.word	1905157489
.word	1332240736
.word	-1277730340
.word	1691708701
.word	-2011528855
.word	317716497
.word	1165616211
.word	-769376803
.word	-188299489
.word	1548616430
.word	-1491624276
.word	-1656060145
.word	-757303064
.word	-1272819871

walking_data3:
.word	-999336568
.word	667637742
.word	-2066588036
.word	2044669656
.word	784437312
.word	-1169285470
.word	-1236352330
.word	1336650690
.word	303285333
.word	1469255888
.word	934062361
.word	2041158727
.word	-509074965
.word	-1829666061
.word	1293707381
.word	323652518
.word	-1700726596
.word	-150944087
.word	-2089594066
.word	-1671858449
.word	1869946385
.word	-1367673860
.word	283330434
.word	357557444
.word	-788182536
.word	-1507638568
.word	-1991134681
.word	182092692
.word	-9663157
.word	79312997
.word	540340366
.word	212938287
.word	1056004362
.word	1238712494
.word	1463365713
.word	-1024422393
.word	-1370024927
.word	190886502
.word	-836841659
.word	441416696
.word	-283562939
.word	-770977413
.word	-1404804055
.word	879881882
.word	-1325463370
.word	852530992
.word	-1036817763
.word	447601631
.word	1876796124
.word	726457349
.word	819170213
.word	1987970778
.word	-154237148
.word	-358809292
.word	1274004614
.word	49585326
.word	-528874055
.word	762359979
.word	-1811935226
.word	94117097
.word	-917119032
.word	1570056440
.word	-180567747
.word	-2072419319

walking_data4:
.word	1820550022
.word	191278160
.word	-586781980
.word	-2108377838
.word	1749340245
.word	-1282402949
.word	-1603123039
.word	-941959510
.word	-347175150
.word	1390327996
.word	-827368454
.word	-1449140589
.word	-884904838
.word	1962058702
.word	-37068314
.word	1992855944
.word	1618009379
.word	-1673316020
.word	485846215
.word	2081056665
.word	-1843581532
.word	374041610
.word	1193827586
.word	-1221396219
.word	716486897
.word	-111585961
.word	1721351571
.word	-572409585
.word	210170015
.word	-199704259
.word	-1848928590
.word	475269586
.word	1635242248
.word	-1390126899
.word	-1537294384
.word	1319618402
.word	424623327
.word	2111254235
.word	-863272989
.word	173062349
.word	745345619
.word	1291851534
.word	-1749680527
.word	299434292
.word	731542813
.word	673667336
.word	-899332231
.word	-1179615761
.word	-801234985
.word	1425868953
.word	1886834439
.word	-576488721
.word	1664472354
.word	351415517
.word	604396939
.word	-1946228089
.word	-265191887
.word	-1496494678
.word	-62334788
.word	-1291119467
.word	1124285688
.word	116564933
.word	-973757194
.word	-1171019857

walking_data5:
.word	-327217613
.word	-1258227981
.word	1958927861
.word	493738495
.word	-613970903
.word	-1002419043
.word	-1166083678
.word	-619145970
.word	1026037465
.word	-66966770
.word	-1493158536
.word	-1060777890
.word	-103026557
.word	-672408134
.word	-569947895
.word	-671441319
.word	-152462348
.word	1175204197
.word	800237953
.word	518106864
.word	-653144863
.word	-279416958
.word	-881815913
.word	-1119450337
.word	1324467170
.word	1721163774
.word	1156439751
.word	-1393912642
.word	1913672584
.word	1885537753
.word	1855788860
.word	67937664
.word	-1352577242
.word	-1280132081
.word	-590990273
.word	-1628802793
.word	1782120527
.word	1729154544
.word	1851483794
.word	-1494476854
.word	65360866
.word	440555480
.word	1845504507
.word	-111825883
.word	-1806589869
.word	722461986
.word	-660328579
.word	-898394141
.word	-1765378499
.word	-1495958639
.word	1279980139
.word	-260551498
.word	-1003723482
.word	1929202397
.word	2143798577
.word	-714636852
.word	381801026
.word	-2141786313
.word	350211671
.word	-844926604
.word	-276742657
.word	224519956
.word	326021221
.word	-1439657112

walking_data6:
.word	1484213732
.word	187442495
.word	2004036429
.word	-120158778
.word	-1458015608
.word	-633340591
.word	-1840111204
.word	1062980650
.word	1532567659
.word	-1601954226
.word	-1503403243
.word	-926891701
.word	-1136222754
.word	-1415588423
.word	-693230656
.word	205366842
.word	-63346427
.word	-816726827
.word	-1306875787
.word	471012875
.word	-1720294346
.word	546948682
.word	-1407426258
.word	126680158
.word	799539539
.word	-1712249212
.word	-1261983725
.word	-1711612576
.word	1953229623
.word	-1872512494
.word	-1915117312
.word	981655003
.word	1629285009
.word	479716774
.word	1997132936
.word	807144205
.word	-1252630992
.word	1241516182
.word	-391105952
.word	784832234
.word	-987394507
.word	544848538
.word	1492001001
.word	1352295774
.word	1177426538
.word	-1209510883
.word	-921266328
.word	-1315088162
.word	-691329816
.word	-690894035
.word	-889252026
.word	-639194342
.word	799267382
.word	2025042275
.word	255063454
.word	1146155289
.word	-937698281
.word	-1766956014
.word	1457349646
.word	-241892748
.word	948913537
.word	1963853967
.word	-1553479145
.word	536521064

walking_data7:
.word	1732943434
.word	1002889658
.word	1174738766
.word	1672016125
.word	-1291963280
.word	-904617067
.word	1835053503
.word	829463882
.word	402124042
.word	-1059542316
.word	119482505
.word	41970432
.word	1738742129
.word	1107405893
.word	56650493
.word	1150819366
.word	203295701
.word	-1730404035
.word	1300388242
.word	2021515020
.word	-128030035
.word	-814118449
.word	-257947565
.word	-944749968
.word	-648602990
.word	-450998783
.word	1122432049
.word	-2100438382
.word	1537733636
.word	1238730622
.word	-1357186606
.word	-191117744
.word	-711027274
.word	39116276
.word	1472660981
.word	-880397317
.word	-319447593
.word	-710446314
.word	-242751344
.word	547578881
.word	658977200
.word	-1061737546
.word	1810517927
.word	-631979155
.word	-2044125114
.word	-1625306069
.word	-2089837352
.word	-981800635
.word	-1272886003
.word	-882738042
.word	-1596739634
.word	147536301
.word	1546527603
.word	-2031225491
.word	578567600
.word	-388854780
.word	-375077515
.word	-647391487
.word	-1532351449
.word	723980221
.word	36042425
.word	1814795137
.word	-609629995
.word	2010445295

walking_data8:
.word	-1246644610
.word	1996624054
.word	2028294379
.word	-1366736677
.word	-1350412290
.word	-288223835
.word	-738776096
.word	580989937
.word	2132516968
.word	-756729504
.word	1725235762
.word	228962428
.word	-686868589
.word	-1802459241
.word	-1949226281
.word	1857944201
.word	-729252528
.word	-1958826805
.word	-95296023
.word	87783146
.word	-1374220220
.word	1827914365
.word	734159687
.word	1274210465
.word	-1418408303
.word	-1419202224
.word	-347586884
.word	770018203
.word	-709501502
.word	2060970534
.word	-1255281275
.word	473238762
.word	-350492508
.word	-1171797158
.word	450462446
.word	-1376886585
.word	-302911008
.word	-1030354983
.word	-1676591253
.word	-1422195042
.word	-1801570831
.word	-793477686
.word	1682840951
.word	-724329863
.word	815250512
.word	-1676468780
.word	1156099371
.word	230692570
.word	1645274426
.word	2075023609
.word	1588440479
.word	53075924
.word	-852926931
.word	1583511857
.word	1631128548
.word	2138878757
.word	1394101896
.word	-656777574
.word	-629721748
.word	-1831591409
.word	-294399437
.word	-207017424
.word	-20616834
.word	-998141450

walking_data9:
.word	-464994278
.word	686037446
.word	891308186
.word	2073924219
.word	-633784442
.word	-1472891652
.word	409353371
.word	503434940
.word	1831421848
.word	1866999281
.word	-1786388219
.word	-1319050778
.word	-1523541576
.word	1757716690
.word	-1328086012
.word	1740061584
.word	1718634408
.word	-264887195
.word	1997260913
.word	-354496061
.word	-825273316
.word	-1112434206
.word	456952630
.word	-786223796
.word	2142353927
.word	-1514512490
.word	-2119487413
.word	-204074114
.word	1569932305
.word	-809254195
.word	-2103054190
.word	419769966
.word	235798601
.word	-1704803119
.word	-1323917555
.word	-1753420880
.word	546165529
.word	-894942743
.word	423354247
.word	-630215092
.word	316410125
.word	-1740431031
.word	1564821863
.word	-248246256
.word	1498035645
.word	237339115
.word	-1918035898
.word	-801906816
.word	1808460023
.word	-1504558431
.word	770820440
.word	1330567206
.word	89535234
.word	1579918460
.word	-1389722797
.word	667993582
.word	851914137
.word	167251821
.word	627636895
.word	548428836
.word	1316014406
.word	626124528
.word	-692759398
.word	-330387004

walking_data10:
.word	-876487219
.word	-175468471
.word	-279340773
.word	1933932138
.word	1628518782
.word	1434330703
.word	-1302628762
.word	-1646714665
.word	1918436053
.word	-997546969
.word	-665666617
.word	-1519771193
.word	-1227451444
.word	355052437
.word	2035385145
.word	1144346779
.word	1404706606
.word	-260118058
.word	1915884685
.word	-1249595355
.word	-1307103518
.word	195159559
.word	-235319016
.word	611293964
.word	-1920228566
.word	2039100403
.word	-1042640526
.word	2074020213
.word	884743931
.word	-425400578
.word	1014141189
.word	-1183285184
.word	696228386
.word	119120328
.word	173135880
.word	-334771823
.word	-457200402
.word	1650133556
.word	-587305741
.word	-931028796
.word	-883620305
.word	-725244602
.word	-684421443
.word	1595730078
.word	-1377635783
.word	-1423257649
.word	-1330571600
.word	1029383632
.word	1713960008
.word	1950304045
.word	-1280411372
.word	576816990
.word	1224915196
.word	-396558504
.word	1994908236
.word	397773833
.word	-213691598
.word	-1216191088
.word	969761159
.word	412158354
.word	-752576970
.word	-78867274
.word	414011629
.word	-817034940

walking_data11:
.word	654921852
.word	593606379
.word	-938298773
.word	-1403625674
.word	708521797
.word	-1704740910
.word	-1387656400
.word	16428598
.word	2001425789
.word	-1721290798
.word	-1809009868
.word	1705459605
.word	1197578931
.word	1739028518
.word	1839841020
.word	1322192584
.word	1924773205
.word	-2064365956
.word	98097263
.word	775356940
.word	-1626595298
.word	-6421527
.word	809150157
.word	1372534732
.word	1650481568
.word	-2065489322
.word	-491795765
.word	1838139002
.word	-1576448051
.word	61015022
.word	1113309190
.word	186582319
.word	-1818833845
.word	-394740800
.word	-1967925746
.word	1206101385
.word	269544114
.word	-1509148618
.word	-1007920170
.word	-355122692
.word	-270919474
.word	-2136585485
.word	1544970278
.word	1436041271
.word	1052163221
.word	-657940941
.word	379560110
.word	1875224987
.word	-1824617480
.word	415168044
.word	-578985226
.word	-379004625
.word	-843769921
.word	1011573362
.word	1442663759
.word	51570964
.word	1411400377
.word	-2029867341
.word	1812934406
.word	-706559906
.word	2009600333
.word	810103519
.word	1685384857
.word	198687025

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
    

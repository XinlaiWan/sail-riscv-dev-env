#define TEST_VMRE1_OP( testnum, inst, result_base, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            li x1, 8; \
            vsetvli x31, x1, e64, m8, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) 
#define TEST_VMRE2_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 16; \
            vsetvli x31, x1, e64, m8, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE4_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 32; \
            vsetvli x31, x1, e64, m8, tu, mu; \
            la  x1, base; \
            vl8re64.v v8, (x1);  \
            inst v16, v8; \
        ) \


#define TEST_VMRE8_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 64; \
            vsetvli x31, x1, e64, m8, tu, mu; \
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
.dword	-8450282726984909482
.dword	6916967038218783028
.dword	3493948918983594712
.dword	2430594981365035655
.dword	2028881017401552933
.dword	-7542829234855728133
.dword	6395405669036204155
.dword	2484019051002658156
.dword	3848849652773028497
.dword	-9125912330407001319
.dword	-6153628110588090394
.dword	-856416477261297563
.dword	7810479869980054952
.dword	1344527958227564298
.dword	-6144379893841399117
.dword	-4359062282929749216
.dword	-6505981919774659977
.dword	6227857132142867168
.dword	237891207887307795
.dword	-1740293530264188640
.dword	1882432313653608005
.dword	-1070053939147416717
.dword	7954145762856372186
.dword	-6828051337407287065
.dword	5924164687573668628
.dword	2188883972407263734
.dword	8231715120603501832
.dword	7329815896696700343
.dword	-756762302866813948
.dword	-3211959008220751459
.dword	-6726778135528239869
.dword	-58307779332382482
.dword	-8015807947999050458
.dword	1179930150427409886
.dword	-8598229191197737825
.dword	-9002173082466353011
.dword	6066622964274965767
.dword	-8812565511384653818
.dword	2928378763317906188
.dword	5386748752078364152
.dword	-1680653753097159340
.dword	-8111364341954466421
.dword	2539566296744610900
.dword	-3601343835702249955
.dword	1356722490575877017
.dword	8285744675575790435
.dword	3110651244948979075
.dword	-5271445447781923148
.dword	7946660054142779593
.dword	-926234457923031106
.dword	-2998138818078546677
.dword	-21546175561069254
.dword	3932632834884056006
.dword	3485231491055583830
.dword	-562407284931787241
.dword	-7525424395752042288
.dword	-8679587979371347711
.dword	5478755926176627423
.dword	-6176108279928507466
.dword	7585412560839961537
.dword	2724184354535071876
.dword	2876138353119784480
.dword	-6117089825610690854
.dword	6535773713263951889

walking_data1:
.dword	4675846427097687171
.dword	651412383439231382
.dword	-8653987176646897336
.dword	7651313905805535566
.dword	4545111511533459136
.dword	-8459453805804691945
.dword	1707338612523002935
.dword	-5961720969715938518
.dword	7467721464144264820
.dword	-6628466165514741147
.dword	-9217890238917238416
.dword	-8492059080442017915
.dword	3506521569754341708
.dword	-8751387206611496327
.dword	8778207209218623929
.dword	5986706527342078674
.dword	-3718834997750802277
.dword	-4798396320008407590
.dword	-2870959382074227921
.dword	2982800096438179078
.dword	327453689120715271
.dword	6155461242262959719
.dword	8939409600767526659
.dword	-4385414599379191013
.dword	6292206798112096400
.dword	-3990793818221694513
.dword	8700564928726344324
.dword	5332557924336641682
.dword	-3019864634579127708
.dword	-9090466440729328685
.dword	2805530974811222631
.dword	-2123634789208689400
.dword	4794354126420271174
.dword	-1001652271932346307
.dword	5665326873996951882
.dword	-6636576843678811618
.dword	-7462721293071461966
.dword	-6020219159558089284
.dword	8361378784337366057
.dword	3307028716282820628
.dword	5845498469638778150
.dword	349450733448899773
.dword	-7213538882323480558
.dword	6603853982388774851
.dword	-1185813922072928155
.dword	1429122984817576923
.dword	-3514495158165487099
.dword	-8892037179982332777
.dword	2684011379749631373
.dword	6098361409985883104
.dword	-4940123234526851080
.dword	5232587347054630022
.dword	1301727996647988858
.dword	5115740316654349692
.dword	5883415262018492712
.dword	-4082549227569930580
.dword	7192504129974744809
.dword	-3795052932857908490
.dword	4441785481644640057
.dword	8123737977449187785
.dword	5734829948781563279
.dword	-7120305727699333455
.dword	-6896170239059526727
.dword	4147178939518782058

walking_data2:
.dword	-2099590803601117149
.dword	-6386448651084631176
.dword	-6726274721340525583
.dword	-5737075224184194584
.dword	-3935264379810329664
.dword	-3958971308022453879
.dword	6495640724155834505
.dword	-8122594677203331552
.dword	-9109906561513678319
.dword	-1326834027054985315
.dword	-3254159298073487968
.dword	2032270668659501794
.dword	8677570801614905711
.dword	8823148669307414690
.dword	6699377628150474139
.dword	-7402003498071373896
.dword	-5880822746259194544
.dword	-8348989521308781066
.dword	-7573707029231768163
.dword	4108508254627859479
.dword	-4991000128945292809
.dword	7803112340467419204
.dword	7060037784389641807
.dword	3059118965148471809
.dword	2789121039439000597
.dword	1341075280030748845
.dword	5833014288473899579
.dword	-7612072969770812758
.dword	-6387249053636422725
.dword	-57857976548634649
.dword	4118321858961093422
.dword	3475378985801094074
.dword	-6898912136184329976
.dword	7423075100023255310
.dword	-7048516445940306604
.dword	1714400178966508302
.dword	1234844871093476472
.dword	-5390819060000879954
.dword	-6516844526091016389
.dword	-9084119013933277292
.dword	-5724671363916977707
.dword	6194964565591746737
.dword	6232165537573717198
.dword	-7624253325803617760
.dword	-4748668754265351143
.dword	5200719192056079581
.dword	-4906465268979901434
.dword	-5270087146497777219
.dword	-2625951101787891203
.dword	8582248542749766445
.dword	-1847350927034189435
.dword	8800231356433755158
.dword	-8544436362054501060
.dword	2342197737851110244
.dword	6181076547856463668
.dword	5715800472670609761
.dword	5982906101837802838
.dword	-7454128333215380968
.dword	7524372902750509602
.dword	-53183411389984101
.dword	-9057956249290450926
.dword	4179542953239903181
.dword	6125917988072011129
.dword	-1916649154089216745

walking_data3:
.dword	3851801477463916326
.dword	-1260182034556935566
.dword	4054441221994518589
.dword	-1983246989669444814
.dword	639306517130029368
.dword	3113629666114509362
.dword	-8744547588353916192
.dword	701729154340814193
.dword	-6914115445684568409
.dword	-1983518340861092340
.dword	-9065751623398665987
.dword	2508090373863742194
.dword	256968959540443025
.dword	8130265087747423128
.dword	-8447789801602314703
.dword	4235200813668419844
.dword	-5867071611881630817
.dword	5986309037433924583
.dword	-2011992730282223894
.dword	-8326451259032837040
.dword	5233846998742995268
.dword	-7135917572149165972
.dword	-4343212407489666578
.dword	-2129998747611082729
.dword	6405985236772868543
.dword	8507593726405254492
.dword	7603440090684240710
.dword	7194288932493298248
.dword	5371183487212180027
.dword	4694155848188576523
.dword	-1805106257078117771
.dword	5448669635083073474
.dword	-6533953716850033390
.dword	-3062757294357012827
.dword	284009452363272529
.dword	5644422616165162585
.dword	-8112581194755707833
.dword	1702447492104506763
.dword	8241548190579031793
.dword	-3624395161229262130
.dword	4509528656359560041
.dword	-1797895145777059782
.dword	-1983068258600529961
.dword	7899368793806709404
.dword	7145733812564910891
.dword	-4161195633150021841
.dword	-6814560995031186201
.dword	3993365985875452165
.dword	8058764998439916942
.dword	-2848663510819304493
.dword	-2819174257477054432
.dword	-8469492225933128880
.dword	4627232777302394588
.dword	5625623591700174415
.dword	-6713738579203471891
.dword	1283047461348812642
.dword	-3990362166452445219
.dword	-1284256936645407453
.dword	5886935118331649817
.dword	3167022697914198346
.dword	-3876681684603635455
.dword	8454443414930818515
.dword	411010053840760408
.dword	4236787134780621577

walking_data4:
.dword	-4179584876504917641
.dword	-1908976929482928126
.dword	-3959388350081772391
.dword	463067536368526843
.dword	-1192252245566887781
.dword	5340776164436932418
.dword	4647904652034460107
.dword	2947639487492572478
.dword	3045815186664408613
.dword	8054821477603244002
.dword	4005501475283540149
.dword	2009034421223222236
.dword	-519275221015147578
.dword	-4799165062895842970
.dword	-6722835715808199858
.dword	6563438621956935635
.dword	8984951919641738752
.dword	5193879519432395788
.dword	199729231752611784
.dword	5991642846299942801
.dword	-8852836506202993910
.dword	-5367547988200951382
.dword	8694192453539038527
.dword	123278236105184920
.dword	-6093295810779042613
.dword	-2847860220222461426
.dword	-4611033090127697753
.dword	-6822665377594162693
.dword	-5113491961280965675
.dword	-5116746006714820766
.dword	2367119887256993157
.dword	6759633178565443023
.dword	1397766292466675609
.dword	-312363509385715031
.dword	2602826279760524157
.dword	8346385755060130738
.dword	8313575264688243432
.dword	5486079193768533915
.dword	-7507086567014257291
.dword	4102489811213270665
.dword	8324845247071672928
.dword	4045777569015128913
.dword	7058774239352751819
.dword	-7128028901406862908
.dword	-5278490944929328590
.dword	-4840386608251178346
.dword	2122813938309469118
.dword	7593926913364463838
.dword	-7692163500401447790
.dword	3732663295376427184
.dword	-483328958849474462
.dword	-7285634461780576078
.dword	5006819709266379452
.dword	5094700555609835416
.dword	8852014399562239368
.dword	-5062090192999514222
.dword	7336629481811389595
.dword	-1449672077378187536
.dword	-5962412026456725614
.dword	5085580603771491238
.dword	-1619912657652298284
.dword	-2617617972109968742
.dword	-1351979523190662967
.dword	7464126134090010997

walking_data5:
.dword	-5820152822840460177
.dword	3367027951589449805
.dword	-2190794196339167306
.dword	-2987202763290912375
.dword	-691669343490270783
.dword	651538823138464262
.dword	-5414939790315312992
.dword	-4601050905967792287
.dword	5930565880030329955
.dword	3739772467294181222
.dword	-1935162591739874211
.dword	-1037539384655124585
.dword	-1006325174424713502
.dword	-8102756446635661872
.dword	-3664370993856153925
.dword	-1436585367139688883
.dword	94695927872658784
.dword	-4381516645438458946
.dword	-6794436149775533207
.dword	-7602626989777888486
.dword	6370457441966760597
.dword	-6871282506700675514
.dword	-7473451216805690071
.dword	-2557210416746259549
.dword	-3716756164457943229
.dword	-8720365474743949075
.dword	4014010094000624614
.dword	657637355374845166
.dword	5959215947039333754
.dword	-2191341348958729207
.dword	-5862280143346264115
.dword	5496413573807122489
.dword	869049199307123489
.dword	-9187356771901312025
.dword	6059319915471889465
.dword	4617213907720196343
.dword	-6094234925893529739
.dword	3793245872229434245
.dword	-5568061273180159016
.dword	-4706518676537092366
.dword	-3968485169706163220
.dword	-6232424847175791183
.dword	2998173198332289339
.dword	-6933435504281160574
.dword	-8789110443338996708
.dword	8567024537898800643
.dword	3865454015464089503
.dword	-4458026975588680769
.dword	535679087122737054
.dword	-7910879413374160117
.dword	8411264887771891785
.dword	-3845115568537665603
.dword	6386911875201548405
.dword	653723235506841309
.dword	6738033404592486441
.dword	-5187260846627332282
.dword	2161815810532710488
.dword	6364552493835869801
.dword	6699349172968216309
.dword	-975924871245128973
.dword	-5497820653132881976
.dword	-6481089219990404008
.dword	5666657094167790764
.dword	7972838257196340987

walking_data6:
.dword	8798718854515804780
.dword	-2457368935020388106
.dword	-3849456758167252028
.dword	4731581960122098878
.dword	-3733651018128172604
.dword	1086732910540837146
.dword	-8312029065888349021
.dword	6824141639247134304
.dword	2019379471391895157
.dword	5812923068807717036
.dword	-8757967483558477063
.dword	-8902469701586385323
.dword	3560018634291230071
.dword	-5753944704973011345
.dword	3469855456545616208
.dword	8640231286592249393
.dword	-1775969043764978489
.dword	-6125171191898712067
.dword	7479773449402822895
.dword	2880044025284497940
.dword	-6032518470531966729
.dword	-5417573784359503674
.dword	8131216512448165551
.dword	7715147478503203728
.dword	8222155679734598197
.dword	-1614440077211639204
.dword	-9013957301987521855
.dword	-1021771223174991756
.dword	421131746703026591
.dword	-799152964244300684
.dword	6174841204544441665
.dword	-7075501219305056959
.dword	-3961435766338400157
.dword	-7828686160182137146
.dword	-4103246232001276935
.dword	4690056518674636138
.dword	6336723157508582430
.dword	-64787701936455062
.dword	520051217642587880
.dword	7735148100938611911
.dword	614351464882091320
.dword	-5979813047488099720
.dword	-199272775280515245
.dword	-1752931284997574424
.dword	6541003405243482921
.dword	-5139330223672830823
.dword	-9022365165910083514
.dword	-5074181187775015583
.dword	-2880976273682635594
.dword	7822836784749558834
.dword	-2902123791843408650
.dword	2233120506823613733
.dword	4523346409320972323
.dword	-5886916088392345471
.dword	6946487846142563229
.dword	1099134507098269272
.dword	-1664572092122013696
.dword	7269993919582494691
.dword	-7607088220569292430
.dword	-8816299597594130941
.dword	407632348290584990
.dword	7982059889308562961
.dword	7119434134494769137
.dword	-3713942283063515720

walking_data7:
.dword	-2825648964156681608
.dword	8498677774820965165
.dword	-3926725254878046667
.dword	-4191404106344458256
.dword	-7677006143610124262
.dword	-3008723326114586957
.dword	1687221918912678489
.dword	-7595610372720368719
.dword	-9216903103624760870
.dword	-4223640677007630299
.dword	5689242972787481667
.dword	4531973153106916661
.dword	3136009333330354537
.dword	-6749278912800017710
.dword	-3781671307885885253
.dword	5932809758160409069
.dword	-1623318012506166137
.dword	656316551794979749
.dword	6291354193999272859
.dword	1371540040326580938
.dword	-7922596081939706341
.dword	-2355105085191302241
.dword	-3662241235770685060
.dword	5416155157907770929
.dword	143152303582644008
.dword	6512436683035682318
.dword	1210639307328163415
.dword	4102557205973611627
.dword	5219108310263017685
.dword	-7211900672034824724
.dword	8167652480884970237
.dword	8439569876346960920
.dword	9043629204361886339
.dword	1916344176291982328
.dword	-137044778721950472
.dword	8265135288501057177
.dword	-6039619510034946496
.dword	-6541232483352315955
.dword	2850974086665502070
.dword	-1371101871299318812
.dword	-5325270827050526117
.dword	6032408805362267134
.dword	-5270107891850814464
.dword	4894157761557596567
.dword	2919192435650533151
.dword	-4064111022696220052
.dword	-5773230551233814401
.dword	3386718577942976296
.dword	6666073532217165557
.dword	8786684850609674421
.dword	8621990131295563900
.dword	-2101523784747466762
.dword	1320253312275910197
.dword	3590560514144381245
.dword	-7571163236875733012
.dword	3164415761119794185
.dword	-593657089234168178
.dword	8211235063660455893
.dword	3034364209282330652
.dword	-8410618083620133311
.dword	-4504264180430435845
.dword	-8165238238747379907
.dword	7345704399047817848
.dword	7600326231398431823

walking_data8:
.dword	789372541616642396
.dword	-1060741331962521903
.dword	7347127809527464453
.dword	7974564925945597274
.dword	2773305468636003248
.dword	5178689939556385588
.dword	-2875420330882544834
.dword	3449802191008711673
.dword	2829237930382650538
.dword	-99221846243593669
.dword	8229201617440627014
.dword	4912795400326967282
.dword	-5984919362971856325
.dword	592914128005749428
.dword	-7013246187523590409
.dword	-4517708584726976143
.dword	2368845009373311659
.dword	4053886104085309858
.dword	-983699651140992438
.dword	-3983817909141490910
.dword	2117240804271480539
.dword	2544535179716698140
.dword	4476951025139374545
.dword	4675635633851413960
.dword	-9097600318938735646
.dword	7323404591820612662
.dword	-4929065368700668833
.dword	7612991412071033234
.dword	2345946918487973572
.dword	1709538730907497088
.dword	877745405883808209
.dword	6810015462007026548
.dword	925878817737107265
.dword	1297909647322141332
.dword	-107529951383518027
.dword	-1305642052922396847
.dword	8307118010639115872
.dword	1416531062838210609
.dword	-6644054874383253336
.dword	-2362988564652892003
.dword	-1428413314885812017
.dword	6053949631670447596
.dword	-309244602190743669
.dword	-6087952859846983450
.dword	-8296052624438854852
.dword	-1920566643466314619
.dword	854441591812338589
.dword	-9117919826280410033
.dword	-6171550035901315317
.dword	-4867537092873574565
.dword	-5803735393077357134
.dword	-527870489965731673
.dword	7148047547535086527
.dword	-972249984935030175
.dword	-387122614550650153
.dword	8789913763832275042
.dword	-6612402760137306079
.dword	4624269946188182130
.dword	-3280557152389719134
.dword	-6019032836772317115
.dword	-3578291443755316288
.dword	-2976921418775571925
.dword	-7377505390582697196
.dword	-6191875182653943496

walking_data9:
.dword	-6949671135082846098
.dword	-9151844207776177841
.dword	-522066524980405037
.dword	7184457116475103431
.dword	-8284301118561200948
.dword	-3234334350421357704
.dword	687070665917188966
.dword	-6940148454322030071
.dword	-8791411582486197378
.dword	7928074946598714112
.dword	3062883951745285406
.dword	7099660036457994544
.dword	2294619729526092483
.dword	-8043888940943654593
.dword	-7438827602463058088
.dword	7762528225598974871
.dword	-3861735556531860859
.dword	-8284080523636859811
.dword	3920184084879624467
.dword	5414922963451174999
.dword	7115952155795958450
.dword	-4370394688046649169
.dword	8083367364666793786
.dword	5920834578945325005
.dword	-5123981301840786163
.dword	723518875706602342
.dword	3789552304180394452
.dword	3166645236956486284
.dword	6541013106030428616
.dword	-4961135827251090572
.dword	6957588956490869071
.dword	1726392848338513207
.dword	7906362726656185703
.dword	-4491714928956808510
.dword	-5096885173954789930
.dword	-531941709100466874
.dword	847476210454457645
.dword	7393837226368383265
.dword	-2636631230004252190
.dword	-8650293115977096521
.dword	1040565643169585978
.dword	-2474381736186860315
.dword	8696630232213814974
.dword	-6119054561909149388
.dword	5218212646506980342
.dword	-1094084401838178683
.dword	-6397342841824351306
.dword	-2971324991954035023
.dword	8528521045016246076
.dword	-2601824052779895807
.dword	5645610721460665113
.dword	-8481876330267400622
.dword	8181517139405861379
.dword	-5009488991435747891
.dword	1758040408032993933
.dword	-5035622169734237841
.dword	-2437248585206771453
.dword	-6316074277208888569
.dword	-7030193253999841250
.dword	-8207936632308379803
.dword	-4357399757957852456
.dword	-7501501699242370096
.dword	-4137556499560106489
.dword	4717523998264059472

walking_data10:
.dword	-654850573786126445
.dword	-7204273296541269478
.dword	-5472145987440592755
.dword	3619052608222884005
.dword	3692312627780161012
.dword	-2094714770491139242
.dword	-4292866744103035466
.dword	-4631215248232686582
.dword	7152291340449129536
.dword	2387544003148150163
.dword	6094416299530741592
.dword	9025547647187550829
.dword	794810194704655083
.dword	9079844795676734737
.dword	-1026451415384552163
.dword	1979868246308094445
.dword	-3379254651825955308
.dword	-2319136922552885914
.dword	-5002080638085290360
.dword	5566644021005427691
.dword	2393123080420006616
.dword	2713782883534454863
.dword	-367268301974586554
.dword	-2537382090076719992
.dword	6686610587083899963
.dword	-7223913657035259300
.dword	6892405479321016114
.dword	467362790504775025
.dword	-7189073924525612912
.dword	-5373908182555584130
.dword	1364971249906624578
.dword	7876491148447224126
.dword	-3626565819515718067
.dword	8710529545672381522
.dword	3495705269122641502
.dword	1175730395337735784
.dword	496538218325725137
.dword	3551977258319139681
.dword	-1553521294662008231
.dword	5484036554629455520
.dword	8883769458530036386
.dword	-8406984805119729949
.dword	4566873382975824719
.dword	7009932904316578636
.dword	-1068965060761778466
.dword	7538431762013858606
.dword	-3285766456202684092
.dword	1471279599836025058
.dword	-8233248930933153497
.dword	7911492054718907929
.dword	-8504606155934326726
.dword	2318156759951242348
.dword	5914116377553115670
.dword	6544105167822651554
.dword	374786099712886467
.dword	-798074697845433672
.dword	7188343386422946849
.dword	3053246143478424220
.dword	-4220581389463731162
.dword	-5652419325333515046
.dword	-5289555485255882607
.dword	4490363119074153697
.dword	-4038697556618004629
.dword	-5064263585113631036

walking_data11:
.dword	7935612584743889318
.dword	-6530189157682193199
.dword	-7287608956993452290
.dword	-7847736101249560021
.dword	-4345672521965936885
.dword	4660805396897966549
.dword	166367802436695539
.dword	-1219011755817998187
.dword	-9049058083088792032
.dword	-7047259566688727414
.dword	1310385380352804879
.dword	-2205413078216206010
.dword	-7301033727505820537
.dword	-5793026380420335063
.dword	-79047383822556624
.dword	-3555035588842489030
.dword	4990943632937167051
.dword	-1923369868876404330
.dword	7490559682911966594
.dword	3702512936995451826
.dword	-3190270910410626495
.dword	8485646784914229777
.dword	783784426132492416
.dword	3729011793859012067
.dword	-7644486490113924500
.dword	644098734007344208
.dword	7899605752326605418
.dword	856640341628112806
.dword	-6421102773950109418
.dword	-7394658123187204872
.dword	5408426903288038592
.dword	3550020518784108939
.dword	8957207939421609743
.dword	-6292779436150132978
.dword	-469265348956136026
.dword	-2833719230142334854
.dword	-1451866088529764117
.dword	-3473141045980025041
.dword	-1588926551405668854
.dword	-3162371186592737810
.dword	-3204536602367047727
.dword	7995590728614185516
.dword	51790375208945722
.dword	8984981308038535923
.dword	-6585878869910192923
.dword	-4691247171649566806
.dword	4393223728763633498
.dword	3674214125428174082
.dword	-6936914111495929924
.dword	29995400619206492
.dword	7743110200528644009
.dword	9006605284939488330
.dword	4421838909100044240
.dword	8159146830488042569
.dword	2012780330671417233
.dword	2845614016138382717
.dword	2718349535964632571
.dword	-2751388323827719676
.dword	-2656483507202551888
.dword	-462734920187993798
.dword	3620747431327437687
.dword	2779275774798988001
.dword	2885547148475967116
.dword	-5558808095761897892

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
    

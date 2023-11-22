#define TEST_VMRE1_OP( testnum, inst, result_base, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base, \
            li x1, 16; \
            vsetvli x31, x1, e32, m1, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) 
#define TEST_VMRE2_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 32; \
            vsetvli x31, x1, e32, m1, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) \
        TEST_CASE_LOOP_CONTINUE( testnum, v17, x7, \
            li x1, 32; \
            vsetvli x31, x1, e32, m1, tu, mu; \
            la x7, result_base2; \
        )

#define TEST_VMRE4_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 64; \
            vsetvli x31, x1, e32, m1, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) \
        TEST_CASE_LOOP_CONTINUE( testnum, v19, x7, \
            li x1, 64; \
            vsetvli x31, x1, e32, m1, tu, mu; \
            la x7, result_base2; \
        )

#define TEST_VMRE8_OP( testnum, inst, result_base1, result_base2, base ) \
        TEST_CASE_LOOP( testnum, v16, result_base1, \
            li x1, 128; \
            vsetvli x31, x1, e32, m1, tu, mu; \
            la  x1, base; \
            vl8re32.v v8, (x1);  \
            inst v16, v8; \
        ) \
        TEST_CASE_LOOP_CONTINUE( testnum, v23, x7, \
            li x1, 128; \
            vsetvli x31, x1, e32, m1, tu, mu; \
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
.word	1832940859
.word	-1925015325
.word	1989708541
.word	-308696302
.word	938750962
.word	609463601
.word	-819662218
.word	-548121543
.word	-1715792808
.word	-31703195
.word	-706416727
.word	-1575586942
.word	659481675
.word	-1759888935
.word	-1774618789
.word	-873991912

walking_data1:
.word	394584091
.word	162099032
.word	1762733492
.word	1342858410
.word	-560868896
.word	-1652896519
.word	-1253470119
.word	-112476233
.word	294298100
.word	-2006545431
.word	-1429846109
.word	-1124939755
.word	1852291569
.word	1001275606
.word	1425953082
.word	334747220

walking_data2:
.word	-304299303
.word	-1842697596
.word	-187759929
.word	527625601
.word	1262352022
.word	-391563837
.word	1583610196
.word	-1807245554
.word	-1440817476
.word	-917674445
.word	-1532883834
.word	1268265697
.word	-885790149
.word	1955790306
.word	-1324921795
.word	-609814536

walking_data3:
.word	452170233
.word	-433884180
.word	13489473
.word	-1555656829
.word	-116085759
.word	-1305133994
.word	-2055335104
.word	2019171161
.word	874717900
.word	1424426963
.word	-1890361280
.word	1457136124
.word	952831353
.word	-1630303637
.word	1154907374
.word	-1057063875

walking_data4:
.word	-714809658
.word	-623727034
.word	-1293732770
.word	788952381
.word	-244746878
.word	958530814
.word	785112177
.word	174942369
.word	-1267159072
.word	1670518595
.word	1289761066
.word	-1461268075
.word	143137701
.word	1600655581
.word	-917149427
.word	1525806040

walking_data5:
.word	-930974567
.word	-77192280
.word	-1726185872
.word	2023537020
.word	-1162895021
.word	-233184798
.word	-595509092
.word	-3832544
.word	481579970
.word	988008334
.word	-755518204
.word	1066604165
.word	993500496
.word	112035967
.word	578568520
.word	1301405224

walking_data6:
.word	1504889968
.word	-1900251134
.word	-19601387
.word	-442813432
.word	-1544883226
.word	-1040637426
.word	1992650296
.word	1637626554
.word	-1060013536
.word	1403424095
.word	-173265902
.word	1868919441
.word	1607867753
.word	1333809467
.word	1432177096
.word	1325027970

walking_data7:
.word	-778612662
.word	-1398186727
.word	-1695444477
.word	63729419
.word	358344136
.word	221862599
.word	1007206468
.word	1907739179
.word	1961713652
.word	1284162373
.word	-237271852
.word	808490929
.word	1625704337
.word	687750362
.word	-33094967
.word	153549198

walking_data8:
.word	-1561670044
.word	2005526196
.word	-2017532811
.word	1161012817
.word	1015067834
.word	-1977459131
.word	707480410
.word	1811114361
.word	1510372307
.word	-1754150431
.word	329888150
.word	323028333
.word	-1036136553
.word	-449385431
.word	-1491850633
.word	951214549

walking_data9:
.word	1864657293
.word	366162126
.word	231728250
.word	1621958529
.word	-261268049
.word	2125382004
.word	-708829420
.word	-1307826675
.word	-1152503558
.word	1778604727
.word	-1989498051
.word	1062849555
.word	-1300738522
.word	-1449017999
.word	1317148379
.word	-1184268196

walking_data10:
.word	-351546699
.word	1942228291
.word	-1565741604
.word	1950268787
.word	1844638176
.word	1775796454
.word	849096685
.word	170825664
.word	-297640329
.word	258635770
.word	1890798291
.word	-696203027
.word	998982211
.word	1612017855
.word	84154806
.word	-1157041971

walking_data11:
.word	-1212140914
.word	2066573066
.word	-1885438587
.word	-1135900615
.word	1220000000
.word	1006527558
.word	-375752943
.word	-1372034599
.word	1659086774
.word	-579283284
.word	1261938873
.word	1893920136
.word	-1750910626
.word	-17484419
.word	539869920
.word	-1309630772

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
    

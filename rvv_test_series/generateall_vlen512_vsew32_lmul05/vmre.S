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
.word	1232512176
.word	-227342096
.word	-811962908
.word	-95433820
.word	1794240517
.word	1991132112
.word	-1348895936
.word	-235244733
.word	1793384181
.word	1875214751
.word	-1778803832
.word	1073120602
.word	-244576436
.word	-1874113047
.word	-2013600927
.word	-1797337682

walking_data1:
.word	1206415686
.word	2006404397
.word	-1148137134
.word	1187537549
.word	901632592
.word	-1666823857
.word	2137122985
.word	1785741998
.word	1429269476
.word	-1658621247
.word	-125913731
.word	1130580665
.word	-1179757940
.word	281111682
.word	1462314697
.word	929528779

walking_data2:
.word	692548055
.word	341593279
.word	522773580
.word	-1252055849
.word	108186237
.word	-123675750
.word	358663224
.word	1096456433
.word	-385280755
.word	846054944
.word	-1788108200
.word	-2053354378
.word	764595945
.word	-1465822642
.word	1043466731
.word	-981818959

walking_data3:
.word	-134920114
.word	-1530627084
.word	-1422495153
.word	253147784
.word	399787003
.word	-1828455927
.word	2074487635
.word	-325042771
.word	604858357
.word	-1786950546
.word	-398250696
.word	729219601
.word	380695976
.word	-1972189965
.word	2132918848
.word	-1416434478

walking_data4:
.word	-90417159
.word	457666258
.word	1749203470
.word	-1017820452
.word	-1181189554
.word	-1642794263
.word	-516659136
.word	817019729
.word	-361339765
.word	792165397
.word	179713863
.word	2131380191
.word	1749748899
.word	-20165031
.word	730243349
.word	-1988283238

walking_data5:
.word	469344901
.word	-906085618
.word	-1861750850
.word	-738420451
.word	1766079891
.word	1767994589
.word	654371462
.word	-9996532
.word	905657303
.word	983381530
.word	-546690032
.word	-1316791830
.word	-1377161407
.word	-1471021054
.word	-1375433531
.word	-492002158

walking_data6:
.word	1259092278
.word	848002397
.word	-2026401790
.word	-445387659
.word	-826636806
.word	106549972
.word	106552622
.word	-80678840
.word	332942637
.word	-1046209619
.word	-1143112163
.word	-384595224
.word	-1629333662
.word	-1412849279
.word	-1069459317
.word	731922908

walking_data7:
.word	426438859
.word	-826550735
.word	269508156
.word	765194007
.word	1931459542
.word	471486836
.word	1702346682
.word	-676477817
.word	1267036925
.word	-462662555
.word	1043216768
.word	-382605685
.word	1829650348
.word	-736466490
.word	1739989504
.word	-251189839

walking_data8:
.word	1792407600
.word	1343613726
.word	468348817
.word	-1286356786
.word	-388114520
.word	-87741160
.word	-987952283
.word	1349114916
.word	1437757837
.word	1562383207
.word	-480175285
.word	-1303860468
.word	209896512
.word	-1006187998
.word	-2077893670
.word	-1047004030

walking_data9:
.word	-1432828913
.word	-1669930591
.word	1097067759
.word	-312538699
.word	-1562353806
.word	-660935903
.word	-1149049309
.word	-1419958482
.word	1868267180
.word	-577987178
.word	1318965289
.word	2003712737
.word	-3039866
.word	-1314776620
.word	1292913320
.word	849266854

walking_data10:
.word	-1978491424
.word	-1217896226
.word	414815274
.word	-460266144
.word	167959560
.word	-1250197485
.word	1912906076
.word	-1257066083
.word	-2008047557
.word	-75740441
.word	-676230942
.word	-655945089
.word	-99225802
.word	-1532411544
.word	-1228722396
.word	-1270287555

walking_data11:
.word	-1033538372
.word	1292559035
.word	1025718717
.word	-665593131
.word	2106295900
.word	-725969842
.word	-1970797516
.word	-2075474001
.word	1827657161
.word	56392802
.word	-2005224885
.word	754608009
.word	-1145242357
.word	-1792346282
.word	-1069206672
.word	1674452478

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
    

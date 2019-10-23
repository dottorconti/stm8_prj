   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 52 void ADC1_DeInit(void)
  50                     ; 53 {
  52                     .text:	section	.text,new
  53  0000               _ADC1_DeInit:
  57                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  59  0000 725f5400      	clr	21504
  60                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  62  0004 725f5401      	clr	21505
  63                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  65  0008 725f5402      	clr	21506
  66                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  68  000c 725f5403      	clr	21507
  69                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  71  0010 725f5406      	clr	21510
  72                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  74  0014 725f5407      	clr	21511
  75                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  77  0018 35ff5408      	mov	21512,#255
  78                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  80  001c 35035409      	mov	21513,#3
  81                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  83  0020 725f540a      	clr	21514
  84                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  86  0024 725f540b      	clr	21515
  87                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  89  0028 725f540e      	clr	21518
  90                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  92  002c 725f540f      	clr	21519
  93                     ; 66 }
  96  0030 81            	ret	
 548                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 548                     ; 89 {
 549                     .text:	section	.text,new
 550  0000               _ADC1_Init:
 552  0000 89            	pushw	x
 553       00000000      OFST:	set	0
 556                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 558  0001 5d            	tnzw	x
 559  0002 2709          	jreq	L41
 560  0004 5a            	decw	x
 561  0005 2706          	jreq	L41
 562  0007 ae005b        	ldw	x,#91
 563  000a cd0116        	call	LC001
 564  000d               L41:
 565                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 567  000d 1e05          	ldw	x,(OFST+5,sp)
 568  000f 2738          	jreq	L42
 569  0011 a30001        	cpw	x,#1
 570  0014 2733          	jreq	L42
 571  0016 a30002        	cpw	x,#2
 572  0019 272e          	jreq	L42
 573  001b a30003        	cpw	x,#3
 574  001e 2729          	jreq	L42
 575  0020 a30004        	cpw	x,#4
 576  0023 2724          	jreq	L42
 577  0025 a30005        	cpw	x,#5
 578  0028 271f          	jreq	L42
 579  002a a30006        	cpw	x,#6
 580  002d 271a          	jreq	L42
 581  002f a30007        	cpw	x,#7
 582  0032 2715          	jreq	L42
 583  0034 a30008        	cpw	x,#8
 584  0037 2710          	jreq	L42
 585  0039 a3000c        	cpw	x,#12
 586  003c 270b          	jreq	L42
 587  003e a30009        	cpw	x,#9
 588  0041 2706          	jreq	L42
 589  0043 ae005c        	ldw	x,#92
 590  0046 cd0116        	call	LC001
 591  0049               L42:
 592                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 594  0049 1e07          	ldw	x,(OFST+7,sp)
 595  004b 2729          	jreq	L43
 596  004d a30010        	cpw	x,#16
 597  0050 2724          	jreq	L43
 598  0052 a30020        	cpw	x,#32
 599  0055 271f          	jreq	L43
 600  0057 a30030        	cpw	x,#48
 601  005a 271a          	jreq	L43
 602  005c a30040        	cpw	x,#64
 603  005f 2715          	jreq	L43
 604  0061 a30050        	cpw	x,#80
 605  0064 2710          	jreq	L43
 606  0066 a30060        	cpw	x,#96
 607  0069 270b          	jreq	L43
 608  006b a30070        	cpw	x,#112
 609  006e 2706          	jreq	L43
 610  0070 ae005d        	ldw	x,#93
 611  0073 cd0116        	call	LC001
 612  0076               L43:
 613                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 615  0076 1e09          	ldw	x,(OFST+9,sp)
 616  0078 270b          	jreq	L44
 617  007a a30010        	cpw	x,#16
 618  007d 2706          	jreq	L44
 619  007f ae005e        	ldw	x,#94
 620  0082 cd0116        	call	LC001
 621  0085               L44:
 622                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 624  0085 1e0b          	ldw	x,(OFST+11,sp)
 625  0087 2709          	jreq	L45
 626  0089 5a            	decw	x
 627  008a 2706          	jreq	L45
 628  008c ae005f        	ldw	x,#95
 629  008f cd0116        	call	LC001
 630  0092               L45:
 631                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 633  0092 1e0d          	ldw	x,(OFST+13,sp)
 634  0094 270a          	jreq	L46
 635  0096 a30008        	cpw	x,#8
 636  0099 2705          	jreq	L46
 637  009b ae0060        	ldw	x,#96
 638  009e ad76          	call	LC001
 639  00a0               L46:
 640                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 642  00a0 1e0f          	ldw	x,(OFST+15,sp)
 643  00a2 273c          	jreq	L47
 644  00a4 a30001        	cpw	x,#1
 645  00a7 2737          	jreq	L47
 646  00a9 a30002        	cpw	x,#2
 647  00ac 2732          	jreq	L47
 648  00ae a30003        	cpw	x,#3
 649  00b1 272d          	jreq	L47
 650  00b3 a30004        	cpw	x,#4
 651  00b6 2728          	jreq	L47
 652  00b8 a30005        	cpw	x,#5
 653  00bb 2723          	jreq	L47
 654  00bd a30006        	cpw	x,#6
 655  00c0 271e          	jreq	L47
 656  00c2 a30007        	cpw	x,#7
 657  00c5 2719          	jreq	L47
 658  00c7 a30008        	cpw	x,#8
 659  00ca 2714          	jreq	L47
 660  00cc a3000c        	cpw	x,#12
 661  00cf 270f          	jreq	L47
 662  00d1 a300ff        	cpw	x,#255
 663  00d4 270a          	jreq	L47
 664  00d6 a30009        	cpw	x,#9
 665  00d9 2705          	jreq	L47
 666  00db ae0061        	ldw	x,#97
 667  00de ad36          	call	LC001
 668  00e0               L47:
 669                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 671  00e0 1e11          	ldw	x,(OFST+17,sp)
 672  00e2 2708          	jreq	L401
 673  00e4 5a            	decw	x
 674  00e5 2705          	jreq	L401
 675  00e7 ae0062        	ldw	x,#98
 676  00ea ad2a          	call	LC001
 677  00ec               L401:
 678                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 680  00ec 1e0d          	ldw	x,(OFST+13,sp)
 681  00ee 89            	pushw	x
 682  00ef 1e07          	ldw	x,(OFST+7,sp)
 683  00f1 89            	pushw	x
 684  00f2 1e05          	ldw	x,(OFST+5,sp)
 685  00f4 cd0000        	call	_ADC1_ConversionConfig
 687  00f7 5b04          	addw	sp,#4
 688                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 690  00f9 1e07          	ldw	x,(OFST+7,sp)
 691  00fb cd0000        	call	_ADC1_PrescalerConfig
 693                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 695  00fe 1e0b          	ldw	x,(OFST+11,sp)
 696  0100 89            	pushw	x
 697  0101 1e0b          	ldw	x,(OFST+11,sp)
 698  0103 cd0000        	call	_ADC1_ExternalTriggerConfig
 700  0106 85            	popw	x
 701                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 703  0107 1e11          	ldw	x,(OFST+17,sp)
 704  0109 89            	pushw	x
 705  010a 1e11          	ldw	x,(OFST+17,sp)
 706  010c cd0000        	call	_ADC1_SchmittTriggerConfig
 708  010f 72105401      	bset	21505,#0
 709  0113 85            	popw	x
 710                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 712                     ; 119 }
 715  0114 85            	popw	x
 716  0115 81            	ret	
 717  0116               LC001:
 718  0116 89            	pushw	x
 719  0117 5f            	clrw	x
 720  0118 89            	pushw	x
 721  0119 ae0000        	ldw	x,#L542
 722  011c cd0000        	call	_assert_failed
 724  011f 5b04          	addw	sp,#4
 725  0121 81            	ret	
 761                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 761                     ; 127 {
 762                     .text:	section	.text,new
 763  0000               _ADC1_Cmd:
 765  0000 89            	pushw	x
 766       00000000      OFST:	set	0
 769                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 771  0001 5d            	tnzw	x
 772  0002 2711          	jreq	L621
 773  0004 5a            	decw	x
 774  0005 270e          	jreq	L621
 775  0007 ae0081        	ldw	x,#129
 776  000a 89            	pushw	x
 777  000b 5f            	clrw	x
 778  000c 89            	pushw	x
 779  000d ae0000        	ldw	x,#L542
 780  0010 cd0000        	call	_assert_failed
 782  0013 5b04          	addw	sp,#4
 783  0015               L621:
 784                     ; 131   if (NewState != DISABLE)
 786  0015 1e01          	ldw	x,(OFST+1,sp)
 787  0017 2706          	jreq	L562
 788                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 790  0019 72105401      	bset	21505,#0
 792  001d 2004          	jra	L762
 793  001f               L562:
 794                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 796  001f 72115401      	bres	21505,#0
 797  0023               L762:
 798                     ; 139 }
 801  0023 85            	popw	x
 802  0024 81            	ret	
 838                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 838                     ; 147 {
 839                     .text:	section	.text,new
 840  0000               _ADC1_ScanModeCmd:
 842  0000 89            	pushw	x
 843       00000000      OFST:	set	0
 846                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 848  0001 5d            	tnzw	x
 849  0002 2711          	jreq	L041
 850  0004 5a            	decw	x
 851  0005 270e          	jreq	L041
 852  0007 ae0095        	ldw	x,#149
 853  000a 89            	pushw	x
 854  000b 5f            	clrw	x
 855  000c 89            	pushw	x
 856  000d ae0000        	ldw	x,#L542
 857  0010 cd0000        	call	_assert_failed
 859  0013 5b04          	addw	sp,#4
 860  0015               L041:
 861                     ; 151   if (NewState != DISABLE)
 863  0015 1e01          	ldw	x,(OFST+1,sp)
 864  0017 2706          	jreq	L703
 865                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 867  0019 72125402      	bset	21506,#1
 869  001d 2004          	jra	L113
 870  001f               L703:
 871                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 873  001f 72135402      	bres	21506,#1
 874  0023               L113:
 875                     ; 159 }
 878  0023 85            	popw	x
 879  0024 81            	ret	
 915                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 915                     ; 167 {
 916                     .text:	section	.text,new
 917  0000               _ADC1_DataBufferCmd:
 919  0000 89            	pushw	x
 920       00000000      OFST:	set	0
 923                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 925  0001 5d            	tnzw	x
 926  0002 2711          	jreq	L251
 927  0004 5a            	decw	x
 928  0005 270e          	jreq	L251
 929  0007 ae00a9        	ldw	x,#169
 930  000a 89            	pushw	x
 931  000b 5f            	clrw	x
 932  000c 89            	pushw	x
 933  000d ae0000        	ldw	x,#L542
 934  0010 cd0000        	call	_assert_failed
 936  0013 5b04          	addw	sp,#4
 937  0015               L251:
 938                     ; 171   if (NewState != DISABLE)
 940  0015 1e01          	ldw	x,(OFST+1,sp)
 941  0017 2706          	jreq	L133
 942                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 944  0019 721e5403      	bset	21507,#7
 946  001d 2004          	jra	L333
 947  001f               L133:
 948                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 950  001f 721f5403      	bres	21507,#7
 951  0023               L333:
 952                     ; 179 }
 955  0023 85            	popw	x
 956  0024 81            	ret	
1113                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1113                     ; 191 {
1114                     .text:	section	.text,new
1115  0000               _ADC1_ITConfig:
1117  0000 89            	pushw	x
1118       00000000      OFST:	set	0
1121                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1123  0001 a30020        	cpw	x,#32
1124  0004 270a          	jreq	L461
1125  0006 a30010        	cpw	x,#16
1126  0009 2705          	jreq	L461
1127  000b ae00c1        	ldw	x,#193
1128  000e ad22          	call	LC002
1129  0010               L461:
1130                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1132  0010 1e05          	ldw	x,(OFST+5,sp)
1133  0012 2708          	jreq	L471
1134  0014 5a            	decw	x
1135  0015 2705          	jreq	L471
1136  0017 ae00c2        	ldw	x,#194
1137  001a ad16          	call	LC002
1138  001c               L471:
1139                     ; 196   if (NewState != DISABLE)
1141  001c 1e05          	ldw	x,(OFST+5,sp)
1142  001e 2707          	jreq	L124
1143                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1145  0020 c65400        	ld	a,21504
1146  0023 1a02          	or	a,(OFST+2,sp)
1148  0025 2006          	jra	L324
1149  0027               L124:
1150                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1152  0027 7b02          	ld	a,(OFST+2,sp)
1153  0029 43            	cpl	a
1154  002a c45400        	and	a,21504
1155  002d               L324:
1156  002d c75400        	ld	21504,a
1157                     ; 206 }
1160  0030 85            	popw	x
1161  0031 81            	ret	
1162  0032               LC002:
1163  0032 89            	pushw	x
1164  0033 5f            	clrw	x
1165  0034 89            	pushw	x
1166  0035 ae0000        	ldw	x,#L542
1167  0038 cd0000        	call	_assert_failed
1169  003b 5b04          	addw	sp,#4
1170  003d 81            	ret	
1207                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1207                     ; 215 {
1208                     .text:	section	.text,new
1209  0000               _ADC1_PrescalerConfig:
1211  0000 89            	pushw	x
1212       00000000      OFST:	set	0
1215                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1217  0001 5d            	tnzw	x
1218  0002 2731          	jreq	L602
1219  0004 a30010        	cpw	x,#16
1220  0007 272c          	jreq	L602
1221  0009 a30020        	cpw	x,#32
1222  000c 2727          	jreq	L602
1223  000e a30030        	cpw	x,#48
1224  0011 2722          	jreq	L602
1225  0013 a30040        	cpw	x,#64
1226  0016 271d          	jreq	L602
1227  0018 a30050        	cpw	x,#80
1228  001b 2718          	jreq	L602
1229  001d a30060        	cpw	x,#96
1230  0020 2713          	jreq	L602
1231  0022 a30070        	cpw	x,#112
1232  0025 270e          	jreq	L602
1233  0027 ae00d9        	ldw	x,#217
1234  002a 89            	pushw	x
1235  002b 5f            	clrw	x
1236  002c 89            	pushw	x
1237  002d ae0000        	ldw	x,#L542
1238  0030 cd0000        	call	_assert_failed
1240  0033 5b04          	addw	sp,#4
1241  0035               L602:
1242                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1244  0035 c65401        	ld	a,21505
1245  0038 a48f          	and	a,#143
1246  003a c75401        	ld	21505,a
1247                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1249  003d c65401        	ld	a,21505
1250  0040 1a02          	or	a,(OFST+2,sp)
1251  0042 c75401        	ld	21505,a
1252                     ; 223 }
1255  0045 85            	popw	x
1256  0046 81            	ret	
1304                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1304                     ; 234 {
1305                     .text:	section	.text,new
1306  0000               _ADC1_SchmittTriggerConfig:
1308  0000 89            	pushw	x
1309       00000000      OFST:	set	0
1312                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1314  0001 5d            	tnzw	x
1315  0002 273d          	jreq	L022
1316  0004 a30001        	cpw	x,#1
1317  0007 2738          	jreq	L022
1318  0009 a30002        	cpw	x,#2
1319  000c 2733          	jreq	L022
1320  000e a30003        	cpw	x,#3
1321  0011 272e          	jreq	L022
1322  0013 a30004        	cpw	x,#4
1323  0016 2729          	jreq	L022
1324  0018 a30005        	cpw	x,#5
1325  001b 2724          	jreq	L022
1326  001d a30006        	cpw	x,#6
1327  0020 271f          	jreq	L022
1328  0022 a30007        	cpw	x,#7
1329  0025 271a          	jreq	L022
1330  0027 a30008        	cpw	x,#8
1331  002a 2715          	jreq	L022
1332  002c a3000c        	cpw	x,#12
1333  002f 2710          	jreq	L022
1334  0031 a300ff        	cpw	x,#255
1335  0034 270b          	jreq	L022
1336  0036 a30009        	cpw	x,#9
1337  0039 2706          	jreq	L022
1338  003b ae00ec        	ldw	x,#236
1339  003e cd00cd        	call	LC006
1340  0041               L022:
1341                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1343  0041 1e05          	ldw	x,(OFST+5,sp)
1344  0043 2709          	jreq	L032
1345  0045 5a            	decw	x
1346  0046 2706          	jreq	L032
1347  0048 ae00ed        	ldw	x,#237
1348  004b cd00cd        	call	LC006
1349  004e               L032:
1350                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1352  004e 1e01          	ldw	x,(OFST+1,sp)
1353  0050 a300ff        	cpw	x,#255
1354  0053 261d          	jrne	L564
1355                     ; 241     if (NewState != DISABLE)
1357  0055 1e05          	ldw	x,(OFST+5,sp)
1358  0057 270a          	jreq	L764
1359                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1361  0059 725f5407      	clr	21511
1362                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1364  005d 725f5406      	clr	21510
1366  0061 2062          	jra	L374
1367  0063               L764:
1368                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1370  0063 c65407        	ld	a,21511
1371  0066 aaff          	or	a,#255
1372  0068 c75407        	ld	21511,a
1373                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1375  006b c65406        	ld	a,21510
1376  006e aaff          	or	a,#255
1377  0070 2050          	jp	LC003
1378  0072               L564:
1379                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1381  0072 a30008        	cpw	x,#8
1382  0075 2e26          	jrsge	L574
1383                     ; 254     if (NewState != DISABLE)
1385  0077 1e05          	ldw	x,(OFST+5,sp)
1386  0079 2713          	jreq	L774
1387                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1389  007b 7b02          	ld	a,(OFST+2,sp)
1390  007d ad48          	call	LC005
1391  007f 2704          	jreq	L432
1392  0081               L632:
1393  0081 48            	sll	a
1394  0082 5a            	decw	x
1395  0083 26fc          	jrne	L632
1396  0085               L432:
1397  0085 43            	cpl	a
1398  0086 c45407        	and	a,21511
1399  0089               LC004:
1400  0089 c75407        	ld	21511,a
1402  008c 2037          	jra	L374
1403  008e               L774:
1404                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1406  008e 7b02          	ld	a,(OFST+2,sp)
1407  0090 ad35          	call	LC005
1408  0092 2704          	jreq	L042
1409  0094               L242:
1410  0094 48            	sll	a
1411  0095 5a            	decw	x
1412  0096 26fc          	jrne	L242
1413  0098               L042:
1414  0098 ca5407        	or	a,21511
1415  009b 20ec          	jp	LC004
1416  009d               L574:
1417                     ; 265     if (NewState != DISABLE)
1419  009d 1e05          	ldw	x,(OFST+5,sp)
1420  009f 2712          	jreq	L505
1421                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1423  00a1 7b02          	ld	a,(OFST+2,sp)
1424  00a3 a008          	sub	a,#8
1425  00a5 ad20          	call	LC005
1426  00a7 2704          	jreq	L442
1427  00a9               L642:
1428  00a9 48            	sll	a
1429  00aa 5a            	decw	x
1430  00ab 26fc          	jrne	L642
1431  00ad               L442:
1432  00ad 43            	cpl	a
1433  00ae c45406        	and	a,21510
1435  00b1 200f          	jp	LC003
1436  00b3               L505:
1437                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1439  00b3 7b02          	ld	a,(OFST+2,sp)
1440  00b5 a008          	sub	a,#8
1441  00b7 ad0e          	call	LC005
1442  00b9 2704          	jreq	L052
1443  00bb               L252:
1444  00bb 48            	sll	a
1445  00bc 5a            	decw	x
1446  00bd 26fc          	jrne	L252
1447  00bf               L052:
1448  00bf ca5406        	or	a,21510
1449  00c2               LC003:
1450  00c2 c75406        	ld	21510,a
1451  00c5               L374:
1452                     ; 274 }
1455  00c5 85            	popw	x
1456  00c6 81            	ret	
1457  00c7               LC005:
1458  00c7 5f            	clrw	x
1459  00c8 97            	ld	xl,a
1460  00c9 a601          	ld	a,#1
1461  00cb 5d            	tnzw	x
1462  00cc 81            	ret	
1463  00cd               LC006:
1464  00cd 89            	pushw	x
1465  00ce 5f            	clrw	x
1466  00cf 89            	pushw	x
1467  00d0 ae0000        	ldw	x,#L542
1468  00d3 cd0000        	call	_assert_failed
1470  00d6 5b04          	addw	sp,#4
1471  00d8 81            	ret	
1529                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1529                     ; 287 {
1530                     .text:	section	.text,new
1531  0000               _ADC1_ConversionConfig:
1533  0000 89            	pushw	x
1534       00000000      OFST:	set	0
1537                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1539  0001 5d            	tnzw	x
1540  0002 2708          	jreq	L262
1541  0004 5a            	decw	x
1542  0005 2705          	jreq	L262
1543  0007 ae0121        	ldw	x,#289
1544  000a ad76          	call	LC007
1545  000c               L262:
1546                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1548  000c 1e05          	ldw	x,(OFST+5,sp)
1549  000e 2737          	jreq	L272
1550  0010 a30001        	cpw	x,#1
1551  0013 2732          	jreq	L272
1552  0015 a30002        	cpw	x,#2
1553  0018 272d          	jreq	L272
1554  001a a30003        	cpw	x,#3
1555  001d 2728          	jreq	L272
1556  001f a30004        	cpw	x,#4
1557  0022 2723          	jreq	L272
1558  0024 a30005        	cpw	x,#5
1559  0027 271e          	jreq	L272
1560  0029 a30006        	cpw	x,#6
1561  002c 2719          	jreq	L272
1562  002e a30007        	cpw	x,#7
1563  0031 2714          	jreq	L272
1564  0033 a30008        	cpw	x,#8
1565  0036 270f          	jreq	L272
1566  0038 a3000c        	cpw	x,#12
1567  003b 270a          	jreq	L272
1568  003d a30009        	cpw	x,#9
1569  0040 2705          	jreq	L272
1570  0042 ae0122        	ldw	x,#290
1571  0045 ad3b          	call	LC007
1572  0047               L272:
1573                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1575  0047 1e07          	ldw	x,(OFST+7,sp)
1576  0049 270a          	jreq	L203
1577  004b a30008        	cpw	x,#8
1578  004e 2705          	jreq	L203
1579  0050 ae0123        	ldw	x,#291
1580  0053 ad2d          	call	LC007
1581  0055               L203:
1582                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1584  0055 72175402      	bres	21506,#3
1585                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1587  0059 c65402        	ld	a,21506
1588  005c 1a08          	or	a,(OFST+8,sp)
1589  005e c75402        	ld	21506,a
1590                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1592  0061 1e01          	ldw	x,(OFST+1,sp)
1593  0063 5a            	decw	x
1594  0064 2606          	jrne	L735
1595                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1597  0066 72125401      	bset	21505,#1
1599  006a 2004          	jra	L145
1600  006c               L735:
1601                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1603  006c 72135401      	bres	21505,#1
1604  0070               L145:
1605                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1607  0070 c65400        	ld	a,21504
1608  0073 a4f0          	and	a,#240
1609  0075 c75400        	ld	21504,a
1610                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1612  0078 c65400        	ld	a,21504
1613  007b 1a06          	or	a,(OFST+6,sp)
1614  007d c75400        	ld	21504,a
1615                     ; 313 }
1618  0080 85            	popw	x
1619  0081 81            	ret	
1620  0082               LC007:
1621  0082 89            	pushw	x
1622  0083 5f            	clrw	x
1623  0084 89            	pushw	x
1624  0085 ae0000        	ldw	x,#L542
1625  0088 cd0000        	call	_assert_failed
1627  008b 5b04          	addw	sp,#4
1628  008d 81            	ret	
1675                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1675                     ; 326 {
1676                     .text:	section	.text,new
1677  0000               _ADC1_ExternalTriggerConfig:
1679  0000 89            	pushw	x
1680       00000000      OFST:	set	0
1683                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1685  0001 5d            	tnzw	x
1686  0002 270a          	jreq	L413
1687  0004 a30010        	cpw	x,#16
1688  0007 2705          	jreq	L413
1689  0009 ae0148        	ldw	x,#328
1690  000c ad2c          	call	LC008
1691  000e               L413:
1692                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1694  000e 1e05          	ldw	x,(OFST+5,sp)
1695  0010 2708          	jreq	L423
1696  0012 5a            	decw	x
1697  0013 2705          	jreq	L423
1698  0015 ae0149        	ldw	x,#329
1699  0018 ad20          	call	LC008
1700  001a               L423:
1701                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1703  001a c65402        	ld	a,21506
1704  001d a4cf          	and	a,#207
1705  001f c75402        	ld	21506,a
1706                     ; 334   if (NewState != DISABLE)
1708  0022 1e05          	ldw	x,(OFST+5,sp)
1709  0024 2706          	jreq	L565
1710                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1712  0026 721c5402      	bset	21506,#6
1714  002a 2004          	jra	L765
1715  002c               L565:
1716                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1718  002c 721d5402      	bres	21506,#6
1719  0030               L765:
1720                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1722  0030 c65402        	ld	a,21506
1723  0033 1a02          	or	a,(OFST+2,sp)
1724  0035 c75402        	ld	21506,a
1725                     ; 347 }
1728  0038 85            	popw	x
1729  0039 81            	ret	
1730  003a               LC008:
1731  003a 89            	pushw	x
1732  003b 5f            	clrw	x
1733  003c 89            	pushw	x
1734  003d ae0000        	ldw	x,#L542
1735  0040 cd0000        	call	_assert_failed
1737  0043 5b04          	addw	sp,#4
1738  0045 81            	ret	
1762                     ; 358 void ADC1_StartConversion(void)
1762                     ; 359 {
1763                     .text:	section	.text,new
1764  0000               _ADC1_StartConversion:
1768                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1770  0000 72105401      	bset	21505,#0
1771                     ; 361 }
1774  0004 81            	ret	
1818                     ; 370 uint16_t ADC1_GetConversionValue(void)
1818                     ; 371 {
1819                     .text:	section	.text,new
1820  0000               _ADC1_GetConversionValue:
1822  0000 5205          	subw	sp,#5
1823       00000005      OFST:	set	5
1826                     ; 372   uint16_t temph = 0;
1828                     ; 373   uint8_t templ = 0;
1830                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1832  0002 720754020e    	btjf	21506,#3,L326
1833                     ; 378     templ = ADC1->DRL;
1835  0007 c65405        	ld	a,21509
1836  000a 6b03          	ld	(OFST-2,sp),a
1837                     ; 380     temph = ADC1->DRH;
1839  000c c65404        	ld	a,21508
1840  000f 97            	ld	xl,a
1841                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1843  0010 7b03          	ld	a,(OFST-2,sp)
1844  0012 02            	rlwa	x,a
1846  0013 201a          	jra	L526
1847  0015               L326:
1848                     ; 387     temph = ADC1->DRH;
1850  0015 c65404        	ld	a,21508
1851  0018 97            	ld	xl,a
1852                     ; 389     templ = ADC1->DRL;
1854  0019 c65405        	ld	a,21509
1855  001c 6b03          	ld	(OFST-2,sp),a
1856                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1858  001e 4f            	clr	a
1859  001f 02            	rlwa	x,a
1860  0020 1f01          	ldw	(OFST-4,sp),x
1861  0022 7b03          	ld	a,(OFST-2,sp)
1862  0024 97            	ld	xl,a
1863  0025 a640          	ld	a,#64
1864  0027 42            	mul	x,a
1865  0028 01            	rrwa	x,a
1866  0029 1a02          	or	a,(OFST-3,sp)
1867  002b 01            	rrwa	x,a
1868  002c 1a01          	or	a,(OFST-4,sp)
1869  002e 01            	rrwa	x,a
1870  002f               L526:
1871                     ; 394   return ((uint16_t)temph);
1875  002f 5b05          	addw	sp,#5
1876  0031 81            	ret	
1923                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1923                     ; 406 {
1924                     .text:	section	.text,new
1925  0000               _ADC1_AWDChannelConfig:
1927  0000 89            	pushw	x
1928       00000000      OFST:	set	0
1931                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1933  0001 1e05          	ldw	x,(OFST+5,sp)
1934  0003 2709          	jreq	L243
1935  0005 5a            	decw	x
1936  0006 2706          	jreq	L243
1937  0008 ae0198        	ldw	x,#408
1938  000b cd00ac        	call	LC011
1939  000e               L243:
1940                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1942  000e 1e01          	ldw	x,(OFST+1,sp)
1943  0010 2739          	jreq	L253
1944  0012 a30001        	cpw	x,#1
1945  0015 2734          	jreq	L253
1946  0017 a30002        	cpw	x,#2
1947  001a 272f          	jreq	L253
1948  001c a30003        	cpw	x,#3
1949  001f 272a          	jreq	L253
1950  0021 a30004        	cpw	x,#4
1951  0024 2725          	jreq	L253
1952  0026 a30005        	cpw	x,#5
1953  0029 2720          	jreq	L253
1954  002b a30006        	cpw	x,#6
1955  002e 271b          	jreq	L253
1956  0030 a30007        	cpw	x,#7
1957  0033 2716          	jreq	L253
1958  0035 a30008        	cpw	x,#8
1959  0038 2711          	jreq	L253
1960  003a a3000c        	cpw	x,#12
1961  003d 270c          	jreq	L253
1962  003f a30009        	cpw	x,#9
1963  0042 2707          	jreq	L253
1964  0044 ae0199        	ldw	x,#409
1965  0047 ad63          	call	LC011
1966  0049 1e01          	ldw	x,(OFST+1,sp)
1967  004b               L253:
1968                     ; 411   if (Channel < (uint8_t)8)
1970  004b a30008        	cpw	x,#8
1971  004e 2e30          	jrsge	L156
1972                     ; 413     if (NewState != DISABLE)
1974  0050 1e05          	ldw	x,(OFST+5,sp)
1975  0052 2714          	jreq	L356
1976                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1978  0054 7b02          	ld	a,(OFST+2,sp)
1979  0056 5f            	clrw	x
1980  0057 4d            	tnz	a
1981  0058 2a01          	jrpl	L653
1982  005a 53            	cplw	x
1983  005b               L653:
1984  005b ad5b          	call	LC012
1985  005d 2704          	jreq	L063
1986  005f               L263:
1987  005f 48            	sll	a
1988  0060 5a            	decw	x
1989  0061 26fc          	jrne	L263
1990  0063               L063:
1991  0063 ca540f        	or	a,21519
1993  0066 2013          	jp	LC010
1994  0068               L356:
1995                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
1997  0068 7b02          	ld	a,(OFST+2,sp)
1998  006a 5f            	clrw	x
1999  006b 4d            	tnz	a
2000  006c 2a01          	jrpl	L463
2001  006e 53            	cplw	x
2002  006f               L463:
2003  006f ad47          	call	LC012
2004  0071 2704          	jreq	L663
2005  0073               L073:
2006  0073 48            	sll	a
2007  0074 5a            	decw	x
2008  0075 26fc          	jrne	L073
2009  0077               L663:
2010  0077 43            	cpl	a
2011  0078 c4540f        	and	a,21519
2012  007b               LC010:
2013  007b c7540f        	ld	21519,a
2014  007e 202a          	jra	L756
2015  0080               L156:
2016                     ; 424     if (NewState != DISABLE)
2018  0080 1e05          	ldw	x,(OFST+5,sp)
2019  0082 2712          	jreq	L166
2020                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2022  0084 7b02          	ld	a,(OFST+2,sp)
2023  0086 a008          	sub	a,#8
2024  0088 5f            	clrw	x
2025  0089 ad2d          	call	LC012
2026  008b 2704          	jreq	L273
2027  008d               L473:
2028  008d 48            	sll	a
2029  008e 5a            	decw	x
2030  008f 26fc          	jrne	L473
2031  0091               L273:
2032  0091 ca540e        	or	a,21518
2034  0094 2011          	jp	LC009
2035  0096               L166:
2036                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2038  0096 7b02          	ld	a,(OFST+2,sp)
2039  0098 a008          	sub	a,#8
2040  009a 5f            	clrw	x
2041  009b ad1b          	call	LC012
2042  009d 2704          	jreq	L673
2043  009f               L004:
2044  009f 48            	sll	a
2045  00a0 5a            	decw	x
2046  00a1 26fc          	jrne	L004
2047  00a3               L673:
2048  00a3 43            	cpl	a
2049  00a4 c4540e        	and	a,21518
2050  00a7               LC009:
2051  00a7 c7540e        	ld	21518,a
2052  00aa               L756:
2053                     ; 433 }
2056  00aa 85            	popw	x
2057  00ab 81            	ret	
2058  00ac               LC011:
2059  00ac 89            	pushw	x
2060  00ad 5f            	clrw	x
2061  00ae 89            	pushw	x
2062  00af ae0000        	ldw	x,#L542
2063  00b2 cd0000        	call	_assert_failed
2065  00b5 5b04          	addw	sp,#4
2066  00b7 81            	ret	
2067  00b8               LC012:
2068  00b8 97            	ld	xl,a
2069  00b9 a601          	ld	a,#1
2070  00bb 5d            	tnzw	x
2071  00bc 81            	ret	
2106                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2106                     ; 442 {
2107                     .text:	section	.text,new
2108  0000               _ADC1_SetHighThreshold:
2110  0000 89            	pushw	x
2111       00000000      OFST:	set	0
2114                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2116  0001 54            	srlw	x
2117  0002 54            	srlw	x
2118  0003 9f            	ld	a,xl
2119  0004 c75408        	ld	21512,a
2120                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2122  0007 7b02          	ld	a,(OFST+2,sp)
2123  0009 c75409        	ld	21513,a
2124                     ; 445 }
2127  000c 85            	popw	x
2128  000d 81            	ret	
2163                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2163                     ; 454 {
2164                     .text:	section	.text,new
2165  0000               _ADC1_SetLowThreshold:
2169                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2171  0000 9f            	ld	a,xl
2172  0001 c7540b        	ld	21515,a
2173                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2175  0004 54            	srlw	x
2176  0005 54            	srlw	x
2177  0006 9f            	ld	a,xl
2178  0007 c7540a        	ld	21514,a
2179                     ; 457 }
2182  000a 81            	ret	
2236                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2236                     ; 467 {
2237                     .text:	section	.text,new
2238  0000               _ADC1_GetBufferValue:
2240  0000 88            	push	a
2241  0001 5205          	subw	sp,#5
2242       00000005      OFST:	set	5
2245                     ; 468   uint16_t temph = 0;
2247                     ; 469   uint8_t templ = 0;
2249                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2251  0003 a10a          	cp	a,#10
2252  0005 250e          	jrult	L214
2253  0007 ae01d8        	ldw	x,#472
2254  000a 89            	pushw	x
2255  000b 5f            	clrw	x
2256  000c 89            	pushw	x
2257  000d ae0000        	ldw	x,#L542
2258  0010 cd0000        	call	_assert_failed
2260  0013 5b04          	addw	sp,#4
2261  0015               L214:
2262                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2264  0015 7b06          	ld	a,(OFST+1,sp)
2265  0017 48            	sll	a
2266  0018 5f            	clrw	x
2267  0019 97            	ld	xl,a
2268  001a 7207540213    	btjf	21506,#3,L747
2269                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2271  001f d653e1        	ld	a,(21473,x)
2272  0022 6b03          	ld	(OFST-2,sp),a
2273                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2275  0024 7b06          	ld	a,(OFST+1,sp)
2276  0026 48            	sll	a
2277  0027 5f            	clrw	x
2278  0028 97            	ld	xl,a
2279  0029 d653e0        	ld	a,(21472,x)
2280  002c 97            	ld	xl,a
2281                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2283  002d 7b03          	ld	a,(OFST-2,sp)
2284  002f 02            	rlwa	x,a
2286  0030 2024          	jra	L157
2287  0032               L747:
2288                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2290  0032 d653e0        	ld	a,(21472,x)
2291  0035 5f            	clrw	x
2292  0036 97            	ld	xl,a
2293  0037 1f04          	ldw	(OFST-1,sp),x
2294                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2296  0039 7b06          	ld	a,(OFST+1,sp)
2297  003b 48            	sll	a
2298  003c 5f            	clrw	x
2299  003d 97            	ld	xl,a
2300  003e d653e1        	ld	a,(21473,x)
2301  0041 6b03          	ld	(OFST-2,sp),a
2302                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2304  0043 4f            	clr	a
2305  0044 1e04          	ldw	x,(OFST-1,sp)
2306  0046 02            	rlwa	x,a
2307  0047 1f01          	ldw	(OFST-4,sp),x
2308  0049 7b03          	ld	a,(OFST-2,sp)
2309  004b 97            	ld	xl,a
2310  004c a640          	ld	a,#64
2311  004e 42            	mul	x,a
2312  004f 01            	rrwa	x,a
2313  0050 1a02          	or	a,(OFST-3,sp)
2314  0052 01            	rrwa	x,a
2315  0053 1a01          	or	a,(OFST-4,sp)
2316  0055 01            	rrwa	x,a
2317  0056               L157:
2318                     ; 493   return ((uint16_t)temph);
2322  0056 5b06          	addw	sp,#6
2323  0058 81            	ret	
2390                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2390                     ; 503 {
2391                     .text:	section	.text,new
2392  0000               _ADC1_GetAWDChannelStatus:
2394  0000 89            	pushw	x
2395  0001 88            	push	a
2396       00000001      OFST:	set	1
2399                     ; 504   uint8_t status = 0;
2401                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2403  0002 5d            	tnzw	x
2404  0003 2740          	jreq	L424
2405  0005 a30001        	cpw	x,#1
2406  0008 273b          	jreq	L424
2407  000a a30002        	cpw	x,#2
2408  000d 2736          	jreq	L424
2409  000f a30003        	cpw	x,#3
2410  0012 2731          	jreq	L424
2411  0014 a30004        	cpw	x,#4
2412  0017 272c          	jreq	L424
2413  0019 a30005        	cpw	x,#5
2414  001c 2727          	jreq	L424
2415  001e a30006        	cpw	x,#6
2416  0021 2722          	jreq	L424
2417  0023 a30007        	cpw	x,#7
2418  0026 271d          	jreq	L424
2419  0028 a30008        	cpw	x,#8
2420  002b 2718          	jreq	L424
2421  002d a3000c        	cpw	x,#12
2422  0030 2713          	jreq	L424
2423  0032 a30009        	cpw	x,#9
2424  0035 270e          	jreq	L424
2425  0037 ae01fb        	ldw	x,#507
2426  003a 89            	pushw	x
2427  003b 5f            	clrw	x
2428  003c 89            	pushw	x
2429  003d ae0000        	ldw	x,#L542
2430  0040 cd0000        	call	_assert_failed
2432  0043 5b04          	addw	sp,#4
2433  0045               L424:
2434                     ; 509   if (Channel < (uint8_t)8)
2436  0045 1e02          	ldw	x,(OFST+1,sp)
2437  0047 a30008        	cpw	x,#8
2438  004a 2e16          	jrsge	L5001
2439                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2441  004c 7b03          	ld	a,(OFST+2,sp)
2442  004e 5f            	clrw	x
2443  004f 4d            	tnz	a
2444  0050 2a01          	jrpl	L034
2445  0052 53            	cplw	x
2446  0053               L034:
2447  0053 97            	ld	xl,a
2448  0054 a601          	ld	a,#1
2449  0056 5d            	tnzw	x
2450  0057 2704          	jreq	L234
2451  0059               L434:
2452  0059 48            	sll	a
2453  005a 5a            	decw	x
2454  005b 26fc          	jrne	L434
2455  005d               L234:
2456  005d c4540d        	and	a,21517
2458  0060 2012          	jra	L7001
2459  0062               L5001:
2460                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2462  0062 7b03          	ld	a,(OFST+2,sp)
2463  0064 a008          	sub	a,#8
2464  0066 5f            	clrw	x
2465  0067 97            	ld	xl,a
2466  0068 a601          	ld	a,#1
2467  006a 5d            	tnzw	x
2468  006b 2704          	jreq	L634
2469  006d               L044:
2470  006d 48            	sll	a
2471  006e 5a            	decw	x
2472  006f 26fc          	jrne	L044
2473  0071               L634:
2474  0071 c4540c        	and	a,21516
2475  0074               L7001:
2476                     ; 518   return ((FlagStatus)status);
2478  0074 5f            	clrw	x
2479  0075 97            	ld	xl,a
2482  0076 5b03          	addw	sp,#3
2483  0078 81            	ret	
2642                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2642                     ; 528 {
2643                     .text:	section	.text,new
2644  0000               _ADC1_GetFlagStatus:
2646  0000 89            	pushw	x
2647  0001 88            	push	a
2648       00000001      OFST:	set	1
2651                     ; 529   uint8_t flagstatus = 0;
2653                     ; 530   uint8_t temp = 0;
2655                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2657  0002 a30080        	cpw	x,#128
2658  0005 274a          	jreq	L054
2659  0007 a30041        	cpw	x,#65
2660  000a 2745          	jreq	L054
2661  000c a30040        	cpw	x,#64
2662  000f 2740          	jreq	L054
2663  0011 a30010        	cpw	x,#16
2664  0014 273b          	jreq	L054
2665  0016 a30011        	cpw	x,#17
2666  0019 2736          	jreq	L054
2667  001b a30012        	cpw	x,#18
2668  001e 2731          	jreq	L054
2669  0020 a30013        	cpw	x,#19
2670  0023 272c          	jreq	L054
2671  0025 a30014        	cpw	x,#20
2672  0028 2727          	jreq	L054
2673  002a a30015        	cpw	x,#21
2674  002d 2722          	jreq	L054
2675  002f a30016        	cpw	x,#22
2676  0032 271d          	jreq	L054
2677  0034 a30017        	cpw	x,#23
2678  0037 2718          	jreq	L054
2679  0039 a30018        	cpw	x,#24
2680  003c 2713          	jreq	L054
2681  003e a30019        	cpw	x,#25
2682  0041 270e          	jreq	L054
2683  0043 ae0215        	ldw	x,#533
2684  0046 89            	pushw	x
2685  0047 5f            	clrw	x
2686  0048 89            	pushw	x
2687  0049 ae0000        	ldw	x,#L542
2688  004c cd0000        	call	_assert_failed
2690  004f 5b04          	addw	sp,#4
2691  0051               L054:
2692                     ; 535   if ((Flag & 0x0F) == 0x01)
2694  0051 7b03          	ld	a,(OFST+2,sp)
2695  0053 a40f          	and	a,#15
2696  0055 5f            	clrw	x
2697  0056 02            	rlwa	x,a
2698  0057 5a            	decw	x
2699  0058 2607          	jrne	L7701
2700                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2702  005a c65403        	ld	a,21507
2703  005d a440          	and	a,#64
2705  005f 203c          	jra	L1011
2706  0061               L7701:
2707                     ; 540   else if ((Flag & 0xF0) == 0x10)
2709  0061 7b03          	ld	a,(OFST+2,sp)
2710  0063 a4f0          	and	a,#240
2711  0065 5f            	clrw	x
2712  0066 02            	rlwa	x,a
2713  0067 a30010        	cpw	x,#16
2714  006a 262c          	jrne	L3011
2715                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2717  006c 7b03          	ld	a,(OFST+2,sp)
2718  006e a40f          	and	a,#15
2719  0070 6b01          	ld	(OFST+0,sp),a
2720                     ; 544     if (temp < 8)
2722  0072 a108          	cp	a,#8
2723  0074 2410          	jruge	L5011
2724                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2726  0076 5f            	clrw	x
2727  0077 97            	ld	xl,a
2728  0078 a601          	ld	a,#1
2729  007a 5d            	tnzw	x
2730  007b 2704          	jreq	L454
2731  007d               L654:
2732  007d 48            	sll	a
2733  007e 5a            	decw	x
2734  007f 26fc          	jrne	L654
2735  0081               L454:
2736  0081 c4540d        	and	a,21517
2738  0084 2017          	jra	L1011
2739  0086               L5011:
2740                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2742  0086 a008          	sub	a,#8
2743  0088 5f            	clrw	x
2744  0089 97            	ld	xl,a
2745  008a a601          	ld	a,#1
2746  008c 5d            	tnzw	x
2747  008d 2704          	jreq	L064
2748  008f               L264:
2749  008f 48            	sll	a
2750  0090 5a            	decw	x
2751  0091 26fc          	jrne	L264
2752  0093               L064:
2753  0093 c4540c        	and	a,21516
2754  0096 2005          	jra	L1011
2755  0098               L3011:
2756                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
2758  0098 c65400        	ld	a,21504
2759  009b 1403          	and	a,(OFST+2,sp)
2760  009d               L1011:
2761                     ; 557   return ((FlagStatus)flagstatus);
2763  009d 5f            	clrw	x
2764  009e 97            	ld	xl,a
2767  009f 5b03          	addw	sp,#3
2768  00a1 81            	ret	
2813                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2813                     ; 568 {
2814                     .text:	section	.text,new
2815  0000               _ADC1_ClearFlag:
2817  0000 89            	pushw	x
2818  0001 88            	push	a
2819       00000001      OFST:	set	1
2822                     ; 569   uint8_t temp = 0;
2824                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
2826  0002 a30080        	cpw	x,#128
2827  0005 274a          	jreq	L274
2828  0007 a30041        	cpw	x,#65
2829  000a 2745          	jreq	L274
2830  000c a30040        	cpw	x,#64
2831  000f 2740          	jreq	L274
2832  0011 a30010        	cpw	x,#16
2833  0014 273b          	jreq	L274
2834  0016 a30011        	cpw	x,#17
2835  0019 2736          	jreq	L274
2836  001b a30012        	cpw	x,#18
2837  001e 2731          	jreq	L274
2838  0020 a30013        	cpw	x,#19
2839  0023 272c          	jreq	L274
2840  0025 a30014        	cpw	x,#20
2841  0028 2727          	jreq	L274
2842  002a a30015        	cpw	x,#21
2843  002d 2722          	jreq	L274
2844  002f a30016        	cpw	x,#22
2845  0032 271d          	jreq	L274
2846  0034 a30017        	cpw	x,#23
2847  0037 2718          	jreq	L274
2848  0039 a30018        	cpw	x,#24
2849  003c 2713          	jreq	L274
2850  003e a30019        	cpw	x,#25
2851  0041 270e          	jreq	L274
2852  0043 ae023c        	ldw	x,#572
2853  0046 89            	pushw	x
2854  0047 5f            	clrw	x
2855  0048 89            	pushw	x
2856  0049 ae0000        	ldw	x,#L542
2857  004c cd0000        	call	_assert_failed
2859  004f 5b04          	addw	sp,#4
2860  0051               L274:
2861                     ; 574   if ((Flag & 0x0F) == 0x01)
2863  0051 7b03          	ld	a,(OFST+2,sp)
2864  0053 a40f          	and	a,#15
2865  0055 5f            	clrw	x
2866  0056 02            	rlwa	x,a
2867  0057 5a            	decw	x
2868  0058 2606          	jrne	L5311
2869                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2871  005a 721d5403      	bres	21507,#6
2873  005e 2048          	jra	L7311
2874  0060               L5311:
2875                     ; 579   else if ((Flag & 0xF0) == 0x10)
2877  0060 7b03          	ld	a,(OFST+2,sp)
2878  0062 a4f0          	and	a,#240
2879  0064 5f            	clrw	x
2880  0065 02            	rlwa	x,a
2881  0066 a30010        	cpw	x,#16
2882  0069 2634          	jrne	L1411
2883                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2885  006b 7b03          	ld	a,(OFST+2,sp)
2886  006d a40f          	and	a,#15
2887  006f 6b01          	ld	(OFST+0,sp),a
2888                     ; 583     if (temp < 8)
2890  0071 a108          	cp	a,#8
2891  0073 2414          	jruge	L3411
2892                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2894  0075 5f            	clrw	x
2895  0076 97            	ld	xl,a
2896  0077 a601          	ld	a,#1
2897  0079 5d            	tnzw	x
2898  007a 2704          	jreq	L674
2899  007c               L005:
2900  007c 48            	sll	a
2901  007d 5a            	decw	x
2902  007e 26fc          	jrne	L005
2903  0080               L674:
2904  0080 43            	cpl	a
2905  0081 c4540d        	and	a,21517
2906  0084 c7540d        	ld	21517,a
2908  0087 201f          	jra	L7311
2909  0089               L3411:
2910                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2912  0089 a008          	sub	a,#8
2913  008b 5f            	clrw	x
2914  008c 97            	ld	xl,a
2915  008d a601          	ld	a,#1
2916  008f 5d            	tnzw	x
2917  0090 2704          	jreq	L205
2918  0092               L405:
2919  0092 48            	sll	a
2920  0093 5a            	decw	x
2921  0094 26fc          	jrne	L405
2922  0096               L205:
2923  0096 43            	cpl	a
2924  0097 c4540c        	and	a,21516
2925  009a c7540c        	ld	21516,a
2926  009d 2009          	jra	L7311
2927  009f               L1411:
2928                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
2930  009f 7b03          	ld	a,(OFST+2,sp)
2931  00a1 43            	cpl	a
2932  00a2 c45400        	and	a,21504
2933  00a5 c75400        	ld	21504,a
2934  00a8               L7311:
2935                     ; 596 }
2938  00a8 5b03          	addw	sp,#3
2939  00aa 81            	ret	
2995                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2995                     ; 617 {
2996                     .text:	section	.text,new
2997  0000               _ADC1_GetITStatus:
2999  0000 89            	pushw	x
3000  0001 5205          	subw	sp,#5
3001       00000005      OFST:	set	5
3004                     ; 618   ITStatus itstatus = RESET;
3006                     ; 619   uint8_t temp = 0;
3008                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3010  0003 a30080        	cpw	x,#128
3011  0006 274a          	jreq	L415
3012  0008 a30140        	cpw	x,#320
3013  000b 2745          	jreq	L415
3014  000d a30110        	cpw	x,#272
3015  0010 2740          	jreq	L415
3016  0012 a30111        	cpw	x,#273
3017  0015 273b          	jreq	L415
3018  0017 a30112        	cpw	x,#274
3019  001a 2736          	jreq	L415
3020  001c a30113        	cpw	x,#275
3021  001f 2731          	jreq	L415
3022  0021 a30114        	cpw	x,#276
3023  0024 272c          	jreq	L415
3024  0026 a30115        	cpw	x,#277
3025  0029 2727          	jreq	L415
3026  002b a30116        	cpw	x,#278
3027  002e 2722          	jreq	L415
3028  0030 a30117        	cpw	x,#279
3029  0033 271d          	jreq	L415
3030  0035 a30118        	cpw	x,#280
3031  0038 2718          	jreq	L415
3032  003a a3011c        	cpw	x,#284
3033  003d 2713          	jreq	L415
3034  003f a30119        	cpw	x,#281
3035  0042 270e          	jreq	L415
3036  0044 ae026e        	ldw	x,#622
3037  0047 89            	pushw	x
3038  0048 5f            	clrw	x
3039  0049 89            	pushw	x
3040  004a ae0000        	ldw	x,#L542
3041  004d cd0000        	call	_assert_failed
3043  0050 5b04          	addw	sp,#4
3044  0052               L415:
3045                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3047  0052 7b07          	ld	a,(OFST+2,sp)
3048  0054 a4f0          	and	a,#240
3049  0056 5f            	clrw	x
3050  0057 02            	rlwa	x,a
3051  0058 a30010        	cpw	x,#16
3052  005b 2638          	jrne	L7711
3053                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3055  005d 7b07          	ld	a,(OFST+2,sp)
3056  005f a40f          	and	a,#15
3057  0061 6b05          	ld	(OFST+0,sp),a
3058                     ; 628     if (temp < 8)
3060  0063 a108          	cp	a,#8
3061  0065 2416          	jruge	L1021
3062                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3064  0067 c6540d        	ld	a,21517
3065  006a 5f            	clrw	x
3066  006b 97            	ld	xl,a
3067  006c 1f01          	ldw	(OFST-4,sp),x
3068  006e 5f            	clrw	x
3069  006f 7b05          	ld	a,(OFST+0,sp)
3070  0071 97            	ld	xl,a
3071  0072 a601          	ld	a,#1
3072  0074 5d            	tnzw	x
3073  0075 2727          	jreq	L5021
3074  0077               L225:
3075  0077 48            	sll	a
3076  0078 5a            	decw	x
3077  0079 26fc          	jrne	L225
3079  007b 2021          	jra	L5021
3080  007d               L1021:
3081                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3083  007d c6540c        	ld	a,21516
3084  0080 5f            	clrw	x
3085  0081 97            	ld	xl,a
3086  0082 1f01          	ldw	(OFST-4,sp),x
3087  0084 7b05          	ld	a,(OFST+0,sp)
3088  0086 a008          	sub	a,#8
3089  0088 5f            	clrw	x
3090  0089 97            	ld	xl,a
3091  008a a601          	ld	a,#1
3092  008c 5d            	tnzw	x
3093  008d 270f          	jreq	L5021
3094  008f               L625:
3095  008f 48            	sll	a
3096  0090 5a            	decw	x
3097  0091 26fc          	jrne	L625
3098  0093 2009          	jra	L5021
3099  0095               L7711:
3100                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3102  0095 7b07          	ld	a,(OFST+2,sp)
3103  0097 5f            	clrw	x
3104  0098 97            	ld	xl,a
3105  0099 1f01          	ldw	(OFST-4,sp),x
3106  009b c65400        	ld	a,21504
3107  009e               L5021:
3108  009e 5f            	clrw	x
3109  009f 97            	ld	xl,a
3110  00a0 01            	rrwa	x,a
3111  00a1 1402          	and	a,(OFST-3,sp)
3112  00a3 01            	rrwa	x,a
3113  00a4 1401          	and	a,(OFST-4,sp)
3114  00a6 01            	rrwa	x,a
3115                     ; 641   return ((ITStatus)itstatus);
3119  00a7 5b07          	addw	sp,#7
3120  00a9 81            	ret	
3166                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3166                     ; 663 {
3167                     .text:	section	.text,new
3168  0000               _ADC1_ClearITPendingBit:
3170  0000 89            	pushw	x
3171  0001 88            	push	a
3172       00000001      OFST:	set	1
3175                     ; 664   uint8_t temp = 0;
3177                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3179  0002 a30080        	cpw	x,#128
3180  0005 274a          	jreq	L635
3181  0007 a30140        	cpw	x,#320
3182  000a 2745          	jreq	L635
3183  000c a30110        	cpw	x,#272
3184  000f 2740          	jreq	L635
3185  0011 a30111        	cpw	x,#273
3186  0014 273b          	jreq	L635
3187  0016 a30112        	cpw	x,#274
3188  0019 2736          	jreq	L635
3189  001b a30113        	cpw	x,#275
3190  001e 2731          	jreq	L635
3191  0020 a30114        	cpw	x,#276
3192  0023 272c          	jreq	L635
3193  0025 a30115        	cpw	x,#277
3194  0028 2727          	jreq	L635
3195  002a a30116        	cpw	x,#278
3196  002d 2722          	jreq	L635
3197  002f a30117        	cpw	x,#279
3198  0032 271d          	jreq	L635
3199  0034 a30118        	cpw	x,#280
3200  0037 2718          	jreq	L635
3201  0039 a3011c        	cpw	x,#284
3202  003c 2713          	jreq	L635
3203  003e a30119        	cpw	x,#281
3204  0041 270e          	jreq	L635
3205  0043 ae029b        	ldw	x,#667
3206  0046 89            	pushw	x
3207  0047 5f            	clrw	x
3208  0048 89            	pushw	x
3209  0049 ae0000        	ldw	x,#L542
3210  004c cd0000        	call	_assert_failed
3212  004f 5b04          	addw	sp,#4
3213  0051               L635:
3214                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3216  0051 7b03          	ld	a,(OFST+2,sp)
3217  0053 a4f0          	and	a,#240
3218  0055 5f            	clrw	x
3219  0056 02            	rlwa	x,a
3220  0057 a30010        	cpw	x,#16
3221  005a 2634          	jrne	L1321
3222                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3224  005c 7b03          	ld	a,(OFST+2,sp)
3225  005e a40f          	and	a,#15
3226  0060 6b01          	ld	(OFST+0,sp),a
3227                     ; 673     if (temp < 8)
3229  0062 a108          	cp	a,#8
3230  0064 2414          	jruge	L3321
3231                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3233  0066 5f            	clrw	x
3234  0067 97            	ld	xl,a
3235  0068 a601          	ld	a,#1
3236  006a 5d            	tnzw	x
3237  006b 2704          	jreq	L245
3238  006d               L445:
3239  006d 48            	sll	a
3240  006e 5a            	decw	x
3241  006f 26fc          	jrne	L445
3242  0071               L245:
3243  0071 43            	cpl	a
3244  0072 c4540d        	and	a,21517
3245  0075 c7540d        	ld	21517,a
3247  0078 201f          	jra	L7321
3248  007a               L3321:
3249                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3251  007a a008          	sub	a,#8
3252  007c 5f            	clrw	x
3253  007d 97            	ld	xl,a
3254  007e a601          	ld	a,#1
3255  0080 5d            	tnzw	x
3256  0081 2704          	jreq	L645
3257  0083               L055:
3258  0083 48            	sll	a
3259  0084 5a            	decw	x
3260  0085 26fc          	jrne	L055
3261  0087               L645:
3262  0087 43            	cpl	a
3263  0088 c4540c        	and	a,21516
3264  008b c7540c        	ld	21516,a
3265  008e 2009          	jra	L7321
3266  0090               L1321:
3267                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3269  0090 7b03          	ld	a,(OFST+2,sp)
3270  0092 43            	cpl	a
3271  0093 c45400        	and	a,21504
3272  0096 c75400        	ld	21504,a
3273  0099               L7321:
3274                     ; 686 }
3277  0099 5b03          	addw	sp,#3
3278  009b 81            	ret	
3291                     	xdef	_ADC1_ClearITPendingBit
3292                     	xdef	_ADC1_GetITStatus
3293                     	xdef	_ADC1_ClearFlag
3294                     	xdef	_ADC1_GetFlagStatus
3295                     	xdef	_ADC1_GetAWDChannelStatus
3296                     	xdef	_ADC1_GetBufferValue
3297                     	xdef	_ADC1_SetLowThreshold
3298                     	xdef	_ADC1_SetHighThreshold
3299                     	xdef	_ADC1_GetConversionValue
3300                     	xdef	_ADC1_StartConversion
3301                     	xdef	_ADC1_AWDChannelConfig
3302                     	xdef	_ADC1_ExternalTriggerConfig
3303                     	xdef	_ADC1_ConversionConfig
3304                     	xdef	_ADC1_SchmittTriggerConfig
3305                     	xdef	_ADC1_PrescalerConfig
3306                     	xdef	_ADC1_ITConfig
3307                     	xdef	_ADC1_DataBufferCmd
3308                     	xdef	_ADC1_ScanModeCmd
3309                     	xdef	_ADC1_Cmd
3310                     	xdef	_ADC1_Init
3311                     	xdef	_ADC1_DeInit
3312                     	xref	_assert_failed
3313                     .const:	section	.text
3314  0000               L542:
3315  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
3316  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
3317  0024 72697665725c  	dc.b	"river\src\stm8s_ad"
3318  0036 63312e6300    	dc.b	"c1.c",0
3338                     	end

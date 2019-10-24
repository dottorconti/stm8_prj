   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  46                     ; 52 void ADC1_DeInit(void)
  46                     ; 53 {
  48                     .text:	section	.text,new
  49  0000               _ADC1_DeInit:
  53                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  55  0000 725f5400      	clr	21504
  56                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  58  0004 725f5401      	clr	21505
  59                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  61  0008 725f5402      	clr	21506
  62                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  64  000c 725f5403      	clr	21507
  65                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  67  0010 725f5406      	clr	21510
  68                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  70  0014 725f5407      	clr	21511
  71                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  73  0018 35ff5408      	mov	21512,#255
  74                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  76  001c 35035409      	mov	21513,#3
  77                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  79  0020 725f540a      	clr	21514
  80                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  82  0024 725f540b      	clr	21515
  83                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  85  0028 725f540e      	clr	21518
  86                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  88  002c 725f540f      	clr	21519
  89                     ; 66 }
  92  0030 81            	ret
 544                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 544                     ; 89 {
 545                     .text:	section	.text,new
 546  0000               _ADC1_Init:
 548  0000 89            	pushw	x
 549       00000000      OFST:	set	0
 552                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 554  0001 a30000        	cpw	x,#0
 555  0004 2705          	jreq	L21
 556  0006 a30001        	cpw	x,#1
 557  0009 2603          	jrne	L01
 558  000b               L21:
 559  000b 4f            	clr	a
 560  000c 2010          	jra	L41
 561  000e               L01:
 562  000e ae005b        	ldw	x,#91
 563  0011 89            	pushw	x
 564  0012 ae0000        	ldw	x,#0
 565  0015 89            	pushw	x
 566  0016 ae0000        	ldw	x,#L542
 567  0019 cd0000        	call	_assert_failed
 569  001c 5b04          	addw	sp,#4
 570  001e               L41:
 571                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 573  001e 1e05          	ldw	x,(OFST+5,sp)
 574  0020 2746          	jreq	L02
 575  0022 1e05          	ldw	x,(OFST+5,sp)
 576  0024 a30001        	cpw	x,#1
 577  0027 273f          	jreq	L02
 578  0029 1e05          	ldw	x,(OFST+5,sp)
 579  002b a30002        	cpw	x,#2
 580  002e 2738          	jreq	L02
 581  0030 1e05          	ldw	x,(OFST+5,sp)
 582  0032 a30003        	cpw	x,#3
 583  0035 2731          	jreq	L02
 584  0037 1e05          	ldw	x,(OFST+5,sp)
 585  0039 a30004        	cpw	x,#4
 586  003c 272a          	jreq	L02
 587  003e 1e05          	ldw	x,(OFST+5,sp)
 588  0040 a30005        	cpw	x,#5
 589  0043 2723          	jreq	L02
 590  0045 1e05          	ldw	x,(OFST+5,sp)
 591  0047 a30006        	cpw	x,#6
 592  004a 271c          	jreq	L02
 593  004c 1e05          	ldw	x,(OFST+5,sp)
 594  004e a30007        	cpw	x,#7
 595  0051 2715          	jreq	L02
 596  0053 1e05          	ldw	x,(OFST+5,sp)
 597  0055 a30008        	cpw	x,#8
 598  0058 270e          	jreq	L02
 599  005a 1e05          	ldw	x,(OFST+5,sp)
 600  005c a3000c        	cpw	x,#12
 601  005f 2707          	jreq	L02
 602  0061 1e05          	ldw	x,(OFST+5,sp)
 603  0063 a30009        	cpw	x,#9
 604  0066 2603          	jrne	L61
 605  0068               L02:
 606  0068 4f            	clr	a
 607  0069 2010          	jra	L22
 608  006b               L61:
 609  006b ae005c        	ldw	x,#92
 610  006e 89            	pushw	x
 611  006f ae0000        	ldw	x,#0
 612  0072 89            	pushw	x
 613  0073 ae0000        	ldw	x,#L542
 614  0076 cd0000        	call	_assert_failed
 616  0079 5b04          	addw	sp,#4
 617  007b               L22:
 618                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 620  007b 1e07          	ldw	x,(OFST+7,sp)
 621  007d 2731          	jreq	L62
 622  007f 1e07          	ldw	x,(OFST+7,sp)
 623  0081 a30010        	cpw	x,#16
 624  0084 272a          	jreq	L62
 625  0086 1e07          	ldw	x,(OFST+7,sp)
 626  0088 a30020        	cpw	x,#32
 627  008b 2723          	jreq	L62
 628  008d 1e07          	ldw	x,(OFST+7,sp)
 629  008f a30030        	cpw	x,#48
 630  0092 271c          	jreq	L62
 631  0094 1e07          	ldw	x,(OFST+7,sp)
 632  0096 a30040        	cpw	x,#64
 633  0099 2715          	jreq	L62
 634  009b 1e07          	ldw	x,(OFST+7,sp)
 635  009d a30050        	cpw	x,#80
 636  00a0 270e          	jreq	L62
 637  00a2 1e07          	ldw	x,(OFST+7,sp)
 638  00a4 a30060        	cpw	x,#96
 639  00a7 2707          	jreq	L62
 640  00a9 1e07          	ldw	x,(OFST+7,sp)
 641  00ab a30070        	cpw	x,#112
 642  00ae 2603          	jrne	L42
 643  00b0               L62:
 644  00b0 4f            	clr	a
 645  00b1 2010          	jra	L03
 646  00b3               L42:
 647  00b3 ae005d        	ldw	x,#93
 648  00b6 89            	pushw	x
 649  00b7 ae0000        	ldw	x,#0
 650  00ba 89            	pushw	x
 651  00bb ae0000        	ldw	x,#L542
 652  00be cd0000        	call	_assert_failed
 654  00c1 5b04          	addw	sp,#4
 655  00c3               L03:
 656                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 658  00c3 1e09          	ldw	x,(OFST+9,sp)
 659  00c5 2707          	jreq	L43
 660  00c7 1e09          	ldw	x,(OFST+9,sp)
 661  00c9 a30010        	cpw	x,#16
 662  00cc 2603          	jrne	L23
 663  00ce               L43:
 664  00ce 4f            	clr	a
 665  00cf 2010          	jra	L63
 666  00d1               L23:
 667  00d1 ae005e        	ldw	x,#94
 668  00d4 89            	pushw	x
 669  00d5 ae0000        	ldw	x,#0
 670  00d8 89            	pushw	x
 671  00d9 ae0000        	ldw	x,#L542
 672  00dc cd0000        	call	_assert_failed
 674  00df 5b04          	addw	sp,#4
 675  00e1               L63:
 676                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 678  00e1 1e0b          	ldw	x,(OFST+11,sp)
 679  00e3 2707          	jreq	L24
 680  00e5 1e0b          	ldw	x,(OFST+11,sp)
 681  00e7 a30001        	cpw	x,#1
 682  00ea 2603          	jrne	L04
 683  00ec               L24:
 684  00ec 4f            	clr	a
 685  00ed 2010          	jra	L44
 686  00ef               L04:
 687  00ef ae005f        	ldw	x,#95
 688  00f2 89            	pushw	x
 689  00f3 ae0000        	ldw	x,#0
 690  00f6 89            	pushw	x
 691  00f7 ae0000        	ldw	x,#L542
 692  00fa cd0000        	call	_assert_failed
 694  00fd 5b04          	addw	sp,#4
 695  00ff               L44:
 696                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 698  00ff 1e0d          	ldw	x,(OFST+13,sp)
 699  0101 2707          	jreq	L05
 700  0103 1e0d          	ldw	x,(OFST+13,sp)
 701  0105 a30008        	cpw	x,#8
 702  0108 2603          	jrne	L64
 703  010a               L05:
 704  010a 4f            	clr	a
 705  010b 2010          	jra	L25
 706  010d               L64:
 707  010d ae0060        	ldw	x,#96
 708  0110 89            	pushw	x
 709  0111 ae0000        	ldw	x,#0
 710  0114 89            	pushw	x
 711  0115 ae0000        	ldw	x,#L542
 712  0118 cd0000        	call	_assert_failed
 714  011b 5b04          	addw	sp,#4
 715  011d               L25:
 716                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 718  011d 1e0f          	ldw	x,(OFST+15,sp)
 719  011f 274d          	jreq	L65
 720  0121 1e0f          	ldw	x,(OFST+15,sp)
 721  0123 a30001        	cpw	x,#1
 722  0126 2746          	jreq	L65
 723  0128 1e0f          	ldw	x,(OFST+15,sp)
 724  012a a30002        	cpw	x,#2
 725  012d 273f          	jreq	L65
 726  012f 1e0f          	ldw	x,(OFST+15,sp)
 727  0131 a30003        	cpw	x,#3
 728  0134 2738          	jreq	L65
 729  0136 1e0f          	ldw	x,(OFST+15,sp)
 730  0138 a30004        	cpw	x,#4
 731  013b 2731          	jreq	L65
 732  013d 1e0f          	ldw	x,(OFST+15,sp)
 733  013f a30005        	cpw	x,#5
 734  0142 272a          	jreq	L65
 735  0144 1e0f          	ldw	x,(OFST+15,sp)
 736  0146 a30006        	cpw	x,#6
 737  0149 2723          	jreq	L65
 738  014b 1e0f          	ldw	x,(OFST+15,sp)
 739  014d a30007        	cpw	x,#7
 740  0150 271c          	jreq	L65
 741  0152 1e0f          	ldw	x,(OFST+15,sp)
 742  0154 a30008        	cpw	x,#8
 743  0157 2715          	jreq	L65
 744  0159 1e0f          	ldw	x,(OFST+15,sp)
 745  015b a3000c        	cpw	x,#12
 746  015e 270e          	jreq	L65
 747  0160 1e0f          	ldw	x,(OFST+15,sp)
 748  0162 a300ff        	cpw	x,#255
 749  0165 2707          	jreq	L65
 750  0167 1e0f          	ldw	x,(OFST+15,sp)
 751  0169 a30009        	cpw	x,#9
 752  016c 2603          	jrne	L45
 753  016e               L65:
 754  016e 4f            	clr	a
 755  016f 2010          	jra	L06
 756  0171               L45:
 757  0171 ae0061        	ldw	x,#97
 758  0174 89            	pushw	x
 759  0175 ae0000        	ldw	x,#0
 760  0178 89            	pushw	x
 761  0179 ae0000        	ldw	x,#L542
 762  017c cd0000        	call	_assert_failed
 764  017f 5b04          	addw	sp,#4
 765  0181               L06:
 766                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 768  0181 1e11          	ldw	x,(OFST+17,sp)
 769  0183 2707          	jreq	L46
 770  0185 1e11          	ldw	x,(OFST+17,sp)
 771  0187 a30001        	cpw	x,#1
 772  018a 2603          	jrne	L26
 773  018c               L46:
 774  018c 4f            	clr	a
 775  018d 2010          	jra	L66
 776  018f               L26:
 777  018f ae0062        	ldw	x,#98
 778  0192 89            	pushw	x
 779  0193 ae0000        	ldw	x,#0
 780  0196 89            	pushw	x
 781  0197 ae0000        	ldw	x,#L542
 782  019a cd0000        	call	_assert_failed
 784  019d 5b04          	addw	sp,#4
 785  019f               L66:
 786                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 788  019f 1e0d          	ldw	x,(OFST+13,sp)
 789  01a1 89            	pushw	x
 790  01a2 1e07          	ldw	x,(OFST+7,sp)
 791  01a4 89            	pushw	x
 792  01a5 1e05          	ldw	x,(OFST+5,sp)
 793  01a7 cd0000        	call	_ADC1_ConversionConfig
 795  01aa 5b04          	addw	sp,#4
 796                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 798  01ac 1e07          	ldw	x,(OFST+7,sp)
 799  01ae cd0000        	call	_ADC1_PrescalerConfig
 801                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 803  01b1 1e0b          	ldw	x,(OFST+11,sp)
 804  01b3 89            	pushw	x
 805  01b4 1e0b          	ldw	x,(OFST+11,sp)
 806  01b6 cd0000        	call	_ADC1_ExternalTriggerConfig
 808  01b9 85            	popw	x
 809                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 811  01ba 1e11          	ldw	x,(OFST+17,sp)
 812  01bc 89            	pushw	x
 813  01bd 1e11          	ldw	x,(OFST+17,sp)
 814  01bf cd0000        	call	_ADC1_SchmittTriggerConfig
 816  01c2 85            	popw	x
 817                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 819  01c3 72105401      	bset	21505,#0
 820                     ; 119 }
 823  01c7 85            	popw	x
 824  01c8 81            	ret
 860                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 860                     ; 127 {
 861                     .text:	section	.text,new
 862  0000               _ADC1_Cmd:
 864  0000 89            	pushw	x
 865       00000000      OFST:	set	0
 868                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  0001 a30000        	cpw	x,#0
 871  0004 2705          	jreq	L47
 872  0006 a30001        	cpw	x,#1
 873  0009 2603          	jrne	L27
 874  000b               L47:
 875  000b 4f            	clr	a
 876  000c 2010          	jra	L67
 877  000e               L27:
 878  000e ae0081        	ldw	x,#129
 879  0011 89            	pushw	x
 880  0012 ae0000        	ldw	x,#0
 881  0015 89            	pushw	x
 882  0016 ae0000        	ldw	x,#L542
 883  0019 cd0000        	call	_assert_failed
 885  001c 5b04          	addw	sp,#4
 886  001e               L67:
 887                     ; 131   if (NewState != DISABLE)
 889  001e 1e01          	ldw	x,(OFST+1,sp)
 890  0020 2706          	jreq	L562
 891                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 893  0022 72105401      	bset	21505,#0
 895  0026 2004          	jra	L762
 896  0028               L562:
 897                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 899  0028 72115401      	bres	21505,#0
 900  002c               L762:
 901                     ; 139 }
 904  002c 85            	popw	x
 905  002d 81            	ret
 941                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 941                     ; 147 {
 942                     .text:	section	.text,new
 943  0000               _ADC1_ScanModeCmd:
 945  0000 89            	pushw	x
 946       00000000      OFST:	set	0
 949                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 951  0001 a30000        	cpw	x,#0
 952  0004 2705          	jreq	L401
 953  0006 a30001        	cpw	x,#1
 954  0009 2603          	jrne	L201
 955  000b               L401:
 956  000b 4f            	clr	a
 957  000c 2010          	jra	L601
 958  000e               L201:
 959  000e ae0095        	ldw	x,#149
 960  0011 89            	pushw	x
 961  0012 ae0000        	ldw	x,#0
 962  0015 89            	pushw	x
 963  0016 ae0000        	ldw	x,#L542
 964  0019 cd0000        	call	_assert_failed
 966  001c 5b04          	addw	sp,#4
 967  001e               L601:
 968                     ; 151   if (NewState != DISABLE)
 970  001e 1e01          	ldw	x,(OFST+1,sp)
 971  0020 2706          	jreq	L703
 972                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 974  0022 72125402      	bset	21506,#1
 976  0026 2004          	jra	L113
 977  0028               L703:
 978                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 980  0028 72135402      	bres	21506,#1
 981  002c               L113:
 982                     ; 159 }
 985  002c 85            	popw	x
 986  002d 81            	ret
1022                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1022                     ; 167 {
1023                     .text:	section	.text,new
1024  0000               _ADC1_DataBufferCmd:
1026  0000 89            	pushw	x
1027       00000000      OFST:	set	0
1030                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1032  0001 a30000        	cpw	x,#0
1033  0004 2705          	jreq	L411
1034  0006 a30001        	cpw	x,#1
1035  0009 2603          	jrne	L211
1036  000b               L411:
1037  000b 4f            	clr	a
1038  000c 2010          	jra	L611
1039  000e               L211:
1040  000e ae00a9        	ldw	x,#169
1041  0011 89            	pushw	x
1042  0012 ae0000        	ldw	x,#0
1043  0015 89            	pushw	x
1044  0016 ae0000        	ldw	x,#L542
1045  0019 cd0000        	call	_assert_failed
1047  001c 5b04          	addw	sp,#4
1048  001e               L611:
1049                     ; 171   if (NewState != DISABLE)
1051  001e 1e01          	ldw	x,(OFST+1,sp)
1052  0020 2706          	jreq	L133
1053                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1055  0022 721e5403      	bset	21507,#7
1057  0026 2004          	jra	L333
1058  0028               L133:
1059                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1061  0028 721f5403      	bres	21507,#7
1062  002c               L333:
1063                     ; 179 }
1066  002c 85            	popw	x
1067  002d 81            	ret
1224                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1224                     ; 191 {
1225                     .text:	section	.text,new
1226  0000               _ADC1_ITConfig:
1228  0000 89            	pushw	x
1229       00000000      OFST:	set	0
1232                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1234  0001 a30020        	cpw	x,#32
1235  0004 2705          	jreq	L421
1236  0006 a30010        	cpw	x,#16
1237  0009 2603          	jrne	L221
1238  000b               L421:
1239  000b 4f            	clr	a
1240  000c 2010          	jra	L621
1241  000e               L221:
1242  000e ae00c1        	ldw	x,#193
1243  0011 89            	pushw	x
1244  0012 ae0000        	ldw	x,#0
1245  0015 89            	pushw	x
1246  0016 ae0000        	ldw	x,#L542
1247  0019 cd0000        	call	_assert_failed
1249  001c 5b04          	addw	sp,#4
1250  001e               L621:
1251                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1253  001e 1e05          	ldw	x,(OFST+5,sp)
1254  0020 2707          	jreq	L231
1255  0022 1e05          	ldw	x,(OFST+5,sp)
1256  0024 a30001        	cpw	x,#1
1257  0027 2603          	jrne	L031
1258  0029               L231:
1259  0029 4f            	clr	a
1260  002a 2010          	jra	L431
1261  002c               L031:
1262  002c ae00c2        	ldw	x,#194
1263  002f 89            	pushw	x
1264  0030 ae0000        	ldw	x,#0
1265  0033 89            	pushw	x
1266  0034 ae0000        	ldw	x,#L542
1267  0037 cd0000        	call	_assert_failed
1269  003a 5b04          	addw	sp,#4
1270  003c               L431:
1271                     ; 196   if (NewState != DISABLE)
1273  003c 1e05          	ldw	x,(OFST+5,sp)
1274  003e 270a          	jreq	L124
1275                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1277  0040 c65400        	ld	a,21504
1278  0043 1a02          	or	a,(OFST+2,sp)
1279  0045 c75400        	ld	21504,a
1281  0048 2009          	jra	L324
1282  004a               L124:
1283                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1285  004a 7b02          	ld	a,(OFST+2,sp)
1286  004c 43            	cpl	a
1287  004d c45400        	and	a,21504
1288  0050 c75400        	ld	21504,a
1289  0053               L324:
1290                     ; 206 }
1293  0053 85            	popw	x
1294  0054 81            	ret
1331                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1331                     ; 215 {
1332                     .text:	section	.text,new
1333  0000               _ADC1_PrescalerConfig:
1335  0000 89            	pushw	x
1336       00000000      OFST:	set	0
1339                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1341  0001 a30000        	cpw	x,#0
1342  0004 2723          	jreq	L241
1343  0006 a30010        	cpw	x,#16
1344  0009 271e          	jreq	L241
1345  000b a30020        	cpw	x,#32
1346  000e 2719          	jreq	L241
1347  0010 a30030        	cpw	x,#48
1348  0013 2714          	jreq	L241
1349  0015 a30040        	cpw	x,#64
1350  0018 270f          	jreq	L241
1351  001a a30050        	cpw	x,#80
1352  001d 270a          	jreq	L241
1353  001f a30060        	cpw	x,#96
1354  0022 2705          	jreq	L241
1355  0024 a30070        	cpw	x,#112
1356  0027 2603          	jrne	L041
1357  0029               L241:
1358  0029 4f            	clr	a
1359  002a 2010          	jra	L441
1360  002c               L041:
1361  002c ae00d9        	ldw	x,#217
1362  002f 89            	pushw	x
1363  0030 ae0000        	ldw	x,#0
1364  0033 89            	pushw	x
1365  0034 ae0000        	ldw	x,#L542
1366  0037 cd0000        	call	_assert_failed
1368  003a 5b04          	addw	sp,#4
1369  003c               L441:
1370                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1372  003c c65401        	ld	a,21505
1373  003f a48f          	and	a,#143
1374  0041 c75401        	ld	21505,a
1375                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1377  0044 c65401        	ld	a,21505
1378  0047 1a02          	or	a,(OFST+2,sp)
1379  0049 c75401        	ld	21505,a
1380                     ; 223 }
1383  004c 85            	popw	x
1384  004d 81            	ret
1432                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1432                     ; 234 {
1433                     .text:	section	.text,new
1434  0000               _ADC1_SchmittTriggerConfig:
1436  0000 89            	pushw	x
1437       00000000      OFST:	set	0
1440                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1442  0001 a30000        	cpw	x,#0
1443  0004 2737          	jreq	L251
1444  0006 a30001        	cpw	x,#1
1445  0009 2732          	jreq	L251
1446  000b a30002        	cpw	x,#2
1447  000e 272d          	jreq	L251
1448  0010 a30003        	cpw	x,#3
1449  0013 2728          	jreq	L251
1450  0015 a30004        	cpw	x,#4
1451  0018 2723          	jreq	L251
1452  001a a30005        	cpw	x,#5
1453  001d 271e          	jreq	L251
1454  001f a30006        	cpw	x,#6
1455  0022 2719          	jreq	L251
1456  0024 a30007        	cpw	x,#7
1457  0027 2714          	jreq	L251
1458  0029 a30008        	cpw	x,#8
1459  002c 270f          	jreq	L251
1460  002e a3000c        	cpw	x,#12
1461  0031 270a          	jreq	L251
1462  0033 a300ff        	cpw	x,#255
1463  0036 2705          	jreq	L251
1464  0038 a30009        	cpw	x,#9
1465  003b 2603          	jrne	L051
1466  003d               L251:
1467  003d 4f            	clr	a
1468  003e 2010          	jra	L451
1469  0040               L051:
1470  0040 ae00ec        	ldw	x,#236
1471  0043 89            	pushw	x
1472  0044 ae0000        	ldw	x,#0
1473  0047 89            	pushw	x
1474  0048 ae0000        	ldw	x,#L542
1475  004b cd0000        	call	_assert_failed
1477  004e 5b04          	addw	sp,#4
1478  0050               L451:
1479                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1481  0050 1e05          	ldw	x,(OFST+5,sp)
1482  0052 2707          	jreq	L061
1483  0054 1e05          	ldw	x,(OFST+5,sp)
1484  0056 a30001        	cpw	x,#1
1485  0059 2603          	jrne	L651
1486  005b               L061:
1487  005b 4f            	clr	a
1488  005c 2010          	jra	L261
1489  005e               L651:
1490  005e ae00ed        	ldw	x,#237
1491  0061 89            	pushw	x
1492  0062 ae0000        	ldw	x,#0
1493  0065 89            	pushw	x
1494  0066 ae0000        	ldw	x,#L542
1495  0069 cd0000        	call	_assert_failed
1497  006c 5b04          	addw	sp,#4
1498  006e               L261:
1499                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1501  006e 1e01          	ldw	x,(OFST+1,sp)
1502  0070 a300ff        	cpw	x,#255
1503  0073 2620          	jrne	L564
1504                     ; 241     if (NewState != DISABLE)
1506  0075 1e05          	ldw	x,(OFST+5,sp)
1507  0077 270a          	jreq	L764
1508                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1510  0079 725f5407      	clr	21511
1511                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1513  007d 725f5406      	clr	21510
1515  0081 207a          	jra	L374
1516  0083               L764:
1517                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1519  0083 c65407        	ld	a,21511
1520  0086 aaff          	or	a,#255
1521  0088 c75407        	ld	21511,a
1522                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1524  008b c65406        	ld	a,21510
1525  008e aaff          	or	a,#255
1526  0090 c75406        	ld	21510,a
1527  0093 2068          	jra	L374
1528  0095               L564:
1529                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1531  0095 9c            	rvf
1532  0096 1e01          	ldw	x,(OFST+1,sp)
1533  0098 a30008        	cpw	x,#8
1534  009b 2e2f          	jrsge	L574
1535                     ; 254     if (NewState != DISABLE)
1537  009d 1e05          	ldw	x,(OFST+5,sp)
1538  009f 2716          	jreq	L774
1539                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1541  00a1 7b02          	ld	a,(OFST+2,sp)
1542  00a3 5f            	clrw	x
1543  00a4 97            	ld	xl,a
1544  00a5 a601          	ld	a,#1
1545  00a7 5d            	tnzw	x
1546  00a8 2704          	jreq	L461
1547  00aa               L661:
1548  00aa 48            	sll	a
1549  00ab 5a            	decw	x
1550  00ac 26fc          	jrne	L661
1551  00ae               L461:
1552  00ae 43            	cpl	a
1553  00af c45407        	and	a,21511
1554  00b2 c75407        	ld	21511,a
1556  00b5 2046          	jra	L374
1557  00b7               L774:
1558                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1560  00b7 7b02          	ld	a,(OFST+2,sp)
1561  00b9 5f            	clrw	x
1562  00ba 97            	ld	xl,a
1563  00bb a601          	ld	a,#1
1564  00bd 5d            	tnzw	x
1565  00be 2704          	jreq	L071
1566  00c0               L271:
1567  00c0 48            	sll	a
1568  00c1 5a            	decw	x
1569  00c2 26fc          	jrne	L271
1570  00c4               L071:
1571  00c4 ca5407        	or	a,21511
1572  00c7 c75407        	ld	21511,a
1573  00ca 2031          	jra	L374
1574  00cc               L574:
1575                     ; 265     if (NewState != DISABLE)
1577  00cc 1e05          	ldw	x,(OFST+5,sp)
1578  00ce 2718          	jreq	L505
1579                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1581  00d0 7b02          	ld	a,(OFST+2,sp)
1582  00d2 a008          	sub	a,#8
1583  00d4 5f            	clrw	x
1584  00d5 97            	ld	xl,a
1585  00d6 a601          	ld	a,#1
1586  00d8 5d            	tnzw	x
1587  00d9 2704          	jreq	L471
1588  00db               L671:
1589  00db 48            	sll	a
1590  00dc 5a            	decw	x
1591  00dd 26fc          	jrne	L671
1592  00df               L471:
1593  00df 43            	cpl	a
1594  00e0 c45406        	and	a,21510
1595  00e3 c75406        	ld	21510,a
1597  00e6 2015          	jra	L374
1598  00e8               L505:
1599                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1601  00e8 7b02          	ld	a,(OFST+2,sp)
1602  00ea a008          	sub	a,#8
1603  00ec 5f            	clrw	x
1604  00ed 97            	ld	xl,a
1605  00ee a601          	ld	a,#1
1606  00f0 5d            	tnzw	x
1607  00f1 2704          	jreq	L002
1608  00f3               L202:
1609  00f3 48            	sll	a
1610  00f4 5a            	decw	x
1611  00f5 26fc          	jrne	L202
1612  00f7               L002:
1613  00f7 ca5406        	or	a,21510
1614  00fa c75406        	ld	21510,a
1615  00fd               L374:
1616                     ; 274 }
1619  00fd 85            	popw	x
1620  00fe 81            	ret
1678                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1678                     ; 287 {
1679                     .text:	section	.text,new
1680  0000               _ADC1_ConversionConfig:
1682  0000 89            	pushw	x
1683       00000000      OFST:	set	0
1686                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1688  0001 a30000        	cpw	x,#0
1689  0004 2705          	jreq	L012
1690  0006 a30001        	cpw	x,#1
1691  0009 2603          	jrne	L602
1692  000b               L012:
1693  000b 4f            	clr	a
1694  000c 2010          	jra	L212
1695  000e               L602:
1696  000e ae0121        	ldw	x,#289
1697  0011 89            	pushw	x
1698  0012 ae0000        	ldw	x,#0
1699  0015 89            	pushw	x
1700  0016 ae0000        	ldw	x,#L542
1701  0019 cd0000        	call	_assert_failed
1703  001c 5b04          	addw	sp,#4
1704  001e               L212:
1705                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1707  001e 1e05          	ldw	x,(OFST+5,sp)
1708  0020 2746          	jreq	L612
1709  0022 1e05          	ldw	x,(OFST+5,sp)
1710  0024 a30001        	cpw	x,#1
1711  0027 273f          	jreq	L612
1712  0029 1e05          	ldw	x,(OFST+5,sp)
1713  002b a30002        	cpw	x,#2
1714  002e 2738          	jreq	L612
1715  0030 1e05          	ldw	x,(OFST+5,sp)
1716  0032 a30003        	cpw	x,#3
1717  0035 2731          	jreq	L612
1718  0037 1e05          	ldw	x,(OFST+5,sp)
1719  0039 a30004        	cpw	x,#4
1720  003c 272a          	jreq	L612
1721  003e 1e05          	ldw	x,(OFST+5,sp)
1722  0040 a30005        	cpw	x,#5
1723  0043 2723          	jreq	L612
1724  0045 1e05          	ldw	x,(OFST+5,sp)
1725  0047 a30006        	cpw	x,#6
1726  004a 271c          	jreq	L612
1727  004c 1e05          	ldw	x,(OFST+5,sp)
1728  004e a30007        	cpw	x,#7
1729  0051 2715          	jreq	L612
1730  0053 1e05          	ldw	x,(OFST+5,sp)
1731  0055 a30008        	cpw	x,#8
1732  0058 270e          	jreq	L612
1733  005a 1e05          	ldw	x,(OFST+5,sp)
1734  005c a3000c        	cpw	x,#12
1735  005f 2707          	jreq	L612
1736  0061 1e05          	ldw	x,(OFST+5,sp)
1737  0063 a30009        	cpw	x,#9
1738  0066 2603          	jrne	L412
1739  0068               L612:
1740  0068 4f            	clr	a
1741  0069 2010          	jra	L022
1742  006b               L412:
1743  006b ae0122        	ldw	x,#290
1744  006e 89            	pushw	x
1745  006f ae0000        	ldw	x,#0
1746  0072 89            	pushw	x
1747  0073 ae0000        	ldw	x,#L542
1748  0076 cd0000        	call	_assert_failed
1750  0079 5b04          	addw	sp,#4
1751  007b               L022:
1752                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1754  007b 1e07          	ldw	x,(OFST+7,sp)
1755  007d 2707          	jreq	L422
1756  007f 1e07          	ldw	x,(OFST+7,sp)
1757  0081 a30008        	cpw	x,#8
1758  0084 2603          	jrne	L222
1759  0086               L422:
1760  0086 4f            	clr	a
1761  0087 2010          	jra	L622
1762  0089               L222:
1763  0089 ae0123        	ldw	x,#291
1764  008c 89            	pushw	x
1765  008d ae0000        	ldw	x,#0
1766  0090 89            	pushw	x
1767  0091 ae0000        	ldw	x,#L542
1768  0094 cd0000        	call	_assert_failed
1770  0097 5b04          	addw	sp,#4
1771  0099               L622:
1772                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1774  0099 72175402      	bres	21506,#3
1775                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1777  009d c65402        	ld	a,21506
1778  00a0 1a08          	or	a,(OFST+8,sp)
1779  00a2 c75402        	ld	21506,a
1780                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1782  00a5 1e01          	ldw	x,(OFST+1,sp)
1783  00a7 a30001        	cpw	x,#1
1784  00aa 2606          	jrne	L735
1785                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1787  00ac 72125401      	bset	21505,#1
1789  00b0 2004          	jra	L145
1790  00b2               L735:
1791                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1793  00b2 72135401      	bres	21505,#1
1794  00b6               L145:
1795                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1797  00b6 c65400        	ld	a,21504
1798  00b9 a4f0          	and	a,#240
1799  00bb c75400        	ld	21504,a
1800                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1802  00be c65400        	ld	a,21504
1803  00c1 1a06          	or	a,(OFST+6,sp)
1804  00c3 c75400        	ld	21504,a
1805                     ; 313 }
1808  00c6 85            	popw	x
1809  00c7 81            	ret
1856                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1856                     ; 326 {
1857                     .text:	section	.text,new
1858  0000               _ADC1_ExternalTriggerConfig:
1860  0000 89            	pushw	x
1861       00000000      OFST:	set	0
1864                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1866  0001 a30000        	cpw	x,#0
1867  0004 2705          	jreq	L432
1868  0006 a30010        	cpw	x,#16
1869  0009 2603          	jrne	L232
1870  000b               L432:
1871  000b 4f            	clr	a
1872  000c 2010          	jra	L632
1873  000e               L232:
1874  000e ae0148        	ldw	x,#328
1875  0011 89            	pushw	x
1876  0012 ae0000        	ldw	x,#0
1877  0015 89            	pushw	x
1878  0016 ae0000        	ldw	x,#L542
1879  0019 cd0000        	call	_assert_failed
1881  001c 5b04          	addw	sp,#4
1882  001e               L632:
1883                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1885  001e 1e05          	ldw	x,(OFST+5,sp)
1886  0020 2707          	jreq	L242
1887  0022 1e05          	ldw	x,(OFST+5,sp)
1888  0024 a30001        	cpw	x,#1
1889  0027 2603          	jrne	L042
1890  0029               L242:
1891  0029 4f            	clr	a
1892  002a 2010          	jra	L442
1893  002c               L042:
1894  002c ae0149        	ldw	x,#329
1895  002f 89            	pushw	x
1896  0030 ae0000        	ldw	x,#0
1897  0033 89            	pushw	x
1898  0034 ae0000        	ldw	x,#L542
1899  0037 cd0000        	call	_assert_failed
1901  003a 5b04          	addw	sp,#4
1902  003c               L442:
1903                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1905  003c c65402        	ld	a,21506
1906  003f a4cf          	and	a,#207
1907  0041 c75402        	ld	21506,a
1908                     ; 334   if (NewState != DISABLE)
1910  0044 1e05          	ldw	x,(OFST+5,sp)
1911  0046 2706          	jreq	L565
1912                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1914  0048 721c5402      	bset	21506,#6
1916  004c 2004          	jra	L765
1917  004e               L565:
1918                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1920  004e 721d5402      	bres	21506,#6
1921  0052               L765:
1922                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1924  0052 c65402        	ld	a,21506
1925  0055 1a02          	or	a,(OFST+2,sp)
1926  0057 c75402        	ld	21506,a
1927                     ; 347 }
1930  005a 85            	popw	x
1931  005b 81            	ret
1955                     ; 358 void ADC1_StartConversion(void)
1955                     ; 359 {
1956                     .text:	section	.text,new
1957  0000               _ADC1_StartConversion:
1961                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1963  0000 72105401      	bset	21505,#0
1964                     ; 361 }
1967  0004 81            	ret
2007                     ; 370 uint16_t ADC1_GetConversionValue(void)
2007                     ; 371 {
2008                     .text:	section	.text,new
2009  0000               _ADC1_GetConversionValue:
2011  0000 5205          	subw	sp,#5
2012       00000005      OFST:	set	5
2015                     ; 372   uint16_t temph = 0;
2017                     ; 373   uint8_t templ = 0;
2019                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2021  0002 c65402        	ld	a,21506
2022  0005 a508          	bcp	a,#8
2023  0007 2715          	jreq	L716
2024                     ; 378     templ = ADC1->DRL;
2026  0009 c65405        	ld	a,21509
2027  000c 6b03          	ld	(OFST-2,sp),a
2028                     ; 380     temph = ADC1->DRH;
2030  000e c65404        	ld	a,21508
2031  0011 5f            	clrw	x
2032  0012 97            	ld	xl,a
2033  0013 1f04          	ldw	(OFST-1,sp),x
2034                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2036  0015 1e04          	ldw	x,(OFST-1,sp)
2037  0017 7b03          	ld	a,(OFST-2,sp)
2038  0019 02            	rlwa	x,a
2039  001a 1f04          	ldw	(OFST-1,sp),x
2041  001c 2021          	jra	L126
2042  001e               L716:
2043                     ; 387     temph = ADC1->DRH;
2045  001e c65404        	ld	a,21508
2046  0021 5f            	clrw	x
2047  0022 97            	ld	xl,a
2048  0023 1f04          	ldw	(OFST-1,sp),x
2049                     ; 389     templ = ADC1->DRL;
2051  0025 c65405        	ld	a,21509
2052  0028 6b03          	ld	(OFST-2,sp),a
2053                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2055  002a 1e04          	ldw	x,(OFST-1,sp)
2056  002c 4f            	clr	a
2057  002d 02            	rlwa	x,a
2058  002e 1f01          	ldw	(OFST-4,sp),x
2059  0030 7b03          	ld	a,(OFST-2,sp)
2060  0032 97            	ld	xl,a
2061  0033 a640          	ld	a,#64
2062  0035 42            	mul	x,a
2063  0036 01            	rrwa	x,a
2064  0037 1a02          	or	a,(OFST-3,sp)
2065  0039 01            	rrwa	x,a
2066  003a 1a01          	or	a,(OFST-4,sp)
2067  003c 01            	rrwa	x,a
2068  003d 1f04          	ldw	(OFST-1,sp),x
2069  003f               L126:
2070                     ; 394   return ((uint16_t)temph);
2072  003f 1e04          	ldw	x,(OFST-1,sp)
2075  0041 5b05          	addw	sp,#5
2076  0043 81            	ret
2123                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2123                     ; 406 {
2124                     .text:	section	.text,new
2125  0000               _ADC1_AWDChannelConfig:
2127  0000 89            	pushw	x
2128       00000000      OFST:	set	0
2131                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2133  0001 1e05          	ldw	x,(OFST+5,sp)
2134  0003 2707          	jreq	L652
2135  0005 1e05          	ldw	x,(OFST+5,sp)
2136  0007 a30001        	cpw	x,#1
2137  000a 2603          	jrne	L452
2138  000c               L652:
2139  000c 4f            	clr	a
2140  000d 2010          	jra	L062
2141  000f               L452:
2142  000f ae0198        	ldw	x,#408
2143  0012 89            	pushw	x
2144  0013 ae0000        	ldw	x,#0
2145  0016 89            	pushw	x
2146  0017 ae0000        	ldw	x,#L542
2147  001a cd0000        	call	_assert_failed
2149  001d 5b04          	addw	sp,#4
2150  001f               L062:
2151                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2153  001f 1e01          	ldw	x,(OFST+1,sp)
2154  0021 2746          	jreq	L462
2155  0023 1e01          	ldw	x,(OFST+1,sp)
2156  0025 a30001        	cpw	x,#1
2157  0028 273f          	jreq	L462
2158  002a 1e01          	ldw	x,(OFST+1,sp)
2159  002c a30002        	cpw	x,#2
2160  002f 2738          	jreq	L462
2161  0031 1e01          	ldw	x,(OFST+1,sp)
2162  0033 a30003        	cpw	x,#3
2163  0036 2731          	jreq	L462
2164  0038 1e01          	ldw	x,(OFST+1,sp)
2165  003a a30004        	cpw	x,#4
2166  003d 272a          	jreq	L462
2167  003f 1e01          	ldw	x,(OFST+1,sp)
2168  0041 a30005        	cpw	x,#5
2169  0044 2723          	jreq	L462
2170  0046 1e01          	ldw	x,(OFST+1,sp)
2171  0048 a30006        	cpw	x,#6
2172  004b 271c          	jreq	L462
2173  004d 1e01          	ldw	x,(OFST+1,sp)
2174  004f a30007        	cpw	x,#7
2175  0052 2715          	jreq	L462
2176  0054 1e01          	ldw	x,(OFST+1,sp)
2177  0056 a30008        	cpw	x,#8
2178  0059 270e          	jreq	L462
2179  005b 1e01          	ldw	x,(OFST+1,sp)
2180  005d a3000c        	cpw	x,#12
2181  0060 2707          	jreq	L462
2182  0062 1e01          	ldw	x,(OFST+1,sp)
2183  0064 a30009        	cpw	x,#9
2184  0067 2603          	jrne	L262
2185  0069               L462:
2186  0069 4f            	clr	a
2187  006a 2010          	jra	L662
2188  006c               L262:
2189  006c ae0199        	ldw	x,#409
2190  006f 89            	pushw	x
2191  0070 ae0000        	ldw	x,#0
2192  0073 89            	pushw	x
2193  0074 ae0000        	ldw	x,#L542
2194  0077 cd0000        	call	_assert_failed
2196  007a 5b04          	addw	sp,#4
2197  007c               L662:
2198                     ; 411   if (Channel < (uint8_t)8)
2200  007c 9c            	rvf
2201  007d 1e01          	ldw	x,(OFST+1,sp)
2202  007f a30008        	cpw	x,#8
2203  0082 2e37          	jrsge	L546
2204                     ; 413     if (NewState != DISABLE)
2206  0084 1e05          	ldw	x,(OFST+5,sp)
2207  0086 2719          	jreq	L746
2208                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2210  0088 7b02          	ld	a,(OFST+2,sp)
2211  008a 5f            	clrw	x
2212  008b 4d            	tnz	a
2213  008c 2a01          	jrpl	L072
2214  008e 53            	cplw	x
2215  008f               L072:
2216  008f 97            	ld	xl,a
2217  0090 a601          	ld	a,#1
2218  0092 5d            	tnzw	x
2219  0093 2704          	jreq	L272
2220  0095               L472:
2221  0095 48            	sll	a
2222  0096 5a            	decw	x
2223  0097 26fc          	jrne	L472
2224  0099               L272:
2225  0099 ca540f        	or	a,21519
2226  009c c7540f        	ld	21519,a
2228  009f 204b          	jra	L356
2229  00a1               L746:
2230                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2232  00a1 7b02          	ld	a,(OFST+2,sp)
2233  00a3 5f            	clrw	x
2234  00a4 4d            	tnz	a
2235  00a5 2a01          	jrpl	L672
2236  00a7 53            	cplw	x
2237  00a8               L672:
2238  00a8 97            	ld	xl,a
2239  00a9 a601          	ld	a,#1
2240  00ab 5d            	tnzw	x
2241  00ac 2704          	jreq	L003
2242  00ae               L203:
2243  00ae 48            	sll	a
2244  00af 5a            	decw	x
2245  00b0 26fc          	jrne	L203
2246  00b2               L003:
2247  00b2 43            	cpl	a
2248  00b3 c4540f        	and	a,21519
2249  00b6 c7540f        	ld	21519,a
2250  00b9 2031          	jra	L356
2251  00bb               L546:
2252                     ; 424     if (NewState != DISABLE)
2254  00bb 1e05          	ldw	x,(OFST+5,sp)
2255  00bd 2717          	jreq	L556
2256                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2258  00bf 7b02          	ld	a,(OFST+2,sp)
2259  00c1 a008          	sub	a,#8
2260  00c3 5f            	clrw	x
2261  00c4 97            	ld	xl,a
2262  00c5 a601          	ld	a,#1
2263  00c7 5d            	tnzw	x
2264  00c8 2704          	jreq	L403
2265  00ca               L603:
2266  00ca 48            	sll	a
2267  00cb 5a            	decw	x
2268  00cc 26fc          	jrne	L603
2269  00ce               L403:
2270  00ce ca540e        	or	a,21518
2271  00d1 c7540e        	ld	21518,a
2273  00d4 2016          	jra	L356
2274  00d6               L556:
2275                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2277  00d6 7b02          	ld	a,(OFST+2,sp)
2278  00d8 a008          	sub	a,#8
2279  00da 5f            	clrw	x
2280  00db 97            	ld	xl,a
2281  00dc a601          	ld	a,#1
2282  00de 5d            	tnzw	x
2283  00df 2704          	jreq	L013
2284  00e1               L213:
2285  00e1 48            	sll	a
2286  00e2 5a            	decw	x
2287  00e3 26fc          	jrne	L213
2288  00e5               L013:
2289  00e5 43            	cpl	a
2290  00e6 c4540e        	and	a,21518
2291  00e9 c7540e        	ld	21518,a
2292  00ec               L356:
2293                     ; 433 }
2296  00ec 85            	popw	x
2297  00ed 81            	ret
2330                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2330                     ; 442 {
2331                     .text:	section	.text,new
2332  0000               _ADC1_SetHighThreshold:
2334  0000 89            	pushw	x
2335       00000000      OFST:	set	0
2338                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2340  0001 54            	srlw	x
2341  0002 54            	srlw	x
2342  0003 9f            	ld	a,xl
2343  0004 c75408        	ld	21512,a
2344                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2346  0007 7b02          	ld	a,(OFST+2,sp)
2347  0009 c75409        	ld	21513,a
2348                     ; 445 }
2351  000c 85            	popw	x
2352  000d 81            	ret
2385                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2385                     ; 454 {
2386                     .text:	section	.text,new
2387  0000               _ADC1_SetLowThreshold:
2391                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2393  0000 9f            	ld	a,xl
2394  0001 c7540b        	ld	21515,a
2395                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2397  0004 54            	srlw	x
2398  0005 54            	srlw	x
2399  0006 9f            	ld	a,xl
2400  0007 c7540a        	ld	21514,a
2401                     ; 457 }
2404  000a 81            	ret
2452                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2452                     ; 467 {
2453                     .text:	section	.text,new
2454  0000               _ADC1_GetBufferValue:
2456  0000 88            	push	a
2457  0001 5205          	subw	sp,#5
2458       00000005      OFST:	set	5
2461                     ; 468   uint16_t temph = 0;
2463                     ; 469   uint8_t templ = 0;
2465                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2467  0003 a10a          	cp	a,#10
2468  0005 2403          	jruge	L223
2469  0007 4f            	clr	a
2470  0008 2010          	jra	L423
2471  000a               L223:
2472  000a ae01d8        	ldw	x,#472
2473  000d 89            	pushw	x
2474  000e ae0000        	ldw	x,#0
2475  0011 89            	pushw	x
2476  0012 ae0000        	ldw	x,#L542
2477  0015 cd0000        	call	_assert_failed
2479  0018 5b04          	addw	sp,#4
2480  001a               L423:
2481                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2483  001a c65402        	ld	a,21506
2484  001d a508          	bcp	a,#8
2485  001f 271f          	jreq	L137
2486                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2488  0021 7b06          	ld	a,(OFST+1,sp)
2489  0023 48            	sll	a
2490  0024 5f            	clrw	x
2491  0025 97            	ld	xl,a
2492  0026 d653e1        	ld	a,(21473,x)
2493  0029 6b03          	ld	(OFST-2,sp),a
2494                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2496  002b 7b06          	ld	a,(OFST+1,sp)
2497  002d 48            	sll	a
2498  002e 5f            	clrw	x
2499  002f 97            	ld	xl,a
2500  0030 d653e0        	ld	a,(21472,x)
2501  0033 5f            	clrw	x
2502  0034 97            	ld	xl,a
2503  0035 1f04          	ldw	(OFST-1,sp),x
2504                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2506  0037 1e04          	ldw	x,(OFST-1,sp)
2507  0039 7b03          	ld	a,(OFST-2,sp)
2508  003b 02            	rlwa	x,a
2509  003c 1f04          	ldw	(OFST-1,sp),x
2511  003e 202b          	jra	L337
2512  0040               L137:
2513                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2515  0040 7b06          	ld	a,(OFST+1,sp)
2516  0042 48            	sll	a
2517  0043 5f            	clrw	x
2518  0044 97            	ld	xl,a
2519  0045 d653e0        	ld	a,(21472,x)
2520  0048 5f            	clrw	x
2521  0049 97            	ld	xl,a
2522  004a 1f04          	ldw	(OFST-1,sp),x
2523                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2525  004c 7b06          	ld	a,(OFST+1,sp)
2526  004e 48            	sll	a
2527  004f 5f            	clrw	x
2528  0050 97            	ld	xl,a
2529  0051 d653e1        	ld	a,(21473,x)
2530  0054 6b03          	ld	(OFST-2,sp),a
2531                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2533  0056 1e04          	ldw	x,(OFST-1,sp)
2534  0058 4f            	clr	a
2535  0059 02            	rlwa	x,a
2536  005a 1f01          	ldw	(OFST-4,sp),x
2537  005c 7b03          	ld	a,(OFST-2,sp)
2538  005e 97            	ld	xl,a
2539  005f a640          	ld	a,#64
2540  0061 42            	mul	x,a
2541  0062 01            	rrwa	x,a
2542  0063 1a02          	or	a,(OFST-3,sp)
2543  0065 01            	rrwa	x,a
2544  0066 1a01          	or	a,(OFST-4,sp)
2545  0068 01            	rrwa	x,a
2546  0069 1f04          	ldw	(OFST-1,sp),x
2547  006b               L337:
2548                     ; 493   return ((uint16_t)temph);
2550  006b 1e04          	ldw	x,(OFST-1,sp)
2553  006d 5b06          	addw	sp,#6
2554  006f 81            	ret
2619                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2619                     ; 503 {
2620                     .text:	section	.text,new
2621  0000               _ADC1_GetAWDChannelStatus:
2623  0000 89            	pushw	x
2624  0001 88            	push	a
2625       00000001      OFST:	set	1
2628                     ; 504   uint8_t status = 0;
2630                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2632  0002 a30000        	cpw	x,#0
2633  0005 2732          	jreq	L233
2634  0007 a30001        	cpw	x,#1
2635  000a 272d          	jreq	L233
2636  000c a30002        	cpw	x,#2
2637  000f 2728          	jreq	L233
2638  0011 a30003        	cpw	x,#3
2639  0014 2723          	jreq	L233
2640  0016 a30004        	cpw	x,#4
2641  0019 271e          	jreq	L233
2642  001b a30005        	cpw	x,#5
2643  001e 2719          	jreq	L233
2644  0020 a30006        	cpw	x,#6
2645  0023 2714          	jreq	L233
2646  0025 a30007        	cpw	x,#7
2647  0028 270f          	jreq	L233
2648  002a a30008        	cpw	x,#8
2649  002d 270a          	jreq	L233
2650  002f a3000c        	cpw	x,#12
2651  0032 2705          	jreq	L233
2652  0034 a30009        	cpw	x,#9
2653  0037 2603          	jrne	L033
2654  0039               L233:
2655  0039 4f            	clr	a
2656  003a 2010          	jra	L433
2657  003c               L033:
2658  003c ae01fb        	ldw	x,#507
2659  003f 89            	pushw	x
2660  0040 ae0000        	ldw	x,#0
2661  0043 89            	pushw	x
2662  0044 ae0000        	ldw	x,#L542
2663  0047 cd0000        	call	_assert_failed
2665  004a 5b04          	addw	sp,#4
2666  004c               L433:
2667                     ; 509   if (Channel < (uint8_t)8)
2669  004c 9c            	rvf
2670  004d 1e02          	ldw	x,(OFST+1,sp)
2671  004f a30008        	cpw	x,#8
2672  0052 2e18          	jrsge	L567
2673                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2675  0054 7b03          	ld	a,(OFST+2,sp)
2676  0056 5f            	clrw	x
2677  0057 4d            	tnz	a
2678  0058 2a01          	jrpl	L633
2679  005a 53            	cplw	x
2680  005b               L633:
2681  005b 97            	ld	xl,a
2682  005c a601          	ld	a,#1
2683  005e 5d            	tnzw	x
2684  005f 2704          	jreq	L043
2685  0061               L243:
2686  0061 48            	sll	a
2687  0062 5a            	decw	x
2688  0063 26fc          	jrne	L243
2689  0065               L043:
2690  0065 c4540d        	and	a,21517
2691  0068 6b01          	ld	(OFST+0,sp),a
2693  006a 2014          	jra	L767
2694  006c               L567:
2695                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2697  006c 7b03          	ld	a,(OFST+2,sp)
2698  006e a008          	sub	a,#8
2699  0070 5f            	clrw	x
2700  0071 97            	ld	xl,a
2701  0072 a601          	ld	a,#1
2702  0074 5d            	tnzw	x
2703  0075 2704          	jreq	L443
2704  0077               L643:
2705  0077 48            	sll	a
2706  0078 5a            	decw	x
2707  0079 26fc          	jrne	L643
2708  007b               L443:
2709  007b c4540c        	and	a,21516
2710  007e 6b01          	ld	(OFST+0,sp),a
2711  0080               L767:
2712                     ; 518   return ((FlagStatus)status);
2714  0080 7b01          	ld	a,(OFST+0,sp)
2715  0082 5f            	clrw	x
2716  0083 97            	ld	xl,a
2719  0084 5b03          	addw	sp,#3
2720  0086 81            	ret
2875                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2875                     ; 528 {
2876                     .text:	section	.text,new
2877  0000               _ADC1_GetFlagStatus:
2879  0000 89            	pushw	x
2880  0001 88            	push	a
2881       00000001      OFST:	set	1
2884                     ; 529   uint8_t flagstatus = 0;
2886                     ; 530   uint8_t temp = 0;
2888                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2890  0002 a30080        	cpw	x,#128
2891  0005 273c          	jreq	L453
2892  0007 a30041        	cpw	x,#65
2893  000a 2737          	jreq	L453
2894  000c a30040        	cpw	x,#64
2895  000f 2732          	jreq	L453
2896  0011 a30010        	cpw	x,#16
2897  0014 272d          	jreq	L453
2898  0016 a30011        	cpw	x,#17
2899  0019 2728          	jreq	L453
2900  001b a30012        	cpw	x,#18
2901  001e 2723          	jreq	L453
2902  0020 a30013        	cpw	x,#19
2903  0023 271e          	jreq	L453
2904  0025 a30014        	cpw	x,#20
2905  0028 2719          	jreq	L453
2906  002a a30015        	cpw	x,#21
2907  002d 2714          	jreq	L453
2908  002f a30016        	cpw	x,#22
2909  0032 270f          	jreq	L453
2910  0034 a30017        	cpw	x,#23
2911  0037 270a          	jreq	L453
2912  0039 a30018        	cpw	x,#24
2913  003c 2705          	jreq	L453
2914  003e a30019        	cpw	x,#25
2915  0041 2603          	jrne	L253
2916  0043               L453:
2917  0043 4f            	clr	a
2918  0044 2010          	jra	L653
2919  0046               L253:
2920  0046 ae0215        	ldw	x,#533
2921  0049 89            	pushw	x
2922  004a ae0000        	ldw	x,#0
2923  004d 89            	pushw	x
2924  004e ae0000        	ldw	x,#L542
2925  0051 cd0000        	call	_assert_failed
2927  0054 5b04          	addw	sp,#4
2928  0056               L653:
2929                     ; 535   if ((Flag & 0x0F) == 0x01)
2931  0056 7b02          	ld	a,(OFST+1,sp)
2932  0058 97            	ld	xl,a
2933  0059 7b03          	ld	a,(OFST+2,sp)
2934  005b a40f          	and	a,#15
2935  005d 5f            	clrw	x
2936  005e 02            	rlwa	x,a
2937  005f a30001        	cpw	x,#1
2938  0062 2609          	jrne	L3501
2939                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2941  0064 c65403        	ld	a,21507
2942  0067 a440          	and	a,#64
2943  0069 6b01          	ld	(OFST+0,sp),a
2945  006b 204b          	jra	L5501
2946  006d               L3501:
2947                     ; 540   else if ((Flag & 0xF0) == 0x10)
2949  006d 7b02          	ld	a,(OFST+1,sp)
2950  006f 97            	ld	xl,a
2951  0070 7b03          	ld	a,(OFST+2,sp)
2952  0072 a4f0          	and	a,#240
2953  0074 5f            	clrw	x
2954  0075 02            	rlwa	x,a
2955  0076 a30010        	cpw	x,#16
2956  0079 2636          	jrne	L7501
2957                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2959  007b 7b03          	ld	a,(OFST+2,sp)
2960  007d a40f          	and	a,#15
2961  007f 6b01          	ld	(OFST+0,sp),a
2962                     ; 544     if (temp < 8)
2964  0081 7b01          	ld	a,(OFST+0,sp)
2965  0083 a108          	cp	a,#8
2966  0085 2414          	jruge	L1601
2967                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2969  0087 7b01          	ld	a,(OFST+0,sp)
2970  0089 5f            	clrw	x
2971  008a 97            	ld	xl,a
2972  008b a601          	ld	a,#1
2973  008d 5d            	tnzw	x
2974  008e 2704          	jreq	L063
2975  0090               L263:
2976  0090 48            	sll	a
2977  0091 5a            	decw	x
2978  0092 26fc          	jrne	L263
2979  0094               L063:
2980  0094 c4540d        	and	a,21517
2981  0097 6b01          	ld	(OFST+0,sp),a
2983  0099 201d          	jra	L5501
2984  009b               L1601:
2985                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2987  009b 7b01          	ld	a,(OFST+0,sp)
2988  009d a008          	sub	a,#8
2989  009f 5f            	clrw	x
2990  00a0 97            	ld	xl,a
2991  00a1 a601          	ld	a,#1
2992  00a3 5d            	tnzw	x
2993  00a4 2704          	jreq	L463
2994  00a6               L663:
2995  00a6 48            	sll	a
2996  00a7 5a            	decw	x
2997  00a8 26fc          	jrne	L663
2998  00aa               L463:
2999  00aa c4540c        	and	a,21516
3000  00ad 6b01          	ld	(OFST+0,sp),a
3001  00af 2007          	jra	L5501
3002  00b1               L7501:
3003                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3005  00b1 c65400        	ld	a,21504
3006  00b4 1403          	and	a,(OFST+2,sp)
3007  00b6 6b01          	ld	(OFST+0,sp),a
3008  00b8               L5501:
3009                     ; 557   return ((FlagStatus)flagstatus);
3011  00b8 7b01          	ld	a,(OFST+0,sp)
3012  00ba 5f            	clrw	x
3013  00bb 97            	ld	xl,a
3016  00bc 5b03          	addw	sp,#3
3017  00be 81            	ret
3060                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3060                     ; 568 {
3061                     .text:	section	.text,new
3062  0000               _ADC1_ClearFlag:
3064  0000 89            	pushw	x
3065  0001 88            	push	a
3066       00000001      OFST:	set	1
3069                     ; 569   uint8_t temp = 0;
3071                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3073  0002 a30080        	cpw	x,#128
3074  0005 273c          	jreq	L473
3075  0007 a30041        	cpw	x,#65
3076  000a 2737          	jreq	L473
3077  000c a30040        	cpw	x,#64
3078  000f 2732          	jreq	L473
3079  0011 a30010        	cpw	x,#16
3080  0014 272d          	jreq	L473
3081  0016 a30011        	cpw	x,#17
3082  0019 2728          	jreq	L473
3083  001b a30012        	cpw	x,#18
3084  001e 2723          	jreq	L473
3085  0020 a30013        	cpw	x,#19
3086  0023 271e          	jreq	L473
3087  0025 a30014        	cpw	x,#20
3088  0028 2719          	jreq	L473
3089  002a a30015        	cpw	x,#21
3090  002d 2714          	jreq	L473
3091  002f a30016        	cpw	x,#22
3092  0032 270f          	jreq	L473
3093  0034 a30017        	cpw	x,#23
3094  0037 270a          	jreq	L473
3095  0039 a30018        	cpw	x,#24
3096  003c 2705          	jreq	L473
3097  003e a30019        	cpw	x,#25
3098  0041 2603          	jrne	L273
3099  0043               L473:
3100  0043 4f            	clr	a
3101  0044 2010          	jra	L673
3102  0046               L273:
3103  0046 ae023c        	ldw	x,#572
3104  0049 89            	pushw	x
3105  004a ae0000        	ldw	x,#0
3106  004d 89            	pushw	x
3107  004e ae0000        	ldw	x,#L542
3108  0051 cd0000        	call	_assert_failed
3110  0054 5b04          	addw	sp,#4
3111  0056               L673:
3112                     ; 574   if ((Flag & 0x0F) == 0x01)
3114  0056 7b02          	ld	a,(OFST+1,sp)
3115  0058 97            	ld	xl,a
3116  0059 7b03          	ld	a,(OFST+2,sp)
3117  005b a40f          	and	a,#15
3118  005d 5f            	clrw	x
3119  005e 02            	rlwa	x,a
3120  005f a30001        	cpw	x,#1
3121  0062 2606          	jrne	L7011
3122                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3124  0064 721d5403      	bres	21507,#6
3126  0068 2051          	jra	L1111
3127  006a               L7011:
3128                     ; 579   else if ((Flag & 0xF0) == 0x10)
3130  006a 7b02          	ld	a,(OFST+1,sp)
3131  006c 97            	ld	xl,a
3132  006d 7b03          	ld	a,(OFST+2,sp)
3133  006f a4f0          	and	a,#240
3134  0071 5f            	clrw	x
3135  0072 02            	rlwa	x,a
3136  0073 a30010        	cpw	x,#16
3137  0076 263a          	jrne	L3111
3138                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3140  0078 7b03          	ld	a,(OFST+2,sp)
3141  007a a40f          	and	a,#15
3142  007c 6b01          	ld	(OFST+0,sp),a
3143                     ; 583     if (temp < 8)
3145  007e 7b01          	ld	a,(OFST+0,sp)
3146  0080 a108          	cp	a,#8
3147  0082 2416          	jruge	L5111
3148                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3150  0084 7b01          	ld	a,(OFST+0,sp)
3151  0086 5f            	clrw	x
3152  0087 97            	ld	xl,a
3153  0088 a601          	ld	a,#1
3154  008a 5d            	tnzw	x
3155  008b 2704          	jreq	L004
3156  008d               L204:
3157  008d 48            	sll	a
3158  008e 5a            	decw	x
3159  008f 26fc          	jrne	L204
3160  0091               L004:
3161  0091 43            	cpl	a
3162  0092 c4540d        	and	a,21517
3163  0095 c7540d        	ld	21517,a
3165  0098 2021          	jra	L1111
3166  009a               L5111:
3167                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3169  009a 7b01          	ld	a,(OFST+0,sp)
3170  009c a008          	sub	a,#8
3171  009e 5f            	clrw	x
3172  009f 97            	ld	xl,a
3173  00a0 a601          	ld	a,#1
3174  00a2 5d            	tnzw	x
3175  00a3 2704          	jreq	L404
3176  00a5               L604:
3177  00a5 48            	sll	a
3178  00a6 5a            	decw	x
3179  00a7 26fc          	jrne	L604
3180  00a9               L404:
3181  00a9 43            	cpl	a
3182  00aa c4540c        	and	a,21516
3183  00ad c7540c        	ld	21516,a
3184  00b0 2009          	jra	L1111
3185  00b2               L3111:
3186                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3188  00b2 7b03          	ld	a,(OFST+2,sp)
3189  00b4 43            	cpl	a
3190  00b5 c45400        	and	a,21504
3191  00b8 c75400        	ld	21504,a
3192  00bb               L1111:
3193                     ; 596 }
3196  00bb 5b03          	addw	sp,#3
3197  00bd 81            	ret
3251                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3251                     ; 617 {
3252                     .text:	section	.text,new
3253  0000               _ADC1_GetITStatus:
3255  0000 89            	pushw	x
3256  0001 5205          	subw	sp,#5
3257       00000005      OFST:	set	5
3260                     ; 618   ITStatus itstatus = RESET;
3262                     ; 619   uint8_t temp = 0;
3264                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3266  0003 a30080        	cpw	x,#128
3267  0006 273c          	jreq	L414
3268  0008 a30140        	cpw	x,#320
3269  000b 2737          	jreq	L414
3270  000d a30110        	cpw	x,#272
3271  0010 2732          	jreq	L414
3272  0012 a30111        	cpw	x,#273
3273  0015 272d          	jreq	L414
3274  0017 a30112        	cpw	x,#274
3275  001a 2728          	jreq	L414
3276  001c a30113        	cpw	x,#275
3277  001f 2723          	jreq	L414
3278  0021 a30114        	cpw	x,#276
3279  0024 271e          	jreq	L414
3280  0026 a30115        	cpw	x,#277
3281  0029 2719          	jreq	L414
3282  002b a30116        	cpw	x,#278
3283  002e 2714          	jreq	L414
3284  0030 a30117        	cpw	x,#279
3285  0033 270f          	jreq	L414
3286  0035 a30118        	cpw	x,#280
3287  0038 270a          	jreq	L414
3288  003a a3011c        	cpw	x,#284
3289  003d 2705          	jreq	L414
3290  003f a30119        	cpw	x,#281
3291  0042 2603          	jrne	L214
3292  0044               L414:
3293  0044 4f            	clr	a
3294  0045 2010          	jra	L614
3295  0047               L214:
3296  0047 ae026e        	ldw	x,#622
3297  004a 89            	pushw	x
3298  004b ae0000        	ldw	x,#0
3299  004e 89            	pushw	x
3300  004f ae0000        	ldw	x,#L542
3301  0052 cd0000        	call	_assert_failed
3303  0055 5b04          	addw	sp,#4
3304  0057               L614:
3305                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3307  0057 7b06          	ld	a,(OFST+1,sp)
3308  0059 97            	ld	xl,a
3309  005a 7b07          	ld	a,(OFST+2,sp)
3310  005c a4f0          	and	a,#240
3311  005e 5f            	clrw	x
3312  005f 02            	rlwa	x,a
3313  0060 a30010        	cpw	x,#16
3314  0063 2650          	jrne	L7411
3315                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3317  0065 7b07          	ld	a,(OFST+2,sp)
3318  0067 a40f          	and	a,#15
3319  0069 6b05          	ld	(OFST+0,sp),a
3320                     ; 628     if (temp < 8)
3322  006b 7b05          	ld	a,(OFST+0,sp)
3323  006d a108          	cp	a,#8
3324  006f 2421          	jruge	L1511
3325                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3327  0071 c6540d        	ld	a,21517
3328  0074 5f            	clrw	x
3329  0075 97            	ld	xl,a
3330  0076 1f01          	ldw	(OFST-4,sp),x
3331  0078 7b05          	ld	a,(OFST+0,sp)
3332  007a 5f            	clrw	x
3333  007b 97            	ld	xl,a
3334  007c a601          	ld	a,#1
3335  007e 5d            	tnzw	x
3336  007f 2704          	jreq	L024
3337  0081               L224:
3338  0081 48            	sll	a
3339  0082 5a            	decw	x
3340  0083 26fc          	jrne	L224
3341  0085               L024:
3342  0085 5f            	clrw	x
3343  0086 97            	ld	xl,a
3344  0087 01            	rrwa	x,a
3345  0088 1402          	and	a,(OFST-3,sp)
3346  008a 01            	rrwa	x,a
3347  008b 1401          	and	a,(OFST-4,sp)
3348  008d 01            	rrwa	x,a
3349  008e 1f03          	ldw	(OFST-2,sp),x
3351  0090 2037          	jra	L5511
3352  0092               L1511:
3353                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3355  0092 c6540c        	ld	a,21516
3356  0095 5f            	clrw	x
3357  0096 97            	ld	xl,a
3358  0097 1f01          	ldw	(OFST-4,sp),x
3359  0099 7b05          	ld	a,(OFST+0,sp)
3360  009b a008          	sub	a,#8
3361  009d 5f            	clrw	x
3362  009e 97            	ld	xl,a
3363  009f a601          	ld	a,#1
3364  00a1 5d            	tnzw	x
3365  00a2 2704          	jreq	L424
3366  00a4               L624:
3367  00a4 48            	sll	a
3368  00a5 5a            	decw	x
3369  00a6 26fc          	jrne	L624
3370  00a8               L424:
3371  00a8 5f            	clrw	x
3372  00a9 97            	ld	xl,a
3373  00aa 01            	rrwa	x,a
3374  00ab 1402          	and	a,(OFST-3,sp)
3375  00ad 01            	rrwa	x,a
3376  00ae 1401          	and	a,(OFST-4,sp)
3377  00b0 01            	rrwa	x,a
3378  00b1 1f03          	ldw	(OFST-2,sp),x
3379  00b3 2014          	jra	L5511
3380  00b5               L7411:
3381                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3383  00b5 7b07          	ld	a,(OFST+2,sp)
3384  00b7 5f            	clrw	x
3385  00b8 97            	ld	xl,a
3386  00b9 1f01          	ldw	(OFST-4,sp),x
3387  00bb c65400        	ld	a,21504
3388  00be 5f            	clrw	x
3389  00bf 97            	ld	xl,a
3390  00c0 01            	rrwa	x,a
3391  00c1 1402          	and	a,(OFST-3,sp)
3392  00c3 01            	rrwa	x,a
3393  00c4 1401          	and	a,(OFST-4,sp)
3394  00c6 01            	rrwa	x,a
3395  00c7 1f03          	ldw	(OFST-2,sp),x
3396  00c9               L5511:
3397                     ; 641   return ((ITStatus)itstatus);
3399  00c9 1e03          	ldw	x,(OFST-2,sp)
3402  00cb 5b07          	addw	sp,#7
3403  00cd 81            	ret
3447                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3447                     ; 663 {
3448                     .text:	section	.text,new
3449  0000               _ADC1_ClearITPendingBit:
3451  0000 89            	pushw	x
3452  0001 88            	push	a
3453       00000001      OFST:	set	1
3456                     ; 664   uint8_t temp = 0;
3458                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3460  0002 a30080        	cpw	x,#128
3461  0005 273c          	jreq	L434
3462  0007 a30140        	cpw	x,#320
3463  000a 2737          	jreq	L434
3464  000c a30110        	cpw	x,#272
3465  000f 2732          	jreq	L434
3466  0011 a30111        	cpw	x,#273
3467  0014 272d          	jreq	L434
3468  0016 a30112        	cpw	x,#274
3469  0019 2728          	jreq	L434
3470  001b a30113        	cpw	x,#275
3471  001e 2723          	jreq	L434
3472  0020 a30114        	cpw	x,#276
3473  0023 271e          	jreq	L434
3474  0025 a30115        	cpw	x,#277
3475  0028 2719          	jreq	L434
3476  002a a30116        	cpw	x,#278
3477  002d 2714          	jreq	L434
3478  002f a30117        	cpw	x,#279
3479  0032 270f          	jreq	L434
3480  0034 a30118        	cpw	x,#280
3481  0037 270a          	jreq	L434
3482  0039 a3011c        	cpw	x,#284
3483  003c 2705          	jreq	L434
3484  003e a30119        	cpw	x,#281
3485  0041 2603          	jrne	L234
3486  0043               L434:
3487  0043 4f            	clr	a
3488  0044 2010          	jra	L634
3489  0046               L234:
3490  0046 ae029b        	ldw	x,#667
3491  0049 89            	pushw	x
3492  004a ae0000        	ldw	x,#0
3493  004d 89            	pushw	x
3494  004e ae0000        	ldw	x,#L542
3495  0051 cd0000        	call	_assert_failed
3497  0054 5b04          	addw	sp,#4
3498  0056               L634:
3499                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3501  0056 7b02          	ld	a,(OFST+1,sp)
3502  0058 97            	ld	xl,a
3503  0059 7b03          	ld	a,(OFST+2,sp)
3504  005b a4f0          	and	a,#240
3505  005d 5f            	clrw	x
3506  005e 02            	rlwa	x,a
3507  005f a30010        	cpw	x,#16
3508  0062 263a          	jrne	L7711
3509                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3511  0064 7b03          	ld	a,(OFST+2,sp)
3512  0066 a40f          	and	a,#15
3513  0068 6b01          	ld	(OFST+0,sp),a
3514                     ; 673     if (temp < 8)
3516  006a 7b01          	ld	a,(OFST+0,sp)
3517  006c a108          	cp	a,#8
3518  006e 2416          	jruge	L1021
3519                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3521  0070 7b01          	ld	a,(OFST+0,sp)
3522  0072 5f            	clrw	x
3523  0073 97            	ld	xl,a
3524  0074 a601          	ld	a,#1
3525  0076 5d            	tnzw	x
3526  0077 2704          	jreq	L044
3527  0079               L244:
3528  0079 48            	sll	a
3529  007a 5a            	decw	x
3530  007b 26fc          	jrne	L244
3531  007d               L044:
3532  007d 43            	cpl	a
3533  007e c4540d        	and	a,21517
3534  0081 c7540d        	ld	21517,a
3536  0084 2021          	jra	L5021
3537  0086               L1021:
3538                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3540  0086 7b01          	ld	a,(OFST+0,sp)
3541  0088 a008          	sub	a,#8
3542  008a 5f            	clrw	x
3543  008b 97            	ld	xl,a
3544  008c a601          	ld	a,#1
3545  008e 5d            	tnzw	x
3546  008f 2704          	jreq	L444
3547  0091               L644:
3548  0091 48            	sll	a
3549  0092 5a            	decw	x
3550  0093 26fc          	jrne	L644
3551  0095               L444:
3552  0095 43            	cpl	a
3553  0096 c4540c        	and	a,21516
3554  0099 c7540c        	ld	21516,a
3555  009c 2009          	jra	L5021
3556  009e               L7711:
3557                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3559  009e 7b03          	ld	a,(OFST+2,sp)
3560  00a0 43            	cpl	a
3561  00a1 c45400        	and	a,21504
3562  00a4 c75400        	ld	21504,a
3563  00a7               L5021:
3564                     ; 686 }
3567  00a7 5b03          	addw	sp,#3
3568  00a9 81            	ret
3581                     	xdef	_ADC1_ClearITPendingBit
3582                     	xdef	_ADC1_GetITStatus
3583                     	xdef	_ADC1_ClearFlag
3584                     	xdef	_ADC1_GetFlagStatus
3585                     	xdef	_ADC1_GetAWDChannelStatus
3586                     	xdef	_ADC1_GetBufferValue
3587                     	xdef	_ADC1_SetLowThreshold
3588                     	xdef	_ADC1_SetHighThreshold
3589                     	xdef	_ADC1_GetConversionValue
3590                     	xdef	_ADC1_StartConversion
3591                     	xdef	_ADC1_AWDChannelConfig
3592                     	xdef	_ADC1_ExternalTriggerConfig
3593                     	xdef	_ADC1_ConversionConfig
3594                     	xdef	_ADC1_SchmittTriggerConfig
3595                     	xdef	_ADC1_PrescalerConfig
3596                     	xdef	_ADC1_ITConfig
3597                     	xdef	_ADC1_DataBufferCmd
3598                     	xdef	_ADC1_ScanModeCmd
3599                     	xdef	_ADC1_Cmd
3600                     	xdef	_ADC1_Init
3601                     	xdef	_ADC1_DeInit
3602                     	xref	_assert_failed
3603                     .const:	section	.text
3604  0000               L542:
3605  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
3606  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
3607  0024 72697665725c  	dc.b	"river\src\stm8s_ad"
3608  0036 63312e6300    	dc.b	"c1.c",0
3628                     	end

   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     .const:	section	.text
  23  0000               _HSIDivFactor:
  24  0000 01            	dc.b	1
  25  0001 02            	dc.b	2
  26  0002 04            	dc.b	4
  27  0003 08            	dc.b	8
  28  0004               _CLKPrescTable:
  29  0004 01            	dc.b	1
  30  0005 02            	dc.b	2
  31  0006 04            	dc.b	4
  32  0007 08            	dc.b	8
  33  0008 0a            	dc.b	10
  34  0009 10            	dc.b	16
  35  000a 14            	dc.b	20
  36  000b 28            	dc.b	40
  65                     ; 72 void CLK_DeInit(void)
  65                     ; 73 {
  67                     .text:	section	.text,new
  68  0000               _CLK_DeInit:
  72                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  74  0000 350150c0      	mov	20672,#1
  75                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  77  0004 725f50c1      	clr	20673
  78                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  80  0008 35e150c4      	mov	20676,#225
  81                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  83  000c 725f50c5      	clr	20677
  84                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  86  0010 351850c6      	mov	20678,#24
  87                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  89  0014 35ff50c7      	mov	20679,#255
  90                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  92  0018 35ff50ca      	mov	20682,#255
  93                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  95  001c 725f50c8      	clr	20680
  96                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  98  0020 725f50c9      	clr	20681
 100  0024               L52:
 101                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 103  0024 720050c9fb    	btjt	20681,#0,L52
 104                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 106  0029 725f50c9      	clr	20681
 107                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 109  002d 725f50cc      	clr	20684
 110                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 112  0031 725f50cd      	clr	20685
 113                     ; 88 }
 116  0035 81            	ret	
 173                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 173                     ; 100 {
 174                     .text:	section	.text,new
 175  0000               _CLK_FastHaltWakeUpCmd:
 177  0000 89            	pushw	x
 178       00000000      OFST:	set	0
 181                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 183  0001 5d            	tnzw	x
 184  0002 2711          	jreq	L41
 185  0004 5a            	decw	x
 186  0005 270e          	jreq	L41
 187  0007 ae0066        	ldw	x,#102
 188  000a 89            	pushw	x
 189  000b 5f            	clrw	x
 190  000c 89            	pushw	x
 191  000d ae000c        	ldw	x,#L75
 192  0010 cd0000        	call	_assert_failed
 194  0013 5b04          	addw	sp,#4
 195  0015               L41:
 196                     ; 104   if (NewState != DISABLE)
 198  0015 1e01          	ldw	x,(OFST+1,sp)
 199  0017 2706          	jreq	L16
 200                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 202  0019 721450c0      	bset	20672,#2
 204  001d 2004          	jra	L36
 205  001f               L16:
 206                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 208  001f 721550c0      	bres	20672,#2
 209  0023               L36:
 210                     ; 114 }
 213  0023 85            	popw	x
 214  0024 81            	ret	
 250                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 250                     ; 122 {
 251                     .text:	section	.text,new
 252  0000               _CLK_HSECmd:
 254  0000 89            	pushw	x
 255       00000000      OFST:	set	0
 258                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 260  0001 5d            	tnzw	x
 261  0002 2711          	jreq	L62
 262  0004 5a            	decw	x
 263  0005 270e          	jreq	L62
 264  0007 ae007c        	ldw	x,#124
 265  000a 89            	pushw	x
 266  000b 5f            	clrw	x
 267  000c 89            	pushw	x
 268  000d ae000c        	ldw	x,#L75
 269  0010 cd0000        	call	_assert_failed
 271  0013 5b04          	addw	sp,#4
 272  0015               L62:
 273                     ; 126   if (NewState != DISABLE)
 275  0015 1e01          	ldw	x,(OFST+1,sp)
 276  0017 2706          	jreq	L301
 277                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 279  0019 721050c1      	bset	20673,#0
 281  001d 2004          	jra	L501
 282  001f               L301:
 283                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 285  001f 721150c1      	bres	20673,#0
 286  0023               L501:
 287                     ; 136 }
 290  0023 85            	popw	x
 291  0024 81            	ret	
 327                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 327                     ; 144 {
 328                     .text:	section	.text,new
 329  0000               _CLK_HSICmd:
 331  0000 89            	pushw	x
 332       00000000      OFST:	set	0
 335                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 337  0001 5d            	tnzw	x
 338  0002 2711          	jreq	L04
 339  0004 5a            	decw	x
 340  0005 270e          	jreq	L04
 341  0007 ae0092        	ldw	x,#146
 342  000a 89            	pushw	x
 343  000b 5f            	clrw	x
 344  000c 89            	pushw	x
 345  000d ae000c        	ldw	x,#L75
 346  0010 cd0000        	call	_assert_failed
 348  0013 5b04          	addw	sp,#4
 349  0015               L04:
 350                     ; 148   if (NewState != DISABLE)
 352  0015 1e01          	ldw	x,(OFST+1,sp)
 353  0017 2706          	jreq	L521
 354                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 356  0019 721050c0      	bset	20672,#0
 358  001d 2004          	jra	L721
 359  001f               L521:
 360                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 362  001f 721150c0      	bres	20672,#0
 363  0023               L721:
 364                     ; 158 }
 367  0023 85            	popw	x
 368  0024 81            	ret	
 404                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 404                     ; 167 {
 405                     .text:	section	.text,new
 406  0000               _CLK_LSICmd:
 408  0000 89            	pushw	x
 409       00000000      OFST:	set	0
 412                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414  0001 5d            	tnzw	x
 415  0002 2711          	jreq	L25
 416  0004 5a            	decw	x
 417  0005 270e          	jreq	L25
 418  0007 ae00a9        	ldw	x,#169
 419  000a 89            	pushw	x
 420  000b 5f            	clrw	x
 421  000c 89            	pushw	x
 422  000d ae000c        	ldw	x,#L75
 423  0010 cd0000        	call	_assert_failed
 425  0013 5b04          	addw	sp,#4
 426  0015               L25:
 427                     ; 171   if (NewState != DISABLE)
 429  0015 1e01          	ldw	x,(OFST+1,sp)
 430  0017 2706          	jreq	L741
 431                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 433  0019 721650c0      	bset	20672,#3
 435  001d 2004          	jra	L151
 436  001f               L741:
 437                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 439  001f 721750c0      	bres	20672,#3
 440  0023               L151:
 441                     ; 181 }
 444  0023 85            	popw	x
 445  0024 81            	ret	
 481                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 481                     ; 190 {
 482                     .text:	section	.text,new
 483  0000               _CLK_CCOCmd:
 485  0000 89            	pushw	x
 486       00000000      OFST:	set	0
 489                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 491  0001 5d            	tnzw	x
 492  0002 2711          	jreq	L46
 493  0004 5a            	decw	x
 494  0005 270e          	jreq	L46
 495  0007 ae00c0        	ldw	x,#192
 496  000a 89            	pushw	x
 497  000b 5f            	clrw	x
 498  000c 89            	pushw	x
 499  000d ae000c        	ldw	x,#L75
 500  0010 cd0000        	call	_assert_failed
 502  0013 5b04          	addw	sp,#4
 503  0015               L46:
 504                     ; 194   if (NewState != DISABLE)
 506  0015 1e01          	ldw	x,(OFST+1,sp)
 507  0017 2706          	jreq	L171
 508                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 510  0019 721050c9      	bset	20681,#0
 512  001d 2004          	jra	L371
 513  001f               L171:
 514                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 516  001f 721150c9      	bres	20681,#0
 517  0023               L371:
 518                     ; 204 }
 521  0023 85            	popw	x
 522  0024 81            	ret	
 558                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 558                     ; 214 {
 559                     .text:	section	.text,new
 560  0000               _CLK_ClockSwitchCmd:
 562  0000 89            	pushw	x
 563       00000000      OFST:	set	0
 566                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 568  0001 5d            	tnzw	x
 569  0002 2711          	jreq	L67
 570  0004 5a            	decw	x
 571  0005 270e          	jreq	L67
 572  0007 ae00d8        	ldw	x,#216
 573  000a 89            	pushw	x
 574  000b 5f            	clrw	x
 575  000c 89            	pushw	x
 576  000d ae000c        	ldw	x,#L75
 577  0010 cd0000        	call	_assert_failed
 579  0013 5b04          	addw	sp,#4
 580  0015               L67:
 581                     ; 218   if (NewState != DISABLE )
 583  0015 1e01          	ldw	x,(OFST+1,sp)
 584  0017 2706          	jreq	L312
 585                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 587  0019 721250c5      	bset	20677,#1
 589  001d 2004          	jra	L512
 590  001f               L312:
 591                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 593  001f 721350c5      	bres	20677,#1
 594  0023               L512:
 595                     ; 228 }
 598  0023 85            	popw	x
 599  0024 81            	ret	
 636                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 636                     ; 239 {
 637                     .text:	section	.text,new
 638  0000               _CLK_SlowActiveHaltWakeUpCmd:
 640  0000 89            	pushw	x
 641       00000000      OFST:	set	0
 644                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 646  0001 5d            	tnzw	x
 647  0002 2711          	jreq	L011
 648  0004 5a            	decw	x
 649  0005 270e          	jreq	L011
 650  0007 ae00f1        	ldw	x,#241
 651  000a 89            	pushw	x
 652  000b 5f            	clrw	x
 653  000c 89            	pushw	x
 654  000d ae000c        	ldw	x,#L75
 655  0010 cd0000        	call	_assert_failed
 657  0013 5b04          	addw	sp,#4
 658  0015               L011:
 659                     ; 243   if (NewState != DISABLE)
 661  0015 1e01          	ldw	x,(OFST+1,sp)
 662  0017 2706          	jreq	L532
 663                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 665  0019 721a50c0      	bset	20672,#5
 667  001d 2004          	jra	L732
 668  001f               L532:
 669                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 671  001f 721b50c0      	bres	20672,#5
 672  0023               L732:
 673                     ; 253 }
 676  0023 85            	popw	x
 677  0024 81            	ret	
 837                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 837                     ; 264 {
 838                     .text:	section	.text,new
 839  0000               _CLK_PeripheralClockConfig:
 841  0000 89            	pushw	x
 842       00000000      OFST:	set	0
 845                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 847  0001 1e05          	ldw	x,(OFST+5,sp)
 848  0003 2709          	jreq	L221
 849  0005 5a            	decw	x
 850  0006 2706          	jreq	L221
 851  0008 ae010a        	ldw	x,#266
 852  000b cd009b        	call	LC004
 853  000e               L221:
 854                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 856  000e 1e01          	ldw	x,(OFST+1,sp)
 857  0010 2737          	jreq	L231
 858  0012 a30001        	cpw	x,#1
 859  0015 2732          	jreq	L231
 860  0017 a30003        	cpw	x,#3
 861  001a 272d          	jreq	L231
 862  001c a30004        	cpw	x,#4
 863  001f 2728          	jreq	L231
 864  0021 a30005        	cpw	x,#5
 865  0024 2723          	jreq	L231
 866  0026 a30004        	cpw	x,#4
 867  0029 271e          	jreq	L231
 868  002b a30006        	cpw	x,#6
 869  002e 2719          	jreq	L231
 870  0030 a30007        	cpw	x,#7
 871  0033 2714          	jreq	L231
 872  0035 a30017        	cpw	x,#23
 873  0038 270f          	jreq	L231
 874  003a a30013        	cpw	x,#19
 875  003d 270a          	jreq	L231
 876  003f a30012        	cpw	x,#18
 877  0042 2705          	jreq	L231
 878  0044 ae010b        	ldw	x,#267
 879  0047 ad52          	call	LC004
 880  0049               L231:
 881                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 883  0049 7b02          	ld	a,(OFST+2,sp)
 884  004b a510          	bcp	a,#16
 885  004d 2622          	jrne	L323
 886                     ; 271     if (NewState != DISABLE)
 888  004f 1e05          	ldw	x,(OFST+5,sp)
 889  0051 270d          	jreq	L523
 890                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 892  0053 ad3e          	call	LC003
 893  0055 2704          	jreq	L631
 894  0057               L041:
 895  0057 48            	sll	a
 896  0058 5a            	decw	x
 897  0059 26fc          	jrne	L041
 898  005b               L631:
 899  005b ca50c7        	or	a,20679
 901  005e 200c          	jp	LC002
 902  0060               L523:
 903                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 905  0060 ad31          	call	LC003
 906  0062 2704          	jreq	L241
 907  0064               L441:
 908  0064 48            	sll	a
 909  0065 5a            	decw	x
 910  0066 26fc          	jrne	L441
 911  0068               L241:
 912  0068 43            	cpl	a
 913  0069 c450c7        	and	a,20679
 914  006c               LC002:
 915  006c c750c7        	ld	20679,a
 916  006f 2020          	jra	L133
 917  0071               L323:
 918                     ; 284     if (NewState != DISABLE)
 920  0071 1e05          	ldw	x,(OFST+5,sp)
 921  0073 270d          	jreq	L333
 922                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 924  0075 ad1c          	call	LC003
 925  0077 2704          	jreq	L641
 926  0079               L051:
 927  0079 48            	sll	a
 928  007a 5a            	decw	x
 929  007b 26fc          	jrne	L051
 930  007d               L641:
 931  007d ca50ca        	or	a,20682
 933  0080 200c          	jp	LC001
 934  0082               L333:
 935                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 937  0082 ad0f          	call	LC003
 938  0084 2704          	jreq	L251
 939  0086               L451:
 940  0086 48            	sll	a
 941  0087 5a            	decw	x
 942  0088 26fc          	jrne	L451
 943  008a               L251:
 944  008a 43            	cpl	a
 945  008b c450ca        	and	a,20682
 946  008e               LC001:
 947  008e c750ca        	ld	20682,a
 948  0091               L133:
 949                     ; 295 }
 952  0091 85            	popw	x
 953  0092 81            	ret	
 954  0093               LC003:
 955  0093 a40f          	and	a,#15
 956  0095 5f            	clrw	x
 957  0096 97            	ld	xl,a
 958  0097 a601          	ld	a,#1
 959  0099 5d            	tnzw	x
 960  009a 81            	ret	
 961  009b               LC004:
 962  009b 89            	pushw	x
 963  009c 5f            	clrw	x
 964  009d 89            	pushw	x
 965  009e ae000c        	ldw	x,#L75
 966  00a1 cd0000        	call	_assert_failed
 968  00a4 5b04          	addw	sp,#4
 969  00a6 81            	ret	
1158                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1158                     ; 310 {
1159                     .text:	section	.text,new
1160  0000               _CLK_ClockSwitchConfig:
1162  0000 89            	pushw	x
1163  0001 5204          	subw	sp,#4
1164       00000004      OFST:	set	4
1167                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1169  0003 aeffff        	ldw	x,#65535
1170  0006 1f03          	ldw	(OFST-1,sp),x
1171                     ; 313   ErrorStatus Swif = ERROR;
1173                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1175  0008 1e09          	ldw	x,(OFST+5,sp)
1176  000a a300e1        	cpw	x,#225
1177  000d 2710          	jreq	L461
1178  000f a300d2        	cpw	x,#210
1179  0012 270b          	jreq	L461
1180  0014 a300b4        	cpw	x,#180
1181  0017 2706          	jreq	L461
1182  0019 ae013c        	ldw	x,#316
1183  001c cd00e4        	call	LC007
1184  001f               L461:
1185                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1187  001f 1e05          	ldw	x,(OFST+1,sp)
1188  0021 2709          	jreq	L471
1189  0023 5a            	decw	x
1190  0024 2706          	jreq	L471
1191  0026 ae013d        	ldw	x,#317
1192  0029 cd00e4        	call	LC007
1193  002c               L471:
1194                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1196  002c 1e0b          	ldw	x,(OFST+7,sp)
1197  002e 2709          	jreq	L402
1198  0030 5a            	decw	x
1199  0031 2706          	jreq	L402
1200  0033 ae013e        	ldw	x,#318
1201  0036 cd00e4        	call	LC007
1202  0039               L402:
1203                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1205  0039 1e0d          	ldw	x,(OFST+9,sp)
1206  003b 2709          	jreq	L412
1207  003d 5a            	decw	x
1208  003e 2706          	jreq	L412
1209  0040 ae013f        	ldw	x,#319
1210  0043 cd00e4        	call	LC007
1211  0046               L412:
1212                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1214  0046 c650c3        	ld	a,20675
1215  0049 5f            	clrw	x
1216  004a 97            	ld	xl,a
1217  004b 1f01          	ldw	(OFST-3,sp),x
1218                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1220  004d 1e05          	ldw	x,(OFST+1,sp)
1221  004f 5a            	decw	x
1222  0050 263f          	jrne	L744
1223                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1225  0052 721250c5      	bset	20677,#1
1226                     ; 331     if (ITState != DISABLE)
1228  0056 1e0b          	ldw	x,(OFST+7,sp)
1229  0058 2706          	jreq	L154
1230                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1232  005a 721450c5      	bset	20677,#2
1234  005e 2004          	jra	L354
1235  0060               L154:
1236                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1238  0060 721550c5      	bres	20677,#2
1239  0064               L354:
1240                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1242  0064 7b0a          	ld	a,(OFST+6,sp)
1243  0066 c750c4        	ld	20676,a
1245  0069 2003          	jra	L164
1246  006b               L554:
1247                     ; 346       DownCounter--;
1249  006b 5a            	decw	x
1250  006c 1f03          	ldw	(OFST-1,sp),x
1251  006e               L164:
1252                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1254  006e 720150c504    	btjf	20677,#0,L564
1256  0073 1e03          	ldw	x,(OFST-1,sp)
1257  0075 26f4          	jrne	L554
1258  0077               L564:
1259                     ; 349     if(DownCounter != 0)
1261  0077 1e03          	ldw	x,(OFST-1,sp)
1262                     ; 351       Swif = SUCCESS;
1264  0079 263f          	jrne	LC006
1265  007b               L764:
1266                     ; 355       Swif = ERROR;
1269  007b 5f            	clrw	x
1270  007c               L374:
1271  007c 1f03          	ldw	(OFST-1,sp),x
1272                     ; 390   if(Swif != ERROR)
1274  007e 275f          	jreq	L715
1275                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1277  0080 1e0d          	ldw	x,(OFST+9,sp)
1278  0082 263b          	jrne	L125
1280  0084 1e01          	ldw	x,(OFST-3,sp)
1281  0086 a300e1        	cpw	x,#225
1282  0089 2634          	jrne	L125
1283                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1285  008b 721150c0      	bres	20672,#0
1287  008f 204e          	jra	L715
1288  0091               L744:
1289                     ; 361     if (ITState != DISABLE)
1291  0091 1e0b          	ldw	x,(OFST+7,sp)
1292  0093 2706          	jreq	L574
1293                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1295  0095 721450c5      	bset	20677,#2
1297  0099 2004          	jra	L774
1298  009b               L574:
1299                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1301  009b 721550c5      	bres	20677,#2
1302  009f               L774:
1303                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1305  009f 7b0a          	ld	a,(OFST+6,sp)
1306  00a1 c750c4        	ld	20676,a
1308  00a4 2003          	jra	L505
1309  00a6               L105:
1310                     ; 376       DownCounter--;
1312  00a6 5a            	decw	x
1313  00a7 1f03          	ldw	(OFST-1,sp),x
1314  00a9               L505:
1315                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1317  00a9 720750c504    	btjf	20677,#3,L115
1319  00ae 1e03          	ldw	x,(OFST-1,sp)
1320  00b0 26f4          	jrne	L105
1321  00b2               L115:
1322                     ; 379     if(DownCounter != 0)
1324  00b2 1e03          	ldw	x,(OFST-1,sp)
1325  00b4 27c5          	jreq	L764
1326                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1328  00b6 721250c5      	bset	20677,#1
1329                     ; 383       Swif = SUCCESS;
1331  00ba               LC006:
1333  00ba ae0001        	ldw	x,#1
1335  00bd 20bd          	jra	L374
1336                     ; 387       Swif = ERROR;
1337  00bf               L125:
1338                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1340  00bf 1e0d          	ldw	x,(OFST+9,sp)
1341  00c1 260d          	jrne	L525
1343  00c3 1e01          	ldw	x,(OFST-3,sp)
1344  00c5 a300d2        	cpw	x,#210
1345  00c8 2606          	jrne	L525
1346                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1348  00ca 721750c0      	bres	20672,#3
1350  00ce 200f          	jra	L715
1351  00d0               L525:
1352                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1354  00d0 1e0d          	ldw	x,(OFST+9,sp)
1355  00d2 260b          	jrne	L715
1357  00d4 1e01          	ldw	x,(OFST-3,sp)
1358  00d6 a300b4        	cpw	x,#180
1359  00d9 2604          	jrne	L715
1360                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1362  00db 721150c1      	bres	20673,#0
1363  00df               L715:
1364                     ; 406   return(Swif);
1366  00df 1e03          	ldw	x,(OFST-1,sp)
1369  00e1 5b06          	addw	sp,#6
1370  00e3 81            	ret	
1371  00e4               LC007:
1372  00e4 89            	pushw	x
1373  00e5 5f            	clrw	x
1374  00e6 89            	pushw	x
1375  00e7 ae000c        	ldw	x,#L75
1376  00ea cd0000        	call	_assert_failed
1378  00ed 5b04          	addw	sp,#4
1379  00ef 81            	ret	
1518                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1518                     ; 416 {
1519                     .text:	section	.text,new
1520  0000               _CLK_HSIPrescalerConfig:
1522  0000 89            	pushw	x
1523       00000000      OFST:	set	0
1526                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1528  0001 5d            	tnzw	x
1529  0002 271d          	jreq	L622
1530  0004 a30008        	cpw	x,#8
1531  0007 2718          	jreq	L622
1532  0009 a30010        	cpw	x,#16
1533  000c 2713          	jreq	L622
1534  000e a30018        	cpw	x,#24
1535  0011 270e          	jreq	L622
1536  0013 ae01a2        	ldw	x,#418
1537  0016 89            	pushw	x
1538  0017 5f            	clrw	x
1539  0018 89            	pushw	x
1540  0019 ae000c        	ldw	x,#L75
1541  001c cd0000        	call	_assert_failed
1543  001f 5b04          	addw	sp,#4
1544  0021               L622:
1545                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1547  0021 c650c6        	ld	a,20678
1548  0024 a4e7          	and	a,#231
1549  0026 c750c6        	ld	20678,a
1550                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1552  0029 c650c6        	ld	a,20678
1553  002c 1a02          	or	a,(OFST+2,sp)
1554  002e c750c6        	ld	20678,a
1555                     ; 425 }
1558  0031 85            	popw	x
1559  0032 81            	ret	
1695                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1695                     ; 437 {
1696                     .text:	section	.text,new
1697  0000               _CLK_CCOConfig:
1699  0000 89            	pushw	x
1700       00000000      OFST:	set	0
1703                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1705  0001 5d            	tnzw	x
1706  0002 274a          	jreq	L042
1707  0004 a30004        	cpw	x,#4
1708  0007 2745          	jreq	L042
1709  0009 a30002        	cpw	x,#2
1710  000c 2740          	jreq	L042
1711  000e a30008        	cpw	x,#8
1712  0011 273b          	jreq	L042
1713  0013 a3000a        	cpw	x,#10
1714  0016 2736          	jreq	L042
1715  0018 a3000c        	cpw	x,#12
1716  001b 2731          	jreq	L042
1717  001d a3000e        	cpw	x,#14
1718  0020 272c          	jreq	L042
1719  0022 a30010        	cpw	x,#16
1720  0025 2727          	jreq	L042
1721  0027 a30012        	cpw	x,#18
1722  002a 2722          	jreq	L042
1723  002c a30014        	cpw	x,#20
1724  002f 271d          	jreq	L042
1725  0031 a30016        	cpw	x,#22
1726  0034 2718          	jreq	L042
1727  0036 a30018        	cpw	x,#24
1728  0039 2713          	jreq	L042
1729  003b a3001a        	cpw	x,#26
1730  003e 270e          	jreq	L042
1731  0040 ae01b7        	ldw	x,#439
1732  0043 89            	pushw	x
1733  0044 5f            	clrw	x
1734  0045 89            	pushw	x
1735  0046 ae000c        	ldw	x,#L75
1736  0049 cd0000        	call	_assert_failed
1738  004c 5b04          	addw	sp,#4
1739  004e               L042:
1740                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1742  004e c650c9        	ld	a,20681
1743  0051 a4e1          	and	a,#225
1744  0053 c750c9        	ld	20681,a
1745                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1747  0056 c650c9        	ld	a,20681
1748  0059 1a02          	or	a,(OFST+2,sp)
1749  005b c750c9        	ld	20681,a
1750                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1752                     ; 449 }
1755  005e 85            	popw	x
1756  005f 721050c9      	bset	20681,#0
1757  0063 81            	ret	
1823                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1823                     ; 460 {
1824                     .text:	section	.text,new
1825  0000               _CLK_ITConfig:
1827  0000 89            	pushw	x
1828       00000000      OFST:	set	0
1831                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1833  0001 1e05          	ldw	x,(OFST+5,sp)
1834  0003 2708          	jreq	L252
1835  0005 5a            	decw	x
1836  0006 2705          	jreq	L252
1837  0008 ae01ce        	ldw	x,#462
1838  000b ad45          	call	LC008
1839  000d               L252:
1840                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1842  000d 1e01          	ldw	x,(OFST+1,sp)
1843  000f a3000c        	cpw	x,#12
1844  0012 270a          	jreq	L262
1845  0014 a3001c        	cpw	x,#28
1846  0017 2705          	jreq	L262
1847  0019 ae01cf        	ldw	x,#463
1848  001c ad34          	call	LC008
1849  001e               L262:
1850                     ; 465   if (NewState != DISABLE)
1852  001e 1e05          	ldw	x,(OFST+5,sp)
1853  0020 2718          	jreq	L727
1854                     ; 467     switch (CLK_IT)
1856  0022 1e01          	ldw	x,(OFST+1,sp)
1858                     ; 475     default:
1858                     ; 476       break;
1859  0024 1d000c        	subw	x,#12
1860  0027 270b          	jreq	L366
1861  0029 1d0010        	subw	x,#16
1862  002c 2622          	jrne	L537
1863                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1863                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1865  002e 721450c5      	bset	20677,#2
1866                     ; 471       break;
1868  0032 201c          	jra	L537
1869  0034               L366:
1870                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1870                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1872  0034 721450c8      	bset	20680,#2
1873                     ; 474       break;
1875  0038 2016          	jra	L537
1876                     ; 475     default:
1876                     ; 476       break;
1879  003a               L727:
1880                     ; 481     switch (CLK_IT)
1882  003a 1e01          	ldw	x,(OFST+1,sp)
1884                     ; 489     default:
1884                     ; 490       break;
1885  003c 1d000c        	subw	x,#12
1886  003f 270b          	jreq	L176
1887  0041 1d0010        	subw	x,#16
1888  0044 260a          	jrne	L537
1889                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1889                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1891  0046 721550c5      	bres	20677,#2
1892                     ; 485       break;
1894  004a 2004          	jra	L537
1895  004c               L176:
1896                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1896                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1898  004c 721550c8      	bres	20680,#2
1899                     ; 488       break;
1900  0050               L537:
1901                     ; 493 }
1904  0050 85            	popw	x
1905  0051 81            	ret	
1906                     ; 489     default:
1906                     ; 490       break;
1908  0052               LC008:
1909  0052 89            	pushw	x
1910  0053 5f            	clrw	x
1911  0054 89            	pushw	x
1912  0055 ae000c        	ldw	x,#L75
1913  0058 cd0000        	call	_assert_failed
1915  005b 5b04          	addw	sp,#4
1916  005d 81            	ret	
1952                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1952                     ; 501 {
1953                     .text:	section	.text,new
1954  0000               _CLK_SYSCLKConfig:
1956  0000 89            	pushw	x
1957       00000000      OFST:	set	0
1960                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1962  0001 5d            	tnzw	x
1963  0002 2745          	jreq	L472
1964  0004 a30008        	cpw	x,#8
1965  0007 2740          	jreq	L472
1966  0009 a30010        	cpw	x,#16
1967  000c 273b          	jreq	L472
1968  000e a30018        	cpw	x,#24
1969  0011 2736          	jreq	L472
1970  0013 a30080        	cpw	x,#128
1971  0016 2731          	jreq	L472
1972  0018 a30081        	cpw	x,#129
1973  001b 272c          	jreq	L472
1974  001d a30082        	cpw	x,#130
1975  0020 2727          	jreq	L472
1976  0022 a30083        	cpw	x,#131
1977  0025 2722          	jreq	L472
1978  0027 a30084        	cpw	x,#132
1979  002a 271d          	jreq	L472
1980  002c a30085        	cpw	x,#133
1981  002f 2718          	jreq	L472
1982  0031 a30086        	cpw	x,#134
1983  0034 2713          	jreq	L472
1984  0036 a30087        	cpw	x,#135
1985  0039 270e          	jreq	L472
1986  003b ae01f7        	ldw	x,#503
1987  003e 89            	pushw	x
1988  003f 5f            	clrw	x
1989  0040 89            	pushw	x
1990  0041 ae000c        	ldw	x,#L75
1991  0044 cd0000        	call	_assert_failed
1993  0047 5b04          	addw	sp,#4
1994  0049               L472:
1995                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1997  0049 7b02          	ld	a,(OFST+2,sp)
1998  004b 2b0e          	jrmi	L167
1999                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2001  004d c650c6        	ld	a,20678
2002  0050 a4e7          	and	a,#231
2003  0052 c750c6        	ld	20678,a
2004                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2006  0055 7b02          	ld	a,(OFST+2,sp)
2007  0057 a418          	and	a,#24
2009  0059 200c          	jra	L367
2010  005b               L167:
2011                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2013  005b c650c6        	ld	a,20678
2014  005e a4f8          	and	a,#248
2015  0060 c750c6        	ld	20678,a
2016                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2018  0063 7b02          	ld	a,(OFST+2,sp)
2019  0065 a407          	and	a,#7
2020  0067               L367:
2021  0067 ca50c6        	or	a,20678
2022  006a c750c6        	ld	20678,a
2023                     ; 515 }
2026  006d 85            	popw	x
2027  006e 81            	ret	
2084                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2084                     ; 524 {
2085                     .text:	section	.text,new
2086  0000               _CLK_SWIMConfig:
2088  0000 89            	pushw	x
2089       00000000      OFST:	set	0
2092                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2094  0001 5d            	tnzw	x
2095  0002 2711          	jreq	L603
2096  0004 5a            	decw	x
2097  0005 270e          	jreq	L603
2098  0007 ae020e        	ldw	x,#526
2099  000a 89            	pushw	x
2100  000b 5f            	clrw	x
2101  000c 89            	pushw	x
2102  000d ae000c        	ldw	x,#L75
2103  0010 cd0000        	call	_assert_failed
2105  0013 5b04          	addw	sp,#4
2106  0015               L603:
2107                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2109  0015 1e01          	ldw	x,(OFST+1,sp)
2110  0017 2706          	jreq	L3101
2111                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2113  0019 721050cd      	bset	20685,#0
2115  001d 2004          	jra	L5101
2116  001f               L3101:
2117                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2119  001f 721150cd      	bres	20685,#0
2120  0023               L5101:
2121                     ; 538 }
2124  0023 85            	popw	x
2125  0024 81            	ret	
2149                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2149                     ; 548 {
2150                     .text:	section	.text,new
2151  0000               _CLK_ClockSecuritySystemEnable:
2155                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2157  0000 721050c8      	bset	20680,#0
2158                     ; 551 }
2161  0004 81            	ret	
2186                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2186                     ; 560 {
2187                     .text:	section	.text,new
2188  0000               _CLK_GetSYSCLKSource:
2192                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2194  0000 c650c3        	ld	a,20675
2195  0003 5f            	clrw	x
2196  0004 97            	ld	xl,a
2199  0005 81            	ret	
2262                     ; 569 uint32_t CLK_GetClockFreq(void)
2262                     ; 570 {
2263                     .text:	section	.text,new
2264  0000               _CLK_GetClockFreq:
2266  0000 520b          	subw	sp,#11
2267       0000000b      OFST:	set	11
2270                     ; 571   uint32_t clockfrequency = 0;
2272                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2274                     ; 573   uint8_t tmp = 0, presc = 0;
2278                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2280  0002 c650c3        	ld	a,20675
2281  0005 5f            	clrw	x
2282  0006 97            	ld	xl,a
2283  0007 1f05          	ldw	(OFST-6,sp),x
2284                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2286  0009 a300e1        	cpw	x,#225
2287  000c 2634          	jrne	L1701
2288                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2290  000e c650c6        	ld	a,20678
2291  0011 a418          	and	a,#24
2292  0013 44            	srl	a
2293  0014 44            	srl	a
2294  0015 44            	srl	a
2295                     ; 581     tmp = (uint8_t)(tmp >> 3);
2297                     ; 582     presc = HSIDivFactor[tmp];
2299  0016 5f            	clrw	x
2300  0017 97            	ld	xl,a
2301  0018 d60000        	ld	a,(_HSIDivFactor,x)
2302  001b 6b0b          	ld	(OFST+0,sp),a
2303                     ; 583     clockfrequency = HSI_VALUE / presc;
2305  001d b703          	ld	c_lreg+3,a
2306  001f 3f02          	clr	c_lreg+2
2307  0021 3f01          	clr	c_lreg+1
2308  0023 3f00          	clr	c_lreg
2309  0025 96            	ldw	x,sp
2310  0026 5c            	incw	x
2311  0027 cd0000        	call	c_rtol
2313  002a ae2400        	ldw	x,#9216
2314  002d bf02          	ldw	c_lreg+2,x
2315  002f ae00f4        	ldw	x,#244
2316  0032 bf00          	ldw	c_lreg,x
2317  0034 96            	ldw	x,sp
2318  0035 5c            	incw	x
2319  0036 cd0000        	call	c_ludv
2321  0039 96            	ldw	x,sp
2322  003a 1c0007        	addw	x,#OFST-4
2323  003d cd0000        	call	c_rtol
2326  0040 2019          	jra	L3701
2327  0042               L1701:
2328                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2330  0042 a300d2        	cpw	x,#210
2331  0045 260a          	jrne	L5701
2332                     ; 587     clockfrequency = LSI_VALUE;
2334  0047 aef400        	ldw	x,#62464
2335  004a 1f09          	ldw	(OFST-2,sp),x
2336  004c ae0001        	ldw	x,#1
2338  004f 2008          	jp	LC009
2339  0051               L5701:
2340                     ; 591     clockfrequency = HSE_VALUE;
2342  0051 ae2400        	ldw	x,#9216
2343  0054 1f09          	ldw	(OFST-2,sp),x
2344  0056 ae00f4        	ldw	x,#244
2345  0059               LC009:
2346  0059 1f07          	ldw	(OFST-4,sp),x
2347  005b               L3701:
2348                     ; 594   return((uint32_t)clockfrequency);
2350  005b 96            	ldw	x,sp
2351  005c 1c0007        	addw	x,#OFST-4
2352  005f cd0000        	call	c_ltor
2356  0062 5b0b          	addw	sp,#11
2357  0064 81            	ret	
2457                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2457                     ; 605 {
2458                     .text:	section	.text,new
2459  0000               _CLK_AdjustHSICalibrationValue:
2461  0000 89            	pushw	x
2462       00000000      OFST:	set	0
2465                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2467  0001 5d            	tnzw	x
2468  0002 2731          	jreq	L623
2469  0004 a30001        	cpw	x,#1
2470  0007 272c          	jreq	L623
2471  0009 a30002        	cpw	x,#2
2472  000c 2727          	jreq	L623
2473  000e a30003        	cpw	x,#3
2474  0011 2722          	jreq	L623
2475  0013 a30004        	cpw	x,#4
2476  0016 271d          	jreq	L623
2477  0018 a30005        	cpw	x,#5
2478  001b 2718          	jreq	L623
2479  001d a30006        	cpw	x,#6
2480  0020 2713          	jreq	L623
2481  0022 a30007        	cpw	x,#7
2482  0025 270e          	jreq	L623
2483  0027 ae025f        	ldw	x,#607
2484  002a 89            	pushw	x
2485  002b 5f            	clrw	x
2486  002c 89            	pushw	x
2487  002d ae000c        	ldw	x,#L75
2488  0030 cd0000        	call	_assert_failed
2490  0033 5b04          	addw	sp,#4
2491  0035               L623:
2492                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2494  0035 c650cc        	ld	a,20684
2495  0038 a4f8          	and	a,#248
2496  003a 1a02          	or	a,(OFST+2,sp)
2497  003c c750cc        	ld	20684,a
2498                     ; 611 }
2501  003f 85            	popw	x
2502  0040 81            	ret	
2526                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2526                     ; 623 {
2527                     .text:	section	.text,new
2528  0000               _CLK_SYSCLKEmergencyClear:
2532                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2534  0000 721150c5      	bres	20677,#0
2535                     ; 625 }
2538  0004 81            	ret	
2692                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2692                     ; 635 {
2693                     .text:	section	.text,new
2694  0000               _CLK_GetFlagStatus:
2696  0000 89            	pushw	x
2697  0001 5203          	subw	sp,#3
2698       00000003      OFST:	set	3
2701                     ; 636   uint16_t statusreg = 0;
2703                     ; 637   uint8_t tmpreg = 0;
2705                     ; 638   FlagStatus bitstatus = RESET;
2707                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2709  0003 a30110        	cpw	x,#272
2710  0006 2736          	jreq	L243
2711  0008 a30102        	cpw	x,#258
2712  000b 2731          	jreq	L243
2713  000d a30202        	cpw	x,#514
2714  0010 272c          	jreq	L243
2715  0012 a30308        	cpw	x,#776
2716  0015 2727          	jreq	L243
2717  0017 a30301        	cpw	x,#769
2718  001a 2722          	jreq	L243
2719  001c a30408        	cpw	x,#1032
2720  001f 271d          	jreq	L243
2721  0021 a30402        	cpw	x,#1026
2722  0024 2718          	jreq	L243
2723  0026 a30504        	cpw	x,#1284
2724  0029 2713          	jreq	L243
2725  002b a30502        	cpw	x,#1282
2726  002e 270e          	jreq	L243
2727  0030 ae0281        	ldw	x,#641
2728  0033 89            	pushw	x
2729  0034 5f            	clrw	x
2730  0035 89            	pushw	x
2731  0036 ae000c        	ldw	x,#L75
2732  0039 cd0000        	call	_assert_failed
2734  003c 5b04          	addw	sp,#4
2735  003e               L243:
2736                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2738  003e 7b04          	ld	a,(OFST+1,sp)
2739  0040 97            	ld	xl,a
2740  0041 4f            	clr	a
2741  0042 02            	rlwa	x,a
2742  0043 1f02          	ldw	(OFST-1,sp),x
2743                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2745  0045 a30100        	cpw	x,#256
2746  0048 2605          	jrne	L3421
2747                     ; 649     tmpreg = CLK->ICKR;
2749  004a c650c0        	ld	a,20672
2751  004d 2021          	jra	L5421
2752  004f               L3421:
2753                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2755  004f a30200        	cpw	x,#512
2756  0052 2605          	jrne	L7421
2757                     ; 653     tmpreg = CLK->ECKR;
2759  0054 c650c1        	ld	a,20673
2761  0057 2017          	jra	L5421
2762  0059               L7421:
2763                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2765  0059 a30300        	cpw	x,#768
2766  005c 2605          	jrne	L3521
2767                     ; 657     tmpreg = CLK->SWCR;
2769  005e c650c5        	ld	a,20677
2771  0061 200d          	jra	L5421
2772  0063               L3521:
2773                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2775  0063 a30400        	cpw	x,#1024
2776  0066 2605          	jrne	L7521
2777                     ; 661     tmpreg = CLK->CSSR;
2779  0068 c650c8        	ld	a,20680
2781  006b 2003          	jra	L5421
2782  006d               L7521:
2783                     ; 665     tmpreg = CLK->CCOR;
2785  006d c650c9        	ld	a,20681
2786  0070               L5421:
2787  0070 6b01          	ld	(OFST-2,sp),a
2788                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2790  0072 7b05          	ld	a,(OFST+2,sp)
2791  0074 1501          	bcp	a,(OFST-2,sp)
2792  0076 2705          	jreq	L3621
2793                     ; 670     bitstatus = SET;
2795  0078 ae0001        	ldw	x,#1
2797  007b 2001          	jra	L5621
2798  007d               L3621:
2799                     ; 674     bitstatus = RESET;
2801  007d 5f            	clrw	x
2802  007e               L5621:
2803                     ; 678   return((FlagStatus)bitstatus);
2807  007e 5b05          	addw	sp,#5
2808  0080 81            	ret	
2855                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2855                     ; 688 {
2856                     .text:	section	.text,new
2857  0000               _CLK_GetITStatus:
2859  0000 89            	pushw	x
2860  0001 89            	pushw	x
2861       00000002      OFST:	set	2
2864                     ; 689   ITStatus bitstatus = RESET;
2866                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2868  0002 a3000c        	cpw	x,#12
2869  0005 2713          	jreq	L453
2870  0007 a3001c        	cpw	x,#28
2871  000a 270e          	jreq	L453
2872  000c ae02b4        	ldw	x,#692
2873  000f 89            	pushw	x
2874  0010 5f            	clrw	x
2875  0011 89            	pushw	x
2876  0012 ae000c        	ldw	x,#L75
2877  0015 cd0000        	call	_assert_failed
2879  0018 5b04          	addw	sp,#4
2880  001a               L453:
2881                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2883  001a 1e03          	ldw	x,(OFST+1,sp)
2884  001c a3001c        	cpw	x,#28
2885  001f 260b          	jrne	L1131
2886                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2888  0021 c650c5        	ld	a,20677
2889  0024 1404          	and	a,(OFST+2,sp)
2890  0026 a10c          	cp	a,#12
2891  0028 2610          	jrne	L1231
2892                     ; 699       bitstatus = SET;
2894  002a 2009          	jp	LC011
2895                     ; 703       bitstatus = RESET;
2896  002c               L1131:
2897                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2899  002c c650c8        	ld	a,20680
2900  002f 1404          	and	a,(OFST+2,sp)
2901  0031 a10c          	cp	a,#12
2902  0033 2605          	jrne	L1231
2903                     ; 711       bitstatus = SET;
2905  0035               LC011:
2907  0035 ae0001        	ldw	x,#1
2909  0038 2001          	jra	L7131
2910  003a               L1231:
2911                     ; 715       bitstatus = RESET;
2914  003a 5f            	clrw	x
2915  003b               L7131:
2916                     ; 720   return bitstatus;
2920  003b 5b04          	addw	sp,#4
2921  003d 81            	ret	
2958                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2958                     ; 730 {
2959                     .text:	section	.text,new
2960  0000               _CLK_ClearITPendingBit:
2962  0000 89            	pushw	x
2963       00000000      OFST:	set	0
2966                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2968  0001 a3000c        	cpw	x,#12
2969  0004 2713          	jreq	L663
2970  0006 a3001c        	cpw	x,#28
2971  0009 270e          	jreq	L663
2972  000b ae02dc        	ldw	x,#732
2973  000e 89            	pushw	x
2974  000f 5f            	clrw	x
2975  0010 89            	pushw	x
2976  0011 ae000c        	ldw	x,#L75
2977  0014 cd0000        	call	_assert_failed
2979  0017 5b04          	addw	sp,#4
2980  0019               L663:
2981                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2983  0019 1e01          	ldw	x,(OFST+1,sp)
2984  001b a3000c        	cpw	x,#12
2985  001e 2606          	jrne	L3431
2986                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2988  0020 721750c8      	bres	20680,#3
2990  0024 2004          	jra	L5431
2991  0026               L3431:
2992                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2994  0026 721750c5      	bres	20677,#3
2995  002a               L5431:
2996                     ; 745 }
2999  002a 85            	popw	x
3000  002b 81            	ret	
3035                     	xdef	_CLKPrescTable
3036                     	xdef	_HSIDivFactor
3037                     	xdef	_CLK_ClearITPendingBit
3038                     	xdef	_CLK_GetITStatus
3039                     	xdef	_CLK_GetFlagStatus
3040                     	xdef	_CLK_GetSYSCLKSource
3041                     	xdef	_CLK_GetClockFreq
3042                     	xdef	_CLK_AdjustHSICalibrationValue
3043                     	xdef	_CLK_SYSCLKEmergencyClear
3044                     	xdef	_CLK_ClockSecuritySystemEnable
3045                     	xdef	_CLK_SWIMConfig
3046                     	xdef	_CLK_SYSCLKConfig
3047                     	xdef	_CLK_ITConfig
3048                     	xdef	_CLK_CCOConfig
3049                     	xdef	_CLK_HSIPrescalerConfig
3050                     	xdef	_CLK_ClockSwitchConfig
3051                     	xdef	_CLK_PeripheralClockConfig
3052                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3053                     	xdef	_CLK_FastHaltWakeUpCmd
3054                     	xdef	_CLK_ClockSwitchCmd
3055                     	xdef	_CLK_CCOCmd
3056                     	xdef	_CLK_LSICmd
3057                     	xdef	_CLK_HSICmd
3058                     	xdef	_CLK_HSECmd
3059                     	xdef	_CLK_DeInit
3060                     	xref	_assert_failed
3061                     	switch	.const
3062  000c               L75:
3063  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
3064  001e 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
3065  0030 72697665725c  	dc.b	"river\src\stm8s_cl"
3066  0042 6b2e6300      	dc.b	"k.c",0
3067                     	xref.b	c_lreg
3068                     	xref.b	c_x
3088                     	xref	c_ltor
3089                     	xref	c_ludv
3090                     	xref	c_rtol
3091                     	end

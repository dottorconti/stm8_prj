   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     .const:	section	.text
  19  0000               _HSIDivFactor:
  20  0000 01            	dc.b	1
  21  0001 02            	dc.b	2
  22  0002 04            	dc.b	4
  23  0003 08            	dc.b	8
  24  0004               _CLKPrescTable:
  25  0004 01            	dc.b	1
  26  0005 02            	dc.b	2
  27  0006 04            	dc.b	4
  28  0007 08            	dc.b	8
  29  0008 0a            	dc.b	10
  30  0009 10            	dc.b	16
  31  000a 14            	dc.b	20
  32  000b 28            	dc.b	40
  61                     ; 72 void CLK_DeInit(void)
  61                     ; 73 {
  63                     .text:	section	.text,new
  64  0000               _CLK_DeInit:
  68                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  70  0000 350150c0      	mov	20672,#1
  71                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  73  0004 725f50c1      	clr	20673
  74                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  76  0008 35e150c4      	mov	20676,#225
  77                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  79  000c 725f50c5      	clr	20677
  80                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  82  0010 351850c6      	mov	20678,#24
  83                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  85  0014 35ff50c7      	mov	20679,#255
  86                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  88  0018 35ff50ca      	mov	20682,#255
  89                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  91  001c 725f50c8      	clr	20680
  92                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  94  0020 725f50c9      	clr	20681
  96  0024               L52:
  97                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  99  0024 c650c9        	ld	a,20681
 100  0027 a501          	bcp	a,#1
 101  0029 26f9          	jrne	L52
 102                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 104  002b 725f50c9      	clr	20681
 105                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 107  002f 725f50cc      	clr	20684
 108                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 110  0033 725f50cd      	clr	20685
 111                     ; 88 }
 114  0037 81            	ret
 171                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 171                     ; 100 {
 172                     .text:	section	.text,new
 173  0000               _CLK_FastHaltWakeUpCmd:
 175  0000 89            	pushw	x
 176       00000000      OFST:	set	0
 179                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 181  0001 a30000        	cpw	x,#0
 182  0004 2705          	jreq	L21
 183  0006 a30001        	cpw	x,#1
 184  0009 2603          	jrne	L01
 185  000b               L21:
 186  000b 4f            	clr	a
 187  000c 2010          	jra	L41
 188  000e               L01:
 189  000e ae0066        	ldw	x,#102
 190  0011 89            	pushw	x
 191  0012 ae0000        	ldw	x,#0
 192  0015 89            	pushw	x
 193  0016 ae000c        	ldw	x,#L75
 194  0019 cd0000        	call	_assert_failed
 196  001c 5b04          	addw	sp,#4
 197  001e               L41:
 198                     ; 104   if (NewState != DISABLE)
 200  001e 1e01          	ldw	x,(OFST+1,sp)
 201  0020 2706          	jreq	L16
 202                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 204  0022 721450c0      	bset	20672,#2
 206  0026 2004          	jra	L36
 207  0028               L16:
 208                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 210  0028 721550c0      	bres	20672,#2
 211  002c               L36:
 212                     ; 114 }
 215  002c 85            	popw	x
 216  002d 81            	ret
 252                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 252                     ; 122 {
 253                     .text:	section	.text,new
 254  0000               _CLK_HSECmd:
 256  0000 89            	pushw	x
 257       00000000      OFST:	set	0
 260                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 262  0001 a30000        	cpw	x,#0
 263  0004 2705          	jreq	L22
 264  0006 a30001        	cpw	x,#1
 265  0009 2603          	jrne	L02
 266  000b               L22:
 267  000b 4f            	clr	a
 268  000c 2010          	jra	L42
 269  000e               L02:
 270  000e ae007c        	ldw	x,#124
 271  0011 89            	pushw	x
 272  0012 ae0000        	ldw	x,#0
 273  0015 89            	pushw	x
 274  0016 ae000c        	ldw	x,#L75
 275  0019 cd0000        	call	_assert_failed
 277  001c 5b04          	addw	sp,#4
 278  001e               L42:
 279                     ; 126   if (NewState != DISABLE)
 281  001e 1e01          	ldw	x,(OFST+1,sp)
 282  0020 2706          	jreq	L301
 283                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 285  0022 721050c1      	bset	20673,#0
 287  0026 2004          	jra	L501
 288  0028               L301:
 289                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 291  0028 721150c1      	bres	20673,#0
 292  002c               L501:
 293                     ; 136 }
 296  002c 85            	popw	x
 297  002d 81            	ret
 333                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 333                     ; 144 {
 334                     .text:	section	.text,new
 335  0000               _CLK_HSICmd:
 337  0000 89            	pushw	x
 338       00000000      OFST:	set	0
 341                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 343  0001 a30000        	cpw	x,#0
 344  0004 2705          	jreq	L23
 345  0006 a30001        	cpw	x,#1
 346  0009 2603          	jrne	L03
 347  000b               L23:
 348  000b 4f            	clr	a
 349  000c 2010          	jra	L43
 350  000e               L03:
 351  000e ae0092        	ldw	x,#146
 352  0011 89            	pushw	x
 353  0012 ae0000        	ldw	x,#0
 354  0015 89            	pushw	x
 355  0016 ae000c        	ldw	x,#L75
 356  0019 cd0000        	call	_assert_failed
 358  001c 5b04          	addw	sp,#4
 359  001e               L43:
 360                     ; 148   if (NewState != DISABLE)
 362  001e 1e01          	ldw	x,(OFST+1,sp)
 363  0020 2706          	jreq	L521
 364                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 366  0022 721050c0      	bset	20672,#0
 368  0026 2004          	jra	L721
 369  0028               L521:
 370                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 372  0028 721150c0      	bres	20672,#0
 373  002c               L721:
 374                     ; 158 }
 377  002c 85            	popw	x
 378  002d 81            	ret
 414                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 414                     ; 167 {
 415                     .text:	section	.text,new
 416  0000               _CLK_LSICmd:
 418  0000 89            	pushw	x
 419       00000000      OFST:	set	0
 422                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 424  0001 a30000        	cpw	x,#0
 425  0004 2705          	jreq	L24
 426  0006 a30001        	cpw	x,#1
 427  0009 2603          	jrne	L04
 428  000b               L24:
 429  000b 4f            	clr	a
 430  000c 2010          	jra	L44
 431  000e               L04:
 432  000e ae00a9        	ldw	x,#169
 433  0011 89            	pushw	x
 434  0012 ae0000        	ldw	x,#0
 435  0015 89            	pushw	x
 436  0016 ae000c        	ldw	x,#L75
 437  0019 cd0000        	call	_assert_failed
 439  001c 5b04          	addw	sp,#4
 440  001e               L44:
 441                     ; 171   if (NewState != DISABLE)
 443  001e 1e01          	ldw	x,(OFST+1,sp)
 444  0020 2706          	jreq	L741
 445                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 447  0022 721650c0      	bset	20672,#3
 449  0026 2004          	jra	L151
 450  0028               L741:
 451                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 453  0028 721750c0      	bres	20672,#3
 454  002c               L151:
 455                     ; 181 }
 458  002c 85            	popw	x
 459  002d 81            	ret
 495                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 495                     ; 190 {
 496                     .text:	section	.text,new
 497  0000               _CLK_CCOCmd:
 499  0000 89            	pushw	x
 500       00000000      OFST:	set	0
 503                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 505  0001 a30000        	cpw	x,#0
 506  0004 2705          	jreq	L25
 507  0006 a30001        	cpw	x,#1
 508  0009 2603          	jrne	L05
 509  000b               L25:
 510  000b 4f            	clr	a
 511  000c 2010          	jra	L45
 512  000e               L05:
 513  000e ae00c0        	ldw	x,#192
 514  0011 89            	pushw	x
 515  0012 ae0000        	ldw	x,#0
 516  0015 89            	pushw	x
 517  0016 ae000c        	ldw	x,#L75
 518  0019 cd0000        	call	_assert_failed
 520  001c 5b04          	addw	sp,#4
 521  001e               L45:
 522                     ; 194   if (NewState != DISABLE)
 524  001e 1e01          	ldw	x,(OFST+1,sp)
 525  0020 2706          	jreq	L171
 526                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 528  0022 721050c9      	bset	20681,#0
 530  0026 2004          	jra	L371
 531  0028               L171:
 532                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 534  0028 721150c9      	bres	20681,#0
 535  002c               L371:
 536                     ; 204 }
 539  002c 85            	popw	x
 540  002d 81            	ret
 576                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 576                     ; 214 {
 577                     .text:	section	.text,new
 578  0000               _CLK_ClockSwitchCmd:
 580  0000 89            	pushw	x
 581       00000000      OFST:	set	0
 584                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 586  0001 a30000        	cpw	x,#0
 587  0004 2705          	jreq	L26
 588  0006 a30001        	cpw	x,#1
 589  0009 2603          	jrne	L06
 590  000b               L26:
 591  000b 4f            	clr	a
 592  000c 2010          	jra	L46
 593  000e               L06:
 594  000e ae00d8        	ldw	x,#216
 595  0011 89            	pushw	x
 596  0012 ae0000        	ldw	x,#0
 597  0015 89            	pushw	x
 598  0016 ae000c        	ldw	x,#L75
 599  0019 cd0000        	call	_assert_failed
 601  001c 5b04          	addw	sp,#4
 602  001e               L46:
 603                     ; 218   if (NewState != DISABLE )
 605  001e 1e01          	ldw	x,(OFST+1,sp)
 606  0020 2706          	jreq	L312
 607                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 609  0022 721250c5      	bset	20677,#1
 611  0026 2004          	jra	L512
 612  0028               L312:
 613                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 615  0028 721350c5      	bres	20677,#1
 616  002c               L512:
 617                     ; 228 }
 620  002c 85            	popw	x
 621  002d 81            	ret
 658                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 658                     ; 239 {
 659                     .text:	section	.text,new
 660  0000               _CLK_SlowActiveHaltWakeUpCmd:
 662  0000 89            	pushw	x
 663       00000000      OFST:	set	0
 666                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 668  0001 a30000        	cpw	x,#0
 669  0004 2705          	jreq	L27
 670  0006 a30001        	cpw	x,#1
 671  0009 2603          	jrne	L07
 672  000b               L27:
 673  000b 4f            	clr	a
 674  000c 2010          	jra	L47
 675  000e               L07:
 676  000e ae00f1        	ldw	x,#241
 677  0011 89            	pushw	x
 678  0012 ae0000        	ldw	x,#0
 679  0015 89            	pushw	x
 680  0016 ae000c        	ldw	x,#L75
 681  0019 cd0000        	call	_assert_failed
 683  001c 5b04          	addw	sp,#4
 684  001e               L47:
 685                     ; 243   if (NewState != DISABLE)
 687  001e 1e01          	ldw	x,(OFST+1,sp)
 688  0020 2706          	jreq	L532
 689                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 691  0022 721a50c0      	bset	20672,#5
 693  0026 2004          	jra	L732
 694  0028               L532:
 695                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 697  0028 721b50c0      	bres	20672,#5
 698  002c               L732:
 699                     ; 253 }
 702  002c 85            	popw	x
 703  002d 81            	ret
 863                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 863                     ; 264 {
 864                     .text:	section	.text,new
 865  0000               _CLK_PeripheralClockConfig:
 867  0000 89            	pushw	x
 868       00000000      OFST:	set	0
 871                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 873  0001 1e05          	ldw	x,(OFST+5,sp)
 874  0003 2707          	jreq	L201
 875  0005 1e05          	ldw	x,(OFST+5,sp)
 876  0007 a30001        	cpw	x,#1
 877  000a 2603          	jrne	L001
 878  000c               L201:
 879  000c 4f            	clr	a
 880  000d 2010          	jra	L401
 881  000f               L001:
 882  000f ae010a        	ldw	x,#266
 883  0012 89            	pushw	x
 884  0013 ae0000        	ldw	x,#0
 885  0016 89            	pushw	x
 886  0017 ae000c        	ldw	x,#L75
 887  001a cd0000        	call	_assert_failed
 889  001d 5b04          	addw	sp,#4
 890  001f               L401:
 891                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 893  001f 1e01          	ldw	x,(OFST+1,sp)
 894  0021 275b          	jreq	L011
 895  0023 1e01          	ldw	x,(OFST+1,sp)
 896  0025 a30001        	cpw	x,#1
 897  0028 2754          	jreq	L011
 898  002a 1e01          	ldw	x,(OFST+1,sp)
 899  002c a30003        	cpw	x,#3
 900  002f 274d          	jreq	L011
 901  0031 1e01          	ldw	x,(OFST+1,sp)
 902  0033 a30003        	cpw	x,#3
 903  0036 2746          	jreq	L011
 904  0038 1e01          	ldw	x,(OFST+1,sp)
 905  003a a30003        	cpw	x,#3
 906  003d 273f          	jreq	L011
 907  003f 1e01          	ldw	x,(OFST+1,sp)
 908  0041 a30004        	cpw	x,#4
 909  0044 2738          	jreq	L011
 910  0046 1e01          	ldw	x,(OFST+1,sp)
 911  0048 a30005        	cpw	x,#5
 912  004b 2731          	jreq	L011
 913  004d 1e01          	ldw	x,(OFST+1,sp)
 914  004f a30005        	cpw	x,#5
 915  0052 272a          	jreq	L011
 916  0054 1e01          	ldw	x,(OFST+1,sp)
 917  0056 a30004        	cpw	x,#4
 918  0059 2723          	jreq	L011
 919  005b 1e01          	ldw	x,(OFST+1,sp)
 920  005d a30006        	cpw	x,#6
 921  0060 271c          	jreq	L011
 922  0062 1e01          	ldw	x,(OFST+1,sp)
 923  0064 a30007        	cpw	x,#7
 924  0067 2715          	jreq	L011
 925  0069 1e01          	ldw	x,(OFST+1,sp)
 926  006b a30017        	cpw	x,#23
 927  006e 270e          	jreq	L011
 928  0070 1e01          	ldw	x,(OFST+1,sp)
 929  0072 a30013        	cpw	x,#19
 930  0075 2707          	jreq	L011
 931  0077 1e01          	ldw	x,(OFST+1,sp)
 932  0079 a30012        	cpw	x,#18
 933  007c 2603          	jrne	L601
 934  007e               L011:
 935  007e 4f            	clr	a
 936  007f 2010          	jra	L211
 937  0081               L601:
 938  0081 ae010b        	ldw	x,#267
 939  0084 89            	pushw	x
 940  0085 ae0000        	ldw	x,#0
 941  0088 89            	pushw	x
 942  0089 ae000c        	ldw	x,#L75
 943  008c cd0000        	call	_assert_failed
 945  008f 5b04          	addw	sp,#4
 946  0091               L211:
 947                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 949  0091 7b02          	ld	a,(OFST+2,sp)
 950  0093 a510          	bcp	a,#16
 951  0095 2633          	jrne	L323
 952                     ; 271     if (NewState != DISABLE)
 954  0097 1e05          	ldw	x,(OFST+5,sp)
 955  0099 2717          	jreq	L523
 956                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 958  009b 7b02          	ld	a,(OFST+2,sp)
 959  009d a40f          	and	a,#15
 960  009f 5f            	clrw	x
 961  00a0 97            	ld	xl,a
 962  00a1 a601          	ld	a,#1
 963  00a3 5d            	tnzw	x
 964  00a4 2704          	jreq	L411
 965  00a6               L611:
 966  00a6 48            	sll	a
 967  00a7 5a            	decw	x
 968  00a8 26fc          	jrne	L611
 969  00aa               L411:
 970  00aa ca50c7        	or	a,20679
 971  00ad c750c7        	ld	20679,a
 973  00b0 2049          	jra	L133
 974  00b2               L523:
 975                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 977  00b2 7b02          	ld	a,(OFST+2,sp)
 978  00b4 a40f          	and	a,#15
 979  00b6 5f            	clrw	x
 980  00b7 97            	ld	xl,a
 981  00b8 a601          	ld	a,#1
 982  00ba 5d            	tnzw	x
 983  00bb 2704          	jreq	L021
 984  00bd               L221:
 985  00bd 48            	sll	a
 986  00be 5a            	decw	x
 987  00bf 26fc          	jrne	L221
 988  00c1               L021:
 989  00c1 43            	cpl	a
 990  00c2 c450c7        	and	a,20679
 991  00c5 c750c7        	ld	20679,a
 992  00c8 2031          	jra	L133
 993  00ca               L323:
 994                     ; 284     if (NewState != DISABLE)
 996  00ca 1e05          	ldw	x,(OFST+5,sp)
 997  00cc 2717          	jreq	L333
 998                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
1000  00ce 7b02          	ld	a,(OFST+2,sp)
1001  00d0 a40f          	and	a,#15
1002  00d2 5f            	clrw	x
1003  00d3 97            	ld	xl,a
1004  00d4 a601          	ld	a,#1
1005  00d6 5d            	tnzw	x
1006  00d7 2704          	jreq	L421
1007  00d9               L621:
1008  00d9 48            	sll	a
1009  00da 5a            	decw	x
1010  00db 26fc          	jrne	L621
1011  00dd               L421:
1012  00dd ca50ca        	or	a,20682
1013  00e0 c750ca        	ld	20682,a
1015  00e3 2016          	jra	L133
1016  00e5               L333:
1017                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1019  00e5 7b02          	ld	a,(OFST+2,sp)
1020  00e7 a40f          	and	a,#15
1021  00e9 5f            	clrw	x
1022  00ea 97            	ld	xl,a
1023  00eb a601          	ld	a,#1
1024  00ed 5d            	tnzw	x
1025  00ee 2704          	jreq	L031
1026  00f0               L231:
1027  00f0 48            	sll	a
1028  00f1 5a            	decw	x
1029  00f2 26fc          	jrne	L231
1030  00f4               L031:
1031  00f4 43            	cpl	a
1032  00f5 c450ca        	and	a,20682
1033  00f8 c750ca        	ld	20682,a
1034  00fb               L133:
1035                     ; 295 }
1038  00fb 85            	popw	x
1039  00fc 81            	ret
1226                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1226                     ; 310 {
1227                     .text:	section	.text,new
1228  0000               _CLK_ClockSwitchConfig:
1230  0000 89            	pushw	x
1231  0001 5204          	subw	sp,#4
1232       00000004      OFST:	set	4
1235                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1237  0003 aeffff        	ldw	x,#65535
1238  0006 1f03          	ldw	(OFST-1,sp),x
1239                     ; 313   ErrorStatus Swif = ERROR;
1241                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1243  0008 1e09          	ldw	x,(OFST+5,sp)
1244  000a a300e1        	cpw	x,#225
1245  000d 270e          	jreq	L041
1246  000f 1e09          	ldw	x,(OFST+5,sp)
1247  0011 a300d2        	cpw	x,#210
1248  0014 2707          	jreq	L041
1249  0016 1e09          	ldw	x,(OFST+5,sp)
1250  0018 a300b4        	cpw	x,#180
1251  001b 2603          	jrne	L631
1252  001d               L041:
1253  001d 4f            	clr	a
1254  001e 2010          	jra	L241
1255  0020               L631:
1256  0020 ae013c        	ldw	x,#316
1257  0023 89            	pushw	x
1258  0024 ae0000        	ldw	x,#0
1259  0027 89            	pushw	x
1260  0028 ae000c        	ldw	x,#L75
1261  002b cd0000        	call	_assert_failed
1263  002e 5b04          	addw	sp,#4
1264  0030               L241:
1265                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1267  0030 1e05          	ldw	x,(OFST+1,sp)
1268  0032 2707          	jreq	L641
1269  0034 1e05          	ldw	x,(OFST+1,sp)
1270  0036 a30001        	cpw	x,#1
1271  0039 2603          	jrne	L441
1272  003b               L641:
1273  003b 4f            	clr	a
1274  003c 2010          	jra	L051
1275  003e               L441:
1276  003e ae013d        	ldw	x,#317
1277  0041 89            	pushw	x
1278  0042 ae0000        	ldw	x,#0
1279  0045 89            	pushw	x
1280  0046 ae000c        	ldw	x,#L75
1281  0049 cd0000        	call	_assert_failed
1283  004c 5b04          	addw	sp,#4
1284  004e               L051:
1285                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1287  004e 1e0b          	ldw	x,(OFST+7,sp)
1288  0050 2707          	jreq	L451
1289  0052 1e0b          	ldw	x,(OFST+7,sp)
1290  0054 a30001        	cpw	x,#1
1291  0057 2603          	jrne	L251
1292  0059               L451:
1293  0059 4f            	clr	a
1294  005a 2010          	jra	L651
1295  005c               L251:
1296  005c ae013e        	ldw	x,#318
1297  005f 89            	pushw	x
1298  0060 ae0000        	ldw	x,#0
1299  0063 89            	pushw	x
1300  0064 ae000c        	ldw	x,#L75
1301  0067 cd0000        	call	_assert_failed
1303  006a 5b04          	addw	sp,#4
1304  006c               L651:
1305                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1307  006c 1e0d          	ldw	x,(OFST+9,sp)
1308  006e 2707          	jreq	L261
1309  0070 1e0d          	ldw	x,(OFST+9,sp)
1310  0072 a30001        	cpw	x,#1
1311  0075 2603          	jrne	L061
1312  0077               L261:
1313  0077 4f            	clr	a
1314  0078 2010          	jra	L461
1315  007a               L061:
1316  007a ae013f        	ldw	x,#319
1317  007d 89            	pushw	x
1318  007e ae0000        	ldw	x,#0
1319  0081 89            	pushw	x
1320  0082 ae000c        	ldw	x,#L75
1321  0085 cd0000        	call	_assert_failed
1323  0088 5b04          	addw	sp,#4
1324  008a               L461:
1325                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1327  008a c650c3        	ld	a,20675
1328  008d 5f            	clrw	x
1329  008e 97            	ld	xl,a
1330  008f 1f01          	ldw	(OFST-3,sp),x
1331                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1333  0091 1e05          	ldw	x,(OFST+1,sp)
1334  0093 a30001        	cpw	x,#1
1335  0096 264e          	jrne	L544
1336                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1338  0098 721250c5      	bset	20677,#1
1339                     ; 331     if (ITState != DISABLE)
1341  009c 1e0b          	ldw	x,(OFST+7,sp)
1342  009e 2706          	jreq	L744
1343                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1345  00a0 721450c5      	bset	20677,#2
1347  00a4 2004          	jra	L154
1348  00a6               L744:
1349                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1351  00a6 721550c5      	bres	20677,#2
1352  00aa               L154:
1353                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1355  00aa 7b0a          	ld	a,(OFST+6,sp)
1356  00ac c750c4        	ld	20676,a
1358  00af 2007          	jra	L754
1359  00b1               L354:
1360                     ; 346       DownCounter--;
1362  00b1 1e03          	ldw	x,(OFST-1,sp)
1363  00b3 1d0001        	subw	x,#1
1364  00b6 1f03          	ldw	(OFST-1,sp),x
1365  00b8               L754:
1366                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1368  00b8 c650c5        	ld	a,20677
1369  00bb a501          	bcp	a,#1
1370  00bd 2704          	jreq	L364
1372  00bf 1e03          	ldw	x,(OFST-1,sp)
1373  00c1 26ee          	jrne	L354
1374  00c3               L364:
1375                     ; 349     if(DownCounter != 0)
1377  00c3 1e03          	ldw	x,(OFST-1,sp)
1378  00c5 2707          	jreq	L564
1379                     ; 351       Swif = SUCCESS;
1381  00c7 ae0001        	ldw	x,#1
1382  00ca 1f03          	ldw	(OFST-1,sp),x
1384  00cc 2003          	jra	L174
1385  00ce               L564:
1386                     ; 355       Swif = ERROR;
1388  00ce 5f            	clrw	x
1389  00cf 1f03          	ldw	(OFST-1,sp),x
1390  00d1               L174:
1391                     ; 390   if(Swif != ERROR)
1393  00d1 1e03          	ldw	x,(OFST-1,sp)
1394  00d3 276c          	jreq	L515
1395                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1397  00d5 1e0d          	ldw	x,(OFST+9,sp)
1398  00d7 2648          	jrne	L715
1400  00d9 1e01          	ldw	x,(OFST-3,sp)
1401  00db a300e1        	cpw	x,#225
1402  00de 2641          	jrne	L715
1403                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1405  00e0 721150c0      	bres	20672,#0
1407  00e4 205b          	jra	L515
1408  00e6               L544:
1409                     ; 361     if (ITState != DISABLE)
1411  00e6 1e0b          	ldw	x,(OFST+7,sp)
1412  00e8 2706          	jreq	L374
1413                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1415  00ea 721450c5      	bset	20677,#2
1417  00ee 2004          	jra	L574
1418  00f0               L374:
1419                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1421  00f0 721550c5      	bres	20677,#2
1422  00f4               L574:
1423                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1425  00f4 7b0a          	ld	a,(OFST+6,sp)
1426  00f6 c750c4        	ld	20676,a
1428  00f9 2007          	jra	L305
1429  00fb               L774:
1430                     ; 376       DownCounter--;
1432  00fb 1e03          	ldw	x,(OFST-1,sp)
1433  00fd 1d0001        	subw	x,#1
1434  0100 1f03          	ldw	(OFST-1,sp),x
1435  0102               L305:
1436                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1438  0102 c650c5        	ld	a,20677
1439  0105 a508          	bcp	a,#8
1440  0107 2704          	jreq	L705
1442  0109 1e03          	ldw	x,(OFST-1,sp)
1443  010b 26ee          	jrne	L774
1444  010d               L705:
1445                     ; 379     if(DownCounter != 0)
1447  010d 1e03          	ldw	x,(OFST-1,sp)
1448  010f 270b          	jreq	L115
1449                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1451  0111 721250c5      	bset	20677,#1
1452                     ; 383       Swif = SUCCESS;
1454  0115 ae0001        	ldw	x,#1
1455  0118 1f03          	ldw	(OFST-1,sp),x
1457  011a 20b5          	jra	L174
1458  011c               L115:
1459                     ; 387       Swif = ERROR;
1461  011c 5f            	clrw	x
1462  011d 1f03          	ldw	(OFST-1,sp),x
1463  011f 20b0          	jra	L174
1464  0121               L715:
1465                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1467  0121 1e0d          	ldw	x,(OFST+9,sp)
1468  0123 260d          	jrne	L325
1470  0125 1e01          	ldw	x,(OFST-3,sp)
1471  0127 a300d2        	cpw	x,#210
1472  012a 2606          	jrne	L325
1473                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1475  012c 721750c0      	bres	20672,#3
1477  0130 200f          	jra	L515
1478  0132               L325:
1479                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1481  0132 1e0d          	ldw	x,(OFST+9,sp)
1482  0134 260b          	jrne	L515
1484  0136 1e01          	ldw	x,(OFST-3,sp)
1485  0138 a300b4        	cpw	x,#180
1486  013b 2604          	jrne	L515
1487                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1489  013d 721150c1      	bres	20673,#0
1490  0141               L515:
1491                     ; 406   return(Swif);
1493  0141 1e03          	ldw	x,(OFST-1,sp)
1496  0143 5b06          	addw	sp,#6
1497  0145 81            	ret
1636                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1636                     ; 416 {
1637                     .text:	section	.text,new
1638  0000               _CLK_HSIPrescalerConfig:
1640  0000 89            	pushw	x
1641       00000000      OFST:	set	0
1644                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1646  0001 a30000        	cpw	x,#0
1647  0004 270f          	jreq	L271
1648  0006 a30008        	cpw	x,#8
1649  0009 270a          	jreq	L271
1650  000b a30010        	cpw	x,#16
1651  000e 2705          	jreq	L271
1652  0010 a30018        	cpw	x,#24
1653  0013 2603          	jrne	L071
1654  0015               L271:
1655  0015 4f            	clr	a
1656  0016 2010          	jra	L471
1657  0018               L071:
1658  0018 ae01a2        	ldw	x,#418
1659  001b 89            	pushw	x
1660  001c ae0000        	ldw	x,#0
1661  001f 89            	pushw	x
1662  0020 ae000c        	ldw	x,#L75
1663  0023 cd0000        	call	_assert_failed
1665  0026 5b04          	addw	sp,#4
1666  0028               L471:
1667                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1669  0028 c650c6        	ld	a,20678
1670  002b a4e7          	and	a,#231
1671  002d c750c6        	ld	20678,a
1672                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1674  0030 c650c6        	ld	a,20678
1675  0033 1a02          	or	a,(OFST+2,sp)
1676  0035 c750c6        	ld	20678,a
1677                     ; 425 }
1680  0038 85            	popw	x
1681  0039 81            	ret
1817                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1817                     ; 437 {
1818                     .text:	section	.text,new
1819  0000               _CLK_CCOConfig:
1821  0000 89            	pushw	x
1822       00000000      OFST:	set	0
1825                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1827  0001 a30000        	cpw	x,#0
1828  0004 273c          	jreq	L202
1829  0006 a30004        	cpw	x,#4
1830  0009 2737          	jreq	L202
1831  000b a30002        	cpw	x,#2
1832  000e 2732          	jreq	L202
1833  0010 a30008        	cpw	x,#8
1834  0013 272d          	jreq	L202
1835  0015 a3000a        	cpw	x,#10
1836  0018 2728          	jreq	L202
1837  001a a3000c        	cpw	x,#12
1838  001d 2723          	jreq	L202
1839  001f a3000e        	cpw	x,#14
1840  0022 271e          	jreq	L202
1841  0024 a30010        	cpw	x,#16
1842  0027 2719          	jreq	L202
1843  0029 a30012        	cpw	x,#18
1844  002c 2714          	jreq	L202
1845  002e a30014        	cpw	x,#20
1846  0031 270f          	jreq	L202
1847  0033 a30016        	cpw	x,#22
1848  0036 270a          	jreq	L202
1849  0038 a30018        	cpw	x,#24
1850  003b 2705          	jreq	L202
1851  003d a3001a        	cpw	x,#26
1852  0040 2603          	jrne	L002
1853  0042               L202:
1854  0042 4f            	clr	a
1855  0043 2010          	jra	L402
1856  0045               L002:
1857  0045 ae01b7        	ldw	x,#439
1858  0048 89            	pushw	x
1859  0049 ae0000        	ldw	x,#0
1860  004c 89            	pushw	x
1861  004d ae000c        	ldw	x,#L75
1862  0050 cd0000        	call	_assert_failed
1864  0053 5b04          	addw	sp,#4
1865  0055               L402:
1866                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1868  0055 c650c9        	ld	a,20681
1869  0058 a4e1          	and	a,#225
1870  005a c750c9        	ld	20681,a
1871                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1873  005d c650c9        	ld	a,20681
1874  0060 1a02          	or	a,(OFST+2,sp)
1875  0062 c750c9        	ld	20681,a
1876                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1878  0065 721050c9      	bset	20681,#0
1879                     ; 449 }
1882  0069 85            	popw	x
1883  006a 81            	ret
1949                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1949                     ; 460 {
1950                     .text:	section	.text,new
1951  0000               _CLK_ITConfig:
1953  0000 89            	pushw	x
1954       00000000      OFST:	set	0
1957                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1959  0001 1e05          	ldw	x,(OFST+5,sp)
1960  0003 2707          	jreq	L212
1961  0005 1e05          	ldw	x,(OFST+5,sp)
1962  0007 a30001        	cpw	x,#1
1963  000a 2603          	jrne	L012
1964  000c               L212:
1965  000c 4f            	clr	a
1966  000d 2010          	jra	L412
1967  000f               L012:
1968  000f ae01ce        	ldw	x,#462
1969  0012 89            	pushw	x
1970  0013 ae0000        	ldw	x,#0
1971  0016 89            	pushw	x
1972  0017 ae000c        	ldw	x,#L75
1973  001a cd0000        	call	_assert_failed
1975  001d 5b04          	addw	sp,#4
1976  001f               L412:
1977                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1979  001f 1e01          	ldw	x,(OFST+1,sp)
1980  0021 a3000c        	cpw	x,#12
1981  0024 2707          	jreq	L022
1982  0026 1e01          	ldw	x,(OFST+1,sp)
1983  0028 a3001c        	cpw	x,#28
1984  002b 2603          	jrne	L612
1985  002d               L022:
1986  002d 4f            	clr	a
1987  002e 2010          	jra	L222
1988  0030               L612:
1989  0030 ae01cf        	ldw	x,#463
1990  0033 89            	pushw	x
1991  0034 ae0000        	ldw	x,#0
1992  0037 89            	pushw	x
1993  0038 ae000c        	ldw	x,#L75
1994  003b cd0000        	call	_assert_failed
1996  003e 5b04          	addw	sp,#4
1997  0040               L222:
1998                     ; 465   if (NewState != DISABLE)
2000  0040 1e05          	ldw	x,(OFST+5,sp)
2001  0042 271c          	jreq	L527
2002                     ; 467     switch (CLK_IT)
2004  0044 1e01          	ldw	x,(OFST+1,sp)
2006                     ; 475     default:
2006                     ; 476       break;
2007  0046 1d000c        	subw	x,#12
2008  0049 270b          	jreq	L166
2009  004b 1d0010        	subw	x,#16
2010  004e 2626          	jrne	L337
2011                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
2011                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
2013  0050 721450c5      	bset	20677,#2
2014                     ; 471       break;
2016  0054 2020          	jra	L337
2017  0056               L166:
2018                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
2018                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
2020  0056 721450c8      	bset	20680,#2
2021                     ; 474       break;
2023  005a 201a          	jra	L337
2024  005c               L366:
2025                     ; 475     default:
2025                     ; 476       break;
2027  005c 2018          	jra	L337
2028  005e               L137:
2030  005e 2016          	jra	L337
2031  0060               L527:
2032                     ; 481     switch (CLK_IT)
2034  0060 1e01          	ldw	x,(OFST+1,sp)
2036                     ; 489     default:
2036                     ; 490       break;
2037  0062 1d000c        	subw	x,#12
2038  0065 270b          	jreq	L766
2039  0067 1d0010        	subw	x,#16
2040  006a 260a          	jrne	L337
2041                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2041                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2043  006c 721550c5      	bres	20677,#2
2044                     ; 485       break;
2046  0070 2004          	jra	L337
2047  0072               L766:
2048                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2048                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2050  0072 721550c8      	bres	20680,#2
2051                     ; 488       break;
2052  0076               L337:
2053                     ; 493 }
2056  0076 85            	popw	x
2057  0077 81            	ret
2058  0078               L176:
2059                     ; 489     default:
2059                     ; 490       break;
2061  0078 20fc          	jra	L337
2062  007a               L737:
2063  007a 20fa          	jra	L337
2099                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2099                     ; 501 {
2100                     .text:	section	.text,new
2101  0000               _CLK_SYSCLKConfig:
2103  0000 89            	pushw	x
2104       00000000      OFST:	set	0
2107                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2109  0001 a30000        	cpw	x,#0
2110  0004 2737          	jreq	L032
2111  0006 a30008        	cpw	x,#8
2112  0009 2732          	jreq	L032
2113  000b a30010        	cpw	x,#16
2114  000e 272d          	jreq	L032
2115  0010 a30018        	cpw	x,#24
2116  0013 2728          	jreq	L032
2117  0015 a30080        	cpw	x,#128
2118  0018 2723          	jreq	L032
2119  001a a30081        	cpw	x,#129
2120  001d 271e          	jreq	L032
2121  001f a30082        	cpw	x,#130
2122  0022 2719          	jreq	L032
2123  0024 a30083        	cpw	x,#131
2124  0027 2714          	jreq	L032
2125  0029 a30084        	cpw	x,#132
2126  002c 270f          	jreq	L032
2127  002e a30085        	cpw	x,#133
2128  0031 270a          	jreq	L032
2129  0033 a30086        	cpw	x,#134
2130  0036 2705          	jreq	L032
2131  0038 a30087        	cpw	x,#135
2132  003b 2603          	jrne	L622
2133  003d               L032:
2134  003d 4f            	clr	a
2135  003e 2010          	jra	L232
2136  0040               L622:
2137  0040 ae01f7        	ldw	x,#503
2138  0043 89            	pushw	x
2139  0044 ae0000        	ldw	x,#0
2140  0047 89            	pushw	x
2141  0048 ae000c        	ldw	x,#L75
2142  004b cd0000        	call	_assert_failed
2144  004e 5b04          	addw	sp,#4
2145  0050               L232:
2146                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2148  0050 7b02          	ld	a,(OFST+2,sp)
2149  0052 a580          	bcp	a,#128
2150  0054 2614          	jrne	L757
2151                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2153  0056 c650c6        	ld	a,20678
2154  0059 a4e7          	and	a,#231
2155  005b c750c6        	ld	20678,a
2156                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2158  005e 7b02          	ld	a,(OFST+2,sp)
2159  0060 a418          	and	a,#24
2160  0062 ca50c6        	or	a,20678
2161  0065 c750c6        	ld	20678,a
2163  0068 2012          	jra	L167
2164  006a               L757:
2165                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2167  006a c650c6        	ld	a,20678
2168  006d a4f8          	and	a,#248
2169  006f c750c6        	ld	20678,a
2170                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2172  0072 7b02          	ld	a,(OFST+2,sp)
2173  0074 a407          	and	a,#7
2174  0076 ca50c6        	or	a,20678
2175  0079 c750c6        	ld	20678,a
2176  007c               L167:
2177                     ; 515 }
2180  007c 85            	popw	x
2181  007d 81            	ret
2238                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2238                     ; 524 {
2239                     .text:	section	.text,new
2240  0000               _CLK_SWIMConfig:
2242  0000 89            	pushw	x
2243       00000000      OFST:	set	0
2246                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2248  0001 a30000        	cpw	x,#0
2249  0004 2705          	jreq	L042
2250  0006 a30001        	cpw	x,#1
2251  0009 2603          	jrne	L632
2252  000b               L042:
2253  000b 4f            	clr	a
2254  000c 2010          	jra	L242
2255  000e               L632:
2256  000e ae020e        	ldw	x,#526
2257  0011 89            	pushw	x
2258  0012 ae0000        	ldw	x,#0
2259  0015 89            	pushw	x
2260  0016 ae000c        	ldw	x,#L75
2261  0019 cd0000        	call	_assert_failed
2263  001c 5b04          	addw	sp,#4
2264  001e               L242:
2265                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2267  001e 1e01          	ldw	x,(OFST+1,sp)
2268  0020 2706          	jreq	L1101
2269                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2271  0022 721050cd      	bset	20685,#0
2273  0026 2004          	jra	L3101
2274  0028               L1101:
2275                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2277  0028 721150cd      	bres	20685,#0
2278  002c               L3101:
2279                     ; 538 }
2282  002c 85            	popw	x
2283  002d 81            	ret
2307                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2307                     ; 548 {
2308                     .text:	section	.text,new
2309  0000               _CLK_ClockSecuritySystemEnable:
2313                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2315  0000 721050c8      	bset	20680,#0
2316                     ; 551 }
2319  0004 81            	ret
2344                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2344                     ; 560 {
2345                     .text:	section	.text,new
2346  0000               _CLK_GetSYSCLKSource:
2350                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2352  0000 c650c3        	ld	a,20675
2353  0003 5f            	clrw	x
2354  0004 97            	ld	xl,a
2357  0005 81            	ret
2414                     ; 569 uint32_t CLK_GetClockFreq(void)
2414                     ; 570 {
2415                     .text:	section	.text,new
2416  0000               _CLK_GetClockFreq:
2418  0000 520b          	subw	sp,#11
2419       0000000b      OFST:	set	11
2422                     ; 571   uint32_t clockfrequency = 0;
2424                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2426                     ; 573   uint8_t tmp = 0, presc = 0;
2430                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2432  0002 c650c3        	ld	a,20675
2433  0005 5f            	clrw	x
2434  0006 97            	ld	xl,a
2435  0007 1f05          	ldw	(OFST-6,sp),x
2436                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2438  0009 1e05          	ldw	x,(OFST-6,sp)
2439  000b a300e1        	cpw	x,#225
2440  000e 2641          	jrne	L1601
2441                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2443  0010 c650c6        	ld	a,20678
2444  0013 a418          	and	a,#24
2445  0015 6b0b          	ld	(OFST+0,sp),a
2446                     ; 581     tmp = (uint8_t)(tmp >> 3);
2448  0017 040b          	srl	(OFST+0,sp)
2449  0019 040b          	srl	(OFST+0,sp)
2450  001b 040b          	srl	(OFST+0,sp)
2451                     ; 582     presc = HSIDivFactor[tmp];
2453  001d 7b0b          	ld	a,(OFST+0,sp)
2454  001f 5f            	clrw	x
2455  0020 97            	ld	xl,a
2456  0021 d60000        	ld	a,(_HSIDivFactor,x)
2457  0024 6b0b          	ld	(OFST+0,sp),a
2458                     ; 583     clockfrequency = HSI_VALUE / presc;
2460  0026 7b0b          	ld	a,(OFST+0,sp)
2461  0028 b703          	ld	c_lreg+3,a
2462  002a 3f02          	clr	c_lreg+2
2463  002c 3f01          	clr	c_lreg+1
2464  002e 3f00          	clr	c_lreg
2465  0030 96            	ldw	x,sp
2466  0031 1c0001        	addw	x,#OFST-10
2467  0034 cd0000        	call	c_rtol
2469  0037 ae2400        	ldw	x,#9216
2470  003a bf02          	ldw	c_lreg+2,x
2471  003c ae00f4        	ldw	x,#244
2472  003f bf00          	ldw	c_lreg,x
2473  0041 96            	ldw	x,sp
2474  0042 1c0001        	addw	x,#OFST-10
2475  0045 cd0000        	call	c_ludv
2477  0048 96            	ldw	x,sp
2478  0049 1c0007        	addw	x,#OFST-4
2479  004c cd0000        	call	c_rtol
2482  004f 201d          	jra	L3601
2483  0051               L1601:
2484                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2486  0051 1e05          	ldw	x,(OFST-6,sp)
2487  0053 a300d2        	cpw	x,#210
2488  0056 260c          	jrne	L5601
2489                     ; 587     clockfrequency = LSI_VALUE;
2491  0058 aef400        	ldw	x,#62464
2492  005b 1f09          	ldw	(OFST-2,sp),x
2493  005d ae0001        	ldw	x,#1
2494  0060 1f07          	ldw	(OFST-4,sp),x
2496  0062 200a          	jra	L3601
2497  0064               L5601:
2498                     ; 591     clockfrequency = HSE_VALUE;
2500  0064 ae2400        	ldw	x,#9216
2501  0067 1f09          	ldw	(OFST-2,sp),x
2502  0069 ae00f4        	ldw	x,#244
2503  006c 1f07          	ldw	(OFST-4,sp),x
2504  006e               L3601:
2505                     ; 594   return((uint32_t)clockfrequency);
2507  006e 96            	ldw	x,sp
2508  006f 1c0007        	addw	x,#OFST-4
2509  0072 cd0000        	call	c_ltor
2513  0075 5b0b          	addw	sp,#11
2514  0077 81            	ret
2614                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2614                     ; 605 {
2615                     .text:	section	.text,new
2616  0000               _CLK_AdjustHSICalibrationValue:
2618  0000 89            	pushw	x
2619       00000000      OFST:	set	0
2622                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2624  0001 a30000        	cpw	x,#0
2625  0004 2723          	jreq	L652
2626  0006 a30001        	cpw	x,#1
2627  0009 271e          	jreq	L652
2628  000b a30002        	cpw	x,#2
2629  000e 2719          	jreq	L652
2630  0010 a30003        	cpw	x,#3
2631  0013 2714          	jreq	L652
2632  0015 a30004        	cpw	x,#4
2633  0018 270f          	jreq	L652
2634  001a a30005        	cpw	x,#5
2635  001d 270a          	jreq	L652
2636  001f a30006        	cpw	x,#6
2637  0022 2705          	jreq	L652
2638  0024 a30007        	cpw	x,#7
2639  0027 2603          	jrne	L452
2640  0029               L652:
2641  0029 4f            	clr	a
2642  002a 2010          	jra	L062
2643  002c               L452:
2644  002c ae025f        	ldw	x,#607
2645  002f 89            	pushw	x
2646  0030 ae0000        	ldw	x,#0
2647  0033 89            	pushw	x
2648  0034 ae000c        	ldw	x,#L75
2649  0037 cd0000        	call	_assert_failed
2651  003a 5b04          	addw	sp,#4
2652  003c               L062:
2653                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2655  003c c650cc        	ld	a,20684
2656  003f a4f8          	and	a,#248
2657  0041 1a02          	or	a,(OFST+2,sp)
2658  0043 c750cc        	ld	20684,a
2659                     ; 611 }
2662  0046 85            	popw	x
2663  0047 81            	ret
2687                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2687                     ; 623 {
2688                     .text:	section	.text,new
2689  0000               _CLK_SYSCLKEmergencyClear:
2693                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2695  0000 721150c5      	bres	20677,#0
2696                     ; 625 }
2699  0004 81            	ret
2849                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2849                     ; 635 {
2850                     .text:	section	.text,new
2851  0000               _CLK_GetFlagStatus:
2853  0000 89            	pushw	x
2854  0001 5203          	subw	sp,#3
2855       00000003      OFST:	set	3
2858                     ; 636   uint16_t statusreg = 0;
2860                     ; 637   uint8_t tmpreg = 0;
2862                     ; 638   FlagStatus bitstatus = RESET;
2864                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2866  0003 a30110        	cpw	x,#272
2867  0006 2728          	jreq	L072
2868  0008 a30102        	cpw	x,#258
2869  000b 2723          	jreq	L072
2870  000d a30202        	cpw	x,#514
2871  0010 271e          	jreq	L072
2872  0012 a30308        	cpw	x,#776
2873  0015 2719          	jreq	L072
2874  0017 a30301        	cpw	x,#769
2875  001a 2714          	jreq	L072
2876  001c a30408        	cpw	x,#1032
2877  001f 270f          	jreq	L072
2878  0021 a30402        	cpw	x,#1026
2879  0024 270a          	jreq	L072
2880  0026 a30504        	cpw	x,#1284
2881  0029 2705          	jreq	L072
2882  002b a30502        	cpw	x,#1282
2883  002e 2603          	jrne	L662
2884  0030               L072:
2885  0030 4f            	clr	a
2886  0031 2010          	jra	L272
2887  0033               L662:
2888  0033 ae0281        	ldw	x,#641
2889  0036 89            	pushw	x
2890  0037 ae0000        	ldw	x,#0
2891  003a 89            	pushw	x
2892  003b ae000c        	ldw	x,#L75
2893  003e cd0000        	call	_assert_failed
2895  0041 5b04          	addw	sp,#4
2896  0043               L272:
2897                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2899  0043 7b04          	ld	a,(OFST+1,sp)
2900  0045 97            	ld	xl,a
2901  0046 7b05          	ld	a,(OFST+2,sp)
2902  0048 9f            	ld	a,xl
2903  0049 a4ff          	and	a,#255
2904  004b 97            	ld	xl,a
2905  004c 4f            	clr	a
2906  004d 02            	rlwa	x,a
2907  004e 1f02          	ldw	(OFST-1,sp),x
2908  0050 01            	rrwa	x,a
2909                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2911  0051 1e02          	ldw	x,(OFST-1,sp)
2912  0053 a30100        	cpw	x,#256
2913  0056 2607          	jrne	L7221
2914                     ; 649     tmpreg = CLK->ICKR;
2916  0058 c650c0        	ld	a,20672
2917  005b 6b01          	ld	(OFST-2,sp),a
2919  005d 202f          	jra	L1321
2920  005f               L7221:
2921                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2923  005f 1e02          	ldw	x,(OFST-1,sp)
2924  0061 a30200        	cpw	x,#512
2925  0064 2607          	jrne	L3321
2926                     ; 653     tmpreg = CLK->ECKR;
2928  0066 c650c1        	ld	a,20673
2929  0069 6b01          	ld	(OFST-2,sp),a
2931  006b 2021          	jra	L1321
2932  006d               L3321:
2933                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2935  006d 1e02          	ldw	x,(OFST-1,sp)
2936  006f a30300        	cpw	x,#768
2937  0072 2607          	jrne	L7321
2938                     ; 657     tmpreg = CLK->SWCR;
2940  0074 c650c5        	ld	a,20677
2941  0077 6b01          	ld	(OFST-2,sp),a
2943  0079 2013          	jra	L1321
2944  007b               L7321:
2945                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2947  007b 1e02          	ldw	x,(OFST-1,sp)
2948  007d a30400        	cpw	x,#1024
2949  0080 2607          	jrne	L3421
2950                     ; 661     tmpreg = CLK->CSSR;
2952  0082 c650c8        	ld	a,20680
2953  0085 6b01          	ld	(OFST-2,sp),a
2955  0087 2005          	jra	L1321
2956  0089               L3421:
2957                     ; 665     tmpreg = CLK->CCOR;
2959  0089 c650c9        	ld	a,20681
2960  008c 6b01          	ld	(OFST-2,sp),a
2961  008e               L1321:
2962                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2964  008e 7b05          	ld	a,(OFST+2,sp)
2965  0090 1501          	bcp	a,(OFST-2,sp)
2966  0092 2707          	jreq	L7421
2967                     ; 670     bitstatus = SET;
2969  0094 ae0001        	ldw	x,#1
2970  0097 1f02          	ldw	(OFST-1,sp),x
2972  0099 2003          	jra	L1521
2973  009b               L7421:
2974                     ; 674     bitstatus = RESET;
2976  009b 5f            	clrw	x
2977  009c 1f02          	ldw	(OFST-1,sp),x
2978  009e               L1521:
2979                     ; 678   return((FlagStatus)bitstatus);
2981  009e 1e02          	ldw	x,(OFST-1,sp)
2984  00a0 5b05          	addw	sp,#5
2985  00a2 81            	ret
3032                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3032                     ; 688 {
3033                     .text:	section	.text,new
3034  0000               _CLK_GetITStatus:
3036  0000 89            	pushw	x
3037  0001 89            	pushw	x
3038       00000002      OFST:	set	2
3041                     ; 689   ITStatus bitstatus = RESET;
3043                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
3045  0002 a3000c        	cpw	x,#12
3046  0005 2705          	jreq	L003
3047  0007 a3001c        	cpw	x,#28
3048  000a 2603          	jrne	L672
3049  000c               L003:
3050  000c 4f            	clr	a
3051  000d 2010          	jra	L203
3052  000f               L672:
3053  000f ae02b4        	ldw	x,#692
3054  0012 89            	pushw	x
3055  0013 ae0000        	ldw	x,#0
3056  0016 89            	pushw	x
3057  0017 ae000c        	ldw	x,#L75
3058  001a cd0000        	call	_assert_failed
3060  001d 5b04          	addw	sp,#4
3061  001f               L203:
3062                     ; 694   if (CLK_IT == CLK_IT_SWIF)
3064  001f 1e03          	ldw	x,(OFST+1,sp)
3065  0021 a3001c        	cpw	x,#28
3066  0024 2615          	jrne	L5721
3067                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3069  0026 c650c5        	ld	a,20677
3070  0029 1404          	and	a,(OFST+2,sp)
3071  002b a10c          	cp	a,#12
3072  002d 2607          	jrne	L7721
3073                     ; 699       bitstatus = SET;
3075  002f ae0001        	ldw	x,#1
3076  0032 1f01          	ldw	(OFST-1,sp),x
3078  0034 2018          	jra	L3031
3079  0036               L7721:
3080                     ; 703       bitstatus = RESET;
3082  0036 5f            	clrw	x
3083  0037 1f01          	ldw	(OFST-1,sp),x
3084  0039 2013          	jra	L3031
3085  003b               L5721:
3086                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3088  003b c650c8        	ld	a,20680
3089  003e 1404          	and	a,(OFST+2,sp)
3090  0040 a10c          	cp	a,#12
3091  0042 2607          	jrne	L5031
3092                     ; 711       bitstatus = SET;
3094  0044 ae0001        	ldw	x,#1
3095  0047 1f01          	ldw	(OFST-1,sp),x
3097  0049 2003          	jra	L3031
3098  004b               L5031:
3099                     ; 715       bitstatus = RESET;
3101  004b 5f            	clrw	x
3102  004c 1f01          	ldw	(OFST-1,sp),x
3103  004e               L3031:
3104                     ; 720   return bitstatus;
3106  004e 1e01          	ldw	x,(OFST-1,sp)
3109  0050 5b04          	addw	sp,#4
3110  0052 81            	ret
3147                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3147                     ; 730 {
3148                     .text:	section	.text,new
3149  0000               _CLK_ClearITPendingBit:
3151  0000 89            	pushw	x
3152       00000000      OFST:	set	0
3155                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
3157  0001 a3000c        	cpw	x,#12
3158  0004 2705          	jreq	L013
3159  0006 a3001c        	cpw	x,#28
3160  0009 2603          	jrne	L603
3161  000b               L013:
3162  000b 4f            	clr	a
3163  000c 2010          	jra	L213
3164  000e               L603:
3165  000e ae02dc        	ldw	x,#732
3166  0011 89            	pushw	x
3167  0012 ae0000        	ldw	x,#0
3168  0015 89            	pushw	x
3169  0016 ae000c        	ldw	x,#L75
3170  0019 cd0000        	call	_assert_failed
3172  001c 5b04          	addw	sp,#4
3173  001e               L213:
3174                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3176  001e 1e01          	ldw	x,(OFST+1,sp)
3177  0020 a3000c        	cpw	x,#12
3178  0023 2606          	jrne	L7231
3179                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3181  0025 721750c8      	bres	20680,#3
3183  0029 2004          	jra	L1331
3184  002b               L7231:
3185                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3187  002b 721750c5      	bres	20677,#3
3188  002f               L1331:
3189                     ; 745 }
3192  002f 85            	popw	x
3193  0030 81            	ret
3228                     	xdef	_CLKPrescTable
3229                     	xdef	_HSIDivFactor
3230                     	xdef	_CLK_ClearITPendingBit
3231                     	xdef	_CLK_GetITStatus
3232                     	xdef	_CLK_GetFlagStatus
3233                     	xdef	_CLK_GetSYSCLKSource
3234                     	xdef	_CLK_GetClockFreq
3235                     	xdef	_CLK_AdjustHSICalibrationValue
3236                     	xdef	_CLK_SYSCLKEmergencyClear
3237                     	xdef	_CLK_ClockSecuritySystemEnable
3238                     	xdef	_CLK_SWIMConfig
3239                     	xdef	_CLK_SYSCLKConfig
3240                     	xdef	_CLK_ITConfig
3241                     	xdef	_CLK_CCOConfig
3242                     	xdef	_CLK_HSIPrescalerConfig
3243                     	xdef	_CLK_ClockSwitchConfig
3244                     	xdef	_CLK_PeripheralClockConfig
3245                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3246                     	xdef	_CLK_FastHaltWakeUpCmd
3247                     	xdef	_CLK_ClockSwitchCmd
3248                     	xdef	_CLK_CCOCmd
3249                     	xdef	_CLK_LSICmd
3250                     	xdef	_CLK_HSICmd
3251                     	xdef	_CLK_HSECmd
3252                     	xdef	_CLK_DeInit
3253                     	xref	_assert_failed
3254                     	switch	.const
3255  000c               L75:
3256  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
3257  001e 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
3258  0030 72697665725c  	dc.b	"river\src\stm8s_cl"
3259  0042 6b2e6300      	dc.b	"k.c",0
3260                     	xref.b	c_lreg
3261                     	xref.b	c_x
3281                     	xref	c_ltor
3282                     	xref	c_ludv
3283                     	xref	c_rtol
3284                     	end

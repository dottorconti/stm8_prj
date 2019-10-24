   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  46                     ; 52 void TIM2_DeInit(void)
  46                     ; 53 {
  48                     .text:	section	.text,new
  49  0000               _TIM2_DeInit:
  53                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  55  0000 725f5300      	clr	21248
  56                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  58  0004 725f5303      	clr	21251
  59                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  61  0008 725f5305      	clr	21253
  62                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  64  000c 725f530a      	clr	21258
  65                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  67  0010 725f530b      	clr	21259
  68                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  70  0014 725f530a      	clr	21258
  71                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  73  0018 725f530b      	clr	21259
  74                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  76  001c 725f5307      	clr	21255
  77                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  79  0020 725f5308      	clr	21256
  80                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  82  0024 725f5309      	clr	21257
  83                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  85  0028 725f530c      	clr	21260
  86                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  88  002c 725f530d      	clr	21261
  89                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  91  0030 725f530e      	clr	21262
  92                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  94  0034 35ff530f      	mov	21263,#255
  95                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  97  0038 35ff5310      	mov	21264,#255
  98                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 100  003c 725f5311      	clr	21265
 101                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 103  0040 725f5312      	clr	21266
 104                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 106  0044 725f5313      	clr	21267
 107                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 109  0048 725f5314      	clr	21268
 110                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 112  004c 725f5315      	clr	21269
 113                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 115  0050 725f5316      	clr	21270
 116                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 118  0054 725f5304      	clr	21252
 119                     ; 81 }
 122  0058 81            	ret
 288                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 288                     ; 90                         uint16_t TIM2_Period)
 288                     ; 91 {
 289                     .text:	section	.text,new
 290  0000               _TIM2_TimeBaseInit:
 292  0000 89            	pushw	x
 293       00000000      OFST:	set	0
 296                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 298  0001 9f            	ld	a,xl
 299  0002 c7530e        	ld	21262,a
 300                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 302  0005 7b05          	ld	a,(OFST+5,sp)
 303  0007 c7530f        	ld	21263,a
 304                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 306  000a 7b06          	ld	a,(OFST+6,sp)
 307  000c c75310        	ld	21264,a
 308                     ; 97 }
 311  000f 85            	popw	x
 312  0010 81            	ret
 468                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 468                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 468                     ; 110                   uint16_t TIM2_Pulse,
 468                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 468                     ; 112 {
 469                     .text:	section	.text,new
 470  0000               _TIM2_OC1Init:
 472  0000 89            	pushw	x
 473  0001 88            	push	a
 474       00000001      OFST:	set	1
 477                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 479  0002 a30000        	cpw	x,#0
 480  0005 2719          	jreq	L41
 481  0007 a30010        	cpw	x,#16
 482  000a 2714          	jreq	L41
 483  000c a30020        	cpw	x,#32
 484  000f 270f          	jreq	L41
 485  0011 a30030        	cpw	x,#48
 486  0014 270a          	jreq	L41
 487  0016 a30060        	cpw	x,#96
 488  0019 2705          	jreq	L41
 489  001b a30070        	cpw	x,#112
 490  001e 2603          	jrne	L21
 491  0020               L41:
 492  0020 4f            	clr	a
 493  0021 2010          	jra	L61
 494  0023               L21:
 495  0023 ae0072        	ldw	x,#114
 496  0026 89            	pushw	x
 497  0027 ae0000        	ldw	x,#0
 498  002a 89            	pushw	x
 499  002b ae0000        	ldw	x,#L302
 500  002e cd0000        	call	_assert_failed
 502  0031 5b04          	addw	sp,#4
 503  0033               L61:
 504                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 506  0033 1e06          	ldw	x,(OFST+5,sp)
 507  0035 2707          	jreq	L22
 508  0037 1e06          	ldw	x,(OFST+5,sp)
 509  0039 a30011        	cpw	x,#17
 510  003c 2603          	jrne	L02
 511  003e               L22:
 512  003e 4f            	clr	a
 513  003f 2010          	jra	L42
 514  0041               L02:
 515  0041 ae0073        	ldw	x,#115
 516  0044 89            	pushw	x
 517  0045 ae0000        	ldw	x,#0
 518  0048 89            	pushw	x
 519  0049 ae0000        	ldw	x,#L302
 520  004c cd0000        	call	_assert_failed
 522  004f 5b04          	addw	sp,#4
 523  0051               L42:
 524                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 526  0051 1e0a          	ldw	x,(OFST+9,sp)
 527  0053 2707          	jreq	L03
 528  0055 1e0a          	ldw	x,(OFST+9,sp)
 529  0057 a30022        	cpw	x,#34
 530  005a 2603          	jrne	L62
 531  005c               L03:
 532  005c 4f            	clr	a
 533  005d 2010          	jra	L23
 534  005f               L62:
 535  005f ae0074        	ldw	x,#116
 536  0062 89            	pushw	x
 537  0063 ae0000        	ldw	x,#0
 538  0066 89            	pushw	x
 539  0067 ae0000        	ldw	x,#L302
 540  006a cd0000        	call	_assert_failed
 542  006d 5b04          	addw	sp,#4
 543  006f               L23:
 544                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 546  006f c6530a        	ld	a,21258
 547  0072 a4fc          	and	a,#252
 548  0074 c7530a        	ld	21258,a
 549                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 549                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 551  0077 7b0b          	ld	a,(OFST+10,sp)
 552  0079 a402          	and	a,#2
 553  007b 6b01          	ld	(OFST+0,sp),a
 554  007d 7b07          	ld	a,(OFST+6,sp)
 555  007f a401          	and	a,#1
 556  0081 1a01          	or	a,(OFST+0,sp)
 557  0083 ca530a        	or	a,21258
 558  0086 c7530a        	ld	21258,a
 559                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 559                     ; 126                           (uint8_t)TIM2_OCMode);
 561  0089 c65307        	ld	a,21255
 562  008c a48f          	and	a,#143
 563  008e 1a03          	or	a,(OFST+2,sp)
 564  0090 c75307        	ld	21255,a
 565                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 567  0093 7b08          	ld	a,(OFST+7,sp)
 568  0095 c75311        	ld	21265,a
 569                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 571  0098 7b09          	ld	a,(OFST+8,sp)
 572  009a c75312        	ld	21266,a
 573                     ; 131 }
 576  009d 5b03          	addw	sp,#3
 577  009f 81            	ret
 640                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 640                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 640                     ; 144                   uint16_t TIM2_Pulse,
 640                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 640                     ; 146 {
 641                     .text:	section	.text,new
 642  0000               _TIM2_OC2Init:
 644  0000 89            	pushw	x
 645  0001 88            	push	a
 646       00000001      OFST:	set	1
 649                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 651  0002 a30000        	cpw	x,#0
 652  0005 2719          	jreq	L04
 653  0007 a30010        	cpw	x,#16
 654  000a 2714          	jreq	L04
 655  000c a30020        	cpw	x,#32
 656  000f 270f          	jreq	L04
 657  0011 a30030        	cpw	x,#48
 658  0014 270a          	jreq	L04
 659  0016 a30060        	cpw	x,#96
 660  0019 2705          	jreq	L04
 661  001b a30070        	cpw	x,#112
 662  001e 2603          	jrne	L63
 663  0020               L04:
 664  0020 4f            	clr	a
 665  0021 2010          	jra	L24
 666  0023               L63:
 667  0023 ae0094        	ldw	x,#148
 668  0026 89            	pushw	x
 669  0027 ae0000        	ldw	x,#0
 670  002a 89            	pushw	x
 671  002b ae0000        	ldw	x,#L302
 672  002e cd0000        	call	_assert_failed
 674  0031 5b04          	addw	sp,#4
 675  0033               L24:
 676                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 678  0033 1e06          	ldw	x,(OFST+5,sp)
 679  0035 2707          	jreq	L64
 680  0037 1e06          	ldw	x,(OFST+5,sp)
 681  0039 a30011        	cpw	x,#17
 682  003c 2603          	jrne	L44
 683  003e               L64:
 684  003e 4f            	clr	a
 685  003f 2010          	jra	L05
 686  0041               L44:
 687  0041 ae0095        	ldw	x,#149
 688  0044 89            	pushw	x
 689  0045 ae0000        	ldw	x,#0
 690  0048 89            	pushw	x
 691  0049 ae0000        	ldw	x,#L302
 692  004c cd0000        	call	_assert_failed
 694  004f 5b04          	addw	sp,#4
 695  0051               L05:
 696                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 698  0051 1e0a          	ldw	x,(OFST+9,sp)
 699  0053 2707          	jreq	L45
 700  0055 1e0a          	ldw	x,(OFST+9,sp)
 701  0057 a30022        	cpw	x,#34
 702  005a 2603          	jrne	L25
 703  005c               L45:
 704  005c 4f            	clr	a
 705  005d 2010          	jra	L65
 706  005f               L25:
 707  005f ae0096        	ldw	x,#150
 708  0062 89            	pushw	x
 709  0063 ae0000        	ldw	x,#0
 710  0066 89            	pushw	x
 711  0067 ae0000        	ldw	x,#L302
 712  006a cd0000        	call	_assert_failed
 714  006d 5b04          	addw	sp,#4
 715  006f               L65:
 716                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 718  006f c6530a        	ld	a,21258
 719  0072 a4cf          	and	a,#207
 720  0074 c7530a        	ld	21258,a
 721                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 721                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 723  0077 7b0b          	ld	a,(OFST+10,sp)
 724  0079 a420          	and	a,#32
 725  007b 6b01          	ld	(OFST+0,sp),a
 726  007d 7b07          	ld	a,(OFST+6,sp)
 727  007f a410          	and	a,#16
 728  0081 1a01          	or	a,(OFST+0,sp)
 729  0083 ca530a        	or	a,21258
 730  0086 c7530a        	ld	21258,a
 731                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 731                     ; 162                           (uint8_t)TIM2_OCMode);
 733  0089 c65308        	ld	a,21256
 734  008c a48f          	and	a,#143
 735  008e 1a03          	or	a,(OFST+2,sp)
 736  0090 c75308        	ld	21256,a
 737                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 739  0093 7b08          	ld	a,(OFST+7,sp)
 740  0095 c75313        	ld	21267,a
 741                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 743  0098 7b09          	ld	a,(OFST+8,sp)
 744  009a c75314        	ld	21268,a
 745                     ; 168 }
 748  009d 5b03          	addw	sp,#3
 749  009f 81            	ret
 812                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 812                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 812                     ; 181                   uint16_t TIM2_Pulse,
 812                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 812                     ; 183 {
 813                     .text:	section	.text,new
 814  0000               _TIM2_OC3Init:
 816  0000 89            	pushw	x
 817  0001 88            	push	a
 818       00000001      OFST:	set	1
 821                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 823  0002 a30000        	cpw	x,#0
 824  0005 2719          	jreq	L46
 825  0007 a30010        	cpw	x,#16
 826  000a 2714          	jreq	L46
 827  000c a30020        	cpw	x,#32
 828  000f 270f          	jreq	L46
 829  0011 a30030        	cpw	x,#48
 830  0014 270a          	jreq	L46
 831  0016 a30060        	cpw	x,#96
 832  0019 2705          	jreq	L46
 833  001b a30070        	cpw	x,#112
 834  001e 2603          	jrne	L26
 835  0020               L46:
 836  0020 4f            	clr	a
 837  0021 2010          	jra	L66
 838  0023               L26:
 839  0023 ae00b9        	ldw	x,#185
 840  0026 89            	pushw	x
 841  0027 ae0000        	ldw	x,#0
 842  002a 89            	pushw	x
 843  002b ae0000        	ldw	x,#L302
 844  002e cd0000        	call	_assert_failed
 846  0031 5b04          	addw	sp,#4
 847  0033               L66:
 848                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 850  0033 1e06          	ldw	x,(OFST+5,sp)
 851  0035 2707          	jreq	L27
 852  0037 1e06          	ldw	x,(OFST+5,sp)
 853  0039 a30011        	cpw	x,#17
 854  003c 2603          	jrne	L07
 855  003e               L27:
 856  003e 4f            	clr	a
 857  003f 2010          	jra	L47
 858  0041               L07:
 859  0041 ae00ba        	ldw	x,#186
 860  0044 89            	pushw	x
 861  0045 ae0000        	ldw	x,#0
 862  0048 89            	pushw	x
 863  0049 ae0000        	ldw	x,#L302
 864  004c cd0000        	call	_assert_failed
 866  004f 5b04          	addw	sp,#4
 867  0051               L47:
 868                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 870  0051 1e0a          	ldw	x,(OFST+9,sp)
 871  0053 2707          	jreq	L001
 872  0055 1e0a          	ldw	x,(OFST+9,sp)
 873  0057 a30022        	cpw	x,#34
 874  005a 2603          	jrne	L67
 875  005c               L001:
 876  005c 4f            	clr	a
 877  005d 2010          	jra	L201
 878  005f               L67:
 879  005f ae00bb        	ldw	x,#187
 880  0062 89            	pushw	x
 881  0063 ae0000        	ldw	x,#0
 882  0066 89            	pushw	x
 883  0067 ae0000        	ldw	x,#L302
 884  006a cd0000        	call	_assert_failed
 886  006d 5b04          	addw	sp,#4
 887  006f               L201:
 888                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 890  006f c6530b        	ld	a,21259
 891  0072 a4fc          	and	a,#252
 892  0074 c7530b        	ld	21259,a
 893                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 893                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 895  0077 7b0b          	ld	a,(OFST+10,sp)
 896  0079 a402          	and	a,#2
 897  007b 6b01          	ld	(OFST+0,sp),a
 898  007d 7b07          	ld	a,(OFST+6,sp)
 899  007f a401          	and	a,#1
 900  0081 1a01          	or	a,(OFST+0,sp)
 901  0083 ca530b        	or	a,21259
 902  0086 c7530b        	ld	21259,a
 903                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 903                     ; 196                           (uint8_t)TIM2_OCMode);
 905  0089 c65309        	ld	a,21257
 906  008c a48f          	and	a,#143
 907  008e 1a03          	or	a,(OFST+2,sp)
 908  0090 c75309        	ld	21257,a
 909                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 911  0093 7b08          	ld	a,(OFST+7,sp)
 912  0095 c75315        	ld	21269,a
 913                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 915  0098 7b09          	ld	a,(OFST+8,sp)
 916  009a c75316        	ld	21270,a
 917                     ; 201 }
 920  009d 5b03          	addw	sp,#3
 921  009f 81            	ret
1113                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1113                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1113                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1113                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1113                     ; 216                  uint8_t TIM2_ICFilter)
1113                     ; 217 {
1114                     .text:	section	.text,new
1115  0000               _TIM2_ICInit:
1117  0000 89            	pushw	x
1118       00000000      OFST:	set	0
1121                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1123  0001 a30000        	cpw	x,#0
1124  0004 270a          	jreq	L011
1125  0006 a30001        	cpw	x,#1
1126  0009 2705          	jreq	L011
1127  000b a30002        	cpw	x,#2
1128  000e 2603          	jrne	L601
1129  0010               L011:
1130  0010 4f            	clr	a
1131  0011 2010          	jra	L211
1132  0013               L601:
1133  0013 ae00db        	ldw	x,#219
1134  0016 89            	pushw	x
1135  0017 ae0000        	ldw	x,#0
1136  001a 89            	pushw	x
1137  001b ae0000        	ldw	x,#L302
1138  001e cd0000        	call	_assert_failed
1140  0021 5b04          	addw	sp,#4
1141  0023               L211:
1142                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1144  0023 1e05          	ldw	x,(OFST+5,sp)
1145  0025 2707          	jreq	L611
1146  0027 1e05          	ldw	x,(OFST+5,sp)
1147  0029 a30044        	cpw	x,#68
1148  002c 2603          	jrne	L411
1149  002e               L611:
1150  002e 4f            	clr	a
1151  002f 2010          	jra	L021
1152  0031               L411:
1153  0031 ae00dc        	ldw	x,#220
1154  0034 89            	pushw	x
1155  0035 ae0000        	ldw	x,#0
1156  0038 89            	pushw	x
1157  0039 ae0000        	ldw	x,#L302
1158  003c cd0000        	call	_assert_failed
1160  003f 5b04          	addw	sp,#4
1161  0041               L021:
1162                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1164  0041 1e07          	ldw	x,(OFST+7,sp)
1165  0043 a30001        	cpw	x,#1
1166  0046 270e          	jreq	L421
1167  0048 1e07          	ldw	x,(OFST+7,sp)
1168  004a a30002        	cpw	x,#2
1169  004d 2707          	jreq	L421
1170  004f 1e07          	ldw	x,(OFST+7,sp)
1171  0051 a30003        	cpw	x,#3
1172  0054 2603          	jrne	L221
1173  0056               L421:
1174  0056 4f            	clr	a
1175  0057 2010          	jra	L621
1176  0059               L221:
1177  0059 ae00dd        	ldw	x,#221
1178  005c 89            	pushw	x
1179  005d ae0000        	ldw	x,#0
1180  0060 89            	pushw	x
1181  0061 ae0000        	ldw	x,#L302
1182  0064 cd0000        	call	_assert_failed
1184  0067 5b04          	addw	sp,#4
1185  0069               L621:
1186                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1188  0069 1e09          	ldw	x,(OFST+9,sp)
1189  006b 2715          	jreq	L231
1190  006d 1e09          	ldw	x,(OFST+9,sp)
1191  006f a30004        	cpw	x,#4
1192  0072 270e          	jreq	L231
1193  0074 1e09          	ldw	x,(OFST+9,sp)
1194  0076 a30008        	cpw	x,#8
1195  0079 2707          	jreq	L231
1196  007b 1e09          	ldw	x,(OFST+9,sp)
1197  007d a3000c        	cpw	x,#12
1198  0080 2603          	jrne	L031
1199  0082               L231:
1200  0082 4f            	clr	a
1201  0083 2010          	jra	L431
1202  0085               L031:
1203  0085 ae00de        	ldw	x,#222
1204  0088 89            	pushw	x
1205  0089 ae0000        	ldw	x,#0
1206  008c 89            	pushw	x
1207  008d ae0000        	ldw	x,#L302
1208  0090 cd0000        	call	_assert_failed
1210  0093 5b04          	addw	sp,#4
1211  0095               L431:
1212                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1214  0095 7b0b          	ld	a,(OFST+11,sp)
1215  0097 a110          	cp	a,#16
1216  0099 2403          	jruge	L631
1217  009b 4f            	clr	a
1218  009c 2010          	jra	L041
1219  009e               L631:
1220  009e ae00df        	ldw	x,#223
1221  00a1 89            	pushw	x
1222  00a2 ae0000        	ldw	x,#0
1223  00a5 89            	pushw	x
1224  00a6 ae0000        	ldw	x,#L302
1225  00a9 cd0000        	call	_assert_failed
1227  00ac 5b04          	addw	sp,#4
1228  00ae               L041:
1229                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1231  00ae 1e01          	ldw	x,(OFST+1,sp)
1232  00b0 2614          	jrne	L173
1233                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1233                     ; 229                (uint8_t)TIM2_ICSelection,
1233                     ; 230                (uint8_t)TIM2_ICFilter);
1235  00b2 7b0b          	ld	a,(OFST+11,sp)
1236  00b4 88            	push	a
1237  00b5 7b09          	ld	a,(OFST+9,sp)
1238  00b7 97            	ld	xl,a
1239  00b8 7b07          	ld	a,(OFST+7,sp)
1240  00ba 95            	ld	xh,a
1241  00bb cd0000        	call	L3_TI1_Config
1243  00be 84            	pop	a
1244                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1246  00bf 1e09          	ldw	x,(OFST+9,sp)
1247  00c1 cd0000        	call	_TIM2_SetIC1Prescaler
1250  00c4 202d          	jra	L373
1251  00c6               L173:
1252                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1254  00c6 1e01          	ldw	x,(OFST+1,sp)
1255  00c8 a30001        	cpw	x,#1
1256  00cb 2614          	jrne	L573
1257                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1257                     ; 239                (uint8_t)TIM2_ICSelection,
1257                     ; 240                (uint8_t)TIM2_ICFilter);
1259  00cd 7b0b          	ld	a,(OFST+11,sp)
1260  00cf 88            	push	a
1261  00d0 7b09          	ld	a,(OFST+9,sp)
1262  00d2 97            	ld	xl,a
1263  00d3 7b07          	ld	a,(OFST+7,sp)
1264  00d5 95            	ld	xh,a
1265  00d6 cd0000        	call	L5_TI2_Config
1267  00d9 84            	pop	a
1268                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1270  00da 1e09          	ldw	x,(OFST+9,sp)
1271  00dc cd0000        	call	_TIM2_SetIC2Prescaler
1274  00df 2012          	jra	L373
1275  00e1               L573:
1276                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1276                     ; 249                (uint8_t)TIM2_ICSelection,
1276                     ; 250                (uint8_t)TIM2_ICFilter);
1278  00e1 7b0b          	ld	a,(OFST+11,sp)
1279  00e3 88            	push	a
1280  00e4 7b09          	ld	a,(OFST+9,sp)
1281  00e6 97            	ld	xl,a
1282  00e7 7b07          	ld	a,(OFST+7,sp)
1283  00e9 95            	ld	xh,a
1284  00ea cd0000        	call	L7_TI3_Config
1286  00ed 84            	pop	a
1287                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1289  00ee 1e09          	ldw	x,(OFST+9,sp)
1290  00f0 cd0000        	call	_TIM2_SetIC3Prescaler
1292  00f3               L373:
1293                     ; 255 }
1296  00f3 85            	popw	x
1297  00f4 81            	ret
1388                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1388                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1388                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1388                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1388                     ; 270                      uint8_t TIM2_ICFilter)
1388                     ; 271 {
1389                     .text:	section	.text,new
1390  0000               _TIM2_PWMIConfig:
1392  0000 89            	pushw	x
1393  0001 89            	pushw	x
1394       00000002      OFST:	set	2
1397                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1399                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1401                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1403  0002 a30000        	cpw	x,#0
1404  0005 2705          	jreq	L641
1405  0007 a30001        	cpw	x,#1
1406  000a 2603          	jrne	L441
1407  000c               L641:
1408  000c 4f            	clr	a
1409  000d 2010          	jra	L051
1410  000f               L441:
1411  000f ae0114        	ldw	x,#276
1412  0012 89            	pushw	x
1413  0013 ae0000        	ldw	x,#0
1414  0016 89            	pushw	x
1415  0017 ae0000        	ldw	x,#L302
1416  001a cd0000        	call	_assert_failed
1418  001d 5b04          	addw	sp,#4
1419  001f               L051:
1420                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1422  001f 1e07          	ldw	x,(OFST+5,sp)
1423  0021 2707          	jreq	L451
1424  0023 1e07          	ldw	x,(OFST+5,sp)
1425  0025 a30044        	cpw	x,#68
1426  0028 2603          	jrne	L251
1427  002a               L451:
1428  002a 4f            	clr	a
1429  002b 2010          	jra	L651
1430  002d               L251:
1431  002d ae0115        	ldw	x,#277
1432  0030 89            	pushw	x
1433  0031 ae0000        	ldw	x,#0
1434  0034 89            	pushw	x
1435  0035 ae0000        	ldw	x,#L302
1436  0038 cd0000        	call	_assert_failed
1438  003b 5b04          	addw	sp,#4
1439  003d               L651:
1440                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1442  003d 1e09          	ldw	x,(OFST+7,sp)
1443  003f a30001        	cpw	x,#1
1444  0042 270e          	jreq	L261
1445  0044 1e09          	ldw	x,(OFST+7,sp)
1446  0046 a30002        	cpw	x,#2
1447  0049 2707          	jreq	L261
1448  004b 1e09          	ldw	x,(OFST+7,sp)
1449  004d a30003        	cpw	x,#3
1450  0050 2603          	jrne	L061
1451  0052               L261:
1452  0052 4f            	clr	a
1453  0053 2010          	jra	L461
1454  0055               L061:
1455  0055 ae0116        	ldw	x,#278
1456  0058 89            	pushw	x
1457  0059 ae0000        	ldw	x,#0
1458  005c 89            	pushw	x
1459  005d ae0000        	ldw	x,#L302
1460  0060 cd0000        	call	_assert_failed
1462  0063 5b04          	addw	sp,#4
1463  0065               L461:
1464                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1466  0065 1e0b          	ldw	x,(OFST+9,sp)
1467  0067 2715          	jreq	L071
1468  0069 1e0b          	ldw	x,(OFST+9,sp)
1469  006b a30004        	cpw	x,#4
1470  006e 270e          	jreq	L071
1471  0070 1e0b          	ldw	x,(OFST+9,sp)
1472  0072 a30008        	cpw	x,#8
1473  0075 2707          	jreq	L071
1474  0077 1e0b          	ldw	x,(OFST+9,sp)
1475  0079 a3000c        	cpw	x,#12
1476  007c 2603          	jrne	L661
1477  007e               L071:
1478  007e 4f            	clr	a
1479  007f 2010          	jra	L271
1480  0081               L661:
1481  0081 ae0117        	ldw	x,#279
1482  0084 89            	pushw	x
1483  0085 ae0000        	ldw	x,#0
1484  0088 89            	pushw	x
1485  0089 ae0000        	ldw	x,#L302
1486  008c cd0000        	call	_assert_failed
1488  008f 5b04          	addw	sp,#4
1489  0091               L271:
1490                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1492  0091 1e07          	ldw	x,(OFST+5,sp)
1493  0093 a30044        	cpw	x,#68
1494  0096 2706          	jreq	L144
1495                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1497  0098 a644          	ld	a,#68
1498  009a 6b01          	ld	(OFST-1,sp),a
1500  009c 2002          	jra	L344
1501  009e               L144:
1502                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1504  009e 0f01          	clr	(OFST-1,sp)
1505  00a0               L344:
1506                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1508  00a0 1e09          	ldw	x,(OFST+7,sp)
1509  00a2 a30001        	cpw	x,#1
1510  00a5 2606          	jrne	L544
1511                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1513  00a7 a602          	ld	a,#2
1514  00a9 6b02          	ld	(OFST+0,sp),a
1516  00ab 2004          	jra	L744
1517  00ad               L544:
1518                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1520  00ad a601          	ld	a,#1
1521  00af 6b02          	ld	(OFST+0,sp),a
1522  00b1               L744:
1523                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1525  00b1 1e03          	ldw	x,(OFST+1,sp)
1526  00b3 2626          	jrne	L154
1527                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1527                     ; 305                (uint8_t)TIM2_ICFilter);
1529  00b5 7b0d          	ld	a,(OFST+11,sp)
1530  00b7 88            	push	a
1531  00b8 7b0b          	ld	a,(OFST+9,sp)
1532  00ba 97            	ld	xl,a
1533  00bb 7b09          	ld	a,(OFST+7,sp)
1534  00bd 95            	ld	xh,a
1535  00be cd0000        	call	L3_TI1_Config
1537  00c1 84            	pop	a
1538                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1540  00c2 1e0b          	ldw	x,(OFST+9,sp)
1541  00c4 cd0000        	call	_TIM2_SetIC1Prescaler
1543                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1545  00c7 7b0d          	ld	a,(OFST+11,sp)
1546  00c9 88            	push	a
1547  00ca 7b03          	ld	a,(OFST+1,sp)
1548  00cc 97            	ld	xl,a
1549  00cd 7b02          	ld	a,(OFST+0,sp)
1550  00cf 95            	ld	xh,a
1551  00d0 cd0000        	call	L5_TI2_Config
1553  00d3 84            	pop	a
1554                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1556  00d4 1e0b          	ldw	x,(OFST+9,sp)
1557  00d6 cd0000        	call	_TIM2_SetIC2Prescaler
1560  00d9 2024          	jra	L354
1561  00db               L154:
1562                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1562                     ; 320                (uint8_t)TIM2_ICFilter);
1564  00db 7b0d          	ld	a,(OFST+11,sp)
1565  00dd 88            	push	a
1566  00de 7b0b          	ld	a,(OFST+9,sp)
1567  00e0 97            	ld	xl,a
1568  00e1 7b09          	ld	a,(OFST+7,sp)
1569  00e3 95            	ld	xh,a
1570  00e4 cd0000        	call	L5_TI2_Config
1572  00e7 84            	pop	a
1573                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1575  00e8 1e0b          	ldw	x,(OFST+9,sp)
1576  00ea cd0000        	call	_TIM2_SetIC2Prescaler
1578                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1580  00ed 7b0d          	ld	a,(OFST+11,sp)
1581  00ef 88            	push	a
1582  00f0 7b03          	ld	a,(OFST+1,sp)
1583  00f2 97            	ld	xl,a
1584  00f3 7b02          	ld	a,(OFST+0,sp)
1585  00f5 95            	ld	xh,a
1586  00f6 cd0000        	call	L3_TI1_Config
1588  00f9 84            	pop	a
1589                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1591  00fa 1e0b          	ldw	x,(OFST+9,sp)
1592  00fc cd0000        	call	_TIM2_SetIC1Prescaler
1594  00ff               L354:
1595                     ; 331 }
1598  00ff 5b04          	addw	sp,#4
1599  0101 81            	ret
1655                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1655                     ; 340 {
1656                     .text:	section	.text,new
1657  0000               _TIM2_Cmd:
1659  0000 89            	pushw	x
1660       00000000      OFST:	set	0
1663                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1665  0001 a30000        	cpw	x,#0
1666  0004 2705          	jreq	L002
1667  0006 a30001        	cpw	x,#1
1668  0009 2603          	jrne	L671
1669  000b               L002:
1670  000b 4f            	clr	a
1671  000c 2010          	jra	L202
1672  000e               L671:
1673  000e ae0156        	ldw	x,#342
1674  0011 89            	pushw	x
1675  0012 ae0000        	ldw	x,#0
1676  0015 89            	pushw	x
1677  0016 ae0000        	ldw	x,#L302
1678  0019 cd0000        	call	_assert_failed
1680  001c 5b04          	addw	sp,#4
1681  001e               L202:
1682                     ; 345   if (NewState != DISABLE)
1684  001e 1e01          	ldw	x,(OFST+1,sp)
1685  0020 2706          	jreq	L305
1686                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1688  0022 72105300      	bset	21248,#0
1690  0026 2004          	jra	L505
1691  0028               L305:
1692                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1694  0028 72115300      	bres	21248,#0
1695  002c               L505:
1696                     ; 353 }
1699  002c 85            	popw	x
1700  002d 81            	ret
1780                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1780                     ; 369 {
1781                     .text:	section	.text,new
1782  0000               _TIM2_ITConfig:
1784  0000 89            	pushw	x
1785       00000000      OFST:	set	0
1788                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1790  0001 a30000        	cpw	x,#0
1791  0004 2709          	jreq	L602
1792  0006 9c            	rvf
1793  0007 a30010        	cpw	x,#16
1794  000a 2e03          	jrsge	L602
1795  000c 4f            	clr	a
1796  000d 2010          	jra	L012
1797  000f               L602:
1798  000f ae0173        	ldw	x,#371
1799  0012 89            	pushw	x
1800  0013 ae0000        	ldw	x,#0
1801  0016 89            	pushw	x
1802  0017 ae0000        	ldw	x,#L302
1803  001a cd0000        	call	_assert_failed
1805  001d 5b04          	addw	sp,#4
1806  001f               L012:
1807                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1809  001f 1e05          	ldw	x,(OFST+5,sp)
1810  0021 2707          	jreq	L412
1811  0023 1e05          	ldw	x,(OFST+5,sp)
1812  0025 a30001        	cpw	x,#1
1813  0028 2603          	jrne	L212
1814  002a               L412:
1815  002a 4f            	clr	a
1816  002b 2010          	jra	L612
1817  002d               L212:
1818  002d ae0174        	ldw	x,#372
1819  0030 89            	pushw	x
1820  0031 ae0000        	ldw	x,#0
1821  0034 89            	pushw	x
1822  0035 ae0000        	ldw	x,#L302
1823  0038 cd0000        	call	_assert_failed
1825  003b 5b04          	addw	sp,#4
1826  003d               L612:
1827                     ; 374   if (NewState != DISABLE)
1829  003d 1e05          	ldw	x,(OFST+5,sp)
1830  003f 270a          	jreq	L545
1831                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1833  0041 c65303        	ld	a,21251
1834  0044 1a02          	or	a,(OFST+2,sp)
1835  0046 c75303        	ld	21251,a
1837  0049 2009          	jra	L745
1838  004b               L545:
1839                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1841  004b 7b02          	ld	a,(OFST+2,sp)
1842  004d 43            	cpl	a
1843  004e c45303        	and	a,21251
1844  0051 c75303        	ld	21251,a
1845  0054               L745:
1846                     ; 384 }
1849  0054 85            	popw	x
1850  0055 81            	ret
1887                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1887                     ; 393 {
1888                     .text:	section	.text,new
1889  0000               _TIM2_UpdateDisableConfig:
1891  0000 89            	pushw	x
1892       00000000      OFST:	set	0
1895                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1897  0001 a30000        	cpw	x,#0
1898  0004 2705          	jreq	L422
1899  0006 a30001        	cpw	x,#1
1900  0009 2603          	jrne	L222
1901  000b               L422:
1902  000b 4f            	clr	a
1903  000c 2010          	jra	L622
1904  000e               L222:
1905  000e ae018b        	ldw	x,#395
1906  0011 89            	pushw	x
1907  0012 ae0000        	ldw	x,#0
1908  0015 89            	pushw	x
1909  0016 ae0000        	ldw	x,#L302
1910  0019 cd0000        	call	_assert_failed
1912  001c 5b04          	addw	sp,#4
1913  001e               L622:
1914                     ; 398   if (NewState != DISABLE)
1916  001e 1e01          	ldw	x,(OFST+1,sp)
1917  0020 2706          	jreq	L765
1918                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1920  0022 72125300      	bset	21248,#1
1922  0026 2004          	jra	L175
1923  0028               L765:
1924                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1926  0028 72135300      	bres	21248,#1
1927  002c               L175:
1928                     ; 406 }
1931  002c 85            	popw	x
1932  002d 81            	ret
1991                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1991                     ; 417 {
1992                     .text:	section	.text,new
1993  0000               _TIM2_UpdateRequestConfig:
1995  0000 89            	pushw	x
1996       00000000      OFST:	set	0
1999                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
2001  0001 a30000        	cpw	x,#0
2002  0004 2705          	jreq	L432
2003  0006 a30001        	cpw	x,#1
2004  0009 2603          	jrne	L232
2005  000b               L432:
2006  000b 4f            	clr	a
2007  000c 2010          	jra	L632
2008  000e               L232:
2009  000e ae01a3        	ldw	x,#419
2010  0011 89            	pushw	x
2011  0012 ae0000        	ldw	x,#0
2012  0015 89            	pushw	x
2013  0016 ae0000        	ldw	x,#L302
2014  0019 cd0000        	call	_assert_failed
2016  001c 5b04          	addw	sp,#4
2017  001e               L632:
2018                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
2020  001e 1e01          	ldw	x,(OFST+1,sp)
2021  0020 2706          	jreq	L126
2022                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
2024  0022 72145300      	bset	21248,#2
2026  0026 2004          	jra	L326
2027  0028               L126:
2028                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
2030  0028 72155300      	bres	21248,#2
2031  002c               L326:
2032                     ; 430 }
2035  002c 85            	popw	x
2036  002d 81            	ret
2094                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2094                     ; 441 {
2095                     .text:	section	.text,new
2096  0000               _TIM2_SelectOnePulseMode:
2098  0000 89            	pushw	x
2099       00000000      OFST:	set	0
2102                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2104  0001 a30001        	cpw	x,#1
2105  0004 2705          	jreq	L442
2106  0006 a30000        	cpw	x,#0
2107  0009 2603          	jrne	L242
2108  000b               L442:
2109  000b 4f            	clr	a
2110  000c 2010          	jra	L642
2111  000e               L242:
2112  000e ae01bb        	ldw	x,#443
2113  0011 89            	pushw	x
2114  0012 ae0000        	ldw	x,#0
2115  0015 89            	pushw	x
2116  0016 ae0000        	ldw	x,#L302
2117  0019 cd0000        	call	_assert_failed
2119  001c 5b04          	addw	sp,#4
2120  001e               L642:
2121                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2123  001e 1e01          	ldw	x,(OFST+1,sp)
2124  0020 2706          	jreq	L356
2125                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2127  0022 72165300      	bset	21248,#3
2129  0026 2004          	jra	L556
2130  0028               L356:
2131                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2133  0028 72175300      	bres	21248,#3
2134  002c               L556:
2135                     ; 454 }
2138  002c 85            	popw	x
2139  002d 81            	ret
2208                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2208                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2208                     ; 486 {
2209                     .text:	section	.text,new
2210  0000               _TIM2_PrescalerConfig:
2212  0000 89            	pushw	x
2213       00000000      OFST:	set	0
2216                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2218  0001 1e05          	ldw	x,(OFST+5,sp)
2219  0003 2707          	jreq	L452
2220  0005 1e05          	ldw	x,(OFST+5,sp)
2221  0007 a30001        	cpw	x,#1
2222  000a 2603          	jrne	L252
2223  000c               L452:
2224  000c 4f            	clr	a
2225  000d 2010          	jra	L652
2226  000f               L252:
2227  000f ae01e8        	ldw	x,#488
2228  0012 89            	pushw	x
2229  0013 ae0000        	ldw	x,#0
2230  0016 89            	pushw	x
2231  0017 ae0000        	ldw	x,#L302
2232  001a cd0000        	call	_assert_failed
2234  001d 5b04          	addw	sp,#4
2235  001f               L652:
2236                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2238  001f 1e01          	ldw	x,(OFST+1,sp)
2239  0021 2769          	jreq	L262
2240  0023 1e01          	ldw	x,(OFST+1,sp)
2241  0025 a30001        	cpw	x,#1
2242  0028 2762          	jreq	L262
2243  002a 1e01          	ldw	x,(OFST+1,sp)
2244  002c a30002        	cpw	x,#2
2245  002f 275b          	jreq	L262
2246  0031 1e01          	ldw	x,(OFST+1,sp)
2247  0033 a30003        	cpw	x,#3
2248  0036 2754          	jreq	L262
2249  0038 1e01          	ldw	x,(OFST+1,sp)
2250  003a a30004        	cpw	x,#4
2251  003d 274d          	jreq	L262
2252  003f 1e01          	ldw	x,(OFST+1,sp)
2253  0041 a30005        	cpw	x,#5
2254  0044 2746          	jreq	L262
2255  0046 1e01          	ldw	x,(OFST+1,sp)
2256  0048 a30006        	cpw	x,#6
2257  004b 273f          	jreq	L262
2258  004d 1e01          	ldw	x,(OFST+1,sp)
2259  004f a30007        	cpw	x,#7
2260  0052 2738          	jreq	L262
2261  0054 1e01          	ldw	x,(OFST+1,sp)
2262  0056 a30008        	cpw	x,#8
2263  0059 2731          	jreq	L262
2264  005b 1e01          	ldw	x,(OFST+1,sp)
2265  005d a30009        	cpw	x,#9
2266  0060 272a          	jreq	L262
2267  0062 1e01          	ldw	x,(OFST+1,sp)
2268  0064 a3000a        	cpw	x,#10
2269  0067 2723          	jreq	L262
2270  0069 1e01          	ldw	x,(OFST+1,sp)
2271  006b a3000b        	cpw	x,#11
2272  006e 271c          	jreq	L262
2273  0070 1e01          	ldw	x,(OFST+1,sp)
2274  0072 a3000c        	cpw	x,#12
2275  0075 2715          	jreq	L262
2276  0077 1e01          	ldw	x,(OFST+1,sp)
2277  0079 a3000d        	cpw	x,#13
2278  007c 270e          	jreq	L262
2279  007e 1e01          	ldw	x,(OFST+1,sp)
2280  0080 a3000e        	cpw	x,#14
2281  0083 2707          	jreq	L262
2282  0085 1e01          	ldw	x,(OFST+1,sp)
2283  0087 a3000f        	cpw	x,#15
2284  008a 2603          	jrne	L062
2285  008c               L262:
2286  008c 4f            	clr	a
2287  008d 2010          	jra	L462
2288  008f               L062:
2289  008f ae01e9        	ldw	x,#489
2290  0092 89            	pushw	x
2291  0093 ae0000        	ldw	x,#0
2292  0096 89            	pushw	x
2293  0097 ae0000        	ldw	x,#L302
2294  009a cd0000        	call	_assert_failed
2296  009d 5b04          	addw	sp,#4
2297  009f               L462:
2298                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2300  009f 7b02          	ld	a,(OFST+2,sp)
2301  00a1 c7530e        	ld	21262,a
2302                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2304  00a4 7b06          	ld	a,(OFST+6,sp)
2305  00a6 c75306        	ld	21254,a
2306                     ; 496 }
2309  00a9 85            	popw	x
2310  00aa 81            	ret
2369                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2369                     ; 508 {
2370                     .text:	section	.text,new
2371  0000               _TIM2_ForcedOC1Config:
2373  0000 89            	pushw	x
2374       00000000      OFST:	set	0
2377                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2379  0001 a30050        	cpw	x,#80
2380  0004 2705          	jreq	L272
2381  0006 a30040        	cpw	x,#64
2382  0009 2603          	jrne	L072
2383  000b               L272:
2384  000b 4f            	clr	a
2385  000c 2010          	jra	L472
2386  000e               L072:
2387  000e ae01fe        	ldw	x,#510
2388  0011 89            	pushw	x
2389  0012 ae0000        	ldw	x,#0
2390  0015 89            	pushw	x
2391  0016 ae0000        	ldw	x,#L302
2392  0019 cd0000        	call	_assert_failed
2394  001c 5b04          	addw	sp,#4
2395  001e               L472:
2396                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2396                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2398  001e c65307        	ld	a,21255
2399  0021 a48f          	and	a,#143
2400  0023 1a02          	or	a,(OFST+2,sp)
2401  0025 c75307        	ld	21255,a
2402                     ; 515 }
2405  0028 85            	popw	x
2406  0029 81            	ret
2443                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2443                     ; 527 {
2444                     .text:	section	.text,new
2445  0000               _TIM2_ForcedOC2Config:
2447  0000 89            	pushw	x
2448       00000000      OFST:	set	0
2451                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2453  0001 a30050        	cpw	x,#80
2454  0004 2705          	jreq	L203
2455  0006 a30040        	cpw	x,#64
2456  0009 2603          	jrne	L003
2457  000b               L203:
2458  000b 4f            	clr	a
2459  000c 2010          	jra	L403
2460  000e               L003:
2461  000e ae0211        	ldw	x,#529
2462  0011 89            	pushw	x
2463  0012 ae0000        	ldw	x,#0
2464  0015 89            	pushw	x
2465  0016 ae0000        	ldw	x,#L302
2466  0019 cd0000        	call	_assert_failed
2468  001c 5b04          	addw	sp,#4
2469  001e               L403:
2470                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2470                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2472  001e c65308        	ld	a,21256
2473  0021 a48f          	and	a,#143
2474  0023 1a02          	or	a,(OFST+2,sp)
2475  0025 c75308        	ld	21256,a
2476                     ; 534 }
2479  0028 85            	popw	x
2480  0029 81            	ret
2517                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2517                     ; 546 {
2518                     .text:	section	.text,new
2519  0000               _TIM2_ForcedOC3Config:
2521  0000 89            	pushw	x
2522       00000000      OFST:	set	0
2525                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2527  0001 a30050        	cpw	x,#80
2528  0004 2705          	jreq	L213
2529  0006 a30040        	cpw	x,#64
2530  0009 2603          	jrne	L013
2531  000b               L213:
2532  000b 4f            	clr	a
2533  000c 2010          	jra	L413
2534  000e               L013:
2535  000e ae0224        	ldw	x,#548
2536  0011 89            	pushw	x
2537  0012 ae0000        	ldw	x,#0
2538  0015 89            	pushw	x
2539  0016 ae0000        	ldw	x,#L302
2540  0019 cd0000        	call	_assert_failed
2542  001c 5b04          	addw	sp,#4
2543  001e               L413:
2544                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2544                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2546  001e c65309        	ld	a,21257
2547  0021 a48f          	and	a,#143
2548  0023 1a02          	or	a,(OFST+2,sp)
2549  0025 c75309        	ld	21257,a
2550                     ; 553 }
2553  0028 85            	popw	x
2554  0029 81            	ret
2591                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2591                     ; 562 {
2592                     .text:	section	.text,new
2593  0000               _TIM2_ARRPreloadConfig:
2595  0000 89            	pushw	x
2596       00000000      OFST:	set	0
2599                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2601  0001 a30000        	cpw	x,#0
2602  0004 2705          	jreq	L223
2603  0006 a30001        	cpw	x,#1
2604  0009 2603          	jrne	L023
2605  000b               L223:
2606  000b 4f            	clr	a
2607  000c 2010          	jra	L423
2608  000e               L023:
2609  000e ae0234        	ldw	x,#564
2610  0011 89            	pushw	x
2611  0012 ae0000        	ldw	x,#0
2612  0015 89            	pushw	x
2613  0016 ae0000        	ldw	x,#L302
2614  0019 cd0000        	call	_assert_failed
2616  001c 5b04          	addw	sp,#4
2617  001e               L423:
2618                     ; 567   if (NewState != DISABLE)
2620  001e 1e01          	ldw	x,(OFST+1,sp)
2621  0020 2706          	jreq	L1101
2622                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2624  0022 721e5300      	bset	21248,#7
2626  0026 2004          	jra	L3101
2627  0028               L1101:
2628                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2630  0028 721f5300      	bres	21248,#7
2631  002c               L3101:
2632                     ; 575 }
2635  002c 85            	popw	x
2636  002d 81            	ret
2673                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2673                     ; 584 {
2674                     .text:	section	.text,new
2675  0000               _TIM2_OC1PreloadConfig:
2677  0000 89            	pushw	x
2678       00000000      OFST:	set	0
2681                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2683  0001 a30000        	cpw	x,#0
2684  0004 2705          	jreq	L233
2685  0006 a30001        	cpw	x,#1
2686  0009 2603          	jrne	L033
2687  000b               L233:
2688  000b 4f            	clr	a
2689  000c 2010          	jra	L433
2690  000e               L033:
2691  000e ae024a        	ldw	x,#586
2692  0011 89            	pushw	x
2693  0012 ae0000        	ldw	x,#0
2694  0015 89            	pushw	x
2695  0016 ae0000        	ldw	x,#L302
2696  0019 cd0000        	call	_assert_failed
2698  001c 5b04          	addw	sp,#4
2699  001e               L433:
2700                     ; 589   if (NewState != DISABLE)
2702  001e 1e01          	ldw	x,(OFST+1,sp)
2703  0020 2706          	jreq	L3301
2704                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2706  0022 72165307      	bset	21255,#3
2708  0026 2004          	jra	L5301
2709  0028               L3301:
2710                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2712  0028 72175307      	bres	21255,#3
2713  002c               L5301:
2714                     ; 597 }
2717  002c 85            	popw	x
2718  002d 81            	ret
2755                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2755                     ; 606 {
2756                     .text:	section	.text,new
2757  0000               _TIM2_OC2PreloadConfig:
2759  0000 89            	pushw	x
2760       00000000      OFST:	set	0
2763                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2765  0001 a30000        	cpw	x,#0
2766  0004 2705          	jreq	L243
2767  0006 a30001        	cpw	x,#1
2768  0009 2603          	jrne	L043
2769  000b               L243:
2770  000b 4f            	clr	a
2771  000c 2010          	jra	L443
2772  000e               L043:
2773  000e ae0260        	ldw	x,#608
2774  0011 89            	pushw	x
2775  0012 ae0000        	ldw	x,#0
2776  0015 89            	pushw	x
2777  0016 ae0000        	ldw	x,#L302
2778  0019 cd0000        	call	_assert_failed
2780  001c 5b04          	addw	sp,#4
2781  001e               L443:
2782                     ; 611   if (NewState != DISABLE)
2784  001e 1e01          	ldw	x,(OFST+1,sp)
2785  0020 2706          	jreq	L5501
2786                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2788  0022 72165308      	bset	21256,#3
2790  0026 2004          	jra	L7501
2791  0028               L5501:
2792                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2794  0028 72175308      	bres	21256,#3
2795  002c               L7501:
2796                     ; 619 }
2799  002c 85            	popw	x
2800  002d 81            	ret
2837                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2837                     ; 628 {
2838                     .text:	section	.text,new
2839  0000               _TIM2_OC3PreloadConfig:
2841  0000 89            	pushw	x
2842       00000000      OFST:	set	0
2845                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2847  0001 a30000        	cpw	x,#0
2848  0004 2705          	jreq	L253
2849  0006 a30001        	cpw	x,#1
2850  0009 2603          	jrne	L053
2851  000b               L253:
2852  000b 4f            	clr	a
2853  000c 2010          	jra	L453
2854  000e               L053:
2855  000e ae0276        	ldw	x,#630
2856  0011 89            	pushw	x
2857  0012 ae0000        	ldw	x,#0
2858  0015 89            	pushw	x
2859  0016 ae0000        	ldw	x,#L302
2860  0019 cd0000        	call	_assert_failed
2862  001c 5b04          	addw	sp,#4
2863  001e               L453:
2864                     ; 633   if (NewState != DISABLE)
2866  001e 1e01          	ldw	x,(OFST+1,sp)
2867  0020 2706          	jreq	L7701
2868                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2870  0022 72165309      	bset	21257,#3
2872  0026 2004          	jra	L1011
2873  0028               L7701:
2874                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2876  0028 72175309      	bres	21257,#3
2877  002c               L1011:
2878                     ; 641 }
2881  002c 85            	popw	x
2882  002d 81            	ret
2956                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2956                     ; 654 {
2957                     .text:	section	.text,new
2958  0000               _TIM2_GenerateEvent:
2960  0000 89            	pushw	x
2961       00000000      OFST:	set	0
2964                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2966  0001 a30000        	cpw	x,#0
2967  0004 2703          	jreq	L063
2968  0006 4f            	clr	a
2969  0007 2010          	jra	L263
2970  0009               L063:
2971  0009 ae0290        	ldw	x,#656
2972  000c 89            	pushw	x
2973  000d ae0000        	ldw	x,#0
2974  0010 89            	pushw	x
2975  0011 ae0000        	ldw	x,#L302
2976  0014 cd0000        	call	_assert_failed
2978  0017 5b04          	addw	sp,#4
2979  0019               L263:
2980                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2982  0019 7b02          	ld	a,(OFST+2,sp)
2983  001b c75306        	ld	21254,a
2984                     ; 660 }
2987  001e 85            	popw	x
2988  001f 81            	ret
3025                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3025                     ; 671 {
3026                     .text:	section	.text,new
3027  0000               _TIM2_OC1PolarityConfig:
3029  0000 89            	pushw	x
3030       00000000      OFST:	set	0
3033                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3035  0001 a30000        	cpw	x,#0
3036  0004 2705          	jreq	L073
3037  0006 a30022        	cpw	x,#34
3038  0009 2603          	jrne	L663
3039  000b               L073:
3040  000b 4f            	clr	a
3041  000c 2010          	jra	L273
3042  000e               L663:
3043  000e ae02a1        	ldw	x,#673
3044  0011 89            	pushw	x
3045  0012 ae0000        	ldw	x,#0
3046  0015 89            	pushw	x
3047  0016 ae0000        	ldw	x,#L302
3048  0019 cd0000        	call	_assert_failed
3050  001c 5b04          	addw	sp,#4
3051  001e               L273:
3052                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3054  001e 1e01          	ldw	x,(OFST+1,sp)
3055  0020 2706          	jreq	L3511
3056                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
3058  0022 7212530a      	bset	21258,#1
3060  0026 2004          	jra	L5511
3061  0028               L3511:
3062                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3064  0028 7213530a      	bres	21258,#1
3065  002c               L5511:
3066                     ; 684 }
3069  002c 85            	popw	x
3070  002d 81            	ret
3107                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3107                     ; 695 {
3108                     .text:	section	.text,new
3109  0000               _TIM2_OC2PolarityConfig:
3111  0000 89            	pushw	x
3112       00000000      OFST:	set	0
3115                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3117  0001 a30000        	cpw	x,#0
3118  0004 2705          	jreq	L004
3119  0006 a30022        	cpw	x,#34
3120  0009 2603          	jrne	L673
3121  000b               L004:
3122  000b 4f            	clr	a
3123  000c 2010          	jra	L204
3124  000e               L673:
3125  000e ae02b9        	ldw	x,#697
3126  0011 89            	pushw	x
3127  0012 ae0000        	ldw	x,#0
3128  0015 89            	pushw	x
3129  0016 ae0000        	ldw	x,#L302
3130  0019 cd0000        	call	_assert_failed
3132  001c 5b04          	addw	sp,#4
3133  001e               L204:
3134                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3136  001e 1e01          	ldw	x,(OFST+1,sp)
3137  0020 2706          	jreq	L5711
3138                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
3140  0022 721a530a      	bset	21258,#5
3142  0026 2004          	jra	L7711
3143  0028               L5711:
3144                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3146  0028 721b530a      	bres	21258,#5
3147  002c               L7711:
3148                     ; 708 }
3151  002c 85            	popw	x
3152  002d 81            	ret
3189                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3189                     ; 719 {
3190                     .text:	section	.text,new
3191  0000               _TIM2_OC3PolarityConfig:
3193  0000 89            	pushw	x
3194       00000000      OFST:	set	0
3197                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3199  0001 a30000        	cpw	x,#0
3200  0004 2705          	jreq	L014
3201  0006 a30022        	cpw	x,#34
3202  0009 2603          	jrne	L604
3203  000b               L014:
3204  000b 4f            	clr	a
3205  000c 2010          	jra	L214
3206  000e               L604:
3207  000e ae02d1        	ldw	x,#721
3208  0011 89            	pushw	x
3209  0012 ae0000        	ldw	x,#0
3210  0015 89            	pushw	x
3211  0016 ae0000        	ldw	x,#L302
3212  0019 cd0000        	call	_assert_failed
3214  001c 5b04          	addw	sp,#4
3215  001e               L214:
3216                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3218  001e 1e01          	ldw	x,(OFST+1,sp)
3219  0020 2706          	jreq	L7121
3220                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3222  0022 7212530b      	bset	21259,#1
3224  0026 2004          	jra	L1221
3225  0028               L7121:
3226                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3228  0028 7213530b      	bres	21259,#1
3229  002c               L1221:
3230                     ; 732 }
3233  002c 85            	popw	x
3234  002d 81            	ret
3280                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3280                     ; 746 {
3281                     .text:	section	.text,new
3282  0000               _TIM2_CCxCmd:
3284  0000 89            	pushw	x
3285       00000000      OFST:	set	0
3288                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3290  0001 a30000        	cpw	x,#0
3291  0004 270a          	jreq	L024
3292  0006 a30001        	cpw	x,#1
3293  0009 2705          	jreq	L024
3294  000b a30002        	cpw	x,#2
3295  000e 2603          	jrne	L614
3296  0010               L024:
3297  0010 4f            	clr	a
3298  0011 2010          	jra	L224
3299  0013               L614:
3300  0013 ae02ec        	ldw	x,#748
3301  0016 89            	pushw	x
3302  0017 ae0000        	ldw	x,#0
3303  001a 89            	pushw	x
3304  001b ae0000        	ldw	x,#L302
3305  001e cd0000        	call	_assert_failed
3307  0021 5b04          	addw	sp,#4
3308  0023               L224:
3309                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3311  0023 1e05          	ldw	x,(OFST+5,sp)
3312  0025 2707          	jreq	L624
3313  0027 1e05          	ldw	x,(OFST+5,sp)
3314  0029 a30001        	cpw	x,#1
3315  002c 2603          	jrne	L424
3316  002e               L624:
3317  002e 4f            	clr	a
3318  002f 2010          	jra	L034
3319  0031               L424:
3320  0031 ae02ed        	ldw	x,#749
3321  0034 89            	pushw	x
3322  0035 ae0000        	ldw	x,#0
3323  0038 89            	pushw	x
3324  0039 ae0000        	ldw	x,#L302
3325  003c cd0000        	call	_assert_failed
3327  003f 5b04          	addw	sp,#4
3328  0041               L034:
3329                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3331  0041 1e01          	ldw	x,(OFST+1,sp)
3332  0043 2610          	jrne	L5421
3333                     ; 754     if (NewState != DISABLE)
3335  0045 1e05          	ldw	x,(OFST+5,sp)
3336  0047 2706          	jreq	L7421
3337                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3339  0049 7210530a      	bset	21258,#0
3341  004d 202b          	jra	L3521
3342  004f               L7421:
3343                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3345  004f 7211530a      	bres	21258,#0
3346  0053 2025          	jra	L3521
3347  0055               L5421:
3348                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3350  0055 1e01          	ldw	x,(OFST+1,sp)
3351  0057 a30001        	cpw	x,#1
3352  005a 2610          	jrne	L5521
3353                     ; 767     if (NewState != DISABLE)
3355  005c 1e05          	ldw	x,(OFST+5,sp)
3356  005e 2706          	jreq	L7521
3357                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3359  0060 7218530a      	bset	21258,#4
3361  0064 2014          	jra	L3521
3362  0066               L7521:
3363                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3365  0066 7219530a      	bres	21258,#4
3366  006a 200e          	jra	L3521
3367  006c               L5521:
3368                     ; 779     if (NewState != DISABLE)
3370  006c 1e05          	ldw	x,(OFST+5,sp)
3371  006e 2706          	jreq	L5621
3372                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3374  0070 7210530b      	bset	21259,#0
3376  0074 2004          	jra	L3521
3377  0076               L5621:
3378                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3380  0076 7211530b      	bres	21259,#0
3381  007a               L3521:
3382                     ; 788 }
3385  007a 85            	popw	x
3386  007b 81            	ret
3432                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3432                     ; 811 {
3433                     .text:	section	.text,new
3434  0000               _TIM2_SelectOCxM:
3436  0000 89            	pushw	x
3437       00000000      OFST:	set	0
3440                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3442  0001 a30000        	cpw	x,#0
3443  0004 270a          	jreq	L634
3444  0006 a30001        	cpw	x,#1
3445  0009 2705          	jreq	L634
3446  000b a30002        	cpw	x,#2
3447  000e 2603          	jrne	L434
3448  0010               L634:
3449  0010 4f            	clr	a
3450  0011 2010          	jra	L044
3451  0013               L434:
3452  0013 ae032d        	ldw	x,#813
3453  0016 89            	pushw	x
3454  0017 ae0000        	ldw	x,#0
3455  001a 89            	pushw	x
3456  001b ae0000        	ldw	x,#L302
3457  001e cd0000        	call	_assert_failed
3459  0021 5b04          	addw	sp,#4
3460  0023               L044:
3461                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3463  0023 1e05          	ldw	x,(OFST+5,sp)
3464  0025 2731          	jreq	L444
3465  0027 1e05          	ldw	x,(OFST+5,sp)
3466  0029 a30010        	cpw	x,#16
3467  002c 272a          	jreq	L444
3468  002e 1e05          	ldw	x,(OFST+5,sp)
3469  0030 a30020        	cpw	x,#32
3470  0033 2723          	jreq	L444
3471  0035 1e05          	ldw	x,(OFST+5,sp)
3472  0037 a30030        	cpw	x,#48
3473  003a 271c          	jreq	L444
3474  003c 1e05          	ldw	x,(OFST+5,sp)
3475  003e a30060        	cpw	x,#96
3476  0041 2715          	jreq	L444
3477  0043 1e05          	ldw	x,(OFST+5,sp)
3478  0045 a30070        	cpw	x,#112
3479  0048 270e          	jreq	L444
3480  004a 1e05          	ldw	x,(OFST+5,sp)
3481  004c a30050        	cpw	x,#80
3482  004f 2707          	jreq	L444
3483  0051 1e05          	ldw	x,(OFST+5,sp)
3484  0053 a30040        	cpw	x,#64
3485  0056 2603          	jrne	L244
3486  0058               L444:
3487  0058 4f            	clr	a
3488  0059 2010          	jra	L644
3489  005b               L244:
3490  005b ae032e        	ldw	x,#814
3491  005e 89            	pushw	x
3492  005f ae0000        	ldw	x,#0
3493  0062 89            	pushw	x
3494  0063 ae0000        	ldw	x,#L302
3495  0066 cd0000        	call	_assert_failed
3497  0069 5b04          	addw	sp,#4
3498  006b               L644:
3499                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3501  006b 1e01          	ldw	x,(OFST+1,sp)
3502  006d 2610          	jrne	L3131
3503                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3505  006f 7211530a      	bres	21258,#0
3506                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3506                     ; 823                             | (uint8_t)TIM2_OCMode);
3508  0073 c65307        	ld	a,21255
3509  0076 a48f          	and	a,#143
3510  0078 1a06          	or	a,(OFST+6,sp)
3511  007a c75307        	ld	21255,a
3513  007d 2025          	jra	L5131
3514  007f               L3131:
3515                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3517  007f 1e01          	ldw	x,(OFST+1,sp)
3518  0081 a30001        	cpw	x,#1
3519  0084 2610          	jrne	L7131
3520                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3522  0086 7219530a      	bres	21258,#4
3523                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3523                     ; 832                             | (uint8_t)TIM2_OCMode);
3525  008a c65308        	ld	a,21256
3526  008d a48f          	and	a,#143
3527  008f 1a06          	or	a,(OFST+6,sp)
3528  0091 c75308        	ld	21256,a
3530  0094 200e          	jra	L5131
3531  0096               L7131:
3532                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3534  0096 7211530b      	bres	21259,#0
3535                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3535                     ; 841                             | (uint8_t)TIM2_OCMode);
3537  009a c65309        	ld	a,21257
3538  009d a48f          	and	a,#143
3539  009f 1a06          	or	a,(OFST+6,sp)
3540  00a1 c75309        	ld	21257,a
3541  00a4               L5131:
3542                     ; 843 }
3545  00a4 85            	popw	x
3546  00a5 81            	ret
3578                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3578                     ; 852 {
3579                     .text:	section	.text,new
3580  0000               _TIM2_SetCounter:
3584                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3586  0000 9e            	ld	a,xh
3587  0001 c7530c        	ld	21260,a
3588                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3590  0004 9f            	ld	a,xl
3591  0005 c7530d        	ld	21261,a
3592                     ; 856 }
3595  0008 81            	ret
3627                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3627                     ; 865 {
3628                     .text:	section	.text,new
3629  0000               _TIM2_SetAutoreload:
3633                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3635  0000 9e            	ld	a,xh
3636  0001 c7530f        	ld	21263,a
3637                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3639  0004 9f            	ld	a,xl
3640  0005 c75310        	ld	21264,a
3641                     ; 869 }
3644  0008 81            	ret
3676                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3676                     ; 878 {
3677                     .text:	section	.text,new
3678  0000               _TIM2_SetCompare1:
3682                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3684  0000 9e            	ld	a,xh
3685  0001 c75311        	ld	21265,a
3686                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3688  0004 9f            	ld	a,xl
3689  0005 c75312        	ld	21266,a
3690                     ; 882 }
3693  0008 81            	ret
3725                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3725                     ; 891 {
3726                     .text:	section	.text,new
3727  0000               _TIM2_SetCompare2:
3731                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3733  0000 9e            	ld	a,xh
3734  0001 c75313        	ld	21267,a
3735                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3737  0004 9f            	ld	a,xl
3738  0005 c75314        	ld	21268,a
3739                     ; 895 }
3742  0008 81            	ret
3774                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3774                     ; 904 {
3775                     .text:	section	.text,new
3776  0000               _TIM2_SetCompare3:
3780                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3782  0000 9e            	ld	a,xh
3783  0001 c75315        	ld	21269,a
3784                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3786  0004 9f            	ld	a,xl
3787  0005 c75316        	ld	21270,a
3788                     ; 908 }
3791  0008 81            	ret
3828                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3828                     ; 921 {
3829                     .text:	section	.text,new
3830  0000               _TIM2_SetIC1Prescaler:
3832  0000 89            	pushw	x
3833       00000000      OFST:	set	0
3836                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3838  0001 a30000        	cpw	x,#0
3839  0004 270f          	jreq	L664
3840  0006 a30004        	cpw	x,#4
3841  0009 270a          	jreq	L664
3842  000b a30008        	cpw	x,#8
3843  000e 2705          	jreq	L664
3844  0010 a3000c        	cpw	x,#12
3845  0013 2603          	jrne	L464
3846  0015               L664:
3847  0015 4f            	clr	a
3848  0016 2010          	jra	L074
3849  0018               L464:
3850  0018 ae039b        	ldw	x,#923
3851  001b 89            	pushw	x
3852  001c ae0000        	ldw	x,#0
3853  001f 89            	pushw	x
3854  0020 ae0000        	ldw	x,#L302
3855  0023 cd0000        	call	_assert_failed
3857  0026 5b04          	addw	sp,#4
3858  0028               L074:
3859                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3859                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3861  0028 c65307        	ld	a,21255
3862  002b a4f3          	and	a,#243
3863  002d 1a02          	or	a,(OFST+2,sp)
3864  002f c75307        	ld	21255,a
3865                     ; 928 }
3868  0032 85            	popw	x
3869  0033 81            	ret
3906                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3906                     ; 941 {
3907                     .text:	section	.text,new
3908  0000               _TIM2_SetIC2Prescaler:
3910  0000 89            	pushw	x
3911       00000000      OFST:	set	0
3914                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3916  0001 a30000        	cpw	x,#0
3917  0004 270f          	jreq	L674
3918  0006 a30004        	cpw	x,#4
3919  0009 270a          	jreq	L674
3920  000b a30008        	cpw	x,#8
3921  000e 2705          	jreq	L674
3922  0010 a3000c        	cpw	x,#12
3923  0013 2603          	jrne	L474
3924  0015               L674:
3925  0015 4f            	clr	a
3926  0016 2010          	jra	L005
3927  0018               L474:
3928  0018 ae03af        	ldw	x,#943
3929  001b 89            	pushw	x
3930  001c ae0000        	ldw	x,#0
3931  001f 89            	pushw	x
3932  0020 ae0000        	ldw	x,#L302
3933  0023 cd0000        	call	_assert_failed
3935  0026 5b04          	addw	sp,#4
3936  0028               L005:
3937                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3937                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3939  0028 c65308        	ld	a,21256
3940  002b a4f3          	and	a,#243
3941  002d 1a02          	or	a,(OFST+2,sp)
3942  002f c75308        	ld	21256,a
3943                     ; 948 }
3946  0032 85            	popw	x
3947  0033 81            	ret
3984                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3984                     ; 961 {
3985                     .text:	section	.text,new
3986  0000               _TIM2_SetIC3Prescaler:
3988  0000 89            	pushw	x
3989       00000000      OFST:	set	0
3992                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3994  0001 a30000        	cpw	x,#0
3995  0004 270f          	jreq	L605
3996  0006 a30004        	cpw	x,#4
3997  0009 270a          	jreq	L605
3998  000b a30008        	cpw	x,#8
3999  000e 2705          	jreq	L605
4000  0010 a3000c        	cpw	x,#12
4001  0013 2603          	jrne	L405
4002  0015               L605:
4003  0015 4f            	clr	a
4004  0016 2010          	jra	L015
4005  0018               L405:
4006  0018 ae03c4        	ldw	x,#964
4007  001b 89            	pushw	x
4008  001c ae0000        	ldw	x,#0
4009  001f 89            	pushw	x
4010  0020 ae0000        	ldw	x,#L302
4011  0023 cd0000        	call	_assert_failed
4013  0026 5b04          	addw	sp,#4
4014  0028               L015:
4015                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
4015                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
4017  0028 c65309        	ld	a,21257
4018  002b a4f3          	and	a,#243
4019  002d 1a02          	or	a,(OFST+2,sp)
4020  002f c75309        	ld	21257,a
4021                     ; 968 }
4024  0032 85            	popw	x
4025  0033 81            	ret
4071                     ; 975 uint16_t TIM2_GetCapture1(void)
4071                     ; 976 {
4072                     .text:	section	.text,new
4073  0000               _TIM2_GetCapture1:
4075  0000 5204          	subw	sp,#4
4076       00000004      OFST:	set	4
4079                     ; 978   uint16_t tmpccr1 = 0;
4081                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
4085                     ; 981   tmpccr1h = TIM2->CCR1H;
4087  0002 c65311        	ld	a,21265
4088  0005 6b02          	ld	(OFST-2,sp),a
4089                     ; 982   tmpccr1l = TIM2->CCR1L;
4091  0007 c65312        	ld	a,21266
4092  000a 6b01          	ld	(OFST-3,sp),a
4093                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
4095  000c 7b01          	ld	a,(OFST-3,sp)
4096  000e 5f            	clrw	x
4097  000f 97            	ld	xl,a
4098  0010 1f03          	ldw	(OFST-1,sp),x
4099                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4101  0012 7b02          	ld	a,(OFST-2,sp)
4102  0014 5f            	clrw	x
4103  0015 97            	ld	xl,a
4104  0016 4f            	clr	a
4105  0017 02            	rlwa	x,a
4106  0018 01            	rrwa	x,a
4107  0019 1a04          	or	a,(OFST+0,sp)
4108  001b 01            	rrwa	x,a
4109  001c 1a03          	or	a,(OFST-1,sp)
4110  001e 01            	rrwa	x,a
4111  001f 1f03          	ldw	(OFST-1,sp),x
4112                     ; 987   return (uint16_t)tmpccr1;
4114  0021 1e03          	ldw	x,(OFST-1,sp)
4117  0023 5b04          	addw	sp,#4
4118  0025 81            	ret
4164                     ; 995 uint16_t TIM2_GetCapture2(void)
4164                     ; 996 {
4165                     .text:	section	.text,new
4166  0000               _TIM2_GetCapture2:
4168  0000 5204          	subw	sp,#4
4169       00000004      OFST:	set	4
4172                     ; 998   uint16_t tmpccr2 = 0;
4174                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
4178                     ; 1001   tmpccr2h = TIM2->CCR2H;
4180  0002 c65313        	ld	a,21267
4181  0005 6b02          	ld	(OFST-2,sp),a
4182                     ; 1002   tmpccr2l = TIM2->CCR2L;
4184  0007 c65314        	ld	a,21268
4185  000a 6b01          	ld	(OFST-3,sp),a
4186                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
4188  000c 7b01          	ld	a,(OFST-3,sp)
4189  000e 5f            	clrw	x
4190  000f 97            	ld	xl,a
4191  0010 1f03          	ldw	(OFST-1,sp),x
4192                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4194  0012 7b02          	ld	a,(OFST-2,sp)
4195  0014 5f            	clrw	x
4196  0015 97            	ld	xl,a
4197  0016 4f            	clr	a
4198  0017 02            	rlwa	x,a
4199  0018 01            	rrwa	x,a
4200  0019 1a04          	or	a,(OFST+0,sp)
4201  001b 01            	rrwa	x,a
4202  001c 1a03          	or	a,(OFST-1,sp)
4203  001e 01            	rrwa	x,a
4204  001f 1f03          	ldw	(OFST-1,sp),x
4205                     ; 1007   return (uint16_t)tmpccr2;
4207  0021 1e03          	ldw	x,(OFST-1,sp)
4210  0023 5b04          	addw	sp,#4
4211  0025 81            	ret
4257                     ; 1015 uint16_t TIM2_GetCapture3(void)
4257                     ; 1016 {
4258                     .text:	section	.text,new
4259  0000               _TIM2_GetCapture3:
4261  0000 5204          	subw	sp,#4
4262       00000004      OFST:	set	4
4265                     ; 1018   uint16_t tmpccr3 = 0;
4267                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4271                     ; 1021   tmpccr3h = TIM2->CCR3H;
4273  0002 c65315        	ld	a,21269
4274  0005 6b02          	ld	(OFST-2,sp),a
4275                     ; 1022   tmpccr3l = TIM2->CCR3L;
4277  0007 c65316        	ld	a,21270
4278  000a 6b01          	ld	(OFST-3,sp),a
4279                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4281  000c 7b01          	ld	a,(OFST-3,sp)
4282  000e 5f            	clrw	x
4283  000f 97            	ld	xl,a
4284  0010 1f03          	ldw	(OFST-1,sp),x
4285                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4287  0012 7b02          	ld	a,(OFST-2,sp)
4288  0014 5f            	clrw	x
4289  0015 97            	ld	xl,a
4290  0016 4f            	clr	a
4291  0017 02            	rlwa	x,a
4292  0018 01            	rrwa	x,a
4293  0019 1a04          	or	a,(OFST+0,sp)
4294  001b 01            	rrwa	x,a
4295  001c 1a03          	or	a,(OFST-1,sp)
4296  001e 01            	rrwa	x,a
4297  001f 1f03          	ldw	(OFST-1,sp),x
4298                     ; 1027   return (uint16_t)tmpccr3;
4300  0021 1e03          	ldw	x,(OFST-1,sp)
4303  0023 5b04          	addw	sp,#4
4304  0025 81            	ret
4336                     ; 1035 uint16_t TIM2_GetCounter(void)
4336                     ; 1036 {
4337                     .text:	section	.text,new
4338  0000               _TIM2_GetCounter:
4340  0000 89            	pushw	x
4341       00000002      OFST:	set	2
4344                     ; 1037   uint16_t tmpcntr = 0;
4346                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4348  0001 c6530c        	ld	a,21260
4349  0004 5f            	clrw	x
4350  0005 97            	ld	xl,a
4351  0006 4f            	clr	a
4352  0007 02            	rlwa	x,a
4353  0008 1f01          	ldw	(OFST-1,sp),x
4354                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4356  000a c6530d        	ld	a,21261
4357  000d 5f            	clrw	x
4358  000e 97            	ld	xl,a
4359  000f 01            	rrwa	x,a
4360  0010 1a02          	or	a,(OFST+0,sp)
4361  0012 01            	rrwa	x,a
4362  0013 1a01          	or	a,(OFST-1,sp)
4363  0015 01            	rrwa	x,a
4366  0016 5b02          	addw	sp,#2
4367  0018 81            	ret
4391                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4391                     ; 1050 {
4392                     .text:	section	.text,new
4393  0000               _TIM2_GetPrescaler:
4397                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4399  0000 c6530e        	ld	a,21262
4400  0003 5f            	clrw	x
4401  0004 97            	ld	xl,a
4404  0005 81            	ret
4540                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4540                     ; 1069 {
4541                     .text:	section	.text,new
4542  0000               _TIM2_GetFlagStatus:
4544  0000 89            	pushw	x
4545  0001 5204          	subw	sp,#4
4546       00000004      OFST:	set	4
4549                     ; 1070   FlagStatus bitstatus = RESET;
4551                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4555                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4557  0003 a30001        	cpw	x,#1
4558  0006 271e          	jreq	L035
4559  0008 a30002        	cpw	x,#2
4560  000b 2719          	jreq	L035
4561  000d a30004        	cpw	x,#4
4562  0010 2714          	jreq	L035
4563  0012 a30008        	cpw	x,#8
4564  0015 270f          	jreq	L035
4565  0017 a30200        	cpw	x,#512
4566  001a 270a          	jreq	L035
4567  001c a30400        	cpw	x,#1024
4568  001f 2705          	jreq	L035
4569  0021 a30800        	cpw	x,#2048
4570  0024 2603          	jrne	L625
4571  0026               L035:
4572  0026 4f            	clr	a
4573  0027 2010          	jra	L235
4574  0029               L625:
4575  0029 ae0432        	ldw	x,#1074
4576  002c 89            	pushw	x
4577  002d ae0000        	ldw	x,#0
4578  0030 89            	pushw	x
4579  0031 ae0000        	ldw	x,#L302
4580  0034 cd0000        	call	_assert_failed
4582  0037 5b04          	addw	sp,#4
4583  0039               L235:
4584                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4586  0039 c65304        	ld	a,21252
4587  003c 1406          	and	a,(OFST+2,sp)
4588  003e 6b01          	ld	(OFST-3,sp),a
4589                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4591  0040 1e05          	ldw	x,(OFST+1,sp)
4592  0042 4f            	clr	a
4593  0043 01            	rrwa	x,a
4594  0044 9f            	ld	a,xl
4595  0045 6b02          	ld	(OFST-2,sp),a
4596                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4598  0047 c65305        	ld	a,21253
4599  004a 1402          	and	a,(OFST-2,sp)
4600  004c 1a01          	or	a,(OFST-3,sp)
4601  004e 2707          	jreq	L5561
4602                     ; 1081     bitstatus = SET;
4604  0050 ae0001        	ldw	x,#1
4605  0053 1f03          	ldw	(OFST-1,sp),x
4607  0055 2003          	jra	L7561
4608  0057               L5561:
4609                     ; 1085     bitstatus = RESET;
4611  0057 5f            	clrw	x
4612  0058 1f03          	ldw	(OFST-1,sp),x
4613  005a               L7561:
4614                     ; 1087   return (FlagStatus)bitstatus;
4616  005a 1e03          	ldw	x,(OFST-1,sp)
4619  005c 5b06          	addw	sp,#6
4620  005e 81            	ret
4656                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4656                     ; 1104 {
4657                     .text:	section	.text,new
4658  0000               _TIM2_ClearFlag:
4660  0000 89            	pushw	x
4661       00000000      OFST:	set	0
4664                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4666  0001 01            	rrwa	x,a
4667  0002 a4f0          	and	a,#240
4668  0004 01            	rrwa	x,a
4669  0005 a4f1          	and	a,#241
4670  0007 01            	rrwa	x,a
4671  0008 a30000        	cpw	x,#0
4672  000b 2607          	jrne	L635
4673  000d 1e01          	ldw	x,(OFST+1,sp)
4674  000f 2703          	jreq	L635
4675  0011 4f            	clr	a
4676  0012 2010          	jra	L045
4677  0014               L635:
4678  0014 ae0452        	ldw	x,#1106
4679  0017 89            	pushw	x
4680  0018 ae0000        	ldw	x,#0
4681  001b 89            	pushw	x
4682  001c ae0000        	ldw	x,#L302
4683  001f cd0000        	call	_assert_failed
4685  0022 5b04          	addw	sp,#4
4686  0024               L045:
4687                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4689  0024 7b02          	ld	a,(OFST+2,sp)
4690  0026 43            	cpl	a
4691  0027 c75304        	ld	21252,a
4692                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4694  002a 35ff5305      	mov	21253,#255
4695                     ; 1111 }
4698  002e 85            	popw	x
4699  002f 81            	ret
4760                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4760                     ; 1124 {
4761                     .text:	section	.text,new
4762  0000               _TIM2_GetITStatus:
4764  0000 89            	pushw	x
4765  0001 5204          	subw	sp,#4
4766       00000004      OFST:	set	4
4769                     ; 1125   ITStatus bitstatus = RESET;
4771                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4775                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4777  0003 a30001        	cpw	x,#1
4778  0006 270f          	jreq	L645
4779  0008 a30002        	cpw	x,#2
4780  000b 270a          	jreq	L645
4781  000d a30004        	cpw	x,#4
4782  0010 2705          	jreq	L645
4783  0012 a30008        	cpw	x,#8
4784  0015 2603          	jrne	L445
4785  0017               L645:
4786  0017 4f            	clr	a
4787  0018 2010          	jra	L055
4788  001a               L445:
4789  001a ae0469        	ldw	x,#1129
4790  001d 89            	pushw	x
4791  001e ae0000        	ldw	x,#0
4792  0021 89            	pushw	x
4793  0022 ae0000        	ldw	x,#L302
4794  0025 cd0000        	call	_assert_failed
4796  0028 5b04          	addw	sp,#4
4797  002a               L055:
4798                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4800  002a c65304        	ld	a,21252
4801  002d 1406          	and	a,(OFST+2,sp)
4802  002f 6b01          	ld	(OFST-3,sp),a
4803                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4805  0031 c65303        	ld	a,21251
4806  0034 1406          	and	a,(OFST+2,sp)
4807  0036 6b02          	ld	(OFST-2,sp),a
4808                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4810  0038 0d01          	tnz	(OFST-3,sp)
4811  003a 270b          	jreq	L5271
4813  003c 0d02          	tnz	(OFST-2,sp)
4814  003e 2707          	jreq	L5271
4815                     ; 1137     bitstatus = SET;
4817  0040 ae0001        	ldw	x,#1
4818  0043 1f03          	ldw	(OFST-1,sp),x
4820  0045 2003          	jra	L7271
4821  0047               L5271:
4822                     ; 1141     bitstatus = RESET;
4824  0047 5f            	clrw	x
4825  0048 1f03          	ldw	(OFST-1,sp),x
4826  004a               L7271:
4827                     ; 1143   return (ITStatus)(bitstatus);
4829  004a 1e03          	ldw	x,(OFST-1,sp)
4832  004c 5b06          	addw	sp,#6
4833  004e 81            	ret
4870                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4870                     ; 1157 {
4871                     .text:	section	.text,new
4872  0000               _TIM2_ClearITPendingBit:
4874  0000 89            	pushw	x
4875       00000000      OFST:	set	0
4878                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4880  0001 a30000        	cpw	x,#0
4881  0004 2709          	jreq	L455
4882  0006 9c            	rvf
4883  0007 a30010        	cpw	x,#16
4884  000a 2e03          	jrsge	L455
4885  000c 4f            	clr	a
4886  000d 2010          	jra	L655
4887  000f               L455:
4888  000f ae0487        	ldw	x,#1159
4889  0012 89            	pushw	x
4890  0013 ae0000        	ldw	x,#0
4891  0016 89            	pushw	x
4892  0017 ae0000        	ldw	x,#L302
4893  001a cd0000        	call	_assert_failed
4895  001d 5b04          	addw	sp,#4
4896  001f               L655:
4897                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4899  001f 7b02          	ld	a,(OFST+2,sp)
4900  0021 43            	cpl	a
4901  0022 c75304        	ld	21252,a
4902                     ; 1163 }
4905  0025 85            	popw	x
4906  0026 81            	ret
4952                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4952                     ; 1182                        uint8_t TIM2_ICSelection,
4952                     ; 1183                        uint8_t TIM2_ICFilter)
4952                     ; 1184 {
4953                     .text:	section	.text,new
4954  0000               L3_TI1_Config:
4956  0000 89            	pushw	x
4957  0001 88            	push	a
4958       00000001      OFST:	set	1
4961                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4963  0002 7211530a      	bres	21258,#0
4964                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4964                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4966  0006 7b06          	ld	a,(OFST+5,sp)
4967  0008 97            	ld	xl,a
4968  0009 a610          	ld	a,#16
4969  000b 42            	mul	x,a
4970  000c 9f            	ld	a,xl
4971  000d 1a03          	or	a,(OFST+2,sp)
4972  000f 6b01          	ld	(OFST+0,sp),a
4973  0011 c65307        	ld	a,21255
4974  0014 a40c          	and	a,#12
4975  0016 1a01          	or	a,(OFST+0,sp)
4976  0018 c75307        	ld	21255,a
4977                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4979  001b 0d02          	tnz	(OFST+1,sp)
4980  001d 2706          	jreq	L7671
4981                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4983  001f 7212530a      	bset	21258,#1
4985  0023 2004          	jra	L1771
4986  0025               L7671:
4987                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4989  0025 7213530a      	bres	21258,#1
4990  0029               L1771:
4991                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4993  0029 7210530a      	bset	21258,#0
4994                     ; 1203 }
4997  002d 5b03          	addw	sp,#3
4998  002f 81            	ret
5044                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
5044                     ; 1222                        uint8_t TIM2_ICSelection,
5044                     ; 1223                        uint8_t TIM2_ICFilter)
5044                     ; 1224 {
5045                     .text:	section	.text,new
5046  0000               L5_TI2_Config:
5048  0000 89            	pushw	x
5049  0001 88            	push	a
5050       00000001      OFST:	set	1
5053                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
5055  0002 7219530a      	bres	21258,#4
5056                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
5056                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5058  0006 7b06          	ld	a,(OFST+5,sp)
5059  0008 97            	ld	xl,a
5060  0009 a610          	ld	a,#16
5061  000b 42            	mul	x,a
5062  000c 9f            	ld	a,xl
5063  000d 1a03          	or	a,(OFST+2,sp)
5064  000f 6b01          	ld	(OFST+0,sp),a
5065  0011 c65308        	ld	a,21256
5066  0014 a40c          	and	a,#12
5067  0016 1a01          	or	a,(OFST+0,sp)
5068  0018 c75308        	ld	21256,a
5069                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5071  001b 0d02          	tnz	(OFST+1,sp)
5072  001d 2706          	jreq	L3102
5073                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
5075  001f 721a530a      	bset	21258,#5
5077  0023 2004          	jra	L5102
5078  0025               L3102:
5079                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
5081  0025 721b530a      	bres	21258,#5
5082  0029               L5102:
5083                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
5085  0029 7218530a      	bset	21258,#4
5086                     ; 1245 }
5089  002d 5b03          	addw	sp,#3
5090  002f 81            	ret
5136                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
5136                     ; 1262                        uint8_t TIM2_ICFilter)
5136                     ; 1263 {
5137                     .text:	section	.text,new
5138  0000               L7_TI3_Config:
5140  0000 89            	pushw	x
5141  0001 88            	push	a
5142       00000001      OFST:	set	1
5145                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
5147  0002 7211530b      	bres	21259,#0
5148                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
5148                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5150  0006 7b06          	ld	a,(OFST+5,sp)
5151  0008 97            	ld	xl,a
5152  0009 a610          	ld	a,#16
5153  000b 42            	mul	x,a
5154  000c 9f            	ld	a,xl
5155  000d 1a03          	or	a,(OFST+2,sp)
5156  000f 6b01          	ld	(OFST+0,sp),a
5157  0011 c65309        	ld	a,21257
5158  0014 a40c          	and	a,#12
5159  0016 1a01          	or	a,(OFST+0,sp)
5160  0018 c75309        	ld	21257,a
5161                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5163  001b 0d02          	tnz	(OFST+1,sp)
5164  001d 2706          	jreq	L7302
5165                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
5167  001f 7212530b      	bset	21259,#1
5169  0023 2004          	jra	L1402
5170  0025               L7302:
5171                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
5173  0025 7213530b      	bres	21259,#1
5174  0029               L1402:
5175                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
5177  0029 7210530b      	bset	21259,#0
5178                     ; 1283 }
5181  002d 5b03          	addw	sp,#3
5182  002f 81            	ret
5195                     	xdef	_TIM2_ClearITPendingBit
5196                     	xdef	_TIM2_GetITStatus
5197                     	xdef	_TIM2_ClearFlag
5198                     	xdef	_TIM2_GetFlagStatus
5199                     	xdef	_TIM2_GetPrescaler
5200                     	xdef	_TIM2_GetCounter
5201                     	xdef	_TIM2_GetCapture3
5202                     	xdef	_TIM2_GetCapture2
5203                     	xdef	_TIM2_GetCapture1
5204                     	xdef	_TIM2_SetIC3Prescaler
5205                     	xdef	_TIM2_SetIC2Prescaler
5206                     	xdef	_TIM2_SetIC1Prescaler
5207                     	xdef	_TIM2_SetCompare3
5208                     	xdef	_TIM2_SetCompare2
5209                     	xdef	_TIM2_SetCompare1
5210                     	xdef	_TIM2_SetAutoreload
5211                     	xdef	_TIM2_SetCounter
5212                     	xdef	_TIM2_SelectOCxM
5213                     	xdef	_TIM2_CCxCmd
5214                     	xdef	_TIM2_OC3PolarityConfig
5215                     	xdef	_TIM2_OC2PolarityConfig
5216                     	xdef	_TIM2_OC1PolarityConfig
5217                     	xdef	_TIM2_GenerateEvent
5218                     	xdef	_TIM2_OC3PreloadConfig
5219                     	xdef	_TIM2_OC2PreloadConfig
5220                     	xdef	_TIM2_OC1PreloadConfig
5221                     	xdef	_TIM2_ARRPreloadConfig
5222                     	xdef	_TIM2_ForcedOC3Config
5223                     	xdef	_TIM2_ForcedOC2Config
5224                     	xdef	_TIM2_ForcedOC1Config
5225                     	xdef	_TIM2_PrescalerConfig
5226                     	xdef	_TIM2_SelectOnePulseMode
5227                     	xdef	_TIM2_UpdateRequestConfig
5228                     	xdef	_TIM2_UpdateDisableConfig
5229                     	xdef	_TIM2_ITConfig
5230                     	xdef	_TIM2_Cmd
5231                     	xdef	_TIM2_PWMIConfig
5232                     	xdef	_TIM2_ICInit
5233                     	xdef	_TIM2_OC3Init
5234                     	xdef	_TIM2_OC2Init
5235                     	xdef	_TIM2_OC1Init
5236                     	xdef	_TIM2_TimeBaseInit
5237                     	xdef	_TIM2_DeInit
5238                     	xref	_assert_failed
5239                     .const:	section	.text
5240  0000               L302:
5241  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
5242  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
5243  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
5244  0036 6d322e6300    	dc.b	"m2.c",0
5264                     	end

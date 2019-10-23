   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 52 void TIM2_DeInit(void)
  50                     ; 53 {
  52                     .text:	section	.text,new
  53  0000               _TIM2_DeInit:
  57                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  59  0000 725f5300      	clr	21248
  60                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  62  0004 725f5303      	clr	21251
  63                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  65  0008 725f5305      	clr	21253
  66                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  68  000c 725f530a      	clr	21258
  69                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  71  0010 725f530b      	clr	21259
  72                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  74  0014 725f530a      	clr	21258
  75                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  77  0018 725f530b      	clr	21259
  78                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  80  001c 725f5307      	clr	21255
  81                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  83  0020 725f5308      	clr	21256
  84                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  86  0024 725f5309      	clr	21257
  87                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  89  0028 725f530c      	clr	21260
  90                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  92  002c 725f530d      	clr	21261
  93                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  95  0030 725f530e      	clr	21262
  96                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  98  0034 35ff530f      	mov	21263,#255
  99                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
 101  0038 35ff5310      	mov	21264,#255
 102                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 104  003c 725f5311      	clr	21265
 105                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 107  0040 725f5312      	clr	21266
 108                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 110  0044 725f5313      	clr	21267
 111                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 113  0048 725f5314      	clr	21268
 114                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 116  004c 725f5315      	clr	21269
 117                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 119  0050 725f5316      	clr	21270
 120                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 122  0054 725f5304      	clr	21252
 123                     ; 81 }
 126  0058 81            	ret	
 294                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 294                     ; 90                         uint16_t TIM2_Period)
 294                     ; 91 {
 295                     .text:	section	.text,new
 296  0000               _TIM2_TimeBaseInit:
 298  0000 89            	pushw	x
 299       00000000      OFST:	set	0
 302                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 304  0001 9f            	ld	a,xl
 305  0002 c7530e        	ld	21262,a
 306                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 308  0005 7b05          	ld	a,(OFST+5,sp)
 309  0007 c7530f        	ld	21263,a
 310                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 312  000a 7b06          	ld	a,(OFST+6,sp)
 313  000c c75310        	ld	21264,a
 314                     ; 97 }
 317  000f 85            	popw	x
 318  0010 81            	ret	
 476                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 476                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 476                     ; 110                   uint16_t TIM2_Pulse,
 476                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 476                     ; 112 {
 477                     .text:	section	.text,new
 478  0000               _TIM2_OC1Init:
 480  0000 89            	pushw	x
 481  0001 88            	push	a
 482       00000001      OFST:	set	1
 485                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 487  0002 5d            	tnzw	x
 488  0003 271e          	jreq	L61
 489  0005 a30010        	cpw	x,#16
 490  0008 2719          	jreq	L61
 491  000a a30020        	cpw	x,#32
 492  000d 2714          	jreq	L61
 493  000f a30030        	cpw	x,#48
 494  0012 270f          	jreq	L61
 495  0014 a30060        	cpw	x,#96
 496  0017 270a          	jreq	L61
 497  0019 a30070        	cpw	x,#112
 498  001c 2705          	jreq	L61
 499  001e ae0072        	ldw	x,#114
 500  0021 ad4d          	call	LC001
 501  0023               L61:
 502                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 504  0023 1e06          	ldw	x,(OFST+5,sp)
 505  0025 270a          	jreq	L62
 506  0027 a30011        	cpw	x,#17
 507  002a 2705          	jreq	L62
 508  002c ae0073        	ldw	x,#115
 509  002f ad3f          	call	LC001
 510  0031               L62:
 511                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 513  0031 1e0a          	ldw	x,(OFST+9,sp)
 514  0033 270a          	jreq	L63
 515  0035 a30022        	cpw	x,#34
 516  0038 2705          	jreq	L63
 517  003a ae0074        	ldw	x,#116
 518  003d ad31          	call	LC001
 519  003f               L63:
 520                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 522  003f c6530a        	ld	a,21258
 523  0042 a4fc          	and	a,#252
 524  0044 c7530a        	ld	21258,a
 525                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 525                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 527  0047 7b0b          	ld	a,(OFST+10,sp)
 528  0049 a402          	and	a,#2
 529  004b 6b01          	ld	(OFST+0,sp),a
 530  004d 7b07          	ld	a,(OFST+6,sp)
 531  004f a401          	and	a,#1
 532  0051 1a01          	or	a,(OFST+0,sp)
 533  0053 ca530a        	or	a,21258
 534  0056 c7530a        	ld	21258,a
 535                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 535                     ; 126                           (uint8_t)TIM2_OCMode);
 537  0059 c65307        	ld	a,21255
 538  005c a48f          	and	a,#143
 539  005e 1a03          	or	a,(OFST+2,sp)
 540  0060 c75307        	ld	21255,a
 541                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 543  0063 7b08          	ld	a,(OFST+7,sp)
 544  0065 c75311        	ld	21265,a
 545                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 547  0068 7b09          	ld	a,(OFST+8,sp)
 548  006a c75312        	ld	21266,a
 549                     ; 131 }
 552  006d 5b03          	addw	sp,#3
 553  006f 81            	ret	
 554  0070               LC001:
 555  0070 89            	pushw	x
 556  0071 5f            	clrw	x
 557  0072 89            	pushw	x
 558  0073 ae0000        	ldw	x,#L702
 559  0076 cd0000        	call	_assert_failed
 561  0079 5b04          	addw	sp,#4
 562  007b 81            	ret	
 627                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 627                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 627                     ; 144                   uint16_t TIM2_Pulse,
 627                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 627                     ; 146 {
 628                     .text:	section	.text,new
 629  0000               _TIM2_OC2Init:
 631  0000 89            	pushw	x
 632  0001 88            	push	a
 633       00000001      OFST:	set	1
 636                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 638  0002 5d            	tnzw	x
 639  0003 271e          	jreq	L05
 640  0005 a30010        	cpw	x,#16
 641  0008 2719          	jreq	L05
 642  000a a30020        	cpw	x,#32
 643  000d 2714          	jreq	L05
 644  000f a30030        	cpw	x,#48
 645  0012 270f          	jreq	L05
 646  0014 a30060        	cpw	x,#96
 647  0017 270a          	jreq	L05
 648  0019 a30070        	cpw	x,#112
 649  001c 2705          	jreq	L05
 650  001e ae0094        	ldw	x,#148
 651  0021 ad4d          	call	LC002
 652  0023               L05:
 653                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 655  0023 1e06          	ldw	x,(OFST+5,sp)
 656  0025 270a          	jreq	L06
 657  0027 a30011        	cpw	x,#17
 658  002a 2705          	jreq	L06
 659  002c ae0095        	ldw	x,#149
 660  002f ad3f          	call	LC002
 661  0031               L06:
 662                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 664  0031 1e0a          	ldw	x,(OFST+9,sp)
 665  0033 270a          	jreq	L07
 666  0035 a30022        	cpw	x,#34
 667  0038 2705          	jreq	L07
 668  003a ae0096        	ldw	x,#150
 669  003d ad31          	call	LC002
 670  003f               L07:
 671                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 673  003f c6530a        	ld	a,21258
 674  0042 a4cf          	and	a,#207
 675  0044 c7530a        	ld	21258,a
 676                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 676                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 678  0047 7b0b          	ld	a,(OFST+10,sp)
 679  0049 a420          	and	a,#32
 680  004b 6b01          	ld	(OFST+0,sp),a
 681  004d 7b07          	ld	a,(OFST+6,sp)
 682  004f a410          	and	a,#16
 683  0051 1a01          	or	a,(OFST+0,sp)
 684  0053 ca530a        	or	a,21258
 685  0056 c7530a        	ld	21258,a
 686                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 686                     ; 162                           (uint8_t)TIM2_OCMode);
 688  0059 c65308        	ld	a,21256
 689  005c a48f          	and	a,#143
 690  005e 1a03          	or	a,(OFST+2,sp)
 691  0060 c75308        	ld	21256,a
 692                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 694  0063 7b08          	ld	a,(OFST+7,sp)
 695  0065 c75313        	ld	21267,a
 696                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 698  0068 7b09          	ld	a,(OFST+8,sp)
 699  006a c75314        	ld	21268,a
 700                     ; 168 }
 703  006d 5b03          	addw	sp,#3
 704  006f 81            	ret	
 705  0070               LC002:
 706  0070 89            	pushw	x
 707  0071 5f            	clrw	x
 708  0072 89            	pushw	x
 709  0073 ae0000        	ldw	x,#L702
 710  0076 cd0000        	call	_assert_failed
 712  0079 5b04          	addw	sp,#4
 713  007b 81            	ret	
 778                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 778                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 778                     ; 181                   uint16_t TIM2_Pulse,
 778                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 778                     ; 183 {
 779                     .text:	section	.text,new
 780  0000               _TIM2_OC3Init:
 782  0000 89            	pushw	x
 783  0001 88            	push	a
 784       00000001      OFST:	set	1
 787                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 789  0002 5d            	tnzw	x
 790  0003 271e          	jreq	L201
 791  0005 a30010        	cpw	x,#16
 792  0008 2719          	jreq	L201
 793  000a a30020        	cpw	x,#32
 794  000d 2714          	jreq	L201
 795  000f a30030        	cpw	x,#48
 796  0012 270f          	jreq	L201
 797  0014 a30060        	cpw	x,#96
 798  0017 270a          	jreq	L201
 799  0019 a30070        	cpw	x,#112
 800  001c 2705          	jreq	L201
 801  001e ae00b9        	ldw	x,#185
 802  0021 ad4d          	call	LC003
 803  0023               L201:
 804                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 806  0023 1e06          	ldw	x,(OFST+5,sp)
 807  0025 270a          	jreq	L211
 808  0027 a30011        	cpw	x,#17
 809  002a 2705          	jreq	L211
 810  002c ae00ba        	ldw	x,#186
 811  002f ad3f          	call	LC003
 812  0031               L211:
 813                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 815  0031 1e0a          	ldw	x,(OFST+9,sp)
 816  0033 270a          	jreq	L221
 817  0035 a30022        	cpw	x,#34
 818  0038 2705          	jreq	L221
 819  003a ae00bb        	ldw	x,#187
 820  003d ad31          	call	LC003
 821  003f               L221:
 822                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 824  003f c6530b        	ld	a,21259
 825  0042 a4fc          	and	a,#252
 826  0044 c7530b        	ld	21259,a
 827                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 827                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 829  0047 7b0b          	ld	a,(OFST+10,sp)
 830  0049 a402          	and	a,#2
 831  004b 6b01          	ld	(OFST+0,sp),a
 832  004d 7b07          	ld	a,(OFST+6,sp)
 833  004f a401          	and	a,#1
 834  0051 1a01          	or	a,(OFST+0,sp)
 835  0053 ca530b        	or	a,21259
 836  0056 c7530b        	ld	21259,a
 837                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 837                     ; 196                           (uint8_t)TIM2_OCMode);
 839  0059 c65309        	ld	a,21257
 840  005c a48f          	and	a,#143
 841  005e 1a03          	or	a,(OFST+2,sp)
 842  0060 c75309        	ld	21257,a
 843                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 845  0063 7b08          	ld	a,(OFST+7,sp)
 846  0065 c75315        	ld	21269,a
 847                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 849  0068 7b09          	ld	a,(OFST+8,sp)
 850  006a c75316        	ld	21270,a
 851                     ; 201 }
 854  006d 5b03          	addw	sp,#3
 855  006f 81            	ret	
 856  0070               LC003:
 857  0070 89            	pushw	x
 858  0071 5f            	clrw	x
 859  0072 89            	pushw	x
 860  0073 ae0000        	ldw	x,#L702
 861  0076 cd0000        	call	_assert_failed
 863  0079 5b04          	addw	sp,#4
 864  007b 81            	ret	
1058                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1058                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1058                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1058                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1058                     ; 216                  uint8_t TIM2_ICFilter)
1058                     ; 217 {
1059                     .text:	section	.text,new
1060  0000               _TIM2_ICInit:
1062  0000 89            	pushw	x
1063       00000000      OFST:	set	0
1066                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1068  0001 5d            	tnzw	x
1069  0002 2710          	jreq	L431
1070  0004 a30001        	cpw	x,#1
1071  0007 270b          	jreq	L431
1072  0009 a30002        	cpw	x,#2
1073  000c 2706          	jreq	L431
1074  000e ae00db        	ldw	x,#219
1075  0011 cd009e        	call	LC004
1076  0014               L431:
1077                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1079  0014 1e05          	ldw	x,(OFST+5,sp)
1080  0016 270a          	jreq	L441
1081  0018 a30044        	cpw	x,#68
1082  001b 2705          	jreq	L441
1083  001d ae00dc        	ldw	x,#220
1084  0020 ad7c          	call	LC004
1085  0022               L441:
1086                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1088  0022 1e07          	ldw	x,(OFST+7,sp)
1089  0024 a30001        	cpw	x,#1
1090  0027 270f          	jreq	L451
1091  0029 a30002        	cpw	x,#2
1092  002c 270a          	jreq	L451
1093  002e a30003        	cpw	x,#3
1094  0031 2705          	jreq	L451
1095  0033 ae00dd        	ldw	x,#221
1096  0036 ad66          	call	LC004
1097  0038               L451:
1098                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1100  0038 1e09          	ldw	x,(OFST+9,sp)
1101  003a 2714          	jreq	L461
1102  003c a30004        	cpw	x,#4
1103  003f 270f          	jreq	L461
1104  0041 a30008        	cpw	x,#8
1105  0044 270a          	jreq	L461
1106  0046 a3000c        	cpw	x,#12
1107  0049 2705          	jreq	L461
1108  004b ae00de        	ldw	x,#222
1109  004e ad4e          	call	LC004
1110  0050               L461:
1111                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1113  0050 7b0b          	ld	a,(OFST+11,sp)
1114  0052 a110          	cp	a,#16
1115  0054 2505          	jrult	L271
1116  0056 ae00df        	ldw	x,#223
1117  0059 ad43          	call	LC004
1118  005b               L271:
1119                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1121  005b 1e01          	ldw	x,(OFST+1,sp)
1122  005d 2614          	jrne	L304
1123                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1123                     ; 229                (uint8_t)TIM2_ICSelection,
1123                     ; 230                (uint8_t)TIM2_ICFilter);
1125  005f 7b0b          	ld	a,(OFST+11,sp)
1126  0061 88            	push	a
1127  0062 7b09          	ld	a,(OFST+9,sp)
1128  0064 97            	ld	xl,a
1129  0065 7b07          	ld	a,(OFST+7,sp)
1130  0067 95            	ld	xh,a
1131  0068 cd0000        	call	L3_TI1_Config
1133  006b 84            	pop	a
1134                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1136  006c 1e09          	ldw	x,(OFST+9,sp)
1137  006e cd0000        	call	_TIM2_SetIC1Prescaler
1140  0071 2029          	jra	L504
1141  0073               L304:
1142                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1144  0073 5a            	decw	x
1145  0074 2614          	jrne	L704
1146                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1146                     ; 239                (uint8_t)TIM2_ICSelection,
1146                     ; 240                (uint8_t)TIM2_ICFilter);
1148  0076 7b0b          	ld	a,(OFST+11,sp)
1149  0078 88            	push	a
1150  0079 7b09          	ld	a,(OFST+9,sp)
1151  007b 97            	ld	xl,a
1152  007c 7b07          	ld	a,(OFST+7,sp)
1153  007e 95            	ld	xh,a
1154  007f cd0000        	call	L5_TI2_Config
1156  0082 84            	pop	a
1157                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1159  0083 1e09          	ldw	x,(OFST+9,sp)
1160  0085 cd0000        	call	_TIM2_SetIC2Prescaler
1163  0088 2012          	jra	L504
1164  008a               L704:
1165                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1165                     ; 249                (uint8_t)TIM2_ICSelection,
1165                     ; 250                (uint8_t)TIM2_ICFilter);
1167  008a 7b0b          	ld	a,(OFST+11,sp)
1168  008c 88            	push	a
1169  008d 7b09          	ld	a,(OFST+9,sp)
1170  008f 97            	ld	xl,a
1171  0090 7b07          	ld	a,(OFST+7,sp)
1172  0092 95            	ld	xh,a
1173  0093 cd0000        	call	L7_TI3_Config
1175  0096 84            	pop	a
1176                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1178  0097 1e09          	ldw	x,(OFST+9,sp)
1179  0099 cd0000        	call	_TIM2_SetIC3Prescaler
1181  009c               L504:
1182                     ; 255 }
1185  009c 85            	popw	x
1186  009d 81            	ret	
1187  009e               LC004:
1188  009e 89            	pushw	x
1189  009f 5f            	clrw	x
1190  00a0 89            	pushw	x
1191  00a1 ae0000        	ldw	x,#L702
1192  00a4 cd0000        	call	_assert_failed
1194  00a7 5b04          	addw	sp,#4
1195  00a9 81            	ret	
1292                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1292                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1292                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1292                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1292                     ; 270                      uint8_t TIM2_ICFilter)
1292                     ; 271 {
1293                     .text:	section	.text,new
1294  0000               _TIM2_PWMIConfig:
1296  0000 89            	pushw	x
1297  0001 89            	pushw	x
1298       00000002      OFST:	set	2
1301                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1303                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1305                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1307  0002 5d            	tnzw	x
1308  0003 2709          	jreq	L022
1309  0005 5a            	decw	x
1310  0006 2706          	jreq	L022
1311  0008 ae0114        	ldw	x,#276
1312  000b cd00b9        	call	LC005
1313  000e               L022:
1314                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1316  000e 1e07          	ldw	x,(OFST+5,sp)
1317  0010 270b          	jreq	L032
1318  0012 a30044        	cpw	x,#68
1319  0015 2706          	jreq	L032
1320  0017 ae0115        	ldw	x,#277
1321  001a cd00b9        	call	LC005
1322  001d               L032:
1323                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1325  001d 1e09          	ldw	x,(OFST+7,sp)
1326  001f a30001        	cpw	x,#1
1327  0022 2710          	jreq	L042
1328  0024 a30002        	cpw	x,#2
1329  0027 270b          	jreq	L042
1330  0029 a30003        	cpw	x,#3
1331  002c 2706          	jreq	L042
1332  002e ae0116        	ldw	x,#278
1333  0031 cd00b9        	call	LC005
1334  0034               L042:
1335                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1337  0034 1e0b          	ldw	x,(OFST+9,sp)
1338  0036 2714          	jreq	L052
1339  0038 a30004        	cpw	x,#4
1340  003b 270f          	jreq	L052
1341  003d a30008        	cpw	x,#8
1342  0040 270a          	jreq	L052
1343  0042 a3000c        	cpw	x,#12
1344  0045 2705          	jreq	L052
1345  0047 ae0117        	ldw	x,#279
1346  004a ad6d          	call	LC005
1347  004c               L052:
1348                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1350  004c 1e07          	ldw	x,(OFST+5,sp)
1351  004e a30044        	cpw	x,#68
1352  0051 2706          	jreq	L164
1353                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1355  0053 a644          	ld	a,#68
1356  0055 6b01          	ld	(OFST-1,sp),a
1358  0057 2002          	jra	L364
1359  0059               L164:
1360                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1362  0059 0f01          	clr	(OFST-1,sp)
1363  005b               L364:
1364                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1366  005b 1e09          	ldw	x,(OFST+7,sp)
1367  005d 5a            	decw	x
1368  005e 2604          	jrne	L564
1369                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1371  0060 a602          	ld	a,#2
1373  0062 2002          	jra	L764
1374  0064               L564:
1375                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1377  0064 a601          	ld	a,#1
1378  0066               L764:
1379  0066 6b02          	ld	(OFST+0,sp),a
1380                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1382  0068 1e03          	ldw	x,(OFST+1,sp)
1383  006a 2626          	jrne	L174
1384                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1384                     ; 305                (uint8_t)TIM2_ICFilter);
1386  006c 7b0d          	ld	a,(OFST+11,sp)
1387  006e 88            	push	a
1388  006f 7b0b          	ld	a,(OFST+9,sp)
1389  0071 97            	ld	xl,a
1390  0072 7b09          	ld	a,(OFST+7,sp)
1391  0074 95            	ld	xh,a
1392  0075 cd0000        	call	L3_TI1_Config
1394  0078 84            	pop	a
1395                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1397  0079 1e0b          	ldw	x,(OFST+9,sp)
1398  007b cd0000        	call	_TIM2_SetIC1Prescaler
1400                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1402  007e 7b0d          	ld	a,(OFST+11,sp)
1403  0080 88            	push	a
1404  0081 7b03          	ld	a,(OFST+1,sp)
1405  0083 97            	ld	xl,a
1406  0084 7b02          	ld	a,(OFST+0,sp)
1407  0086 95            	ld	xh,a
1408  0087 cd0000        	call	L5_TI2_Config
1410  008a 84            	pop	a
1411                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1413  008b 1e0b          	ldw	x,(OFST+9,sp)
1414  008d cd0000        	call	_TIM2_SetIC2Prescaler
1417  0090 2024          	jra	L374
1418  0092               L174:
1419                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1419                     ; 320                (uint8_t)TIM2_ICFilter);
1421  0092 7b0d          	ld	a,(OFST+11,sp)
1422  0094 88            	push	a
1423  0095 7b0b          	ld	a,(OFST+9,sp)
1424  0097 97            	ld	xl,a
1425  0098 7b09          	ld	a,(OFST+7,sp)
1426  009a 95            	ld	xh,a
1427  009b cd0000        	call	L5_TI2_Config
1429  009e 84            	pop	a
1430                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1432  009f 1e0b          	ldw	x,(OFST+9,sp)
1433  00a1 cd0000        	call	_TIM2_SetIC2Prescaler
1435                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1437  00a4 7b0d          	ld	a,(OFST+11,sp)
1438  00a6 88            	push	a
1439  00a7 7b03          	ld	a,(OFST+1,sp)
1440  00a9 97            	ld	xl,a
1441  00aa 7b02          	ld	a,(OFST+0,sp)
1442  00ac 95            	ld	xh,a
1443  00ad cd0000        	call	L3_TI1_Config
1445  00b0 84            	pop	a
1446                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1448  00b1 1e0b          	ldw	x,(OFST+9,sp)
1449  00b3 cd0000        	call	_TIM2_SetIC1Prescaler
1451  00b6               L374:
1452                     ; 331 }
1455  00b6 5b04          	addw	sp,#4
1456  00b8 81            	ret	
1457  00b9               LC005:
1458  00b9 89            	pushw	x
1459  00ba 5f            	clrw	x
1460  00bb 89            	pushw	x
1461  00bc ae0000        	ldw	x,#L702
1462  00bf cd0000        	call	_assert_failed
1464  00c2 5b04          	addw	sp,#4
1465  00c4 81            	ret	
1521                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1521                     ; 340 {
1522                     .text:	section	.text,new
1523  0000               _TIM2_Cmd:
1525  0000 89            	pushw	x
1526       00000000      OFST:	set	0
1529                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1531  0001 5d            	tnzw	x
1532  0002 2711          	jreq	L203
1533  0004 5a            	decw	x
1534  0005 270e          	jreq	L203
1535  0007 ae0156        	ldw	x,#342
1536  000a 89            	pushw	x
1537  000b 5f            	clrw	x
1538  000c 89            	pushw	x
1539  000d ae0000        	ldw	x,#L702
1540  0010 cd0000        	call	_assert_failed
1542  0013 5b04          	addw	sp,#4
1543  0015               L203:
1544                     ; 345   if (NewState != DISABLE)
1546  0015 1e01          	ldw	x,(OFST+1,sp)
1547  0017 2706          	jreq	L325
1548                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1550  0019 72105300      	bset	21248,#0
1552  001d 2004          	jra	L525
1553  001f               L325:
1554                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1556  001f 72115300      	bres	21248,#0
1557  0023               L525:
1558                     ; 353 }
1561  0023 85            	popw	x
1562  0024 81            	ret	
1642                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1642                     ; 369 {
1643                     .text:	section	.text,new
1644  0000               _TIM2_ITConfig:
1646  0000 89            	pushw	x
1647       00000000      OFST:	set	0
1650                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1652  0001 5d            	tnzw	x
1653  0002 2705          	jreq	L013
1654  0004 a30010        	cpw	x,#16
1655  0007 2f05          	jrslt	L213
1656  0009               L013:
1657  0009 ae0173        	ldw	x,#371
1658  000c ad22          	call	LC006
1659  000e               L213:
1660                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1662  000e 1e05          	ldw	x,(OFST+5,sp)
1663  0010 2708          	jreq	L223
1664  0012 5a            	decw	x
1665  0013 2705          	jreq	L223
1666  0015 ae0174        	ldw	x,#372
1667  0018 ad16          	call	LC006
1668  001a               L223:
1669                     ; 374   if (NewState != DISABLE)
1671  001a 1e05          	ldw	x,(OFST+5,sp)
1672  001c 2707          	jreq	L565
1673                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1675  001e c65303        	ld	a,21251
1676  0021 1a02          	or	a,(OFST+2,sp)
1678  0023 2006          	jra	L765
1679  0025               L565:
1680                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1682  0025 7b02          	ld	a,(OFST+2,sp)
1683  0027 43            	cpl	a
1684  0028 c45303        	and	a,21251
1685  002b               L765:
1686  002b c75303        	ld	21251,a
1687                     ; 384 }
1690  002e 85            	popw	x
1691  002f 81            	ret	
1692  0030               LC006:
1693  0030 89            	pushw	x
1694  0031 5f            	clrw	x
1695  0032 89            	pushw	x
1696  0033 ae0000        	ldw	x,#L702
1697  0036 cd0000        	call	_assert_failed
1699  0039 5b04          	addw	sp,#4
1700  003b 81            	ret	
1737                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1737                     ; 393 {
1738                     .text:	section	.text,new
1739  0000               _TIM2_UpdateDisableConfig:
1741  0000 89            	pushw	x
1742       00000000      OFST:	set	0
1745                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1747  0001 5d            	tnzw	x
1748  0002 2711          	jreq	L433
1749  0004 5a            	decw	x
1750  0005 270e          	jreq	L433
1751  0007 ae018b        	ldw	x,#395
1752  000a 89            	pushw	x
1753  000b 5f            	clrw	x
1754  000c 89            	pushw	x
1755  000d ae0000        	ldw	x,#L702
1756  0010 cd0000        	call	_assert_failed
1758  0013 5b04          	addw	sp,#4
1759  0015               L433:
1760                     ; 398   if (NewState != DISABLE)
1762  0015 1e01          	ldw	x,(OFST+1,sp)
1763  0017 2706          	jreq	L706
1764                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1766  0019 72125300      	bset	21248,#1
1768  001d 2004          	jra	L116
1769  001f               L706:
1770                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1772  001f 72135300      	bres	21248,#1
1773  0023               L116:
1774                     ; 406 }
1777  0023 85            	popw	x
1778  0024 81            	ret	
1837                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1837                     ; 417 {
1838                     .text:	section	.text,new
1839  0000               _TIM2_UpdateRequestConfig:
1841  0000 89            	pushw	x
1842       00000000      OFST:	set	0
1845                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1847  0001 5d            	tnzw	x
1848  0002 2711          	jreq	L643
1849  0004 5a            	decw	x
1850  0005 270e          	jreq	L643
1851  0007 ae01a3        	ldw	x,#419
1852  000a 89            	pushw	x
1853  000b 5f            	clrw	x
1854  000c 89            	pushw	x
1855  000d ae0000        	ldw	x,#L702
1856  0010 cd0000        	call	_assert_failed
1858  0013 5b04          	addw	sp,#4
1859  0015               L643:
1860                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1862  0015 1e01          	ldw	x,(OFST+1,sp)
1863  0017 2706          	jreq	L146
1864                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1866  0019 72145300      	bset	21248,#2
1868  001d 2004          	jra	L346
1869  001f               L146:
1870                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1872  001f 72155300      	bres	21248,#2
1873  0023               L346:
1874                     ; 430 }
1877  0023 85            	popw	x
1878  0024 81            	ret	
1936                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1936                     ; 441 {
1937                     .text:	section	.text,new
1938  0000               _TIM2_SelectOnePulseMode:
1940  0000 89            	pushw	x
1941       00000000      OFST:	set	0
1944                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1946  0001 a30001        	cpw	x,#1
1947  0004 2711          	jreq	L063
1948  0006 5d            	tnzw	x
1949  0007 270e          	jreq	L063
1950  0009 ae01bb        	ldw	x,#443
1951  000c 89            	pushw	x
1952  000d 5f            	clrw	x
1953  000e 89            	pushw	x
1954  000f ae0000        	ldw	x,#L702
1955  0012 cd0000        	call	_assert_failed
1957  0015 5b04          	addw	sp,#4
1958  0017               L063:
1959                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1961  0017 1e01          	ldw	x,(OFST+1,sp)
1962  0019 2706          	jreq	L376
1963                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1965  001b 72165300      	bset	21248,#3
1967  001f 2004          	jra	L576
1968  0021               L376:
1969                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1971  0021 72175300      	bres	21248,#3
1972  0025               L576:
1973                     ; 454 }
1976  0025 85            	popw	x
1977  0026 81            	ret	
2046                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2046                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2046                     ; 486 {
2047                     .text:	section	.text,new
2048  0000               _TIM2_PrescalerConfig:
2050  0000 89            	pushw	x
2051       00000000      OFST:	set	0
2054                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2056  0001 1e05          	ldw	x,(OFST+5,sp)
2057  0003 2708          	jreq	L273
2058  0005 5a            	decw	x
2059  0006 2705          	jreq	L273
2060  0008 ae01e8        	ldw	x,#488
2061  000b ad60          	call	LC007
2062  000d               L273:
2063                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2065  000d 1e01          	ldw	x,(OFST+1,sp)
2066  000f 2750          	jreq	L204
2067  0011 a30001        	cpw	x,#1
2068  0014 274b          	jreq	L204
2069  0016 a30002        	cpw	x,#2
2070  0019 2746          	jreq	L204
2071  001b a30003        	cpw	x,#3
2072  001e 2741          	jreq	L204
2073  0020 a30004        	cpw	x,#4
2074  0023 273c          	jreq	L204
2075  0025 a30005        	cpw	x,#5
2076  0028 2737          	jreq	L204
2077  002a a30006        	cpw	x,#6
2078  002d 2732          	jreq	L204
2079  002f a30007        	cpw	x,#7
2080  0032 272d          	jreq	L204
2081  0034 a30008        	cpw	x,#8
2082  0037 2728          	jreq	L204
2083  0039 a30009        	cpw	x,#9
2084  003c 2723          	jreq	L204
2085  003e a3000a        	cpw	x,#10
2086  0041 271e          	jreq	L204
2087  0043 a3000b        	cpw	x,#11
2088  0046 2719          	jreq	L204
2089  0048 a3000c        	cpw	x,#12
2090  004b 2714          	jreq	L204
2091  004d a3000d        	cpw	x,#13
2092  0050 270f          	jreq	L204
2093  0052 a3000e        	cpw	x,#14
2094  0055 270a          	jreq	L204
2095  0057 a3000f        	cpw	x,#15
2096  005a 2705          	jreq	L204
2097  005c ae01e9        	ldw	x,#489
2098  005f ad0c          	call	LC007
2099  0061               L204:
2100                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2102  0061 7b02          	ld	a,(OFST+2,sp)
2103  0063 c7530e        	ld	21262,a
2104                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2106  0066 7b06          	ld	a,(OFST+6,sp)
2107  0068 c75306        	ld	21254,a
2108                     ; 496 }
2111  006b 85            	popw	x
2112  006c 81            	ret	
2113  006d               LC007:
2114  006d 89            	pushw	x
2115  006e 5f            	clrw	x
2116  006f 89            	pushw	x
2117  0070 ae0000        	ldw	x,#L702
2118  0073 cd0000        	call	_assert_failed
2120  0076 5b04          	addw	sp,#4
2121  0078 81            	ret	
2180                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2180                     ; 508 {
2181                     .text:	section	.text,new
2182  0000               _TIM2_ForcedOC1Config:
2184  0000 89            	pushw	x
2185       00000000      OFST:	set	0
2188                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2190  0001 a30050        	cpw	x,#80
2191  0004 2713          	jreq	L414
2192  0006 a30040        	cpw	x,#64
2193  0009 270e          	jreq	L414
2194  000b ae01fe        	ldw	x,#510
2195  000e 89            	pushw	x
2196  000f 5f            	clrw	x
2197  0010 89            	pushw	x
2198  0011 ae0000        	ldw	x,#L702
2199  0014 cd0000        	call	_assert_failed
2201  0017 5b04          	addw	sp,#4
2202  0019               L414:
2203                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2203                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2205  0019 c65307        	ld	a,21255
2206  001c a48f          	and	a,#143
2207  001e 1a02          	or	a,(OFST+2,sp)
2208  0020 c75307        	ld	21255,a
2209                     ; 515 }
2212  0023 85            	popw	x
2213  0024 81            	ret	
2250                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2250                     ; 527 {
2251                     .text:	section	.text,new
2252  0000               _TIM2_ForcedOC2Config:
2254  0000 89            	pushw	x
2255       00000000      OFST:	set	0
2258                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2260  0001 a30050        	cpw	x,#80
2261  0004 2713          	jreq	L624
2262  0006 a30040        	cpw	x,#64
2263  0009 270e          	jreq	L624
2264  000b ae0211        	ldw	x,#529
2265  000e 89            	pushw	x
2266  000f 5f            	clrw	x
2267  0010 89            	pushw	x
2268  0011 ae0000        	ldw	x,#L702
2269  0014 cd0000        	call	_assert_failed
2271  0017 5b04          	addw	sp,#4
2272  0019               L624:
2273                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2273                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2275  0019 c65308        	ld	a,21256
2276  001c a48f          	and	a,#143
2277  001e 1a02          	or	a,(OFST+2,sp)
2278  0020 c75308        	ld	21256,a
2279                     ; 534 }
2282  0023 85            	popw	x
2283  0024 81            	ret	
2320                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2320                     ; 546 {
2321                     .text:	section	.text,new
2322  0000               _TIM2_ForcedOC3Config:
2324  0000 89            	pushw	x
2325       00000000      OFST:	set	0
2328                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2330  0001 a30050        	cpw	x,#80
2331  0004 2713          	jreq	L044
2332  0006 a30040        	cpw	x,#64
2333  0009 270e          	jreq	L044
2334  000b ae0224        	ldw	x,#548
2335  000e 89            	pushw	x
2336  000f 5f            	clrw	x
2337  0010 89            	pushw	x
2338  0011 ae0000        	ldw	x,#L702
2339  0014 cd0000        	call	_assert_failed
2341  0017 5b04          	addw	sp,#4
2342  0019               L044:
2343                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2343                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2345  0019 c65309        	ld	a,21257
2346  001c a48f          	and	a,#143
2347  001e 1a02          	or	a,(OFST+2,sp)
2348  0020 c75309        	ld	21257,a
2349                     ; 553 }
2352  0023 85            	popw	x
2353  0024 81            	ret	
2390                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2390                     ; 562 {
2391                     .text:	section	.text,new
2392  0000               _TIM2_ARRPreloadConfig:
2394  0000 89            	pushw	x
2395       00000000      OFST:	set	0
2398                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2400  0001 5d            	tnzw	x
2401  0002 2711          	jreq	L254
2402  0004 5a            	decw	x
2403  0005 270e          	jreq	L254
2404  0007 ae0234        	ldw	x,#564
2405  000a 89            	pushw	x
2406  000b 5f            	clrw	x
2407  000c 89            	pushw	x
2408  000d ae0000        	ldw	x,#L702
2409  0010 cd0000        	call	_assert_failed
2411  0013 5b04          	addw	sp,#4
2412  0015               L254:
2413                     ; 567   if (NewState != DISABLE)
2415  0015 1e01          	ldw	x,(OFST+1,sp)
2416  0017 2706          	jreq	L1301
2417                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2419  0019 721e5300      	bset	21248,#7
2421  001d 2004          	jra	L3301
2422  001f               L1301:
2423                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2425  001f 721f5300      	bres	21248,#7
2426  0023               L3301:
2427                     ; 575 }
2430  0023 85            	popw	x
2431  0024 81            	ret	
2468                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2468                     ; 584 {
2469                     .text:	section	.text,new
2470  0000               _TIM2_OC1PreloadConfig:
2472  0000 89            	pushw	x
2473       00000000      OFST:	set	0
2476                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2478  0001 5d            	tnzw	x
2479  0002 2711          	jreq	L464
2480  0004 5a            	decw	x
2481  0005 270e          	jreq	L464
2482  0007 ae024a        	ldw	x,#586
2483  000a 89            	pushw	x
2484  000b 5f            	clrw	x
2485  000c 89            	pushw	x
2486  000d ae0000        	ldw	x,#L702
2487  0010 cd0000        	call	_assert_failed
2489  0013 5b04          	addw	sp,#4
2490  0015               L464:
2491                     ; 589   if (NewState != DISABLE)
2493  0015 1e01          	ldw	x,(OFST+1,sp)
2494  0017 2706          	jreq	L3501
2495                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2497  0019 72165307      	bset	21255,#3
2499  001d 2004          	jra	L5501
2500  001f               L3501:
2501                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2503  001f 72175307      	bres	21255,#3
2504  0023               L5501:
2505                     ; 597 }
2508  0023 85            	popw	x
2509  0024 81            	ret	
2546                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2546                     ; 606 {
2547                     .text:	section	.text,new
2548  0000               _TIM2_OC2PreloadConfig:
2550  0000 89            	pushw	x
2551       00000000      OFST:	set	0
2554                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2556  0001 5d            	tnzw	x
2557  0002 2711          	jreq	L674
2558  0004 5a            	decw	x
2559  0005 270e          	jreq	L674
2560  0007 ae0260        	ldw	x,#608
2561  000a 89            	pushw	x
2562  000b 5f            	clrw	x
2563  000c 89            	pushw	x
2564  000d ae0000        	ldw	x,#L702
2565  0010 cd0000        	call	_assert_failed
2567  0013 5b04          	addw	sp,#4
2568  0015               L674:
2569                     ; 611   if (NewState != DISABLE)
2571  0015 1e01          	ldw	x,(OFST+1,sp)
2572  0017 2706          	jreq	L5701
2573                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2575  0019 72165308      	bset	21256,#3
2577  001d 2004          	jra	L7701
2578  001f               L5701:
2579                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2581  001f 72175308      	bres	21256,#3
2582  0023               L7701:
2583                     ; 619 }
2586  0023 85            	popw	x
2587  0024 81            	ret	
2624                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2624                     ; 628 {
2625                     .text:	section	.text,new
2626  0000               _TIM2_OC3PreloadConfig:
2628  0000 89            	pushw	x
2629       00000000      OFST:	set	0
2632                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2634  0001 5d            	tnzw	x
2635  0002 2711          	jreq	L015
2636  0004 5a            	decw	x
2637  0005 270e          	jreq	L015
2638  0007 ae0276        	ldw	x,#630
2639  000a 89            	pushw	x
2640  000b 5f            	clrw	x
2641  000c 89            	pushw	x
2642  000d ae0000        	ldw	x,#L702
2643  0010 cd0000        	call	_assert_failed
2645  0013 5b04          	addw	sp,#4
2646  0015               L015:
2647                     ; 633   if (NewState != DISABLE)
2649  0015 1e01          	ldw	x,(OFST+1,sp)
2650  0017 2706          	jreq	L7111
2651                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2653  0019 72165309      	bset	21257,#3
2655  001d 2004          	jra	L1211
2656  001f               L7111:
2657                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2659  001f 72175309      	bres	21257,#3
2660  0023               L1211:
2661                     ; 641 }
2664  0023 85            	popw	x
2665  0024 81            	ret	
2739                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2739                     ; 654 {
2740                     .text:	section	.text,new
2741  0000               _TIM2_GenerateEvent:
2743  0000 89            	pushw	x
2744       00000000      OFST:	set	0
2747                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2749  0001 5d            	tnzw	x
2750  0002 260e          	jrne	L025
2751  0004 ae0290        	ldw	x,#656
2752  0007 89            	pushw	x
2753  0008 5f            	clrw	x
2754  0009 89            	pushw	x
2755  000a ae0000        	ldw	x,#L702
2756  000d cd0000        	call	_assert_failed
2758  0010 5b04          	addw	sp,#4
2759  0012               L025:
2760                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2762  0012 7b02          	ld	a,(OFST+2,sp)
2763  0014 c75306        	ld	21254,a
2764                     ; 660 }
2767  0017 85            	popw	x
2768  0018 81            	ret	
2805                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2805                     ; 671 {
2806                     .text:	section	.text,new
2807  0000               _TIM2_OC1PolarityConfig:
2809  0000 89            	pushw	x
2810       00000000      OFST:	set	0
2813                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2815  0001 5d            	tnzw	x
2816  0002 2713          	jreq	L235
2817  0004 a30022        	cpw	x,#34
2818  0007 270e          	jreq	L235
2819  0009 ae02a1        	ldw	x,#673
2820  000c 89            	pushw	x
2821  000d 5f            	clrw	x
2822  000e 89            	pushw	x
2823  000f ae0000        	ldw	x,#L702
2824  0012 cd0000        	call	_assert_failed
2826  0015 5b04          	addw	sp,#4
2827  0017               L235:
2828                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2830  0017 1e01          	ldw	x,(OFST+1,sp)
2831  0019 2706          	jreq	L3711
2832                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2834  001b 7212530a      	bset	21258,#1
2836  001f 2004          	jra	L5711
2837  0021               L3711:
2838                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2840  0021 7213530a      	bres	21258,#1
2841  0025               L5711:
2842                     ; 684 }
2845  0025 85            	popw	x
2846  0026 81            	ret	
2883                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2883                     ; 695 {
2884                     .text:	section	.text,new
2885  0000               _TIM2_OC2PolarityConfig:
2887  0000 89            	pushw	x
2888       00000000      OFST:	set	0
2891                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2893  0001 5d            	tnzw	x
2894  0002 2713          	jreq	L445
2895  0004 a30022        	cpw	x,#34
2896  0007 270e          	jreq	L445
2897  0009 ae02b9        	ldw	x,#697
2898  000c 89            	pushw	x
2899  000d 5f            	clrw	x
2900  000e 89            	pushw	x
2901  000f ae0000        	ldw	x,#L702
2902  0012 cd0000        	call	_assert_failed
2904  0015 5b04          	addw	sp,#4
2905  0017               L445:
2906                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2908  0017 1e01          	ldw	x,(OFST+1,sp)
2909  0019 2706          	jreq	L5121
2910                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2912  001b 721a530a      	bset	21258,#5
2914  001f 2004          	jra	L7121
2915  0021               L5121:
2916                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2918  0021 721b530a      	bres	21258,#5
2919  0025               L7121:
2920                     ; 708 }
2923  0025 85            	popw	x
2924  0026 81            	ret	
2961                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2961                     ; 719 {
2962                     .text:	section	.text,new
2963  0000               _TIM2_OC3PolarityConfig:
2965  0000 89            	pushw	x
2966       00000000      OFST:	set	0
2969                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2971  0001 5d            	tnzw	x
2972  0002 2713          	jreq	L655
2973  0004 a30022        	cpw	x,#34
2974  0007 270e          	jreq	L655
2975  0009 ae02d1        	ldw	x,#721
2976  000c 89            	pushw	x
2977  000d 5f            	clrw	x
2978  000e 89            	pushw	x
2979  000f ae0000        	ldw	x,#L702
2980  0012 cd0000        	call	_assert_failed
2982  0015 5b04          	addw	sp,#4
2983  0017               L655:
2984                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2986  0017 1e01          	ldw	x,(OFST+1,sp)
2987  0019 2706          	jreq	L7321
2988                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2990  001b 7212530b      	bset	21259,#1
2992  001f 2004          	jra	L1421
2993  0021               L7321:
2994                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2996  0021 7213530b      	bres	21259,#1
2997  0025               L1421:
2998                     ; 732 }
3001  0025 85            	popw	x
3002  0026 81            	ret	
3048                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3048                     ; 746 {
3049                     .text:	section	.text,new
3050  0000               _TIM2_CCxCmd:
3052  0000 89            	pushw	x
3053       00000000      OFST:	set	0
3056                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3058  0001 5d            	tnzw	x
3059  0002 270f          	jreq	L075
3060  0004 a30001        	cpw	x,#1
3061  0007 270a          	jreq	L075
3062  0009 a30002        	cpw	x,#2
3063  000c 2705          	jreq	L075
3064  000e ae02ec        	ldw	x,#748
3065  0011 ad43          	call	LC008
3066  0013               L075:
3067                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3069  0013 1e05          	ldw	x,(OFST+5,sp)
3070  0015 2708          	jreq	L006
3071  0017 5a            	decw	x
3072  0018 2705          	jreq	L006
3073  001a ae02ed        	ldw	x,#749
3074  001d ad37          	call	LC008
3075  001f               L006:
3076                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3078  001f 1e01          	ldw	x,(OFST+1,sp)
3079  0021 2610          	jrne	L5621
3080                     ; 754     if (NewState != DISABLE)
3082  0023 1e05          	ldw	x,(OFST+5,sp)
3083  0025 2706          	jreq	L7621
3084                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3086  0027 7210530a      	bset	21258,#0
3088  002b 2027          	jra	L3721
3089  002d               L7621:
3090                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3092  002d 7211530a      	bres	21258,#0
3093  0031 2021          	jra	L3721
3094  0033               L5621:
3095                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3097  0033 5a            	decw	x
3098  0034 2610          	jrne	L5721
3099                     ; 767     if (NewState != DISABLE)
3101  0036 1e05          	ldw	x,(OFST+5,sp)
3102  0038 2706          	jreq	L7721
3103                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3105  003a 7218530a      	bset	21258,#4
3107  003e 2014          	jra	L3721
3108  0040               L7721:
3109                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3111  0040 7219530a      	bres	21258,#4
3112  0044 200e          	jra	L3721
3113  0046               L5721:
3114                     ; 779     if (NewState != DISABLE)
3116  0046 1e05          	ldw	x,(OFST+5,sp)
3117  0048 2706          	jreq	L5031
3118                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3120  004a 7210530b      	bset	21259,#0
3122  004e 2004          	jra	L3721
3123  0050               L5031:
3124                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3126  0050 7211530b      	bres	21259,#0
3127  0054               L3721:
3128                     ; 788 }
3131  0054 85            	popw	x
3132  0055 81            	ret	
3133  0056               LC008:
3134  0056 89            	pushw	x
3135  0057 5f            	clrw	x
3136  0058 89            	pushw	x
3137  0059 ae0000        	ldw	x,#L702
3138  005c cd0000        	call	_assert_failed
3140  005f 5b04          	addw	sp,#4
3141  0061 81            	ret	
3187                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3187                     ; 811 {
3188                     .text:	section	.text,new
3189  0000               _TIM2_SelectOCxM:
3191  0000 89            	pushw	x
3192       00000000      OFST:	set	0
3195                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3197  0001 5d            	tnzw	x
3198  0002 270f          	jreq	L216
3199  0004 a30001        	cpw	x,#1
3200  0007 270a          	jreq	L216
3201  0009 a30002        	cpw	x,#2
3202  000c 2705          	jreq	L216
3203  000e ae032d        	ldw	x,#813
3204  0011 ad63          	call	LC009
3205  0013               L216:
3206                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3208  0013 1e05          	ldw	x,(OFST+5,sp)
3209  0015 2728          	jreq	L226
3210  0017 a30010        	cpw	x,#16
3211  001a 2723          	jreq	L226
3212  001c a30020        	cpw	x,#32
3213  001f 271e          	jreq	L226
3214  0021 a30030        	cpw	x,#48
3215  0024 2719          	jreq	L226
3216  0026 a30060        	cpw	x,#96
3217  0029 2714          	jreq	L226
3218  002b a30070        	cpw	x,#112
3219  002e 270f          	jreq	L226
3220  0030 a30050        	cpw	x,#80
3221  0033 270a          	jreq	L226
3222  0035 a30040        	cpw	x,#64
3223  0038 2705          	jreq	L226
3224  003a ae032e        	ldw	x,#814
3225  003d ad37          	call	LC009
3226  003f               L226:
3227                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3229  003f 1e01          	ldw	x,(OFST+1,sp)
3230  0041 2610          	jrne	L3331
3231                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3233  0043 7211530a      	bres	21258,#0
3234                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3234                     ; 823                             | (uint8_t)TIM2_OCMode);
3236  0047 c65307        	ld	a,21255
3237  004a a48f          	and	a,#143
3238  004c 1a06          	or	a,(OFST+6,sp)
3239  004e c75307        	ld	21255,a
3241  0051 2021          	jra	L5331
3242  0053               L3331:
3243                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3245  0053 5a            	decw	x
3246  0054 2610          	jrne	L7331
3247                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3249  0056 7219530a      	bres	21258,#4
3250                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3250                     ; 832                             | (uint8_t)TIM2_OCMode);
3252  005a c65308        	ld	a,21256
3253  005d a48f          	and	a,#143
3254  005f 1a06          	or	a,(OFST+6,sp)
3255  0061 c75308        	ld	21256,a
3257  0064 200e          	jra	L5331
3258  0066               L7331:
3259                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3261  0066 7211530b      	bres	21259,#0
3262                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3262                     ; 841                             | (uint8_t)TIM2_OCMode);
3264  006a c65309        	ld	a,21257
3265  006d a48f          	and	a,#143
3266  006f 1a06          	or	a,(OFST+6,sp)
3267  0071 c75309        	ld	21257,a
3268  0074               L5331:
3269                     ; 843 }
3272  0074 85            	popw	x
3273  0075 81            	ret	
3274  0076               LC009:
3275  0076 89            	pushw	x
3276  0077 5f            	clrw	x
3277  0078 89            	pushw	x
3278  0079 ae0000        	ldw	x,#L702
3279  007c cd0000        	call	_assert_failed
3281  007f 5b04          	addw	sp,#4
3282  0081 81            	ret	
3316                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3316                     ; 852 {
3317                     .text:	section	.text,new
3318  0000               _TIM2_SetCounter:
3322                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3324  0000 9e            	ld	a,xh
3325  0001 c7530c        	ld	21260,a
3326                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3328  0004 9f            	ld	a,xl
3329  0005 c7530d        	ld	21261,a
3330                     ; 856 }
3333  0008 81            	ret	
3367                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3367                     ; 865 {
3368                     .text:	section	.text,new
3369  0000               _TIM2_SetAutoreload:
3373                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3375  0000 9e            	ld	a,xh
3376  0001 c7530f        	ld	21263,a
3377                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3379  0004 9f            	ld	a,xl
3380  0005 c75310        	ld	21264,a
3381                     ; 869 }
3384  0008 81            	ret	
3418                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3418                     ; 878 {
3419                     .text:	section	.text,new
3420  0000               _TIM2_SetCompare1:
3424                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3426  0000 9e            	ld	a,xh
3427  0001 c75311        	ld	21265,a
3428                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3430  0004 9f            	ld	a,xl
3431  0005 c75312        	ld	21266,a
3432                     ; 882 }
3435  0008 81            	ret	
3469                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3469                     ; 891 {
3470                     .text:	section	.text,new
3471  0000               _TIM2_SetCompare2:
3475                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3477  0000 9e            	ld	a,xh
3478  0001 c75313        	ld	21267,a
3479                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3481  0004 9f            	ld	a,xl
3482  0005 c75314        	ld	21268,a
3483                     ; 895 }
3486  0008 81            	ret	
3520                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3520                     ; 904 {
3521                     .text:	section	.text,new
3522  0000               _TIM2_SetCompare3:
3526                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3528  0000 9e            	ld	a,xh
3529  0001 c75315        	ld	21269,a
3530                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3532  0004 9f            	ld	a,xl
3533  0005 c75316        	ld	21270,a
3534                     ; 908 }
3537  0008 81            	ret	
3574                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3574                     ; 921 {
3575                     .text:	section	.text,new
3576  0000               _TIM2_SetIC1Prescaler:
3578  0000 89            	pushw	x
3579       00000000      OFST:	set	0
3582                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3584  0001 5d            	tnzw	x
3585  0002 271d          	jreq	L646
3586  0004 a30004        	cpw	x,#4
3587  0007 2718          	jreq	L646
3588  0009 a30008        	cpw	x,#8
3589  000c 2713          	jreq	L646
3590  000e a3000c        	cpw	x,#12
3591  0011 270e          	jreq	L646
3592  0013 ae039b        	ldw	x,#923
3593  0016 89            	pushw	x
3594  0017 5f            	clrw	x
3595  0018 89            	pushw	x
3596  0019 ae0000        	ldw	x,#L702
3597  001c cd0000        	call	_assert_failed
3599  001f 5b04          	addw	sp,#4
3600  0021               L646:
3601                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3601                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3603  0021 c65307        	ld	a,21255
3604  0024 a4f3          	and	a,#243
3605  0026 1a02          	or	a,(OFST+2,sp)
3606  0028 c75307        	ld	21255,a
3607                     ; 928 }
3610  002b 85            	popw	x
3611  002c 81            	ret	
3648                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3648                     ; 941 {
3649                     .text:	section	.text,new
3650  0000               _TIM2_SetIC2Prescaler:
3652  0000 89            	pushw	x
3653       00000000      OFST:	set	0
3656                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3658  0001 5d            	tnzw	x
3659  0002 271d          	jreq	L066
3660  0004 a30004        	cpw	x,#4
3661  0007 2718          	jreq	L066
3662  0009 a30008        	cpw	x,#8
3663  000c 2713          	jreq	L066
3664  000e a3000c        	cpw	x,#12
3665  0011 270e          	jreq	L066
3666  0013 ae03af        	ldw	x,#943
3667  0016 89            	pushw	x
3668  0017 5f            	clrw	x
3669  0018 89            	pushw	x
3670  0019 ae0000        	ldw	x,#L702
3671  001c cd0000        	call	_assert_failed
3673  001f 5b04          	addw	sp,#4
3674  0021               L066:
3675                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3675                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3677  0021 c65308        	ld	a,21256
3678  0024 a4f3          	and	a,#243
3679  0026 1a02          	or	a,(OFST+2,sp)
3680  0028 c75308        	ld	21256,a
3681                     ; 948 }
3684  002b 85            	popw	x
3685  002c 81            	ret	
3722                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3722                     ; 961 {
3723                     .text:	section	.text,new
3724  0000               _TIM2_SetIC3Prescaler:
3726  0000 89            	pushw	x
3727       00000000      OFST:	set	0
3730                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3732  0001 5d            	tnzw	x
3733  0002 271d          	jreq	L276
3734  0004 a30004        	cpw	x,#4
3735  0007 2718          	jreq	L276
3736  0009 a30008        	cpw	x,#8
3737  000c 2713          	jreq	L276
3738  000e a3000c        	cpw	x,#12
3739  0011 270e          	jreq	L276
3740  0013 ae03c4        	ldw	x,#964
3741  0016 89            	pushw	x
3742  0017 5f            	clrw	x
3743  0018 89            	pushw	x
3744  0019 ae0000        	ldw	x,#L702
3745  001c cd0000        	call	_assert_failed
3747  001f 5b04          	addw	sp,#4
3748  0021               L276:
3749                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3749                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3751  0021 c65309        	ld	a,21257
3752  0024 a4f3          	and	a,#243
3753  0026 1a02          	or	a,(OFST+2,sp)
3754  0028 c75309        	ld	21257,a
3755                     ; 968 }
3758  002b 85            	popw	x
3759  002c 81            	ret	
3811                     ; 975 uint16_t TIM2_GetCapture1(void)
3811                     ; 976 {
3812                     .text:	section	.text,new
3813  0000               _TIM2_GetCapture1:
3815  0000 5204          	subw	sp,#4
3816       00000004      OFST:	set	4
3819                     ; 978   uint16_t tmpccr1 = 0;
3821                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3825                     ; 981   tmpccr1h = TIM2->CCR1H;
3827  0002 c65311        	ld	a,21265
3828  0005 6b02          	ld	(OFST-2,sp),a
3829                     ; 982   tmpccr1l = TIM2->CCR1L;
3831  0007 c65312        	ld	a,21266
3832  000a 6b01          	ld	(OFST-3,sp),a
3833                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3835  000c 5f            	clrw	x
3836  000d 97            	ld	xl,a
3837  000e 1f03          	ldw	(OFST-1,sp),x
3838                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3840  0010 5f            	clrw	x
3841  0011 7b02          	ld	a,(OFST-2,sp)
3842  0013 97            	ld	xl,a
3843  0014 7b04          	ld	a,(OFST+0,sp)
3844  0016 01            	rrwa	x,a
3845  0017 1a03          	or	a,(OFST-1,sp)
3846  0019 01            	rrwa	x,a
3847                     ; 987   return (uint16_t)tmpccr1;
3851  001a 5b04          	addw	sp,#4
3852  001c 81            	ret	
3904                     ; 995 uint16_t TIM2_GetCapture2(void)
3904                     ; 996 {
3905                     .text:	section	.text,new
3906  0000               _TIM2_GetCapture2:
3908  0000 5204          	subw	sp,#4
3909       00000004      OFST:	set	4
3912                     ; 998   uint16_t tmpccr2 = 0;
3914                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3918                     ; 1001   tmpccr2h = TIM2->CCR2H;
3920  0002 c65313        	ld	a,21267
3921  0005 6b02          	ld	(OFST-2,sp),a
3922                     ; 1002   tmpccr2l = TIM2->CCR2L;
3924  0007 c65314        	ld	a,21268
3925  000a 6b01          	ld	(OFST-3,sp),a
3926                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3928  000c 5f            	clrw	x
3929  000d 97            	ld	xl,a
3930  000e 1f03          	ldw	(OFST-1,sp),x
3931                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3933  0010 5f            	clrw	x
3934  0011 7b02          	ld	a,(OFST-2,sp)
3935  0013 97            	ld	xl,a
3936  0014 7b04          	ld	a,(OFST+0,sp)
3937  0016 01            	rrwa	x,a
3938  0017 1a03          	or	a,(OFST-1,sp)
3939  0019 01            	rrwa	x,a
3940                     ; 1007   return (uint16_t)tmpccr2;
3944  001a 5b04          	addw	sp,#4
3945  001c 81            	ret	
3997                     ; 1015 uint16_t TIM2_GetCapture3(void)
3997                     ; 1016 {
3998                     .text:	section	.text,new
3999  0000               _TIM2_GetCapture3:
4001  0000 5204          	subw	sp,#4
4002       00000004      OFST:	set	4
4005                     ; 1018   uint16_t tmpccr3 = 0;
4007                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4011                     ; 1021   tmpccr3h = TIM2->CCR3H;
4013  0002 c65315        	ld	a,21269
4014  0005 6b02          	ld	(OFST-2,sp),a
4015                     ; 1022   tmpccr3l = TIM2->CCR3L;
4017  0007 c65316        	ld	a,21270
4018  000a 6b01          	ld	(OFST-3,sp),a
4019                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4021  000c 5f            	clrw	x
4022  000d 97            	ld	xl,a
4023  000e 1f03          	ldw	(OFST-1,sp),x
4024                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4026  0010 5f            	clrw	x
4027  0011 7b02          	ld	a,(OFST-2,sp)
4028  0013 97            	ld	xl,a
4029  0014 7b04          	ld	a,(OFST+0,sp)
4030  0016 01            	rrwa	x,a
4031  0017 1a03          	or	a,(OFST-1,sp)
4032  0019 01            	rrwa	x,a
4033                     ; 1027   return (uint16_t)tmpccr3;
4037  001a 5b04          	addw	sp,#4
4038  001c 81            	ret	
4072                     ; 1035 uint16_t TIM2_GetCounter(void)
4072                     ; 1036 {
4073                     .text:	section	.text,new
4074  0000               _TIM2_GetCounter:
4076  0000 89            	pushw	x
4077       00000002      OFST:	set	2
4080                     ; 1037   uint16_t tmpcntr = 0;
4082                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4084  0001 c6530c        	ld	a,21260
4085  0004 97            	ld	xl,a
4086  0005 4f            	clr	a
4087  0006 02            	rlwa	x,a
4088  0007 1f01          	ldw	(OFST-1,sp),x
4089                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4091  0009 5f            	clrw	x
4092  000a c6530d        	ld	a,21261
4093  000d 97            	ld	xl,a
4094  000e 01            	rrwa	x,a
4095  000f 1a02          	or	a,(OFST+0,sp)
4096  0011 01            	rrwa	x,a
4097  0012 1a01          	or	a,(OFST-1,sp)
4098  0014 01            	rrwa	x,a
4101  0015 5b02          	addw	sp,#2
4102  0017 81            	ret	
4126                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4126                     ; 1050 {
4127                     .text:	section	.text,new
4128  0000               _TIM2_GetPrescaler:
4132                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4134  0000 c6530e        	ld	a,21262
4135  0003 5f            	clrw	x
4136  0004 97            	ld	xl,a
4139  0005 81            	ret	
4279                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4279                     ; 1069 {
4280                     .text:	section	.text,new
4281  0000               _TIM2_GetFlagStatus:
4283  0000 89            	pushw	x
4284  0001 5204          	subw	sp,#4
4285       00000004      OFST:	set	4
4288                     ; 1070   FlagStatus bitstatus = RESET;
4290                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4294                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4296  0003 a30001        	cpw	x,#1
4297  0006 272c          	jreq	L617
4298  0008 a30002        	cpw	x,#2
4299  000b 2727          	jreq	L617
4300  000d a30004        	cpw	x,#4
4301  0010 2722          	jreq	L617
4302  0012 a30008        	cpw	x,#8
4303  0015 271d          	jreq	L617
4304  0017 a30200        	cpw	x,#512
4305  001a 2718          	jreq	L617
4306  001c a30400        	cpw	x,#1024
4307  001f 2713          	jreq	L617
4308  0021 a30800        	cpw	x,#2048
4309  0024 270e          	jreq	L617
4310  0026 ae0432        	ldw	x,#1074
4311  0029 89            	pushw	x
4312  002a 5f            	clrw	x
4313  002b 89            	pushw	x
4314  002c ae0000        	ldw	x,#L702
4315  002f cd0000        	call	_assert_failed
4317  0032 5b04          	addw	sp,#4
4318  0034               L617:
4319                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4321  0034 c65304        	ld	a,21252
4322  0037 1406          	and	a,(OFST+2,sp)
4323  0039 6b01          	ld	(OFST-3,sp),a
4324                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4326  003b 4f            	clr	a
4327  003c 1e05          	ldw	x,(OFST+1,sp)
4328  003e 01            	rrwa	x,a
4329  003f 9f            	ld	a,xl
4330  0040 6b02          	ld	(OFST-2,sp),a
4331                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4333  0042 c45305        	and	a,21253
4334  0045 1a01          	or	a,(OFST-3,sp)
4335  0047 2705          	jreq	L7371
4336                     ; 1081     bitstatus = SET;
4338  0049 ae0001        	ldw	x,#1
4340  004c 2001          	jra	L1471
4341  004e               L7371:
4342                     ; 1085     bitstatus = RESET;
4344  004e 5f            	clrw	x
4345  004f               L1471:
4346                     ; 1087   return (FlagStatus)bitstatus;
4350  004f 5b06          	addw	sp,#6
4351  0051 81            	ret	
4387                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4387                     ; 1104 {
4388                     .text:	section	.text,new
4389  0000               _TIM2_ClearFlag:
4391  0000 89            	pushw	x
4392       00000000      OFST:	set	0
4395                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4397  0001 01            	rrwa	x,a
4398  0002 a4f0          	and	a,#240
4399  0004 01            	rrwa	x,a
4400  0005 a4f1          	and	a,#241
4401  0007 01            	rrwa	x,a
4402  0008 5d            	tnzw	x
4403  0009 2604          	jrne	L427
4404  000b 1e01          	ldw	x,(OFST+1,sp)
4405  000d 260e          	jrne	L627
4406  000f               L427:
4407  000f ae0452        	ldw	x,#1106
4408  0012 89            	pushw	x
4409  0013 5f            	clrw	x
4410  0014 89            	pushw	x
4411  0015 ae0000        	ldw	x,#L702
4412  0018 cd0000        	call	_assert_failed
4414  001b 5b04          	addw	sp,#4
4415  001d               L627:
4416                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4418  001d 7b02          	ld	a,(OFST+2,sp)
4419  001f 43            	cpl	a
4420  0020 c75304        	ld	21252,a
4421                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4423  0023 35ff5305      	mov	21253,#255
4424                     ; 1111 }
4427  0027 85            	popw	x
4428  0028 81            	ret	
4493                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4493                     ; 1124 {
4494                     .text:	section	.text,new
4495  0000               _TIM2_GetITStatus:
4497  0000 89            	pushw	x
4498  0001 5204          	subw	sp,#4
4499       00000004      OFST:	set	4
4502                     ; 1125   ITStatus bitstatus = RESET;
4504                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4508                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4510  0003 a30001        	cpw	x,#1
4511  0006 271d          	jreq	L047
4512  0008 a30002        	cpw	x,#2
4513  000b 2718          	jreq	L047
4514  000d a30004        	cpw	x,#4
4515  0010 2713          	jreq	L047
4516  0012 a30008        	cpw	x,#8
4517  0015 270e          	jreq	L047
4518  0017 ae0469        	ldw	x,#1129
4519  001a 89            	pushw	x
4520  001b 5f            	clrw	x
4521  001c 89            	pushw	x
4522  001d ae0000        	ldw	x,#L702
4523  0020 cd0000        	call	_assert_failed
4525  0023 5b04          	addw	sp,#4
4526  0025               L047:
4527                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4529  0025 c65304        	ld	a,21252
4530  0028 1406          	and	a,(OFST+2,sp)
4531  002a 6b01          	ld	(OFST-3,sp),a
4532                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4534  002c c65303        	ld	a,21251
4535  002f 1406          	and	a,(OFST+2,sp)
4536  0031 6b02          	ld	(OFST-2,sp),a
4537                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4539  0033 7b01          	ld	a,(OFST-3,sp)
4540  0035 2709          	jreq	L3102
4542  0037 7b02          	ld	a,(OFST-2,sp)
4543  0039 2705          	jreq	L3102
4544                     ; 1137     bitstatus = SET;
4546  003b ae0001        	ldw	x,#1
4548  003e 2001          	jra	L5102
4549  0040               L3102:
4550                     ; 1141     bitstatus = RESET;
4552  0040 5f            	clrw	x
4553  0041               L5102:
4554                     ; 1143   return (ITStatus)(bitstatus);
4558  0041 5b06          	addw	sp,#6
4559  0043 81            	ret	
4596                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4596                     ; 1157 {
4597                     .text:	section	.text,new
4598  0000               _TIM2_ClearITPendingBit:
4600  0000 89            	pushw	x
4601       00000000      OFST:	set	0
4604                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4606  0001 5d            	tnzw	x
4607  0002 2705          	jreq	L647
4608  0004 a30010        	cpw	x,#16
4609  0007 2f0e          	jrslt	L057
4610  0009               L647:
4611  0009 ae0487        	ldw	x,#1159
4612  000c 89            	pushw	x
4613  000d 5f            	clrw	x
4614  000e 89            	pushw	x
4615  000f ae0000        	ldw	x,#L702
4616  0012 cd0000        	call	_assert_failed
4618  0015 5b04          	addw	sp,#4
4619  0017               L057:
4620                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4622  0017 7b02          	ld	a,(OFST+2,sp)
4623  0019 43            	cpl	a
4624  001a c75304        	ld	21252,a
4625                     ; 1163 }
4628  001d 85            	popw	x
4629  001e 81            	ret	
4681                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4681                     ; 1182                        uint8_t TIM2_ICSelection,
4681                     ; 1183                        uint8_t TIM2_ICFilter)
4681                     ; 1184 {
4682                     .text:	section	.text,new
4683  0000               L3_TI1_Config:
4685  0000 89            	pushw	x
4686       00000001      OFST:	set	1
4689                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4691  0001 7211530a      	bres	21258,#0
4692  0005 88            	push	a
4693                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4693                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4695  0006 7b06          	ld	a,(OFST+5,sp)
4696  0008 97            	ld	xl,a
4697  0009 a610          	ld	a,#16
4698  000b 42            	mul	x,a
4699  000c 9f            	ld	a,xl
4700  000d 1a03          	or	a,(OFST+2,sp)
4701  000f 6b01          	ld	(OFST+0,sp),a
4702  0011 c65307        	ld	a,21255
4703  0014 a40c          	and	a,#12
4704  0016 1a01          	or	a,(OFST+0,sp)
4705  0018 c75307        	ld	21255,a
4706                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4708  001b 7b02          	ld	a,(OFST+1,sp)
4709  001d 2706          	jreq	L3602
4710                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4712  001f 7212530a      	bset	21258,#1
4714  0023 2004          	jra	L5602
4715  0025               L3602:
4716                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4718  0025 7213530a      	bres	21258,#1
4719  0029               L5602:
4720                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4722  0029 7210530a      	bset	21258,#0
4723                     ; 1203 }
4726  002d 5b03          	addw	sp,#3
4727  002f 81            	ret	
4779                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4779                     ; 1222                        uint8_t TIM2_ICSelection,
4779                     ; 1223                        uint8_t TIM2_ICFilter)
4779                     ; 1224 {
4780                     .text:	section	.text,new
4781  0000               L5_TI2_Config:
4783  0000 89            	pushw	x
4784       00000001      OFST:	set	1
4787                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4789  0001 7219530a      	bres	21258,#4
4790  0005 88            	push	a
4791                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4791                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4793  0006 7b06          	ld	a,(OFST+5,sp)
4794  0008 97            	ld	xl,a
4795  0009 a610          	ld	a,#16
4796  000b 42            	mul	x,a
4797  000c 9f            	ld	a,xl
4798  000d 1a03          	or	a,(OFST+2,sp)
4799  000f 6b01          	ld	(OFST+0,sp),a
4800  0011 c65308        	ld	a,21256
4801  0014 a40c          	and	a,#12
4802  0016 1a01          	or	a,(OFST+0,sp)
4803  0018 c75308        	ld	21256,a
4804                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4806  001b 7b02          	ld	a,(OFST+1,sp)
4807  001d 2706          	jreq	L5112
4808                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4810  001f 721a530a      	bset	21258,#5
4812  0023 2004          	jra	L7112
4813  0025               L5112:
4814                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4816  0025 721b530a      	bres	21258,#5
4817  0029               L7112:
4818                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4820  0029 7218530a      	bset	21258,#4
4821                     ; 1245 }
4824  002d 5b03          	addw	sp,#3
4825  002f 81            	ret	
4877                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4877                     ; 1262                        uint8_t TIM2_ICFilter)
4877                     ; 1263 {
4878                     .text:	section	.text,new
4879  0000               L7_TI3_Config:
4881  0000 89            	pushw	x
4882       00000001      OFST:	set	1
4885                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4887  0001 7211530b      	bres	21259,#0
4888  0005 88            	push	a
4889                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4889                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4891  0006 7b06          	ld	a,(OFST+5,sp)
4892  0008 97            	ld	xl,a
4893  0009 a610          	ld	a,#16
4894  000b 42            	mul	x,a
4895  000c 9f            	ld	a,xl
4896  000d 1a03          	or	a,(OFST+2,sp)
4897  000f 6b01          	ld	(OFST+0,sp),a
4898  0011 c65309        	ld	a,21257
4899  0014 a40c          	and	a,#12
4900  0016 1a01          	or	a,(OFST+0,sp)
4901  0018 c75309        	ld	21257,a
4902                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4904  001b 7b02          	ld	a,(OFST+1,sp)
4905  001d 2706          	jreq	L7412
4906                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4908  001f 7212530b      	bset	21259,#1
4910  0023 2004          	jra	L1512
4911  0025               L7412:
4912                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4914  0025 7213530b      	bres	21259,#1
4915  0029               L1512:
4916                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4918  0029 7210530b      	bset	21259,#0
4919                     ; 1283 }
4922  002d 5b03          	addw	sp,#3
4923  002f 81            	ret	
4936                     	xdef	_TIM2_ClearITPendingBit
4937                     	xdef	_TIM2_GetITStatus
4938                     	xdef	_TIM2_ClearFlag
4939                     	xdef	_TIM2_GetFlagStatus
4940                     	xdef	_TIM2_GetPrescaler
4941                     	xdef	_TIM2_GetCounter
4942                     	xdef	_TIM2_GetCapture3
4943                     	xdef	_TIM2_GetCapture2
4944                     	xdef	_TIM2_GetCapture1
4945                     	xdef	_TIM2_SetIC3Prescaler
4946                     	xdef	_TIM2_SetIC2Prescaler
4947                     	xdef	_TIM2_SetIC1Prescaler
4948                     	xdef	_TIM2_SetCompare3
4949                     	xdef	_TIM2_SetCompare2
4950                     	xdef	_TIM2_SetCompare1
4951                     	xdef	_TIM2_SetAutoreload
4952                     	xdef	_TIM2_SetCounter
4953                     	xdef	_TIM2_SelectOCxM
4954                     	xdef	_TIM2_CCxCmd
4955                     	xdef	_TIM2_OC3PolarityConfig
4956                     	xdef	_TIM2_OC2PolarityConfig
4957                     	xdef	_TIM2_OC1PolarityConfig
4958                     	xdef	_TIM2_GenerateEvent
4959                     	xdef	_TIM2_OC3PreloadConfig
4960                     	xdef	_TIM2_OC2PreloadConfig
4961                     	xdef	_TIM2_OC1PreloadConfig
4962                     	xdef	_TIM2_ARRPreloadConfig
4963                     	xdef	_TIM2_ForcedOC3Config
4964                     	xdef	_TIM2_ForcedOC2Config
4965                     	xdef	_TIM2_ForcedOC1Config
4966                     	xdef	_TIM2_PrescalerConfig
4967                     	xdef	_TIM2_SelectOnePulseMode
4968                     	xdef	_TIM2_UpdateRequestConfig
4969                     	xdef	_TIM2_UpdateDisableConfig
4970                     	xdef	_TIM2_ITConfig
4971                     	xdef	_TIM2_Cmd
4972                     	xdef	_TIM2_PWMIConfig
4973                     	xdef	_TIM2_ICInit
4974                     	xdef	_TIM2_OC3Init
4975                     	xdef	_TIM2_OC2Init
4976                     	xdef	_TIM2_OC1Init
4977                     	xdef	_TIM2_TimeBaseInit
4978                     	xdef	_TIM2_DeInit
4979                     	xref	_assert_failed
4980                     .const:	section	.text
4981  0000               L702:
4982  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
4983  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
4984  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
4985  0036 6d322e6300    	dc.b	"m2.c",0
5005                     	end

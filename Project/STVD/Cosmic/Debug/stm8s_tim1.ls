   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  46                     ; 58 void TIM1_DeInit(void)
  46                     ; 59 {
  48                     .text:	section	.text,new
  49  0000               _TIM1_DeInit:
  53                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  55  0000 725f5250      	clr	21072
  56                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  58  0004 725f5251      	clr	21073
  59                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  61  0008 725f5252      	clr	21074
  62                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  64  000c 725f5253      	clr	21075
  65                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  67  0010 725f5254      	clr	21076
  68                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  70  0014 725f5256      	clr	21078
  71                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  73  0018 725f525c      	clr	21084
  74                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  76  001c 725f525d      	clr	21085
  77                     ; 70   TIM1->CCMR1 = 0x01;
  79  0020 35015258      	mov	21080,#1
  80                     ; 71   TIM1->CCMR2 = 0x01;
  82  0024 35015259      	mov	21081,#1
  83                     ; 72   TIM1->CCMR3 = 0x01;
  85  0028 3501525a      	mov	21082,#1
  86                     ; 73   TIM1->CCMR4 = 0x01;
  88  002c 3501525b      	mov	21083,#1
  89                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  91  0030 725f525c      	clr	21084
  92                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  94  0034 725f525d      	clr	21085
  95                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  97  0038 725f5258      	clr	21080
  98                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 100  003c 725f5259      	clr	21081
 101                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 103  0040 725f525a      	clr	21082
 104                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 106  0044 725f525b      	clr	21083
 107                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 109  0048 725f525e      	clr	21086
 110                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 112  004c 725f525f      	clr	21087
 113                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 115  0050 725f5260      	clr	21088
 116                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 118  0054 725f5261      	clr	21089
 119                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 121  0058 35ff5262      	mov	21090,#255
 122                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 124  005c 35ff5263      	mov	21091,#255
 125                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 127  0060 725f5265      	clr	21093
 128                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 130  0064 725f5266      	clr	21094
 131                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 133  0068 725f5267      	clr	21095
 134                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 136  006c 725f5268      	clr	21096
 137                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 139  0070 725f5269      	clr	21097
 140                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 142  0074 725f526a      	clr	21098
 143                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 145  0078 725f526b      	clr	21099
 146                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 148  007c 725f526c      	clr	21100
 149                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 151  0080 725f526f      	clr	21103
 152                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 154  0084 35015257      	mov	21079,#1
 155                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 157  0088 725f526e      	clr	21102
 158                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 160  008c 725f526d      	clr	21101
 161                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 163  0090 725f5264      	clr	21092
 164                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 166  0094 725f5255      	clr	21077
 167                     ; 101 }
 170  0098 81            	ret
 274                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 274                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 274                     ; 113                        uint16_t TIM1_Period,
 274                     ; 114                        uint8_t TIM1_RepetitionCounter)
 274                     ; 115 {
 275                     .text:	section	.text,new
 276  0000               _TIM1_TimeBaseInit:
 278  0000 89            	pushw	x
 279       00000000      OFST:	set	0
 282                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 284  0001 1e05          	ldw	x,(OFST+5,sp)
 285  0003 271c          	jreq	L21
 286  0005 1e05          	ldw	x,(OFST+5,sp)
 287  0007 a30010        	cpw	x,#16
 288  000a 2715          	jreq	L21
 289  000c 1e05          	ldw	x,(OFST+5,sp)
 290  000e a30020        	cpw	x,#32
 291  0011 270e          	jreq	L21
 292  0013 1e05          	ldw	x,(OFST+5,sp)
 293  0015 a30040        	cpw	x,#64
 294  0018 2707          	jreq	L21
 295  001a 1e05          	ldw	x,(OFST+5,sp)
 296  001c a30060        	cpw	x,#96
 297  001f 2603          	jrne	L01
 298  0021               L21:
 299  0021 4f            	clr	a
 300  0022 2010          	jra	L41
 301  0024               L01:
 302  0024 ae0075        	ldw	x,#117
 303  0027 89            	pushw	x
 304  0028 ae0000        	ldw	x,#0
 305  002b 89            	pushw	x
 306  002c ae0000        	ldw	x,#L37
 307  002f cd0000        	call	_assert_failed
 309  0032 5b04          	addw	sp,#4
 310  0034               L41:
 311                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 313  0034 7b07          	ld	a,(OFST+7,sp)
 314  0036 c75262        	ld	21090,a
 315                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 317  0039 7b08          	ld	a,(OFST+8,sp)
 318  003b c75263        	ld	21091,a
 319                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 321  003e 7b01          	ld	a,(OFST+1,sp)
 322  0040 c75260        	ld	21088,a
 323                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 325  0043 7b02          	ld	a,(OFST+2,sp)
 326  0045 c75261        	ld	21089,a
 327                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 327                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 329  0048 c65250        	ld	a,21072
 330  004b a48f          	and	a,#143
 331  004d 1a06          	or	a,(OFST+6,sp)
 332  004f c75250        	ld	21072,a
 333                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 335  0052 7b09          	ld	a,(OFST+9,sp)
 336  0054 c75264        	ld	21092,a
 337                     ; 133 }
 340  0057 85            	popw	x
 341  0058 81            	ret
 625                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 625                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 625                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 625                     ; 157                   uint16_t TIM1_Pulse,
 625                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 625                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 625                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 625                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 625                     ; 162 {
 626                     .text:	section	.text,new
 627  0000               _TIM1_OC1Init:
 629  0000 89            	pushw	x
 630  0001 5203          	subw	sp,#3
 631       00000003      OFST:	set	3
 634                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 636  0003 a30000        	cpw	x,#0
 637  0006 2719          	jreq	L22
 638  0008 a30010        	cpw	x,#16
 639  000b 2714          	jreq	L22
 640  000d a30020        	cpw	x,#32
 641  0010 270f          	jreq	L22
 642  0012 a30030        	cpw	x,#48
 643  0015 270a          	jreq	L22
 644  0017 a30060        	cpw	x,#96
 645  001a 2705          	jreq	L22
 646  001c a30070        	cpw	x,#112
 647  001f 2603          	jrne	L02
 648  0021               L22:
 649  0021 4f            	clr	a
 650  0022 2010          	jra	L42
 651  0024               L02:
 652  0024 ae00a4        	ldw	x,#164
 653  0027 89            	pushw	x
 654  0028 ae0000        	ldw	x,#0
 655  002b 89            	pushw	x
 656  002c ae0000        	ldw	x,#L37
 657  002f cd0000        	call	_assert_failed
 659  0032 5b04          	addw	sp,#4
 660  0034               L42:
 661                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 663  0034 1e08          	ldw	x,(OFST+5,sp)
 664  0036 2707          	jreq	L03
 665  0038 1e08          	ldw	x,(OFST+5,sp)
 666  003a a30011        	cpw	x,#17
 667  003d 2603          	jrne	L62
 668  003f               L03:
 669  003f 4f            	clr	a
 670  0040 2010          	jra	L23
 671  0042               L62:
 672  0042 ae00a5        	ldw	x,#165
 673  0045 89            	pushw	x
 674  0046 ae0000        	ldw	x,#0
 675  0049 89            	pushw	x
 676  004a ae0000        	ldw	x,#L37
 677  004d cd0000        	call	_assert_failed
 679  0050 5b04          	addw	sp,#4
 680  0052               L23:
 681                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 683  0052 1e0a          	ldw	x,(OFST+7,sp)
 684  0054 2707          	jreq	L63
 685  0056 1e0a          	ldw	x,(OFST+7,sp)
 686  0058 a30044        	cpw	x,#68
 687  005b 2603          	jrne	L43
 688  005d               L63:
 689  005d 4f            	clr	a
 690  005e 2010          	jra	L04
 691  0060               L43:
 692  0060 ae00a6        	ldw	x,#166
 693  0063 89            	pushw	x
 694  0064 ae0000        	ldw	x,#0
 695  0067 89            	pushw	x
 696  0068 ae0000        	ldw	x,#L37
 697  006b cd0000        	call	_assert_failed
 699  006e 5b04          	addw	sp,#4
 700  0070               L04:
 701                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 703  0070 1e0e          	ldw	x,(OFST+11,sp)
 704  0072 2707          	jreq	L44
 705  0074 1e0e          	ldw	x,(OFST+11,sp)
 706  0076 a30022        	cpw	x,#34
 707  0079 2603          	jrne	L24
 708  007b               L44:
 709  007b 4f            	clr	a
 710  007c 2010          	jra	L64
 711  007e               L24:
 712  007e ae00a7        	ldw	x,#167
 713  0081 89            	pushw	x
 714  0082 ae0000        	ldw	x,#0
 715  0085 89            	pushw	x
 716  0086 ae0000        	ldw	x,#L37
 717  0089 cd0000        	call	_assert_failed
 719  008c 5b04          	addw	sp,#4
 720  008e               L64:
 721                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 723  008e 1e10          	ldw	x,(OFST+13,sp)
 724  0090 2707          	jreq	L25
 725  0092 1e10          	ldw	x,(OFST+13,sp)
 726  0094 a30088        	cpw	x,#136
 727  0097 2603          	jrne	L05
 728  0099               L25:
 729  0099 4f            	clr	a
 730  009a 2010          	jra	L45
 731  009c               L05:
 732  009c ae00a8        	ldw	x,#168
 733  009f 89            	pushw	x
 734  00a0 ae0000        	ldw	x,#0
 735  00a3 89            	pushw	x
 736  00a4 ae0000        	ldw	x,#L37
 737  00a7 cd0000        	call	_assert_failed
 739  00aa 5b04          	addw	sp,#4
 740  00ac               L45:
 741                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 743  00ac 1e12          	ldw	x,(OFST+15,sp)
 744  00ae a30055        	cpw	x,#85
 745  00b1 2704          	jreq	L06
 746  00b3 1e12          	ldw	x,(OFST+15,sp)
 747  00b5 2603          	jrne	L65
 748  00b7               L06:
 749  00b7 4f            	clr	a
 750  00b8 2010          	jra	L26
 751  00ba               L65:
 752  00ba ae00a9        	ldw	x,#169
 753  00bd 89            	pushw	x
 754  00be ae0000        	ldw	x,#0
 755  00c1 89            	pushw	x
 756  00c2 ae0000        	ldw	x,#L37
 757  00c5 cd0000        	call	_assert_failed
 759  00c8 5b04          	addw	sp,#4
 760  00ca               L26:
 761                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 763  00ca 1e14          	ldw	x,(OFST+17,sp)
 764  00cc a3002a        	cpw	x,#42
 765  00cf 2704          	jreq	L66
 766  00d1 1e14          	ldw	x,(OFST+17,sp)
 767  00d3 2603          	jrne	L46
 768  00d5               L66:
 769  00d5 4f            	clr	a
 770  00d6 2010          	jra	L07
 771  00d8               L46:
 772  00d8 ae00aa        	ldw	x,#170
 773  00db 89            	pushw	x
 774  00dc ae0000        	ldw	x,#0
 775  00df 89            	pushw	x
 776  00e0 ae0000        	ldw	x,#L37
 777  00e3 cd0000        	call	_assert_failed
 779  00e6 5b04          	addw	sp,#4
 780  00e8               L07:
 781                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 781                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 783  00e8 c6525c        	ld	a,21084
 784  00eb a4f0          	and	a,#240
 785  00ed c7525c        	ld	21084,a
 786                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 786                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 786                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 786                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 788  00f0 7b11          	ld	a,(OFST+14,sp)
 789  00f2 a408          	and	a,#8
 790  00f4 6b03          	ld	(OFST+0,sp),a
 791  00f6 7b0f          	ld	a,(OFST+12,sp)
 792  00f8 a402          	and	a,#2
 793  00fa 1a03          	or	a,(OFST+0,sp)
 794  00fc 6b02          	ld	(OFST-1,sp),a
 795  00fe 7b0b          	ld	a,(OFST+8,sp)
 796  0100 a404          	and	a,#4
 797  0102 6b01          	ld	(OFST-2,sp),a
 798  0104 7b09          	ld	a,(OFST+6,sp)
 799  0106 a401          	and	a,#1
 800  0108 1a01          	or	a,(OFST-2,sp)
 801  010a 1a02          	or	a,(OFST-1,sp)
 802  010c ca525c        	or	a,21084
 803  010f c7525c        	ld	21084,a
 804                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 804                     ; 185                           (uint8_t)TIM1_OCMode);
 806  0112 c65258        	ld	a,21080
 807  0115 a48f          	and	a,#143
 808  0117 1a05          	or	a,(OFST+2,sp)
 809  0119 c75258        	ld	21080,a
 810                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 812  011c c6526f        	ld	a,21103
 813  011f a4fc          	and	a,#252
 814  0121 c7526f        	ld	21103,a
 815                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 815                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 817  0124 7b15          	ld	a,(OFST+18,sp)
 818  0126 a402          	and	a,#2
 819  0128 6b03          	ld	(OFST+0,sp),a
 820  012a 7b13          	ld	a,(OFST+16,sp)
 821  012c a401          	and	a,#1
 822  012e 1a03          	or	a,(OFST+0,sp)
 823  0130 ca526f        	or	a,21103
 824  0133 c7526f        	ld	21103,a
 825                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 827  0136 7b0c          	ld	a,(OFST+9,sp)
 828  0138 c75265        	ld	21093,a
 829                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 831  013b 7b0d          	ld	a,(OFST+10,sp)
 832  013d c75266        	ld	21094,a
 833                     ; 196 }
 836  0140 5b05          	addw	sp,#5
 837  0142 81            	ret
 940                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 940                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 940                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 940                     ; 220                   uint16_t TIM1_Pulse,
 940                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 940                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 940                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 940                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 940                     ; 225 {
 941                     .text:	section	.text,new
 942  0000               _TIM1_OC2Init:
 944  0000 89            	pushw	x
 945  0001 5203          	subw	sp,#3
 946       00000003      OFST:	set	3
 949                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 951  0003 a30000        	cpw	x,#0
 952  0006 2719          	jreq	L67
 953  0008 a30010        	cpw	x,#16
 954  000b 2714          	jreq	L67
 955  000d a30020        	cpw	x,#32
 956  0010 270f          	jreq	L67
 957  0012 a30030        	cpw	x,#48
 958  0015 270a          	jreq	L67
 959  0017 a30060        	cpw	x,#96
 960  001a 2705          	jreq	L67
 961  001c a30070        	cpw	x,#112
 962  001f 2603          	jrne	L47
 963  0021               L67:
 964  0021 4f            	clr	a
 965  0022 2010          	jra	L001
 966  0024               L47:
 967  0024 ae00e3        	ldw	x,#227
 968  0027 89            	pushw	x
 969  0028 ae0000        	ldw	x,#0
 970  002b 89            	pushw	x
 971  002c ae0000        	ldw	x,#L37
 972  002f cd0000        	call	_assert_failed
 974  0032 5b04          	addw	sp,#4
 975  0034               L001:
 976                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 978  0034 1e08          	ldw	x,(OFST+5,sp)
 979  0036 2707          	jreq	L401
 980  0038 1e08          	ldw	x,(OFST+5,sp)
 981  003a a30011        	cpw	x,#17
 982  003d 2603          	jrne	L201
 983  003f               L401:
 984  003f 4f            	clr	a
 985  0040 2010          	jra	L601
 986  0042               L201:
 987  0042 ae00e4        	ldw	x,#228
 988  0045 89            	pushw	x
 989  0046 ae0000        	ldw	x,#0
 990  0049 89            	pushw	x
 991  004a ae0000        	ldw	x,#L37
 992  004d cd0000        	call	_assert_failed
 994  0050 5b04          	addw	sp,#4
 995  0052               L601:
 996                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 998  0052 1e0a          	ldw	x,(OFST+7,sp)
 999  0054 2707          	jreq	L211
1000  0056 1e0a          	ldw	x,(OFST+7,sp)
1001  0058 a30044        	cpw	x,#68
1002  005b 2603          	jrne	L011
1003  005d               L211:
1004  005d 4f            	clr	a
1005  005e 2010          	jra	L411
1006  0060               L011:
1007  0060 ae00e5        	ldw	x,#229
1008  0063 89            	pushw	x
1009  0064 ae0000        	ldw	x,#0
1010  0067 89            	pushw	x
1011  0068 ae0000        	ldw	x,#L37
1012  006b cd0000        	call	_assert_failed
1014  006e 5b04          	addw	sp,#4
1015  0070               L411:
1016                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1018  0070 1e0e          	ldw	x,(OFST+11,sp)
1019  0072 2707          	jreq	L021
1020  0074 1e0e          	ldw	x,(OFST+11,sp)
1021  0076 a30022        	cpw	x,#34
1022  0079 2603          	jrne	L611
1023  007b               L021:
1024  007b 4f            	clr	a
1025  007c 2010          	jra	L221
1026  007e               L611:
1027  007e ae00e6        	ldw	x,#230
1028  0081 89            	pushw	x
1029  0082 ae0000        	ldw	x,#0
1030  0085 89            	pushw	x
1031  0086 ae0000        	ldw	x,#L37
1032  0089 cd0000        	call	_assert_failed
1034  008c 5b04          	addw	sp,#4
1035  008e               L221:
1036                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1038  008e 1e10          	ldw	x,(OFST+13,sp)
1039  0090 2707          	jreq	L621
1040  0092 1e10          	ldw	x,(OFST+13,sp)
1041  0094 a30088        	cpw	x,#136
1042  0097 2603          	jrne	L421
1043  0099               L621:
1044  0099 4f            	clr	a
1045  009a 2010          	jra	L031
1046  009c               L421:
1047  009c ae00e7        	ldw	x,#231
1048  009f 89            	pushw	x
1049  00a0 ae0000        	ldw	x,#0
1050  00a3 89            	pushw	x
1051  00a4 ae0000        	ldw	x,#L37
1052  00a7 cd0000        	call	_assert_failed
1054  00aa 5b04          	addw	sp,#4
1055  00ac               L031:
1056                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1058  00ac 1e12          	ldw	x,(OFST+15,sp)
1059  00ae a30055        	cpw	x,#85
1060  00b1 2704          	jreq	L431
1061  00b3 1e12          	ldw	x,(OFST+15,sp)
1062  00b5 2603          	jrne	L231
1063  00b7               L431:
1064  00b7 4f            	clr	a
1065  00b8 2010          	jra	L631
1066  00ba               L231:
1067  00ba ae00e8        	ldw	x,#232
1068  00bd 89            	pushw	x
1069  00be ae0000        	ldw	x,#0
1070  00c1 89            	pushw	x
1071  00c2 ae0000        	ldw	x,#L37
1072  00c5 cd0000        	call	_assert_failed
1074  00c8 5b04          	addw	sp,#4
1075  00ca               L631:
1076                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1078  00ca 1e14          	ldw	x,(OFST+17,sp)
1079  00cc a3002a        	cpw	x,#42
1080  00cf 2704          	jreq	L241
1081  00d1 1e14          	ldw	x,(OFST+17,sp)
1082  00d3 2603          	jrne	L041
1083  00d5               L241:
1084  00d5 4f            	clr	a
1085  00d6 2010          	jra	L441
1086  00d8               L041:
1087  00d8 ae00e9        	ldw	x,#233
1088  00db 89            	pushw	x
1089  00dc ae0000        	ldw	x,#0
1090  00df 89            	pushw	x
1091  00e0 ae0000        	ldw	x,#L37
1092  00e3 cd0000        	call	_assert_failed
1094  00e6 5b04          	addw	sp,#4
1095  00e8               L441:
1096                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1096                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1098  00e8 c6525c        	ld	a,21084
1099  00eb a40f          	and	a,#15
1100  00ed c7525c        	ld	21084,a
1101                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1101                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1101                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1101                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1103  00f0 7b11          	ld	a,(OFST+14,sp)
1104  00f2 a480          	and	a,#128
1105  00f4 6b03          	ld	(OFST+0,sp),a
1106  00f6 7b0f          	ld	a,(OFST+12,sp)
1107  00f8 a420          	and	a,#32
1108  00fa 1a03          	or	a,(OFST+0,sp)
1109  00fc 6b02          	ld	(OFST-1,sp),a
1110  00fe 7b0b          	ld	a,(OFST+8,sp)
1111  0100 a440          	and	a,#64
1112  0102 6b01          	ld	(OFST-2,sp),a
1113  0104 7b09          	ld	a,(OFST+6,sp)
1114  0106 a410          	and	a,#16
1115  0108 1a01          	or	a,(OFST-2,sp)
1116  010a 1a02          	or	a,(OFST-1,sp)
1117  010c ca525c        	or	a,21084
1118  010f c7525c        	ld	21084,a
1119                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1119                     ; 249                           (uint8_t)TIM1_OCMode);
1121  0112 c65259        	ld	a,21081
1122  0115 a48f          	and	a,#143
1123  0117 1a05          	or	a,(OFST+2,sp)
1124  0119 c75259        	ld	21081,a
1125                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1127  011c c6526f        	ld	a,21103
1128  011f a4f3          	and	a,#243
1129  0121 c7526f        	ld	21103,a
1130                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1130                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1132  0124 7b15          	ld	a,(OFST+18,sp)
1133  0126 a408          	and	a,#8
1134  0128 6b03          	ld	(OFST+0,sp),a
1135  012a 7b13          	ld	a,(OFST+16,sp)
1136  012c a404          	and	a,#4
1137  012e 1a03          	or	a,(OFST+0,sp)
1138  0130 ca526f        	or	a,21103
1139  0133 c7526f        	ld	21103,a
1140                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1142  0136 7b0c          	ld	a,(OFST+9,sp)
1143  0138 c75267        	ld	21095,a
1144                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1146  013b 7b0d          	ld	a,(OFST+10,sp)
1147  013d c75268        	ld	21096,a
1148                     ; 260 }
1151  0140 5b05          	addw	sp,#5
1152  0142 81            	ret
1255                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1255                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1255                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1255                     ; 284                   uint16_t TIM1_Pulse,
1255                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1255                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1255                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1255                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1255                     ; 289 {
1256                     .text:	section	.text,new
1257  0000               _TIM1_OC3Init:
1259  0000 89            	pushw	x
1260  0001 5203          	subw	sp,#3
1261       00000003      OFST:	set	3
1264                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1266  0003 a30000        	cpw	x,#0
1267  0006 2719          	jreq	L251
1268  0008 a30010        	cpw	x,#16
1269  000b 2714          	jreq	L251
1270  000d a30020        	cpw	x,#32
1271  0010 270f          	jreq	L251
1272  0012 a30030        	cpw	x,#48
1273  0015 270a          	jreq	L251
1274  0017 a30060        	cpw	x,#96
1275  001a 2705          	jreq	L251
1276  001c a30070        	cpw	x,#112
1277  001f 2603          	jrne	L051
1278  0021               L251:
1279  0021 4f            	clr	a
1280  0022 2010          	jra	L451
1281  0024               L051:
1282  0024 ae0123        	ldw	x,#291
1283  0027 89            	pushw	x
1284  0028 ae0000        	ldw	x,#0
1285  002b 89            	pushw	x
1286  002c ae0000        	ldw	x,#L37
1287  002f cd0000        	call	_assert_failed
1289  0032 5b04          	addw	sp,#4
1290  0034               L451:
1291                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1293  0034 1e08          	ldw	x,(OFST+5,sp)
1294  0036 2707          	jreq	L061
1295  0038 1e08          	ldw	x,(OFST+5,sp)
1296  003a a30011        	cpw	x,#17
1297  003d 2603          	jrne	L651
1298  003f               L061:
1299  003f 4f            	clr	a
1300  0040 2010          	jra	L261
1301  0042               L651:
1302  0042 ae0124        	ldw	x,#292
1303  0045 89            	pushw	x
1304  0046 ae0000        	ldw	x,#0
1305  0049 89            	pushw	x
1306  004a ae0000        	ldw	x,#L37
1307  004d cd0000        	call	_assert_failed
1309  0050 5b04          	addw	sp,#4
1310  0052               L261:
1311                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1313  0052 1e0a          	ldw	x,(OFST+7,sp)
1314  0054 2707          	jreq	L661
1315  0056 1e0a          	ldw	x,(OFST+7,sp)
1316  0058 a30044        	cpw	x,#68
1317  005b 2603          	jrne	L461
1318  005d               L661:
1319  005d 4f            	clr	a
1320  005e 2010          	jra	L071
1321  0060               L461:
1322  0060 ae0125        	ldw	x,#293
1323  0063 89            	pushw	x
1324  0064 ae0000        	ldw	x,#0
1325  0067 89            	pushw	x
1326  0068 ae0000        	ldw	x,#L37
1327  006b cd0000        	call	_assert_failed
1329  006e 5b04          	addw	sp,#4
1330  0070               L071:
1331                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1333  0070 1e0e          	ldw	x,(OFST+11,sp)
1334  0072 2707          	jreq	L471
1335  0074 1e0e          	ldw	x,(OFST+11,sp)
1336  0076 a30022        	cpw	x,#34
1337  0079 2603          	jrne	L271
1338  007b               L471:
1339  007b 4f            	clr	a
1340  007c 2010          	jra	L671
1341  007e               L271:
1342  007e ae0126        	ldw	x,#294
1343  0081 89            	pushw	x
1344  0082 ae0000        	ldw	x,#0
1345  0085 89            	pushw	x
1346  0086 ae0000        	ldw	x,#L37
1347  0089 cd0000        	call	_assert_failed
1349  008c 5b04          	addw	sp,#4
1350  008e               L671:
1351                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1353  008e 1e10          	ldw	x,(OFST+13,sp)
1354  0090 2707          	jreq	L202
1355  0092 1e10          	ldw	x,(OFST+13,sp)
1356  0094 a30088        	cpw	x,#136
1357  0097 2603          	jrne	L002
1358  0099               L202:
1359  0099 4f            	clr	a
1360  009a 2010          	jra	L402
1361  009c               L002:
1362  009c ae0127        	ldw	x,#295
1363  009f 89            	pushw	x
1364  00a0 ae0000        	ldw	x,#0
1365  00a3 89            	pushw	x
1366  00a4 ae0000        	ldw	x,#L37
1367  00a7 cd0000        	call	_assert_failed
1369  00aa 5b04          	addw	sp,#4
1370  00ac               L402:
1371                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1373  00ac 1e12          	ldw	x,(OFST+15,sp)
1374  00ae a30055        	cpw	x,#85
1375  00b1 2704          	jreq	L012
1376  00b3 1e12          	ldw	x,(OFST+15,sp)
1377  00b5 2603          	jrne	L602
1378  00b7               L012:
1379  00b7 4f            	clr	a
1380  00b8 2010          	jra	L212
1381  00ba               L602:
1382  00ba ae0128        	ldw	x,#296
1383  00bd 89            	pushw	x
1384  00be ae0000        	ldw	x,#0
1385  00c1 89            	pushw	x
1386  00c2 ae0000        	ldw	x,#L37
1387  00c5 cd0000        	call	_assert_failed
1389  00c8 5b04          	addw	sp,#4
1390  00ca               L212:
1391                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1393  00ca 1e14          	ldw	x,(OFST+17,sp)
1394  00cc a3002a        	cpw	x,#42
1395  00cf 2704          	jreq	L612
1396  00d1 1e14          	ldw	x,(OFST+17,sp)
1397  00d3 2603          	jrne	L412
1398  00d5               L612:
1399  00d5 4f            	clr	a
1400  00d6 2010          	jra	L022
1401  00d8               L412:
1402  00d8 ae0129        	ldw	x,#297
1403  00db 89            	pushw	x
1404  00dc ae0000        	ldw	x,#0
1405  00df 89            	pushw	x
1406  00e0 ae0000        	ldw	x,#L37
1407  00e3 cd0000        	call	_assert_failed
1409  00e6 5b04          	addw	sp,#4
1410  00e8               L022:
1411                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1411                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1413  00e8 c6525d        	ld	a,21085
1414  00eb a4f0          	and	a,#240
1415  00ed c7525d        	ld	21085,a
1416                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1416                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1416                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1416                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1418  00f0 7b11          	ld	a,(OFST+14,sp)
1419  00f2 a408          	and	a,#8
1420  00f4 6b03          	ld	(OFST+0,sp),a
1421  00f6 7b0f          	ld	a,(OFST+12,sp)
1422  00f8 a402          	and	a,#2
1423  00fa 1a03          	or	a,(OFST+0,sp)
1424  00fc 6b02          	ld	(OFST-1,sp),a
1425  00fe 7b0b          	ld	a,(OFST+8,sp)
1426  0100 a404          	and	a,#4
1427  0102 6b01          	ld	(OFST-2,sp),a
1428  0104 7b09          	ld	a,(OFST+6,sp)
1429  0106 a401          	and	a,#1
1430  0108 1a01          	or	a,(OFST-2,sp)
1431  010a 1a02          	or	a,(OFST-1,sp)
1432  010c ca525d        	or	a,21085
1433  010f c7525d        	ld	21085,a
1434                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1434                     ; 312                           (uint8_t)TIM1_OCMode);
1436  0112 c6525a        	ld	a,21082
1437  0115 a48f          	and	a,#143
1438  0117 1a05          	or	a,(OFST+2,sp)
1439  0119 c7525a        	ld	21082,a
1440                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1442  011c c6526f        	ld	a,21103
1443  011f a4cf          	and	a,#207
1444  0121 c7526f        	ld	21103,a
1445                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1445                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1447  0124 7b15          	ld	a,(OFST+18,sp)
1448  0126 a420          	and	a,#32
1449  0128 6b03          	ld	(OFST+0,sp),a
1450  012a 7b13          	ld	a,(OFST+16,sp)
1451  012c a410          	and	a,#16
1452  012e 1a03          	or	a,(OFST+0,sp)
1453  0130 ca526f        	or	a,21103
1454  0133 c7526f        	ld	21103,a
1455                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1457  0136 7b0c          	ld	a,(OFST+9,sp)
1458  0138 c75269        	ld	21097,a
1459                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1461  013b 7b0d          	ld	a,(OFST+10,sp)
1462  013d c7526a        	ld	21098,a
1463                     ; 323 }
1466  0140 5b05          	addw	sp,#5
1467  0142 81            	ret
1540                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1540                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1540                     ; 340                   uint16_t TIM1_Pulse,
1540                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1540                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1540                     ; 343 {
1541                     .text:	section	.text,new
1542  0000               _TIM1_OC4Init:
1544  0000 89            	pushw	x
1545  0001 88            	push	a
1546       00000001      OFST:	set	1
1549                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1551  0002 a30000        	cpw	x,#0
1552  0005 2719          	jreq	L622
1553  0007 a30010        	cpw	x,#16
1554  000a 2714          	jreq	L622
1555  000c a30020        	cpw	x,#32
1556  000f 270f          	jreq	L622
1557  0011 a30030        	cpw	x,#48
1558  0014 270a          	jreq	L622
1559  0016 a30060        	cpw	x,#96
1560  0019 2705          	jreq	L622
1561  001b a30070        	cpw	x,#112
1562  001e 2603          	jrne	L422
1563  0020               L622:
1564  0020 4f            	clr	a
1565  0021 2010          	jra	L032
1566  0023               L422:
1567  0023 ae0159        	ldw	x,#345
1568  0026 89            	pushw	x
1569  0027 ae0000        	ldw	x,#0
1570  002a 89            	pushw	x
1571  002b ae0000        	ldw	x,#L37
1572  002e cd0000        	call	_assert_failed
1574  0031 5b04          	addw	sp,#4
1575  0033               L032:
1576                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1578  0033 1e06          	ldw	x,(OFST+5,sp)
1579  0035 2707          	jreq	L432
1580  0037 1e06          	ldw	x,(OFST+5,sp)
1581  0039 a30011        	cpw	x,#17
1582  003c 2603          	jrne	L232
1583  003e               L432:
1584  003e 4f            	clr	a
1585  003f 2010          	jra	L632
1586  0041               L232:
1587  0041 ae015a        	ldw	x,#346
1588  0044 89            	pushw	x
1589  0045 ae0000        	ldw	x,#0
1590  0048 89            	pushw	x
1591  0049 ae0000        	ldw	x,#L37
1592  004c cd0000        	call	_assert_failed
1594  004f 5b04          	addw	sp,#4
1595  0051               L632:
1596                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1598  0051 1e0a          	ldw	x,(OFST+9,sp)
1599  0053 2707          	jreq	L242
1600  0055 1e0a          	ldw	x,(OFST+9,sp)
1601  0057 a30022        	cpw	x,#34
1602  005a 2603          	jrne	L042
1603  005c               L242:
1604  005c 4f            	clr	a
1605  005d 2010          	jra	L442
1606  005f               L042:
1607  005f ae015b        	ldw	x,#347
1608  0062 89            	pushw	x
1609  0063 ae0000        	ldw	x,#0
1610  0066 89            	pushw	x
1611  0067 ae0000        	ldw	x,#L37
1612  006a cd0000        	call	_assert_failed
1614  006d 5b04          	addw	sp,#4
1615  006f               L442:
1616                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1618  006f 1e0c          	ldw	x,(OFST+11,sp)
1619  0071 a30055        	cpw	x,#85
1620  0074 2704          	jreq	L052
1621  0076 1e0c          	ldw	x,(OFST+11,sp)
1622  0078 2603          	jrne	L642
1623  007a               L052:
1624  007a 4f            	clr	a
1625  007b 2010          	jra	L252
1626  007d               L642:
1627  007d ae015c        	ldw	x,#348
1628  0080 89            	pushw	x
1629  0081 ae0000        	ldw	x,#0
1630  0084 89            	pushw	x
1631  0085 ae0000        	ldw	x,#L37
1632  0088 cd0000        	call	_assert_failed
1634  008b 5b04          	addw	sp,#4
1635  008d               L252:
1636                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1638  008d c6525d        	ld	a,21085
1639  0090 a4cf          	and	a,#207
1640  0092 c7525d        	ld	21085,a
1641                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1641                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1643  0095 7b0b          	ld	a,(OFST+10,sp)
1644  0097 a420          	and	a,#32
1645  0099 6b01          	ld	(OFST+0,sp),a
1646  009b 7b07          	ld	a,(OFST+6,sp)
1647  009d a410          	and	a,#16
1648  009f 1a01          	or	a,(OFST+0,sp)
1649  00a1 ca525d        	or	a,21085
1650  00a4 c7525d        	ld	21085,a
1651                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1651                     ; 358                           TIM1_OCMode);
1653  00a7 c6525b        	ld	a,21083
1654  00aa a48f          	and	a,#143
1655  00ac 1a03          	or	a,(OFST+2,sp)
1656  00ae c7525b        	ld	21083,a
1657                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1659  00b1 1e0c          	ldw	x,(OFST+11,sp)
1660  00b3 270a          	jreq	L124
1661                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1663  00b5 c6526f        	ld	a,21103
1664  00b8 aadf          	or	a,#223
1665  00ba c7526f        	ld	21103,a
1667  00bd 2004          	jra	L324
1668  00bf               L124:
1669                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1671  00bf 721d526f      	bres	21103,#6
1672  00c3               L324:
1673                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1675  00c3 7b08          	ld	a,(OFST+7,sp)
1676  00c5 c7526b        	ld	21099,a
1677                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1679  00c8 7b09          	ld	a,(OFST+8,sp)
1680  00ca c7526c        	ld	21100,a
1681                     ; 373 }
1684  00cd 5b03          	addw	sp,#3
1685  00cf 81            	ret
1889                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1889                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1889                     ; 390                      uint8_t TIM1_DeadTime,
1889                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1889                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1889                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1889                     ; 394 {
1890                     .text:	section	.text,new
1891  0000               _TIM1_BDTRConfig:
1893  0000 89            	pushw	x
1894  0001 88            	push	a
1895       00000001      OFST:	set	1
1898                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1900  0002 a30004        	cpw	x,#4
1901  0005 2705          	jreq	L062
1902  0007 a30000        	cpw	x,#0
1903  000a 2603          	jrne	L652
1904  000c               L062:
1905  000c 4f            	clr	a
1906  000d 2010          	jra	L262
1907  000f               L652:
1908  000f ae018c        	ldw	x,#396
1909  0012 89            	pushw	x
1910  0013 ae0000        	ldw	x,#0
1911  0016 89            	pushw	x
1912  0017 ae0000        	ldw	x,#L37
1913  001a cd0000        	call	_assert_failed
1915  001d 5b04          	addw	sp,#4
1916  001f               L262:
1917                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1919  001f 1e06          	ldw	x,(OFST+5,sp)
1920  0021 2715          	jreq	L662
1921  0023 1e06          	ldw	x,(OFST+5,sp)
1922  0025 a30001        	cpw	x,#1
1923  0028 270e          	jreq	L662
1924  002a 1e06          	ldw	x,(OFST+5,sp)
1925  002c a30002        	cpw	x,#2
1926  002f 2707          	jreq	L662
1927  0031 1e06          	ldw	x,(OFST+5,sp)
1928  0033 a30003        	cpw	x,#3
1929  0036 2603          	jrne	L462
1930  0038               L662:
1931  0038 4f            	clr	a
1932  0039 2010          	jra	L072
1933  003b               L462:
1934  003b ae018d        	ldw	x,#397
1935  003e 89            	pushw	x
1936  003f ae0000        	ldw	x,#0
1937  0042 89            	pushw	x
1938  0043 ae0000        	ldw	x,#L37
1939  0046 cd0000        	call	_assert_failed
1941  0049 5b04          	addw	sp,#4
1942  004b               L072:
1943                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1945  004b 1e09          	ldw	x,(OFST+8,sp)
1946  004d a30010        	cpw	x,#16
1947  0050 2704          	jreq	L472
1948  0052 1e09          	ldw	x,(OFST+8,sp)
1949  0054 2603          	jrne	L272
1950  0056               L472:
1951  0056 4f            	clr	a
1952  0057 2010          	jra	L672
1953  0059               L272:
1954  0059 ae018e        	ldw	x,#398
1955  005c 89            	pushw	x
1956  005d ae0000        	ldw	x,#0
1957  0060 89            	pushw	x
1958  0061 ae0000        	ldw	x,#L37
1959  0064 cd0000        	call	_assert_failed
1961  0067 5b04          	addw	sp,#4
1962  0069               L672:
1963                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1965  0069 1e0b          	ldw	x,(OFST+10,sp)
1966  006b 2707          	jreq	L203
1967  006d 1e0b          	ldw	x,(OFST+10,sp)
1968  006f a30020        	cpw	x,#32
1969  0072 2603          	jrne	L003
1970  0074               L203:
1971  0074 4f            	clr	a
1972  0075 2010          	jra	L403
1973  0077               L003:
1974  0077 ae018f        	ldw	x,#399
1975  007a 89            	pushw	x
1976  007b ae0000        	ldw	x,#0
1977  007e 89            	pushw	x
1978  007f ae0000        	ldw	x,#L37
1979  0082 cd0000        	call	_assert_failed
1981  0085 5b04          	addw	sp,#4
1982  0087               L403:
1983                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1985  0087 1e0d          	ldw	x,(OFST+12,sp)
1986  0089 a30040        	cpw	x,#64
1987  008c 2704          	jreq	L013
1988  008e 1e0d          	ldw	x,(OFST+12,sp)
1989  0090 2603          	jrne	L603
1990  0092               L013:
1991  0092 4f            	clr	a
1992  0093 2010          	jra	L213
1993  0095               L603:
1994  0095 ae0190        	ldw	x,#400
1995  0098 89            	pushw	x
1996  0099 ae0000        	ldw	x,#0
1997  009c 89            	pushw	x
1998  009d ae0000        	ldw	x,#L37
1999  00a0 cd0000        	call	_assert_failed
2001  00a3 5b04          	addw	sp,#4
2002  00a5               L213:
2003                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2005  00a5 7b08          	ld	a,(OFST+7,sp)
2006  00a7 c7526e        	ld	21102,a
2007                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2007                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2007                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2009  00aa 7b0c          	ld	a,(OFST+11,sp)
2010  00ac 1a0a          	or	a,(OFST+9,sp)
2011  00ae 1a0e          	or	a,(OFST+13,sp)
2012  00b0 6b01          	ld	(OFST+0,sp),a
2013  00b2 7b07          	ld	a,(OFST+6,sp)
2014  00b4 1a03          	or	a,(OFST+2,sp)
2015  00b6 1a01          	or	a,(OFST+0,sp)
2016  00b8 c7526d        	ld	21101,a
2017                     ; 409 }
2020  00bb 5b03          	addw	sp,#3
2021  00bd 81            	ret
2222                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2222                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2222                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2222                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2222                     ; 427                  uint8_t TIM1_ICFilter)
2222                     ; 428 {
2223                     .text:	section	.text,new
2224  0000               _TIM1_ICInit:
2226  0000 89            	pushw	x
2227       00000000      OFST:	set	0
2230                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2232  0001 a30000        	cpw	x,#0
2233  0004 270f          	jreq	L023
2234  0006 a30001        	cpw	x,#1
2235  0009 270a          	jreq	L023
2236  000b a30002        	cpw	x,#2
2237  000e 2705          	jreq	L023
2238  0010 a30003        	cpw	x,#3
2239  0013 2603          	jrne	L613
2240  0015               L023:
2241  0015 4f            	clr	a
2242  0016 2010          	jra	L223
2243  0018               L613:
2244  0018 ae01ae        	ldw	x,#430
2245  001b 89            	pushw	x
2246  001c ae0000        	ldw	x,#0
2247  001f 89            	pushw	x
2248  0020 ae0000        	ldw	x,#L37
2249  0023 cd0000        	call	_assert_failed
2251  0026 5b04          	addw	sp,#4
2252  0028               L223:
2253                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2255  0028 1e05          	ldw	x,(OFST+5,sp)
2256  002a 2707          	jreq	L623
2257  002c 1e05          	ldw	x,(OFST+5,sp)
2258  002e a30001        	cpw	x,#1
2259  0031 2603          	jrne	L423
2260  0033               L623:
2261  0033 4f            	clr	a
2262  0034 2010          	jra	L033
2263  0036               L423:
2264  0036 ae01af        	ldw	x,#431
2265  0039 89            	pushw	x
2266  003a ae0000        	ldw	x,#0
2267  003d 89            	pushw	x
2268  003e ae0000        	ldw	x,#L37
2269  0041 cd0000        	call	_assert_failed
2271  0044 5b04          	addw	sp,#4
2272  0046               L033:
2273                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2275  0046 1e07          	ldw	x,(OFST+7,sp)
2276  0048 a30001        	cpw	x,#1
2277  004b 270e          	jreq	L433
2278  004d 1e07          	ldw	x,(OFST+7,sp)
2279  004f a30002        	cpw	x,#2
2280  0052 2707          	jreq	L433
2281  0054 1e07          	ldw	x,(OFST+7,sp)
2282  0056 a30003        	cpw	x,#3
2283  0059 2603          	jrne	L233
2284  005b               L433:
2285  005b 4f            	clr	a
2286  005c 2010          	jra	L633
2287  005e               L233:
2288  005e ae01b0        	ldw	x,#432
2289  0061 89            	pushw	x
2290  0062 ae0000        	ldw	x,#0
2291  0065 89            	pushw	x
2292  0066 ae0000        	ldw	x,#L37
2293  0069 cd0000        	call	_assert_failed
2295  006c 5b04          	addw	sp,#4
2296  006e               L633:
2297                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2299  006e 1e09          	ldw	x,(OFST+9,sp)
2300  0070 2715          	jreq	L243
2301  0072 1e09          	ldw	x,(OFST+9,sp)
2302  0074 a30004        	cpw	x,#4
2303  0077 270e          	jreq	L243
2304  0079 1e09          	ldw	x,(OFST+9,sp)
2305  007b a30008        	cpw	x,#8
2306  007e 2707          	jreq	L243
2307  0080 1e09          	ldw	x,(OFST+9,sp)
2308  0082 a3000c        	cpw	x,#12
2309  0085 2603          	jrne	L043
2310  0087               L243:
2311  0087 4f            	clr	a
2312  0088 2010          	jra	L443
2313  008a               L043:
2314  008a ae01b1        	ldw	x,#433
2315  008d 89            	pushw	x
2316  008e ae0000        	ldw	x,#0
2317  0091 89            	pushw	x
2318  0092 ae0000        	ldw	x,#L37
2319  0095 cd0000        	call	_assert_failed
2321  0098 5b04          	addw	sp,#4
2322  009a               L443:
2323                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2325  009a 7b0b          	ld	a,(OFST+11,sp)
2326  009c a110          	cp	a,#16
2327  009e 2403          	jruge	L643
2328  00a0 4f            	clr	a
2329  00a1 2010          	jra	L053
2330  00a3               L643:
2331  00a3 ae01b2        	ldw	x,#434
2332  00a6 89            	pushw	x
2333  00a7 ae0000        	ldw	x,#0
2334  00aa 89            	pushw	x
2335  00ab ae0000        	ldw	x,#L37
2336  00ae cd0000        	call	_assert_failed
2338  00b1 5b04          	addw	sp,#4
2339  00b3               L053:
2340                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2342  00b3 1e01          	ldw	x,(OFST+1,sp)
2343  00b5 2614          	jrne	L746
2344                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2344                     ; 440                (uint8_t)TIM1_ICSelection,
2344                     ; 441                (uint8_t)TIM1_ICFilter);
2346  00b7 7b0b          	ld	a,(OFST+11,sp)
2347  00b9 88            	push	a
2348  00ba 7b09          	ld	a,(OFST+9,sp)
2349  00bc 97            	ld	xl,a
2350  00bd 7b07          	ld	a,(OFST+7,sp)
2351  00bf 95            	ld	xh,a
2352  00c0 cd0000        	call	L3_TI1_Config
2354  00c3 84            	pop	a
2355                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2357  00c4 1e09          	ldw	x,(OFST+9,sp)
2358  00c6 cd0000        	call	_TIM1_SetIC1Prescaler
2361  00c9 2048          	jra	L156
2362  00cb               L746:
2363                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2365  00cb 1e01          	ldw	x,(OFST+1,sp)
2366  00cd a30001        	cpw	x,#1
2367  00d0 2614          	jrne	L356
2368                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2368                     ; 449                (uint8_t)TIM1_ICSelection,
2368                     ; 450                (uint8_t)TIM1_ICFilter);
2370  00d2 7b0b          	ld	a,(OFST+11,sp)
2371  00d4 88            	push	a
2372  00d5 7b09          	ld	a,(OFST+9,sp)
2373  00d7 97            	ld	xl,a
2374  00d8 7b07          	ld	a,(OFST+7,sp)
2375  00da 95            	ld	xh,a
2376  00db cd0000        	call	L5_TI2_Config
2378  00de 84            	pop	a
2379                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2381  00df 1e09          	ldw	x,(OFST+9,sp)
2382  00e1 cd0000        	call	_TIM1_SetIC2Prescaler
2385  00e4 202d          	jra	L156
2386  00e6               L356:
2387                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2389  00e6 1e01          	ldw	x,(OFST+1,sp)
2390  00e8 a30002        	cpw	x,#2
2391  00eb 2614          	jrne	L756
2392                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2392                     ; 458                (uint8_t)TIM1_ICSelection,
2392                     ; 459                (uint8_t)TIM1_ICFilter);
2394  00ed 7b0b          	ld	a,(OFST+11,sp)
2395  00ef 88            	push	a
2396  00f0 7b09          	ld	a,(OFST+9,sp)
2397  00f2 97            	ld	xl,a
2398  00f3 7b07          	ld	a,(OFST+7,sp)
2399  00f5 95            	ld	xh,a
2400  00f6 cd0000        	call	L7_TI3_Config
2402  00f9 84            	pop	a
2403                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2405  00fa 1e09          	ldw	x,(OFST+9,sp)
2406  00fc cd0000        	call	_TIM1_SetIC3Prescaler
2409  00ff 2012          	jra	L156
2410  0101               L756:
2411                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2411                     ; 467                (uint8_t)TIM1_ICSelection,
2411                     ; 468                (uint8_t)TIM1_ICFilter);
2413  0101 7b0b          	ld	a,(OFST+11,sp)
2414  0103 88            	push	a
2415  0104 7b09          	ld	a,(OFST+9,sp)
2416  0106 97            	ld	xl,a
2417  0107 7b07          	ld	a,(OFST+7,sp)
2418  0109 95            	ld	xh,a
2419  010a cd0000        	call	L11_TI4_Config
2421  010d 84            	pop	a
2422                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2424  010e 1e09          	ldw	x,(OFST+9,sp)
2425  0110 cd0000        	call	_TIM1_SetIC4Prescaler
2427  0113               L156:
2428                     ; 472 }
2431  0113 85            	popw	x
2432  0114 81            	ret
2523                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2523                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2523                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2523                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2523                     ; 492                      uint8_t TIM1_ICFilter)
2523                     ; 493 {
2524                     .text:	section	.text,new
2525  0000               _TIM1_PWMIConfig:
2527  0000 89            	pushw	x
2528  0001 89            	pushw	x
2529       00000002      OFST:	set	2
2532                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2534                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2536                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2538  0002 a30000        	cpw	x,#0
2539  0005 2705          	jreq	L653
2540  0007 a30001        	cpw	x,#1
2541  000a 2603          	jrne	L453
2542  000c               L653:
2543  000c 4f            	clr	a
2544  000d 2010          	jra	L063
2545  000f               L453:
2546  000f ae01f2        	ldw	x,#498
2547  0012 89            	pushw	x
2548  0013 ae0000        	ldw	x,#0
2549  0016 89            	pushw	x
2550  0017 ae0000        	ldw	x,#L37
2551  001a cd0000        	call	_assert_failed
2553  001d 5b04          	addw	sp,#4
2554  001f               L063:
2555                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2557  001f 1e07          	ldw	x,(OFST+5,sp)
2558  0021 2707          	jreq	L463
2559  0023 1e07          	ldw	x,(OFST+5,sp)
2560  0025 a30001        	cpw	x,#1
2561  0028 2603          	jrne	L263
2562  002a               L463:
2563  002a 4f            	clr	a
2564  002b 2010          	jra	L663
2565  002d               L263:
2566  002d ae01f3        	ldw	x,#499
2567  0030 89            	pushw	x
2568  0031 ae0000        	ldw	x,#0
2569  0034 89            	pushw	x
2570  0035 ae0000        	ldw	x,#L37
2571  0038 cd0000        	call	_assert_failed
2573  003b 5b04          	addw	sp,#4
2574  003d               L663:
2575                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2577  003d 1e09          	ldw	x,(OFST+7,sp)
2578  003f a30001        	cpw	x,#1
2579  0042 270e          	jreq	L273
2580  0044 1e09          	ldw	x,(OFST+7,sp)
2581  0046 a30002        	cpw	x,#2
2582  0049 2707          	jreq	L273
2583  004b 1e09          	ldw	x,(OFST+7,sp)
2584  004d a30003        	cpw	x,#3
2585  0050 2603          	jrne	L073
2586  0052               L273:
2587  0052 4f            	clr	a
2588  0053 2010          	jra	L473
2589  0055               L073:
2590  0055 ae01f4        	ldw	x,#500
2591  0058 89            	pushw	x
2592  0059 ae0000        	ldw	x,#0
2593  005c 89            	pushw	x
2594  005d ae0000        	ldw	x,#L37
2595  0060 cd0000        	call	_assert_failed
2597  0063 5b04          	addw	sp,#4
2598  0065               L473:
2599                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2601  0065 1e0b          	ldw	x,(OFST+9,sp)
2602  0067 2715          	jreq	L004
2603  0069 1e0b          	ldw	x,(OFST+9,sp)
2604  006b a30004        	cpw	x,#4
2605  006e 270e          	jreq	L004
2606  0070 1e0b          	ldw	x,(OFST+9,sp)
2607  0072 a30008        	cpw	x,#8
2608  0075 2707          	jreq	L004
2609  0077 1e0b          	ldw	x,(OFST+9,sp)
2610  0079 a3000c        	cpw	x,#12
2611  007c 2603          	jrne	L673
2612  007e               L004:
2613  007e 4f            	clr	a
2614  007f 2010          	jra	L204
2615  0081               L673:
2616  0081 ae01f5        	ldw	x,#501
2617  0084 89            	pushw	x
2618  0085 ae0000        	ldw	x,#0
2619  0088 89            	pushw	x
2620  0089 ae0000        	ldw	x,#L37
2621  008c cd0000        	call	_assert_failed
2623  008f 5b04          	addw	sp,#4
2624  0091               L204:
2625                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2627  0091 1e07          	ldw	x,(OFST+5,sp)
2628  0093 a30001        	cpw	x,#1
2629  0096 2706          	jreq	L327
2630                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2632  0098 a601          	ld	a,#1
2633  009a 6b01          	ld	(OFST-1,sp),a
2635  009c 2002          	jra	L527
2636  009e               L327:
2637                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2639  009e 0f01          	clr	(OFST-1,sp)
2640  00a0               L527:
2641                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2643  00a0 1e09          	ldw	x,(OFST+7,sp)
2644  00a2 a30001        	cpw	x,#1
2645  00a5 2606          	jrne	L727
2646                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2648  00a7 a602          	ld	a,#2
2649  00a9 6b02          	ld	(OFST+0,sp),a
2651  00ab 2004          	jra	L137
2652  00ad               L727:
2653                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2655  00ad a601          	ld	a,#1
2656  00af 6b02          	ld	(OFST+0,sp),a
2657  00b1               L137:
2658                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2660  00b1 1e03          	ldw	x,(OFST+1,sp)
2661  00b3 2626          	jrne	L337
2662                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2662                     ; 527                (uint8_t)TIM1_ICFilter);
2664  00b5 7b0d          	ld	a,(OFST+11,sp)
2665  00b7 88            	push	a
2666  00b8 7b0b          	ld	a,(OFST+9,sp)
2667  00ba 97            	ld	xl,a
2668  00bb 7b09          	ld	a,(OFST+7,sp)
2669  00bd 95            	ld	xh,a
2670  00be cd0000        	call	L3_TI1_Config
2672  00c1 84            	pop	a
2673                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2675  00c2 1e0b          	ldw	x,(OFST+9,sp)
2676  00c4 cd0000        	call	_TIM1_SetIC1Prescaler
2678                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2680  00c7 7b0d          	ld	a,(OFST+11,sp)
2681  00c9 88            	push	a
2682  00ca 7b03          	ld	a,(OFST+1,sp)
2683  00cc 97            	ld	xl,a
2684  00cd 7b02          	ld	a,(OFST+0,sp)
2685  00cf 95            	ld	xh,a
2686  00d0 cd0000        	call	L5_TI2_Config
2688  00d3 84            	pop	a
2689                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2691  00d4 1e0b          	ldw	x,(OFST+9,sp)
2692  00d6 cd0000        	call	_TIM1_SetIC2Prescaler
2695  00d9 2024          	jra	L537
2696  00db               L337:
2697                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2697                     ; 542                (uint8_t)TIM1_ICFilter);
2699  00db 7b0d          	ld	a,(OFST+11,sp)
2700  00dd 88            	push	a
2701  00de 7b0b          	ld	a,(OFST+9,sp)
2702  00e0 97            	ld	xl,a
2703  00e1 7b09          	ld	a,(OFST+7,sp)
2704  00e3 95            	ld	xh,a
2705  00e4 cd0000        	call	L5_TI2_Config
2707  00e7 84            	pop	a
2708                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2710  00e8 1e0b          	ldw	x,(OFST+9,sp)
2711  00ea cd0000        	call	_TIM1_SetIC2Prescaler
2713                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2715  00ed 7b0d          	ld	a,(OFST+11,sp)
2716  00ef 88            	push	a
2717  00f0 7b03          	ld	a,(OFST+1,sp)
2718  00f2 97            	ld	xl,a
2719  00f3 7b02          	ld	a,(OFST+0,sp)
2720  00f5 95            	ld	xh,a
2721  00f6 cd0000        	call	L3_TI1_Config
2723  00f9 84            	pop	a
2724                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2726  00fa 1e0b          	ldw	x,(OFST+9,sp)
2727  00fc cd0000        	call	_TIM1_SetIC1Prescaler
2729  00ff               L537:
2730                     ; 553 }
2733  00ff 5b04          	addw	sp,#4
2734  0101 81            	ret
2790                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2790                     ; 562 {
2791                     .text:	section	.text,new
2792  0000               _TIM1_Cmd:
2794  0000 89            	pushw	x
2795       00000000      OFST:	set	0
2798                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2800  0001 a30000        	cpw	x,#0
2801  0004 2705          	jreq	L014
2802  0006 a30001        	cpw	x,#1
2803  0009 2603          	jrne	L604
2804  000b               L014:
2805  000b 4f            	clr	a
2806  000c 2010          	jra	L214
2807  000e               L604:
2808  000e ae0234        	ldw	x,#564
2809  0011 89            	pushw	x
2810  0012 ae0000        	ldw	x,#0
2811  0015 89            	pushw	x
2812  0016 ae0000        	ldw	x,#L37
2813  0019 cd0000        	call	_assert_failed
2815  001c 5b04          	addw	sp,#4
2816  001e               L214:
2817                     ; 567   if (NewState != DISABLE)
2819  001e 1e01          	ldw	x,(OFST+1,sp)
2820  0020 2706          	jreq	L567
2821                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2823  0022 72105250      	bset	21072,#0
2825  0026 2004          	jra	L767
2826  0028               L567:
2827                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2829  0028 72115250      	bres	21072,#0
2830  002c               L767:
2831                     ; 575 }
2834  002c 85            	popw	x
2835  002d 81            	ret
2872                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2872                     ; 584 {
2873                     .text:	section	.text,new
2874  0000               _TIM1_CtrlPWMOutputs:
2876  0000 89            	pushw	x
2877       00000000      OFST:	set	0
2880                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2882  0001 a30000        	cpw	x,#0
2883  0004 2705          	jreq	L024
2884  0006 a30001        	cpw	x,#1
2885  0009 2603          	jrne	L614
2886  000b               L024:
2887  000b 4f            	clr	a
2888  000c 2010          	jra	L224
2889  000e               L614:
2890  000e ae024a        	ldw	x,#586
2891  0011 89            	pushw	x
2892  0012 ae0000        	ldw	x,#0
2893  0015 89            	pushw	x
2894  0016 ae0000        	ldw	x,#L37
2895  0019 cd0000        	call	_assert_failed
2897  001c 5b04          	addw	sp,#4
2898  001e               L224:
2899                     ; 590   if (NewState != DISABLE)
2901  001e 1e01          	ldw	x,(OFST+1,sp)
2902  0020 2706          	jreq	L7001
2903                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2905  0022 721e526d      	bset	21101,#7
2907  0026 2004          	jra	L1101
2908  0028               L7001:
2909                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2911  0028 721f526d      	bres	21101,#7
2912  002c               L1101:
2913                     ; 598 }
2916  002c 85            	popw	x
2917  002d 81            	ret
3025                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3025                     ; 618 {
3026                     .text:	section	.text,new
3027  0000               _TIM1_ITConfig:
3029  0000 89            	pushw	x
3030       00000000      OFST:	set	0
3033                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3035  0001 a30000        	cpw	x,#0
3036  0004 2703          	jreq	L624
3037  0006 4f            	clr	a
3038  0007 2010          	jra	L034
3039  0009               L624:
3040  0009 ae026c        	ldw	x,#620
3041  000c 89            	pushw	x
3042  000d ae0000        	ldw	x,#0
3043  0010 89            	pushw	x
3044  0011 ae0000        	ldw	x,#L37
3045  0014 cd0000        	call	_assert_failed
3047  0017 5b04          	addw	sp,#4
3048  0019               L034:
3049                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3051  0019 1e05          	ldw	x,(OFST+5,sp)
3052  001b 2707          	jreq	L434
3053  001d 1e05          	ldw	x,(OFST+5,sp)
3054  001f a30001        	cpw	x,#1
3055  0022 2603          	jrne	L234
3056  0024               L434:
3057  0024 4f            	clr	a
3058  0025 2010          	jra	L634
3059  0027               L234:
3060  0027 ae026d        	ldw	x,#621
3061  002a 89            	pushw	x
3062  002b ae0000        	ldw	x,#0
3063  002e 89            	pushw	x
3064  002f ae0000        	ldw	x,#L37
3065  0032 cd0000        	call	_assert_failed
3067  0035 5b04          	addw	sp,#4
3068  0037               L634:
3069                     ; 623   if (NewState != DISABLE)
3071  0037 1e05          	ldw	x,(OFST+5,sp)
3072  0039 270a          	jreq	L1601
3073                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3075  003b c65254        	ld	a,21076
3076  003e 1a02          	or	a,(OFST+2,sp)
3077  0040 c75254        	ld	21076,a
3079  0043 2009          	jra	L3601
3080  0045               L1601:
3081                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3083  0045 7b02          	ld	a,(OFST+2,sp)
3084  0047 43            	cpl	a
3085  0048 c45254        	and	a,21076
3086  004b c75254        	ld	21076,a
3087  004e               L3601:
3088                     ; 633 }
3091  004e 85            	popw	x
3092  004f 81            	ret
3116                     ; 640 void TIM1_InternalClockConfig(void)
3116                     ; 641 {
3117                     .text:	section	.text,new
3118  0000               _TIM1_InternalClockConfig:
3122                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3124  0000 c65252        	ld	a,21074
3125  0003 a4f8          	and	a,#248
3126  0005 c75252        	ld	21074,a
3127                     ; 644 }
3130  0008 81            	ret
3246                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3246                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3246                     ; 664                               uint8_t ExtTRGFilter)
3246                     ; 665 {
3247                     .text:	section	.text,new
3248  0000               _TIM1_ETRClockMode1Config:
3250  0000 89            	pushw	x
3251       00000000      OFST:	set	0
3254                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3256  0001 a30000        	cpw	x,#0
3257  0004 270f          	jreq	L644
3258  0006 a30010        	cpw	x,#16
3259  0009 270a          	jreq	L644
3260  000b a30020        	cpw	x,#32
3261  000e 2705          	jreq	L644
3262  0010 a30030        	cpw	x,#48
3263  0013 2603          	jrne	L444
3264  0015               L644:
3265  0015 4f            	clr	a
3266  0016 2010          	jra	L054
3267  0018               L444:
3268  0018 ae029b        	ldw	x,#667
3269  001b 89            	pushw	x
3270  001c ae0000        	ldw	x,#0
3271  001f 89            	pushw	x
3272  0020 ae0000        	ldw	x,#L37
3273  0023 cd0000        	call	_assert_failed
3275  0026 5b04          	addw	sp,#4
3276  0028               L054:
3277                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3279  0028 1e05          	ldw	x,(OFST+5,sp)
3280  002a a30080        	cpw	x,#128
3281  002d 2704          	jreq	L454
3282  002f 1e05          	ldw	x,(OFST+5,sp)
3283  0031 2603          	jrne	L254
3284  0033               L454:
3285  0033 4f            	clr	a
3286  0034 2010          	jra	L654
3287  0036               L254:
3288  0036 ae029c        	ldw	x,#668
3289  0039 89            	pushw	x
3290  003a ae0000        	ldw	x,#0
3291  003d 89            	pushw	x
3292  003e ae0000        	ldw	x,#L37
3293  0041 cd0000        	call	_assert_failed
3295  0044 5b04          	addw	sp,#4
3296  0046               L654:
3297                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3299  0046 7b07          	ld	a,(OFST+7,sp)
3300  0048 88            	push	a
3301  0049 1e06          	ldw	x,(OFST+6,sp)
3302  004b 89            	pushw	x
3303  004c 1e04          	ldw	x,(OFST+4,sp)
3304  004e cd0000        	call	_TIM1_ETRConfig
3306  0051 5b03          	addw	sp,#3
3307                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3307                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3309  0053 c65252        	ld	a,21074
3310  0056 a488          	and	a,#136
3311  0058 aa77          	or	a,#119
3312  005a c75252        	ld	21074,a
3313                     ; 676 }
3316  005d 85            	popw	x
3317  005e 81            	ret
3374                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3374                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3374                     ; 696                               uint8_t ExtTRGFilter)
3374                     ; 697 {
3375                     .text:	section	.text,new
3376  0000               _TIM1_ETRClockMode2Config:
3378  0000 89            	pushw	x
3379       00000000      OFST:	set	0
3382                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3384  0001 a30000        	cpw	x,#0
3385  0004 270f          	jreq	L464
3386  0006 a30010        	cpw	x,#16
3387  0009 270a          	jreq	L464
3388  000b a30020        	cpw	x,#32
3389  000e 2705          	jreq	L464
3390  0010 a30030        	cpw	x,#48
3391  0013 2603          	jrne	L264
3392  0015               L464:
3393  0015 4f            	clr	a
3394  0016 2010          	jra	L664
3395  0018               L264:
3396  0018 ae02bb        	ldw	x,#699
3397  001b 89            	pushw	x
3398  001c ae0000        	ldw	x,#0
3399  001f 89            	pushw	x
3400  0020 ae0000        	ldw	x,#L37
3401  0023 cd0000        	call	_assert_failed
3403  0026 5b04          	addw	sp,#4
3404  0028               L664:
3405                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3407  0028 1e05          	ldw	x,(OFST+5,sp)
3408  002a a30080        	cpw	x,#128
3409  002d 2704          	jreq	L274
3410  002f 1e05          	ldw	x,(OFST+5,sp)
3411  0031 2603          	jrne	L074
3412  0033               L274:
3413  0033 4f            	clr	a
3414  0034 2010          	jra	L474
3415  0036               L074:
3416  0036 ae02bc        	ldw	x,#700
3417  0039 89            	pushw	x
3418  003a ae0000        	ldw	x,#0
3419  003d 89            	pushw	x
3420  003e ae0000        	ldw	x,#L37
3421  0041 cd0000        	call	_assert_failed
3423  0044 5b04          	addw	sp,#4
3424  0046               L474:
3425                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3427  0046 7b07          	ld	a,(OFST+7,sp)
3428  0048 88            	push	a
3429  0049 1e06          	ldw	x,(OFST+6,sp)
3430  004b 89            	pushw	x
3431  004c 1e04          	ldw	x,(OFST+4,sp)
3432  004e cd0000        	call	_TIM1_ETRConfig
3434  0051 5b03          	addw	sp,#3
3435                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3437  0053 721c5253      	bset	21075,#6
3438                     ; 707 }
3441  0057 85            	popw	x
3442  0058 81            	ret
3497                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3497                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3497                     ; 727                     uint8_t ExtTRGFilter)
3497                     ; 728 {
3498                     .text:	section	.text,new
3499  0000               _TIM1_ETRConfig:
3501  0000 89            	pushw	x
3502       00000000      OFST:	set	0
3505                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3507  0001 7b07          	ld	a,(OFST+7,sp)
3508  0003 a110          	cp	a,#16
3509  0005 2403          	jruge	L005
3510  0007 4f            	clr	a
3511  0008 2010          	jra	L205
3512  000a               L005:
3513  000a ae02da        	ldw	x,#730
3514  000d 89            	pushw	x
3515  000e ae0000        	ldw	x,#0
3516  0011 89            	pushw	x
3517  0012 ae0000        	ldw	x,#L37
3518  0015 cd0000        	call	_assert_failed
3520  0018 5b04          	addw	sp,#4
3521  001a               L205:
3522                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3522                     ; 733                          (uint8_t)ExtTRGFilter );
3524  001a 7b06          	ld	a,(OFST+6,sp)
3525  001c 1a02          	or	a,(OFST+2,sp)
3526  001e 1a07          	or	a,(OFST+7,sp)
3527  0020 ca5253        	or	a,21075
3528  0023 c75253        	ld	21075,a
3529                     ; 734 }
3532  0026 85            	popw	x
3533  0027 81            	ret
3621                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3621                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3621                     ; 753                                  uint8_t ICFilter)
3621                     ; 754 {
3622                     .text:	section	.text,new
3623  0000               _TIM1_TIxExternalClockConfig:
3625  0000 89            	pushw	x
3626       00000000      OFST:	set	0
3629                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3631  0001 a30040        	cpw	x,#64
3632  0004 270a          	jreq	L015
3633  0006 a30060        	cpw	x,#96
3634  0009 2705          	jreq	L015
3635  000b a30050        	cpw	x,#80
3636  000e 2603          	jrne	L605
3637  0010               L015:
3638  0010 4f            	clr	a
3639  0011 2010          	jra	L215
3640  0013               L605:
3641  0013 ae02f4        	ldw	x,#756
3642  0016 89            	pushw	x
3643  0017 ae0000        	ldw	x,#0
3644  001a 89            	pushw	x
3645  001b ae0000        	ldw	x,#L37
3646  001e cd0000        	call	_assert_failed
3648  0021 5b04          	addw	sp,#4
3649  0023               L215:
3650                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3652  0023 1e05          	ldw	x,(OFST+5,sp)
3653  0025 2707          	jreq	L615
3654  0027 1e05          	ldw	x,(OFST+5,sp)
3655  0029 a30001        	cpw	x,#1
3656  002c 2603          	jrne	L415
3657  002e               L615:
3658  002e 4f            	clr	a
3659  002f 2010          	jra	L025
3660  0031               L415:
3661  0031 ae02f5        	ldw	x,#757
3662  0034 89            	pushw	x
3663  0035 ae0000        	ldw	x,#0
3664  0038 89            	pushw	x
3665  0039 ae0000        	ldw	x,#L37
3666  003c cd0000        	call	_assert_failed
3668  003f 5b04          	addw	sp,#4
3669  0041               L025:
3670                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3672  0041 7b07          	ld	a,(OFST+7,sp)
3673  0043 a110          	cp	a,#16
3674  0045 2403          	jruge	L225
3675  0047 4f            	clr	a
3676  0048 2010          	jra	L425
3677  004a               L225:
3678  004a ae02f6        	ldw	x,#758
3679  004d 89            	pushw	x
3680  004e ae0000        	ldw	x,#0
3681  0051 89            	pushw	x
3682  0052 ae0000        	ldw	x,#L37
3683  0055 cd0000        	call	_assert_failed
3685  0058 5b04          	addw	sp,#4
3686  005a               L425:
3687                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3689  005a 1e01          	ldw	x,(OFST+1,sp)
3690  005c a30060        	cpw	x,#96
3691  005f 260f          	jrne	L3521
3692                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3694  0061 7b07          	ld	a,(OFST+7,sp)
3695  0063 88            	push	a
3696  0064 ae0001        	ldw	x,#1
3697  0067 7b07          	ld	a,(OFST+7,sp)
3698  0069 95            	ld	xh,a
3699  006a cd0000        	call	L5_TI2_Config
3701  006d 84            	pop	a
3703  006e 200d          	jra	L5521
3704  0070               L3521:
3705                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3707  0070 7b07          	ld	a,(OFST+7,sp)
3708  0072 88            	push	a
3709  0073 ae0001        	ldw	x,#1
3710  0076 7b07          	ld	a,(OFST+7,sp)
3711  0078 95            	ld	xh,a
3712  0079 cd0000        	call	L3_TI1_Config
3714  007c 84            	pop	a
3715  007d               L5521:
3716                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3718  007d 1e01          	ldw	x,(OFST+1,sp)
3719  007f cd0000        	call	_TIM1_SelectInputTrigger
3721                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3723  0082 c65252        	ld	a,21074
3724  0085 aa07          	or	a,#7
3725  0087 c75252        	ld	21074,a
3726                     ; 775 }
3729  008a 85            	popw	x
3730  008b 81            	ret
3816                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3816                     ; 788 {
3817                     .text:	section	.text,new
3818  0000               _TIM1_SelectInputTrigger:
3820  0000 89            	pushw	x
3821       00000000      OFST:	set	0
3824                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3826  0001 a30040        	cpw	x,#64
3827  0004 2719          	jreq	L235
3828  0006 a30050        	cpw	x,#80
3829  0009 2714          	jreq	L235
3830  000b a30060        	cpw	x,#96
3831  000e 270f          	jreq	L235
3832  0010 a30070        	cpw	x,#112
3833  0013 270a          	jreq	L235
3834  0015 a30030        	cpw	x,#48
3835  0018 2705          	jreq	L235
3836  001a a30000        	cpw	x,#0
3837  001d 2603          	jrne	L035
3838  001f               L235:
3839  001f 4f            	clr	a
3840  0020 2010          	jra	L435
3841  0022               L035:
3842  0022 ae0316        	ldw	x,#790
3843  0025 89            	pushw	x
3844  0026 ae0000        	ldw	x,#0
3845  0029 89            	pushw	x
3846  002a ae0000        	ldw	x,#L37
3847  002d cd0000        	call	_assert_failed
3849  0030 5b04          	addw	sp,#4
3850  0032               L435:
3851                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3853  0032 c65252        	ld	a,21074
3854  0035 a48f          	and	a,#143
3855  0037 1a02          	or	a,(OFST+2,sp)
3856  0039 c75252        	ld	21074,a
3857                     ; 794 }
3860  003c 85            	popw	x
3861  003d 81            	ret
3898                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3898                     ; 804 {
3899                     .text:	section	.text,new
3900  0000               _TIM1_UpdateDisableConfig:
3902  0000 89            	pushw	x
3903       00000000      OFST:	set	0
3906                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3908  0001 a30000        	cpw	x,#0
3909  0004 2705          	jreq	L245
3910  0006 a30001        	cpw	x,#1
3911  0009 2603          	jrne	L045
3912  000b               L245:
3913  000b 4f            	clr	a
3914  000c 2010          	jra	L445
3915  000e               L045:
3916  000e ae0326        	ldw	x,#806
3917  0011 89            	pushw	x
3918  0012 ae0000        	ldw	x,#0
3919  0015 89            	pushw	x
3920  0016 ae0000        	ldw	x,#L37
3921  0019 cd0000        	call	_assert_failed
3923  001c 5b04          	addw	sp,#4
3924  001e               L445:
3925                     ; 809   if (NewState != DISABLE)
3927  001e 1e01          	ldw	x,(OFST+1,sp)
3928  0020 2706          	jreq	L3331
3929                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3931  0022 72125250      	bset	21072,#1
3933  0026 2004          	jra	L5331
3934  0028               L3331:
3935                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3937  0028 72135250      	bres	21072,#1
3938  002c               L5331:
3939                     ; 817 }
3942  002c 85            	popw	x
3943  002d 81            	ret
4002                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4002                     ; 828 {
4003                     .text:	section	.text,new
4004  0000               _TIM1_UpdateRequestConfig:
4006  0000 89            	pushw	x
4007       00000000      OFST:	set	0
4010                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4012  0001 a30000        	cpw	x,#0
4013  0004 2705          	jreq	L255
4014  0006 a30001        	cpw	x,#1
4015  0009 2603          	jrne	L055
4016  000b               L255:
4017  000b 4f            	clr	a
4018  000c 2010          	jra	L455
4019  000e               L055:
4020  000e ae033e        	ldw	x,#830
4021  0011 89            	pushw	x
4022  0012 ae0000        	ldw	x,#0
4023  0015 89            	pushw	x
4024  0016 ae0000        	ldw	x,#L37
4025  0019 cd0000        	call	_assert_failed
4027  001c 5b04          	addw	sp,#4
4028  001e               L455:
4029                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4031  001e 1e01          	ldw	x,(OFST+1,sp)
4032  0020 2706          	jreq	L5631
4033                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4035  0022 72145250      	bset	21072,#2
4037  0026 2004          	jra	L7631
4038  0028               L5631:
4039                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4041  0028 72155250      	bres	21072,#2
4042  002c               L7631:
4043                     ; 841 }
4046  002c 85            	popw	x
4047  002d 81            	ret
4084                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4084                     ; 850 {
4085                     .text:	section	.text,new
4086  0000               _TIM1_SelectHallSensor:
4088  0000 89            	pushw	x
4089       00000000      OFST:	set	0
4092                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4094  0001 a30000        	cpw	x,#0
4095  0004 2705          	jreq	L265
4096  0006 a30001        	cpw	x,#1
4097  0009 2603          	jrne	L065
4098  000b               L265:
4099  000b 4f            	clr	a
4100  000c 2010          	jra	L465
4101  000e               L065:
4102  000e ae0354        	ldw	x,#852
4103  0011 89            	pushw	x
4104  0012 ae0000        	ldw	x,#0
4105  0015 89            	pushw	x
4106  0016 ae0000        	ldw	x,#L37
4107  0019 cd0000        	call	_assert_failed
4109  001c 5b04          	addw	sp,#4
4110  001e               L465:
4111                     ; 855   if (NewState != DISABLE)
4113  001e 1e01          	ldw	x,(OFST+1,sp)
4114  0020 2706          	jreq	L7041
4115                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4117  0022 721e5251      	bset	21073,#7
4119  0026 2004          	jra	L1141
4120  0028               L7041:
4121                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4123  0028 721f5251      	bres	21073,#7
4124  002c               L1141:
4125                     ; 863 }
4128  002c 85            	popw	x
4129  002d 81            	ret
4187                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4187                     ; 874 {
4188                     .text:	section	.text,new
4189  0000               _TIM1_SelectOnePulseMode:
4191  0000 89            	pushw	x
4192       00000000      OFST:	set	0
4195                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4197  0001 a30001        	cpw	x,#1
4198  0004 2705          	jreq	L275
4199  0006 a30000        	cpw	x,#0
4200  0009 2603          	jrne	L075
4201  000b               L275:
4202  000b 4f            	clr	a
4203  000c 2010          	jra	L475
4204  000e               L075:
4205  000e ae036c        	ldw	x,#876
4206  0011 89            	pushw	x
4207  0012 ae0000        	ldw	x,#0
4208  0015 89            	pushw	x
4209  0016 ae0000        	ldw	x,#L37
4210  0019 cd0000        	call	_assert_failed
4212  001c 5b04          	addw	sp,#4
4213  001e               L475:
4214                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4216  001e 1e01          	ldw	x,(OFST+1,sp)
4217  0020 2706          	jreq	L1441
4218                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4220  0022 72165250      	bset	21072,#3
4222  0026 2004          	jra	L3441
4223  0028               L1441:
4224                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4226  0028 72175250      	bres	21072,#3
4227  002c               L3441:
4228                     ; 888 }
4231  002c 85            	popw	x
4232  002d 81            	ret
4331                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4331                     ; 904 {
4332                     .text:	section	.text,new
4333  0000               _TIM1_SelectOutputTrigger:
4335  0000 89            	pushw	x
4336       00000000      OFST:	set	0
4339                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4341  0001 a30000        	cpw	x,#0
4342  0004 271e          	jreq	L206
4343  0006 a30010        	cpw	x,#16
4344  0009 2719          	jreq	L206
4345  000b a30020        	cpw	x,#32
4346  000e 2714          	jreq	L206
4347  0010 a30030        	cpw	x,#48
4348  0013 270f          	jreq	L206
4349  0015 a30040        	cpw	x,#64
4350  0018 270a          	jreq	L206
4351  001a a30050        	cpw	x,#80
4352  001d 2705          	jreq	L206
4353  001f a30060        	cpw	x,#96
4354  0022 2603          	jrne	L006
4355  0024               L206:
4356  0024 4f            	clr	a
4357  0025 2010          	jra	L406
4358  0027               L006:
4359  0027 ae038a        	ldw	x,#906
4360  002a 89            	pushw	x
4361  002b ae0000        	ldw	x,#0
4362  002e 89            	pushw	x
4363  002f ae0000        	ldw	x,#L37
4364  0032 cd0000        	call	_assert_failed
4366  0035 5b04          	addw	sp,#4
4367  0037               L406:
4368                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4368                     ; 910                         (uint8_t) TIM1_TRGOSource);
4370  0037 c65251        	ld	a,21073
4371  003a a48f          	and	a,#143
4372  003c 1a02          	or	a,(OFST+2,sp)
4373  003e c75251        	ld	21073,a
4374                     ; 911 }
4377  0041 85            	popw	x
4378  0042 81            	ret
4453                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4453                     ; 924 {
4454                     .text:	section	.text,new
4455  0000               _TIM1_SelectSlaveMode:
4457  0000 89            	pushw	x
4458       00000000      OFST:	set	0
4461                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4463  0001 a30004        	cpw	x,#4
4464  0004 270f          	jreq	L216
4465  0006 a30005        	cpw	x,#5
4466  0009 270a          	jreq	L216
4467  000b a30006        	cpw	x,#6
4468  000e 2705          	jreq	L216
4469  0010 a30007        	cpw	x,#7
4470  0013 2603          	jrne	L016
4471  0015               L216:
4472  0015 4f            	clr	a
4473  0016 2010          	jra	L416
4474  0018               L016:
4475  0018 ae039e        	ldw	x,#926
4476  001b 89            	pushw	x
4477  001c ae0000        	ldw	x,#0
4478  001f 89            	pushw	x
4479  0020 ae0000        	ldw	x,#L37
4480  0023 cd0000        	call	_assert_failed
4482  0026 5b04          	addw	sp,#4
4483  0028               L416:
4484                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4484                     ; 930                          (uint8_t)TIM1_SlaveMode);
4486  0028 c65252        	ld	a,21074
4487  002b a4f8          	and	a,#248
4488  002d 1a02          	or	a,(OFST+2,sp)
4489  002f c75252        	ld	21074,a
4490                     ; 931 }
4493  0032 85            	popw	x
4494  0033 81            	ret
4531                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4531                     ; 940 {
4532                     .text:	section	.text,new
4533  0000               _TIM1_SelectMasterSlaveMode:
4535  0000 89            	pushw	x
4536       00000000      OFST:	set	0
4539                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4541  0001 a30000        	cpw	x,#0
4542  0004 2705          	jreq	L226
4543  0006 a30001        	cpw	x,#1
4544  0009 2603          	jrne	L026
4545  000b               L226:
4546  000b 4f            	clr	a
4547  000c 2010          	jra	L426
4548  000e               L026:
4549  000e ae03ae        	ldw	x,#942
4550  0011 89            	pushw	x
4551  0012 ae0000        	ldw	x,#0
4552  0015 89            	pushw	x
4553  0016 ae0000        	ldw	x,#L37
4554  0019 cd0000        	call	_assert_failed
4556  001c 5b04          	addw	sp,#4
4557  001e               L426:
4558                     ; 945   if (NewState != DISABLE)
4560  001e 1e01          	ldw	x,(OFST+1,sp)
4561  0020 2706          	jreq	L5551
4562                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4564  0022 721e5252      	bset	21074,#7
4566  0026 2004          	jra	L7551
4567  0028               L5551:
4568                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4570  0028 721f5252      	bres	21074,#7
4571  002c               L7551:
4572                     ; 953 }
4575  002c 85            	popw	x
4576  002d 81            	ret
4663                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4663                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4663                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4663                     ; 978 {
4664                     .text:	section	.text,new
4665  0000               _TIM1_EncoderInterfaceConfig:
4667  0000 89            	pushw	x
4668       00000000      OFST:	set	0
4671                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4673  0001 a30001        	cpw	x,#1
4674  0004 270a          	jreq	L236
4675  0006 a30002        	cpw	x,#2
4676  0009 2705          	jreq	L236
4677  000b a30003        	cpw	x,#3
4678  000e 2603          	jrne	L036
4679  0010               L236:
4680  0010 4f            	clr	a
4681  0011 2010          	jra	L436
4682  0013               L036:
4683  0013 ae03d4        	ldw	x,#980
4684  0016 89            	pushw	x
4685  0017 ae0000        	ldw	x,#0
4686  001a 89            	pushw	x
4687  001b ae0000        	ldw	x,#L37
4688  001e cd0000        	call	_assert_failed
4690  0021 5b04          	addw	sp,#4
4691  0023               L436:
4692                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4694  0023 1e05          	ldw	x,(OFST+5,sp)
4695  0025 2707          	jreq	L046
4696  0027 1e05          	ldw	x,(OFST+5,sp)
4697  0029 a30001        	cpw	x,#1
4698  002c 2603          	jrne	L636
4699  002e               L046:
4700  002e 4f            	clr	a
4701  002f 2010          	jra	L246
4702  0031               L636:
4703  0031 ae03d5        	ldw	x,#981
4704  0034 89            	pushw	x
4705  0035 ae0000        	ldw	x,#0
4706  0038 89            	pushw	x
4707  0039 ae0000        	ldw	x,#L37
4708  003c cd0000        	call	_assert_failed
4710  003f 5b04          	addw	sp,#4
4711  0041               L246:
4712                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4714  0041 1e07          	ldw	x,(OFST+7,sp)
4715  0043 2707          	jreq	L646
4716  0045 1e07          	ldw	x,(OFST+7,sp)
4717  0047 a30001        	cpw	x,#1
4718  004a 2603          	jrne	L446
4719  004c               L646:
4720  004c 4f            	clr	a
4721  004d 2010          	jra	L056
4722  004f               L446:
4723  004f ae03d6        	ldw	x,#982
4724  0052 89            	pushw	x
4725  0053 ae0000        	ldw	x,#0
4726  0056 89            	pushw	x
4727  0057 ae0000        	ldw	x,#L37
4728  005a cd0000        	call	_assert_failed
4730  005d 5b04          	addw	sp,#4
4731  005f               L056:
4732                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4734  005f 1e05          	ldw	x,(OFST+5,sp)
4735  0061 2706          	jreq	L1261
4736                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4738  0063 7212525c      	bset	21084,#1
4740  0067 2004          	jra	L3261
4741  0069               L1261:
4742                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4744  0069 7213525c      	bres	21084,#1
4745  006d               L3261:
4746                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4748  006d 1e07          	ldw	x,(OFST+7,sp)
4749  006f 2706          	jreq	L5261
4750                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4752  0071 721a525c      	bset	21084,#5
4754  0075 2004          	jra	L7261
4755  0077               L5261:
4756                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4758  0077 721b525c      	bres	21084,#5
4759  007b               L7261:
4760                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4760                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4762  007b c65252        	ld	a,21074
4763  007e a4f0          	and	a,#240
4764  0080 1a02          	or	a,(OFST+2,sp)
4765  0082 c75252        	ld	21074,a
4766                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4766                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4768  0085 c65258        	ld	a,21080
4769  0088 a4fc          	and	a,#252
4770  008a aa01          	or	a,#1
4771  008c c75258        	ld	21080,a
4772                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4772                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4774  008f c65259        	ld	a,21081
4775  0092 a4fc          	and	a,#252
4776  0094 aa01          	or	a,#1
4777  0096 c75259        	ld	21081,a
4778                     ; 1011 }
4781  0099 85            	popw	x
4782  009a 81            	ret
4848                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4848                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4848                     ; 1025 {
4849                     .text:	section	.text,new
4850  0000               _TIM1_PrescalerConfig:
4852  0000 89            	pushw	x
4853       00000000      OFST:	set	0
4856                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4858  0001 1e05          	ldw	x,(OFST+5,sp)
4859  0003 2707          	jreq	L656
4860  0005 1e05          	ldw	x,(OFST+5,sp)
4861  0007 a30001        	cpw	x,#1
4862  000a 2603          	jrne	L456
4863  000c               L656:
4864  000c 4f            	clr	a
4865  000d 2010          	jra	L066
4866  000f               L456:
4867  000f ae0403        	ldw	x,#1027
4868  0012 89            	pushw	x
4869  0013 ae0000        	ldw	x,#0
4870  0016 89            	pushw	x
4871  0017 ae0000        	ldw	x,#L37
4872  001a cd0000        	call	_assert_failed
4874  001d 5b04          	addw	sp,#4
4875  001f               L066:
4876                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4878  001f 7b01          	ld	a,(OFST+1,sp)
4879  0021 c75260        	ld	21088,a
4880                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4882  0024 7b02          	ld	a,(OFST+2,sp)
4883  0026 c75261        	ld	21089,a
4884                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4886  0029 7b06          	ld	a,(OFST+6,sp)
4887  002b c75257        	ld	21079,a
4888                     ; 1035 }
4891  002e 85            	popw	x
4892  002f 81            	ret
4929                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4929                     ; 1049 {
4930                     .text:	section	.text,new
4931  0000               _TIM1_CounterModeConfig:
4933  0000 89            	pushw	x
4934       00000000      OFST:	set	0
4937                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4939  0001 a30000        	cpw	x,#0
4940  0004 2714          	jreq	L666
4941  0006 a30010        	cpw	x,#16
4942  0009 270f          	jreq	L666
4943  000b a30020        	cpw	x,#32
4944  000e 270a          	jreq	L666
4945  0010 a30040        	cpw	x,#64
4946  0013 2705          	jreq	L666
4947  0015 a30060        	cpw	x,#96
4948  0018 2603          	jrne	L466
4949  001a               L666:
4950  001a 4f            	clr	a
4951  001b 2010          	jra	L076
4952  001d               L466:
4953  001d ae041b        	ldw	x,#1051
4954  0020 89            	pushw	x
4955  0021 ae0000        	ldw	x,#0
4956  0024 89            	pushw	x
4957  0025 ae0000        	ldw	x,#L37
4958  0028 cd0000        	call	_assert_failed
4960  002b 5b04          	addw	sp,#4
4961  002d               L076:
4962                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4962                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4964  002d c65250        	ld	a,21072
4965  0030 a48f          	and	a,#143
4966  0032 1a02          	or	a,(OFST+2,sp)
4967  0034 c75250        	ld	21072,a
4968                     ; 1057 }
4971  0037 85            	popw	x
4972  0038 81            	ret
5031                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5031                     ; 1068 {
5032                     .text:	section	.text,new
5033  0000               _TIM1_ForcedOC1Config:
5035  0000 89            	pushw	x
5036       00000000      OFST:	set	0
5039                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5041  0001 a30050        	cpw	x,#80
5042  0004 2705          	jreq	L676
5043  0006 a30040        	cpw	x,#64
5044  0009 2603          	jrne	L476
5045  000b               L676:
5046  000b 4f            	clr	a
5047  000c 2010          	jra	L007
5048  000e               L476:
5049  000e ae042e        	ldw	x,#1070
5050  0011 89            	pushw	x
5051  0012 ae0000        	ldw	x,#0
5052  0015 89            	pushw	x
5053  0016 ae0000        	ldw	x,#L37
5054  0019 cd0000        	call	_assert_failed
5056  001c 5b04          	addw	sp,#4
5057  001e               L007:
5058                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5058                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5060  001e c65258        	ld	a,21080
5061  0021 a48f          	and	a,#143
5062  0023 1a02          	or	a,(OFST+2,sp)
5063  0025 c75258        	ld	21080,a
5064                     ; 1075 }
5067  0028 85            	popw	x
5068  0029 81            	ret
5105                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5105                     ; 1086 {
5106                     .text:	section	.text,new
5107  0000               _TIM1_ForcedOC2Config:
5109  0000 89            	pushw	x
5110       00000000      OFST:	set	0
5113                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5115  0001 a30050        	cpw	x,#80
5116  0004 2705          	jreq	L607
5117  0006 a30040        	cpw	x,#64
5118  0009 2603          	jrne	L407
5119  000b               L607:
5120  000b 4f            	clr	a
5121  000c 2010          	jra	L017
5122  000e               L407:
5123  000e ae0440        	ldw	x,#1088
5124  0011 89            	pushw	x
5125  0012 ae0000        	ldw	x,#0
5126  0015 89            	pushw	x
5127  0016 ae0000        	ldw	x,#L37
5128  0019 cd0000        	call	_assert_failed
5130  001c 5b04          	addw	sp,#4
5131  001e               L017:
5132                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5132                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5134  001e c65259        	ld	a,21081
5135  0021 a48f          	and	a,#143
5136  0023 1a02          	or	a,(OFST+2,sp)
5137  0025 c75259        	ld	21081,a
5138                     ; 1093 }
5141  0028 85            	popw	x
5142  0029 81            	ret
5179                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5179                     ; 1105 {
5180                     .text:	section	.text,new
5181  0000               _TIM1_ForcedOC3Config:
5183  0000 89            	pushw	x
5184       00000000      OFST:	set	0
5187                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5189  0001 a30050        	cpw	x,#80
5190  0004 2705          	jreq	L617
5191  0006 a30040        	cpw	x,#64
5192  0009 2603          	jrne	L417
5193  000b               L617:
5194  000b 4f            	clr	a
5195  000c 2010          	jra	L027
5196  000e               L417:
5197  000e ae0453        	ldw	x,#1107
5198  0011 89            	pushw	x
5199  0012 ae0000        	ldw	x,#0
5200  0015 89            	pushw	x
5201  0016 ae0000        	ldw	x,#L37
5202  0019 cd0000        	call	_assert_failed
5204  001c 5b04          	addw	sp,#4
5205  001e               L027:
5206                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5206                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5208  001e c6525a        	ld	a,21082
5209  0021 a48f          	and	a,#143
5210  0023 1a02          	or	a,(OFST+2,sp)
5211  0025 c7525a        	ld	21082,a
5212                     ; 1112 }
5215  0028 85            	popw	x
5216  0029 81            	ret
5253                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5253                     ; 1124 {
5254                     .text:	section	.text,new
5255  0000               _TIM1_ForcedOC4Config:
5257  0000 89            	pushw	x
5258       00000000      OFST:	set	0
5261                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5263  0001 a30050        	cpw	x,#80
5264  0004 2705          	jreq	L627
5265  0006 a30040        	cpw	x,#64
5266  0009 2603          	jrne	L427
5267  000b               L627:
5268  000b 4f            	clr	a
5269  000c 2010          	jra	L037
5270  000e               L427:
5271  000e ae0466        	ldw	x,#1126
5272  0011 89            	pushw	x
5273  0012 ae0000        	ldw	x,#0
5274  0015 89            	pushw	x
5275  0016 ae0000        	ldw	x,#L37
5276  0019 cd0000        	call	_assert_failed
5278  001c 5b04          	addw	sp,#4
5279  001e               L037:
5280                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5280                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5282  001e c6525b        	ld	a,21083
5283  0021 a48f          	and	a,#143
5284  0023 1a02          	or	a,(OFST+2,sp)
5285  0025 c7525b        	ld	21083,a
5286                     ; 1131 }
5289  0028 85            	popw	x
5290  0029 81            	ret
5327                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5327                     ; 1140 {
5328                     .text:	section	.text,new
5329  0000               _TIM1_ARRPreloadConfig:
5331  0000 89            	pushw	x
5332       00000000      OFST:	set	0
5335                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5337  0001 a30000        	cpw	x,#0
5338  0004 2705          	jreq	L637
5339  0006 a30001        	cpw	x,#1
5340  0009 2603          	jrne	L437
5341  000b               L637:
5342  000b 4f            	clr	a
5343  000c 2010          	jra	L047
5344  000e               L437:
5345  000e ae0476        	ldw	x,#1142
5346  0011 89            	pushw	x
5347  0012 ae0000        	ldw	x,#0
5348  0015 89            	pushw	x
5349  0016 ae0000        	ldw	x,#L37
5350  0019 cd0000        	call	_assert_failed
5352  001c 5b04          	addw	sp,#4
5353  001e               L047:
5354                     ; 1145   if (NewState != DISABLE)
5356  001e 1e01          	ldw	x,(OFST+1,sp)
5357  0020 2706          	jreq	L5102
5358                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5360  0022 721e5250      	bset	21072,#7
5362  0026 2004          	jra	L7102
5363  0028               L5102:
5364                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5366  0028 721f5250      	bres	21072,#7
5367  002c               L7102:
5368                     ; 1153 }
5371  002c 85            	popw	x
5372  002d 81            	ret
5408                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5408                     ; 1162 {
5409                     .text:	section	.text,new
5410  0000               _TIM1_SelectCOM:
5412  0000 89            	pushw	x
5413       00000000      OFST:	set	0
5416                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5418  0001 a30000        	cpw	x,#0
5419  0004 2705          	jreq	L647
5420  0006 a30001        	cpw	x,#1
5421  0009 2603          	jrne	L447
5422  000b               L647:
5423  000b 4f            	clr	a
5424  000c 2010          	jra	L057
5425  000e               L447:
5426  000e ae048c        	ldw	x,#1164
5427  0011 89            	pushw	x
5428  0012 ae0000        	ldw	x,#0
5429  0015 89            	pushw	x
5430  0016 ae0000        	ldw	x,#L37
5431  0019 cd0000        	call	_assert_failed
5433  001c 5b04          	addw	sp,#4
5434  001e               L057:
5435                     ; 1167   if (NewState != DISABLE)
5437  001e 1e01          	ldw	x,(OFST+1,sp)
5438  0020 2706          	jreq	L7302
5439                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5441  0022 72145251      	bset	21073,#2
5443  0026 2004          	jra	L1402
5444  0028               L7302:
5445                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5447  0028 72155251      	bres	21073,#2
5448  002c               L1402:
5449                     ; 1175 }
5452  002c 85            	popw	x
5453  002d 81            	ret
5490                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5490                     ; 1184 {
5491                     .text:	section	.text,new
5492  0000               _TIM1_CCPreloadControl:
5494  0000 89            	pushw	x
5495       00000000      OFST:	set	0
5498                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5500  0001 a30000        	cpw	x,#0
5501  0004 2705          	jreq	L657
5502  0006 a30001        	cpw	x,#1
5503  0009 2603          	jrne	L457
5504  000b               L657:
5505  000b 4f            	clr	a
5506  000c 2010          	jra	L067
5507  000e               L457:
5508  000e ae04a2        	ldw	x,#1186
5509  0011 89            	pushw	x
5510  0012 ae0000        	ldw	x,#0
5511  0015 89            	pushw	x
5512  0016 ae0000        	ldw	x,#L37
5513  0019 cd0000        	call	_assert_failed
5515  001c 5b04          	addw	sp,#4
5516  001e               L067:
5517                     ; 1189   if (NewState != DISABLE)
5519  001e 1e01          	ldw	x,(OFST+1,sp)
5520  0020 2706          	jreq	L1602
5521                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5523  0022 72105251      	bset	21073,#0
5525  0026 2004          	jra	L3602
5526  0028               L1602:
5527                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5529  0028 72115251      	bres	21073,#0
5530  002c               L3602:
5531                     ; 1197 }
5534  002c 85            	popw	x
5535  002d 81            	ret
5572                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5572                     ; 1206 {
5573                     .text:	section	.text,new
5574  0000               _TIM1_OC1PreloadConfig:
5576  0000 89            	pushw	x
5577       00000000      OFST:	set	0
5580                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5582  0001 a30000        	cpw	x,#0
5583  0004 2705          	jreq	L667
5584  0006 a30001        	cpw	x,#1
5585  0009 2603          	jrne	L467
5586  000b               L667:
5587  000b 4f            	clr	a
5588  000c 2010          	jra	L077
5589  000e               L467:
5590  000e ae04b8        	ldw	x,#1208
5591  0011 89            	pushw	x
5592  0012 ae0000        	ldw	x,#0
5593  0015 89            	pushw	x
5594  0016 ae0000        	ldw	x,#L37
5595  0019 cd0000        	call	_assert_failed
5597  001c 5b04          	addw	sp,#4
5598  001e               L077:
5599                     ; 1211   if (NewState != DISABLE)
5601  001e 1e01          	ldw	x,(OFST+1,sp)
5602  0020 2706          	jreq	L3012
5603                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5605  0022 72165258      	bset	21080,#3
5607  0026 2004          	jra	L5012
5608  0028               L3012:
5609                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5611  0028 72175258      	bres	21080,#3
5612  002c               L5012:
5613                     ; 1219 }
5616  002c 85            	popw	x
5617  002d 81            	ret
5654                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5654                     ; 1228 {
5655                     .text:	section	.text,new
5656  0000               _TIM1_OC2PreloadConfig:
5658  0000 89            	pushw	x
5659       00000000      OFST:	set	0
5662                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5664  0001 a30000        	cpw	x,#0
5665  0004 2705          	jreq	L677
5666  0006 a30001        	cpw	x,#1
5667  0009 2603          	jrne	L477
5668  000b               L677:
5669  000b 4f            	clr	a
5670  000c 2010          	jra	L0001
5671  000e               L477:
5672  000e ae04ce        	ldw	x,#1230
5673  0011 89            	pushw	x
5674  0012 ae0000        	ldw	x,#0
5675  0015 89            	pushw	x
5676  0016 ae0000        	ldw	x,#L37
5677  0019 cd0000        	call	_assert_failed
5679  001c 5b04          	addw	sp,#4
5680  001e               L0001:
5681                     ; 1233   if (NewState != DISABLE)
5683  001e 1e01          	ldw	x,(OFST+1,sp)
5684  0020 2706          	jreq	L5212
5685                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5687  0022 72165259      	bset	21081,#3
5689  0026 2004          	jra	L7212
5690  0028               L5212:
5691                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5693  0028 72175259      	bres	21081,#3
5694  002c               L7212:
5695                     ; 1241 }
5698  002c 85            	popw	x
5699  002d 81            	ret
5736                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5736                     ; 1250 {
5737                     .text:	section	.text,new
5738  0000               _TIM1_OC3PreloadConfig:
5740  0000 89            	pushw	x
5741       00000000      OFST:	set	0
5744                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5746  0001 a30000        	cpw	x,#0
5747  0004 2705          	jreq	L6001
5748  0006 a30001        	cpw	x,#1
5749  0009 2603          	jrne	L4001
5750  000b               L6001:
5751  000b 4f            	clr	a
5752  000c 2010          	jra	L0101
5753  000e               L4001:
5754  000e ae04e4        	ldw	x,#1252
5755  0011 89            	pushw	x
5756  0012 ae0000        	ldw	x,#0
5757  0015 89            	pushw	x
5758  0016 ae0000        	ldw	x,#L37
5759  0019 cd0000        	call	_assert_failed
5761  001c 5b04          	addw	sp,#4
5762  001e               L0101:
5763                     ; 1255   if (NewState != DISABLE)
5765  001e 1e01          	ldw	x,(OFST+1,sp)
5766  0020 2706          	jreq	L7412
5767                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5769  0022 7216525a      	bset	21082,#3
5771  0026 2004          	jra	L1512
5772  0028               L7412:
5773                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5775  0028 7217525a      	bres	21082,#3
5776  002c               L1512:
5777                     ; 1263 }
5780  002c 85            	popw	x
5781  002d 81            	ret
5818                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5818                     ; 1272 {
5819                     .text:	section	.text,new
5820  0000               _TIM1_OC4PreloadConfig:
5822  0000 89            	pushw	x
5823       00000000      OFST:	set	0
5826                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5828  0001 a30000        	cpw	x,#0
5829  0004 2705          	jreq	L6101
5830  0006 a30001        	cpw	x,#1
5831  0009 2603          	jrne	L4101
5832  000b               L6101:
5833  000b 4f            	clr	a
5834  000c 2010          	jra	L0201
5835  000e               L4101:
5836  000e ae04fa        	ldw	x,#1274
5837  0011 89            	pushw	x
5838  0012 ae0000        	ldw	x,#0
5839  0015 89            	pushw	x
5840  0016 ae0000        	ldw	x,#L37
5841  0019 cd0000        	call	_assert_failed
5843  001c 5b04          	addw	sp,#4
5844  001e               L0201:
5845                     ; 1277   if (NewState != DISABLE)
5847  001e 1e01          	ldw	x,(OFST+1,sp)
5848  0020 2706          	jreq	L1712
5849                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5851  0022 7216525b      	bset	21083,#3
5853  0026 2004          	jra	L3712
5854  0028               L1712:
5855                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5857  0028 7217525b      	bres	21083,#3
5858  002c               L3712:
5859                     ; 1285 }
5862  002c 85            	popw	x
5863  002d 81            	ret
5899                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5899                     ; 1294 {
5900                     .text:	section	.text,new
5901  0000               _TIM1_OC1FastConfig:
5903  0000 89            	pushw	x
5904       00000000      OFST:	set	0
5907                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5909  0001 a30000        	cpw	x,#0
5910  0004 2705          	jreq	L6201
5911  0006 a30001        	cpw	x,#1
5912  0009 2603          	jrne	L4201
5913  000b               L6201:
5914  000b 4f            	clr	a
5915  000c 2010          	jra	L0301
5916  000e               L4201:
5917  000e ae0510        	ldw	x,#1296
5918  0011 89            	pushw	x
5919  0012 ae0000        	ldw	x,#0
5920  0015 89            	pushw	x
5921  0016 ae0000        	ldw	x,#L37
5922  0019 cd0000        	call	_assert_failed
5924  001c 5b04          	addw	sp,#4
5925  001e               L0301:
5926                     ; 1299   if (NewState != DISABLE)
5928  001e 1e01          	ldw	x,(OFST+1,sp)
5929  0020 2706          	jreq	L3122
5930                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5932  0022 72145258      	bset	21080,#2
5934  0026 2004          	jra	L5122
5935  0028               L3122:
5936                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5938  0028 72155258      	bres	21080,#2
5939  002c               L5122:
5940                     ; 1307 }
5943  002c 85            	popw	x
5944  002d 81            	ret
5980                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5980                     ; 1316 {
5981                     .text:	section	.text,new
5982  0000               _TIM1_OC2FastConfig:
5984  0000 89            	pushw	x
5985       00000000      OFST:	set	0
5988                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5990  0001 a30000        	cpw	x,#0
5991  0004 2705          	jreq	L6301
5992  0006 a30001        	cpw	x,#1
5993  0009 2603          	jrne	L4301
5994  000b               L6301:
5995  000b 4f            	clr	a
5996  000c 2010          	jra	L0401
5997  000e               L4301:
5998  000e ae0526        	ldw	x,#1318
5999  0011 89            	pushw	x
6000  0012 ae0000        	ldw	x,#0
6001  0015 89            	pushw	x
6002  0016 ae0000        	ldw	x,#L37
6003  0019 cd0000        	call	_assert_failed
6005  001c 5b04          	addw	sp,#4
6006  001e               L0401:
6007                     ; 1321   if (NewState != DISABLE)
6009  001e 1e01          	ldw	x,(OFST+1,sp)
6010  0020 2706          	jreq	L5322
6011                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6013  0022 72145259      	bset	21081,#2
6015  0026 2004          	jra	L7322
6016  0028               L5322:
6017                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6019  0028 72155259      	bres	21081,#2
6020  002c               L7322:
6021                     ; 1329 }
6024  002c 85            	popw	x
6025  002d 81            	ret
6061                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6061                     ; 1338 {
6062                     .text:	section	.text,new
6063  0000               _TIM1_OC3FastConfig:
6065  0000 89            	pushw	x
6066       00000000      OFST:	set	0
6069                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6071  0001 a30000        	cpw	x,#0
6072  0004 2705          	jreq	L6401
6073  0006 a30001        	cpw	x,#1
6074  0009 2603          	jrne	L4401
6075  000b               L6401:
6076  000b 4f            	clr	a
6077  000c 2010          	jra	L0501
6078  000e               L4401:
6079  000e ae053c        	ldw	x,#1340
6080  0011 89            	pushw	x
6081  0012 ae0000        	ldw	x,#0
6082  0015 89            	pushw	x
6083  0016 ae0000        	ldw	x,#L37
6084  0019 cd0000        	call	_assert_failed
6086  001c 5b04          	addw	sp,#4
6087  001e               L0501:
6088                     ; 1343   if (NewState != DISABLE)
6090  001e 1e01          	ldw	x,(OFST+1,sp)
6091  0020 2706          	jreq	L7522
6092                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6094  0022 7214525a      	bset	21082,#2
6096  0026 2004          	jra	L1622
6097  0028               L7522:
6098                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6100  0028 7215525a      	bres	21082,#2
6101  002c               L1622:
6102                     ; 1351 }
6105  002c 85            	popw	x
6106  002d 81            	ret
6142                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6142                     ; 1360 {
6143                     .text:	section	.text,new
6144  0000               _TIM1_OC4FastConfig:
6146  0000 89            	pushw	x
6147       00000000      OFST:	set	0
6150                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6152  0001 a30000        	cpw	x,#0
6153  0004 2705          	jreq	L6501
6154  0006 a30001        	cpw	x,#1
6155  0009 2603          	jrne	L4501
6156  000b               L6501:
6157  000b 4f            	clr	a
6158  000c 2010          	jra	L0601
6159  000e               L4501:
6160  000e ae0552        	ldw	x,#1362
6161  0011 89            	pushw	x
6162  0012 ae0000        	ldw	x,#0
6163  0015 89            	pushw	x
6164  0016 ae0000        	ldw	x,#L37
6165  0019 cd0000        	call	_assert_failed
6167  001c 5b04          	addw	sp,#4
6168  001e               L0601:
6169                     ; 1365   if (NewState != DISABLE)
6171  001e 1e01          	ldw	x,(OFST+1,sp)
6172  0020 2706          	jreq	L1032
6173                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6175  0022 7214525b      	bset	21083,#2
6177  0026 2004          	jra	L3032
6178  0028               L1032:
6179                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6181  0028 7215525b      	bres	21083,#2
6182  002c               L3032:
6183                     ; 1373 }
6186  002c 85            	popw	x
6187  002d 81            	ret
6293                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6293                     ; 1390 {
6294                     .text:	section	.text,new
6295  0000               _TIM1_GenerateEvent:
6297  0000 89            	pushw	x
6298       00000000      OFST:	set	0
6301                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6303  0001 a30000        	cpw	x,#0
6304  0004 2703          	jreq	L4601
6305  0006 4f            	clr	a
6306  0007 2010          	jra	L6601
6307  0009               L4601:
6308  0009 ae0570        	ldw	x,#1392
6309  000c 89            	pushw	x
6310  000d ae0000        	ldw	x,#0
6311  0010 89            	pushw	x
6312  0011 ae0000        	ldw	x,#L37
6313  0014 cd0000        	call	_assert_failed
6315  0017 5b04          	addw	sp,#4
6316  0019               L6601:
6317                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6319  0019 7b02          	ld	a,(OFST+2,sp)
6320  001b c75257        	ld	21079,a
6321                     ; 1396 }
6324  001e 85            	popw	x
6325  001f 81            	ret
6362                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6362                     ; 1407 {
6363                     .text:	section	.text,new
6364  0000               _TIM1_OC1PolarityConfig:
6366  0000 89            	pushw	x
6367       00000000      OFST:	set	0
6370                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6372  0001 a30000        	cpw	x,#0
6373  0004 2705          	jreq	L4701
6374  0006 a30022        	cpw	x,#34
6375  0009 2603          	jrne	L2701
6376  000b               L4701:
6377  000b 4f            	clr	a
6378  000c 2010          	jra	L6701
6379  000e               L2701:
6380  000e ae0581        	ldw	x,#1409
6381  0011 89            	pushw	x
6382  0012 ae0000        	ldw	x,#0
6383  0015 89            	pushw	x
6384  0016 ae0000        	ldw	x,#L37
6385  0019 cd0000        	call	_assert_failed
6387  001c 5b04          	addw	sp,#4
6388  001e               L6701:
6389                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6391  001e 1e01          	ldw	x,(OFST+1,sp)
6392  0020 2706          	jreq	L5632
6393                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6395  0022 7212525c      	bset	21084,#1
6397  0026 2004          	jra	L7632
6398  0028               L5632:
6399                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6401  0028 7213525c      	bres	21084,#1
6402  002c               L7632:
6403                     ; 1420 }
6406  002c 85            	popw	x
6407  002d 81            	ret
6444                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6444                     ; 1431 {
6445                     .text:	section	.text,new
6446  0000               _TIM1_OC1NPolarityConfig:
6448  0000 89            	pushw	x
6449       00000000      OFST:	set	0
6452                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6454  0001 a30000        	cpw	x,#0
6455  0004 2705          	jreq	L4011
6456  0006 a30088        	cpw	x,#136
6457  0009 2603          	jrne	L2011
6458  000b               L4011:
6459  000b 4f            	clr	a
6460  000c 2010          	jra	L6011
6461  000e               L2011:
6462  000e ae0599        	ldw	x,#1433
6463  0011 89            	pushw	x
6464  0012 ae0000        	ldw	x,#0
6465  0015 89            	pushw	x
6466  0016 ae0000        	ldw	x,#L37
6467  0019 cd0000        	call	_assert_failed
6469  001c 5b04          	addw	sp,#4
6470  001e               L6011:
6471                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6473  001e 1e01          	ldw	x,(OFST+1,sp)
6474  0020 2706          	jreq	L7042
6475                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6477  0022 7216525c      	bset	21084,#3
6479  0026 2004          	jra	L1142
6480  0028               L7042:
6481                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6483  0028 7217525c      	bres	21084,#3
6484  002c               L1142:
6485                     ; 1444 }
6488  002c 85            	popw	x
6489  002d 81            	ret
6526                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6526                     ; 1455 {
6527                     .text:	section	.text,new
6528  0000               _TIM1_OC2PolarityConfig:
6530  0000 89            	pushw	x
6531       00000000      OFST:	set	0
6534                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6536  0001 a30000        	cpw	x,#0
6537  0004 2705          	jreq	L4111
6538  0006 a30022        	cpw	x,#34
6539  0009 2603          	jrne	L2111
6540  000b               L4111:
6541  000b 4f            	clr	a
6542  000c 2010          	jra	L6111
6543  000e               L2111:
6544  000e ae05b1        	ldw	x,#1457
6545  0011 89            	pushw	x
6546  0012 ae0000        	ldw	x,#0
6547  0015 89            	pushw	x
6548  0016 ae0000        	ldw	x,#L37
6549  0019 cd0000        	call	_assert_failed
6551  001c 5b04          	addw	sp,#4
6552  001e               L6111:
6553                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6555  001e 1e01          	ldw	x,(OFST+1,sp)
6556  0020 2706          	jreq	L1342
6557                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6559  0022 721a525c      	bset	21084,#5
6561  0026 2004          	jra	L3342
6562  0028               L1342:
6563                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6565  0028 721b525c      	bres	21084,#5
6566  002c               L3342:
6567                     ; 1468 }
6570  002c 85            	popw	x
6571  002d 81            	ret
6608                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6608                     ; 1479 {
6609                     .text:	section	.text,new
6610  0000               _TIM1_OC2NPolarityConfig:
6612  0000 89            	pushw	x
6613       00000000      OFST:	set	0
6616                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6618  0001 a30000        	cpw	x,#0
6619  0004 2705          	jreq	L4211
6620  0006 a30088        	cpw	x,#136
6621  0009 2603          	jrne	L2211
6622  000b               L4211:
6623  000b 4f            	clr	a
6624  000c 2010          	jra	L6211
6625  000e               L2211:
6626  000e ae05c9        	ldw	x,#1481
6627  0011 89            	pushw	x
6628  0012 ae0000        	ldw	x,#0
6629  0015 89            	pushw	x
6630  0016 ae0000        	ldw	x,#L37
6631  0019 cd0000        	call	_assert_failed
6633  001c 5b04          	addw	sp,#4
6634  001e               L6211:
6635                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6637  001e 1e01          	ldw	x,(OFST+1,sp)
6638  0020 2706          	jreq	L3542
6639                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6641  0022 721e525c      	bset	21084,#7
6643  0026 2004          	jra	L5542
6644  0028               L3542:
6645                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6647  0028 721f525c      	bres	21084,#7
6648  002c               L5542:
6649                     ; 1492 }
6652  002c 85            	popw	x
6653  002d 81            	ret
6690                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6690                     ; 1503 {
6691                     .text:	section	.text,new
6692  0000               _TIM1_OC3PolarityConfig:
6694  0000 89            	pushw	x
6695       00000000      OFST:	set	0
6698                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6700  0001 a30000        	cpw	x,#0
6701  0004 2705          	jreq	L4311
6702  0006 a30022        	cpw	x,#34
6703  0009 2603          	jrne	L2311
6704  000b               L4311:
6705  000b 4f            	clr	a
6706  000c 2010          	jra	L6311
6707  000e               L2311:
6708  000e ae05e1        	ldw	x,#1505
6709  0011 89            	pushw	x
6710  0012 ae0000        	ldw	x,#0
6711  0015 89            	pushw	x
6712  0016 ae0000        	ldw	x,#L37
6713  0019 cd0000        	call	_assert_failed
6715  001c 5b04          	addw	sp,#4
6716  001e               L6311:
6717                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6719  001e 1e01          	ldw	x,(OFST+1,sp)
6720  0020 2706          	jreq	L5742
6721                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6723  0022 7212525d      	bset	21085,#1
6725  0026 2004          	jra	L7742
6726  0028               L5742:
6727                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6729  0028 7213525d      	bres	21085,#1
6730  002c               L7742:
6731                     ; 1516 }
6734  002c 85            	popw	x
6735  002d 81            	ret
6772                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6772                     ; 1528 {
6773                     .text:	section	.text,new
6774  0000               _TIM1_OC3NPolarityConfig:
6776  0000 89            	pushw	x
6777       00000000      OFST:	set	0
6780                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6782  0001 a30000        	cpw	x,#0
6783  0004 2705          	jreq	L4411
6784  0006 a30088        	cpw	x,#136
6785  0009 2603          	jrne	L2411
6786  000b               L4411:
6787  000b 4f            	clr	a
6788  000c 2010          	jra	L6411
6789  000e               L2411:
6790  000e ae05fa        	ldw	x,#1530
6791  0011 89            	pushw	x
6792  0012 ae0000        	ldw	x,#0
6793  0015 89            	pushw	x
6794  0016 ae0000        	ldw	x,#L37
6795  0019 cd0000        	call	_assert_failed
6797  001c 5b04          	addw	sp,#4
6798  001e               L6411:
6799                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6801  001e 1e01          	ldw	x,(OFST+1,sp)
6802  0020 2706          	jreq	L7152
6803                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6805  0022 7216525d      	bset	21085,#3
6807  0026 2004          	jra	L1252
6808  0028               L7152:
6809                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6811  0028 7217525d      	bres	21085,#3
6812  002c               L1252:
6813                     ; 1541 }
6816  002c 85            	popw	x
6817  002d 81            	ret
6854                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6854                     ; 1552 {
6855                     .text:	section	.text,new
6856  0000               _TIM1_OC4PolarityConfig:
6858  0000 89            	pushw	x
6859       00000000      OFST:	set	0
6862                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6864  0001 a30000        	cpw	x,#0
6865  0004 2705          	jreq	L4511
6866  0006 a30022        	cpw	x,#34
6867  0009 2603          	jrne	L2511
6868  000b               L4511:
6869  000b 4f            	clr	a
6870  000c 2010          	jra	L6511
6871  000e               L2511:
6872  000e ae0612        	ldw	x,#1554
6873  0011 89            	pushw	x
6874  0012 ae0000        	ldw	x,#0
6875  0015 89            	pushw	x
6876  0016 ae0000        	ldw	x,#L37
6877  0019 cd0000        	call	_assert_failed
6879  001c 5b04          	addw	sp,#4
6880  001e               L6511:
6881                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6883  001e 1e01          	ldw	x,(OFST+1,sp)
6884  0020 2706          	jreq	L1452
6885                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6887  0022 721a525d      	bset	21085,#5
6889  0026 2004          	jra	L3452
6890  0028               L1452:
6891                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6893  0028 721b525d      	bres	21085,#5
6894  002c               L3452:
6895                     ; 1565 }
6898  002c 85            	popw	x
6899  002d 81            	ret
6945                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6945                     ; 1580 {
6946                     .text:	section	.text,new
6947  0000               _TIM1_CCxCmd:
6949  0000 89            	pushw	x
6950       00000000      OFST:	set	0
6953                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6955  0001 a30000        	cpw	x,#0
6956  0004 270f          	jreq	L4611
6957  0006 a30001        	cpw	x,#1
6958  0009 270a          	jreq	L4611
6959  000b a30002        	cpw	x,#2
6960  000e 2705          	jreq	L4611
6961  0010 a30003        	cpw	x,#3
6962  0013 2603          	jrne	L2611
6963  0015               L4611:
6964  0015 4f            	clr	a
6965  0016 2010          	jra	L6611
6966  0018               L2611:
6967  0018 ae062e        	ldw	x,#1582
6968  001b 89            	pushw	x
6969  001c ae0000        	ldw	x,#0
6970  001f 89            	pushw	x
6971  0020 ae0000        	ldw	x,#L37
6972  0023 cd0000        	call	_assert_failed
6974  0026 5b04          	addw	sp,#4
6975  0028               L6611:
6976                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6978  0028 1e05          	ldw	x,(OFST+5,sp)
6979  002a 2707          	jreq	L2711
6980  002c 1e05          	ldw	x,(OFST+5,sp)
6981  002e a30001        	cpw	x,#1
6982  0031 2603          	jrne	L0711
6983  0033               L2711:
6984  0033 4f            	clr	a
6985  0034 2010          	jra	L4711
6986  0036               L0711:
6987  0036 ae062f        	ldw	x,#1583
6988  0039 89            	pushw	x
6989  003a ae0000        	ldw	x,#0
6990  003d 89            	pushw	x
6991  003e ae0000        	ldw	x,#L37
6992  0041 cd0000        	call	_assert_failed
6994  0044 5b04          	addw	sp,#4
6995  0046               L4711:
6996                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6998  0046 1e01          	ldw	x,(OFST+1,sp)
6999  0048 2610          	jrne	L7652
7000                     ; 1588     if (NewState != DISABLE)
7002  004a 1e05          	ldw	x,(OFST+5,sp)
7003  004c 2706          	jreq	L1752
7004                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7006  004e 7210525c      	bset	21084,#0
7008  0052 2042          	jra	L5752
7009  0054               L1752:
7010                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7012  0054 7211525c      	bres	21084,#0
7013  0058 203c          	jra	L5752
7014  005a               L7652:
7015                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7017  005a 1e01          	ldw	x,(OFST+1,sp)
7018  005c a30001        	cpw	x,#1
7019  005f 2610          	jrne	L7752
7020                     ; 1601     if (NewState != DISABLE)
7022  0061 1e05          	ldw	x,(OFST+5,sp)
7023  0063 2706          	jreq	L1062
7024                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7026  0065 7218525c      	bset	21084,#4
7028  0069 202b          	jra	L5752
7029  006b               L1062:
7030                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7032  006b 7219525c      	bres	21084,#4
7033  006f 2025          	jra	L5752
7034  0071               L7752:
7035                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7037  0071 1e01          	ldw	x,(OFST+1,sp)
7038  0073 a30002        	cpw	x,#2
7039  0076 2610          	jrne	L7062
7040                     ; 1613     if (NewState != DISABLE)
7042  0078 1e05          	ldw	x,(OFST+5,sp)
7043  007a 2706          	jreq	L1162
7044                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7046  007c 7210525d      	bset	21085,#0
7048  0080 2014          	jra	L5752
7049  0082               L1162:
7050                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7052  0082 7211525d      	bres	21085,#0
7053  0086 200e          	jra	L5752
7054  0088               L7062:
7055                     ; 1625     if (NewState != DISABLE)
7057  0088 1e05          	ldw	x,(OFST+5,sp)
7058  008a 2706          	jreq	L7162
7059                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7061  008c 7218525d      	bset	21085,#4
7063  0090 2004          	jra	L5752
7064  0092               L7162:
7065                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7067  0092 7219525d      	bres	21085,#4
7068  0096               L5752:
7069                     ; 1634 }
7072  0096 85            	popw	x
7073  0097 81            	ret
7119                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7119                     ; 1648 {
7120                     .text:	section	.text,new
7121  0000               _TIM1_CCxNCmd:
7123  0000 89            	pushw	x
7124       00000000      OFST:	set	0
7127                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7129  0001 a30000        	cpw	x,#0
7130  0004 270a          	jreq	L2021
7131  0006 a30001        	cpw	x,#1
7132  0009 2705          	jreq	L2021
7133  000b a30002        	cpw	x,#2
7134  000e 2603          	jrne	L0021
7135  0010               L2021:
7136  0010 4f            	clr	a
7137  0011 2010          	jra	L4021
7138  0013               L0021:
7139  0013 ae0672        	ldw	x,#1650
7140  0016 89            	pushw	x
7141  0017 ae0000        	ldw	x,#0
7142  001a 89            	pushw	x
7143  001b ae0000        	ldw	x,#L37
7144  001e cd0000        	call	_assert_failed
7146  0021 5b04          	addw	sp,#4
7147  0023               L4021:
7148                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7150  0023 1e05          	ldw	x,(OFST+5,sp)
7151  0025 2707          	jreq	L0121
7152  0027 1e05          	ldw	x,(OFST+5,sp)
7153  0029 a30001        	cpw	x,#1
7154  002c 2603          	jrne	L6021
7155  002e               L0121:
7156  002e 4f            	clr	a
7157  002f 2010          	jra	L2121
7158  0031               L6021:
7159  0031 ae0673        	ldw	x,#1651
7160  0034 89            	pushw	x
7161  0035 ae0000        	ldw	x,#0
7162  0038 89            	pushw	x
7163  0039 ae0000        	ldw	x,#L37
7164  003c cd0000        	call	_assert_failed
7166  003f 5b04          	addw	sp,#4
7167  0041               L2121:
7168                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7170  0041 1e01          	ldw	x,(OFST+1,sp)
7171  0043 2610          	jrne	L5462
7172                     ; 1656     if (NewState != DISABLE)
7174  0045 1e05          	ldw	x,(OFST+5,sp)
7175  0047 2706          	jreq	L7462
7176                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7178  0049 7214525c      	bset	21084,#2
7180  004d 202b          	jra	L3562
7181  004f               L7462:
7182                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7184  004f 7215525c      	bres	21084,#2
7185  0053 2025          	jra	L3562
7186  0055               L5462:
7187                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7189  0055 1e01          	ldw	x,(OFST+1,sp)
7190  0057 a30001        	cpw	x,#1
7191  005a 2610          	jrne	L5562
7192                     ; 1668     if (NewState != DISABLE)
7194  005c 1e05          	ldw	x,(OFST+5,sp)
7195  005e 2706          	jreq	L7562
7196                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7198  0060 721c525c      	bset	21084,#6
7200  0064 2014          	jra	L3562
7201  0066               L7562:
7202                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7204  0066 721d525c      	bres	21084,#6
7205  006a 200e          	jra	L3562
7206  006c               L5562:
7207                     ; 1680     if (NewState != DISABLE)
7209  006c 1e05          	ldw	x,(OFST+5,sp)
7210  006e 2706          	jreq	L5662
7211                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7213  0070 7214525d      	bset	21085,#2
7215  0074 2004          	jra	L3562
7216  0076               L5662:
7217                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7219  0076 7215525d      	bres	21085,#2
7220  007a               L3562:
7221                     ; 1689 }
7224  007a 85            	popw	x
7225  007b 81            	ret
7271                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7271                     ; 1713 {
7272                     .text:	section	.text,new
7273  0000               _TIM1_SelectOCxM:
7275  0000 89            	pushw	x
7276       00000000      OFST:	set	0
7279                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7281  0001 a30000        	cpw	x,#0
7282  0004 270f          	jreq	L0221
7283  0006 a30001        	cpw	x,#1
7284  0009 270a          	jreq	L0221
7285  000b a30002        	cpw	x,#2
7286  000e 2705          	jreq	L0221
7287  0010 a30003        	cpw	x,#3
7288  0013 2603          	jrne	L6121
7289  0015               L0221:
7290  0015 4f            	clr	a
7291  0016 2010          	jra	L2221
7292  0018               L6121:
7293  0018 ae06b3        	ldw	x,#1715
7294  001b 89            	pushw	x
7295  001c ae0000        	ldw	x,#0
7296  001f 89            	pushw	x
7297  0020 ae0000        	ldw	x,#L37
7298  0023 cd0000        	call	_assert_failed
7300  0026 5b04          	addw	sp,#4
7301  0028               L2221:
7302                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7304  0028 1e05          	ldw	x,(OFST+5,sp)
7305  002a 2731          	jreq	L6221
7306  002c 1e05          	ldw	x,(OFST+5,sp)
7307  002e a30010        	cpw	x,#16
7308  0031 272a          	jreq	L6221
7309  0033 1e05          	ldw	x,(OFST+5,sp)
7310  0035 a30020        	cpw	x,#32
7311  0038 2723          	jreq	L6221
7312  003a 1e05          	ldw	x,(OFST+5,sp)
7313  003c a30030        	cpw	x,#48
7314  003f 271c          	jreq	L6221
7315  0041 1e05          	ldw	x,(OFST+5,sp)
7316  0043 a30060        	cpw	x,#96
7317  0046 2715          	jreq	L6221
7318  0048 1e05          	ldw	x,(OFST+5,sp)
7319  004a a30070        	cpw	x,#112
7320  004d 270e          	jreq	L6221
7321  004f 1e05          	ldw	x,(OFST+5,sp)
7322  0051 a30050        	cpw	x,#80
7323  0054 2707          	jreq	L6221
7324  0056 1e05          	ldw	x,(OFST+5,sp)
7325  0058 a30040        	cpw	x,#64
7326  005b 2603          	jrne	L4221
7327  005d               L6221:
7328  005d 4f            	clr	a
7329  005e 2010          	jra	L0321
7330  0060               L4221:
7331  0060 ae06b4        	ldw	x,#1716
7332  0063 89            	pushw	x
7333  0064 ae0000        	ldw	x,#0
7334  0067 89            	pushw	x
7335  0068 ae0000        	ldw	x,#L37
7336  006b cd0000        	call	_assert_failed
7338  006e 5b04          	addw	sp,#4
7339  0070               L0321:
7340                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7342  0070 1e01          	ldw	x,(OFST+1,sp)
7343  0072 2610          	jrne	L3172
7344                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7346  0074 7211525c      	bres	21084,#0
7347                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7347                     ; 1725                             | (uint8_t)TIM1_OCMode);
7349  0078 c65258        	ld	a,21080
7350  007b a48f          	and	a,#143
7351  007d 1a06          	or	a,(OFST+6,sp)
7352  007f c75258        	ld	21080,a
7354  0082 203c          	jra	L5172
7355  0084               L3172:
7356                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7358  0084 1e01          	ldw	x,(OFST+1,sp)
7359  0086 a30001        	cpw	x,#1
7360  0089 2610          	jrne	L7172
7361                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7363  008b 7219525c      	bres	21084,#4
7364                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7364                     ; 1734                             | (uint8_t)TIM1_OCMode);
7366  008f c65259        	ld	a,21081
7367  0092 a48f          	and	a,#143
7368  0094 1a06          	or	a,(OFST+6,sp)
7369  0096 c75259        	ld	21081,a
7371  0099 2025          	jra	L5172
7372  009b               L7172:
7373                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7375  009b 1e01          	ldw	x,(OFST+1,sp)
7376  009d a30002        	cpw	x,#2
7377  00a0 2610          	jrne	L3272
7378                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7380  00a2 7211525d      	bres	21085,#0
7381                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7381                     ; 1743                             | (uint8_t)TIM1_OCMode);
7383  00a6 c6525a        	ld	a,21082
7384  00a9 a48f          	and	a,#143
7385  00ab 1a06          	or	a,(OFST+6,sp)
7386  00ad c7525a        	ld	21082,a
7388  00b0 200e          	jra	L5172
7389  00b2               L3272:
7390                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7392  00b2 7219525d      	bres	21085,#4
7393                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7393                     ; 1752                             | (uint8_t)TIM1_OCMode);
7395  00b6 c6525b        	ld	a,21083
7396  00b9 a48f          	and	a,#143
7397  00bb 1a06          	or	a,(OFST+6,sp)
7398  00bd c7525b        	ld	21083,a
7399  00c0               L5172:
7400                     ; 1754 }
7403  00c0 85            	popw	x
7404  00c1 81            	ret
7436                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7436                     ; 1763 {
7437                     .text:	section	.text,new
7438  0000               _TIM1_SetCounter:
7442                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7444  0000 9e            	ld	a,xh
7445  0001 c7525e        	ld	21086,a
7446                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7448  0004 9f            	ld	a,xl
7449  0005 c7525f        	ld	21087,a
7450                     ; 1767 }
7453  0008 81            	ret
7485                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7485                     ; 1776 {
7486                     .text:	section	.text,new
7487  0000               _TIM1_SetAutoreload:
7491                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7493  0000 9e            	ld	a,xh
7494  0001 c75262        	ld	21090,a
7495                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7497  0004 9f            	ld	a,xl
7498  0005 c75263        	ld	21091,a
7499                     ; 1780  }
7502  0008 81            	ret
7534                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7534                     ; 1789 {
7535                     .text:	section	.text,new
7536  0000               _TIM1_SetCompare1:
7540                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7542  0000 9e            	ld	a,xh
7543  0001 c75265        	ld	21093,a
7544                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7546  0004 9f            	ld	a,xl
7547  0005 c75266        	ld	21094,a
7548                     ; 1793 }
7551  0008 81            	ret
7583                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7583                     ; 1802 {
7584                     .text:	section	.text,new
7585  0000               _TIM1_SetCompare2:
7589                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7591  0000 9e            	ld	a,xh
7592  0001 c75267        	ld	21095,a
7593                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7595  0004 9f            	ld	a,xl
7596  0005 c75268        	ld	21096,a
7597                     ; 1806 }
7600  0008 81            	ret
7632                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7632                     ; 1815 {
7633                     .text:	section	.text,new
7634  0000               _TIM1_SetCompare3:
7638                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7640  0000 9e            	ld	a,xh
7641  0001 c75269        	ld	21097,a
7642                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7644  0004 9f            	ld	a,xl
7645  0005 c7526a        	ld	21098,a
7646                     ; 1819 }
7649  0008 81            	ret
7681                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7681                     ; 1828 {
7682                     .text:	section	.text,new
7683  0000               _TIM1_SetCompare4:
7687                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7689  0000 9e            	ld	a,xh
7690  0001 c7526b        	ld	21099,a
7691                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7693  0004 9f            	ld	a,xl
7694  0005 c7526c        	ld	21100,a
7695                     ; 1832 }
7698  0008 81            	ret
7735                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7735                     ; 1845 {
7736                     .text:	section	.text,new
7737  0000               _TIM1_SetIC1Prescaler:
7739  0000 89            	pushw	x
7740       00000000      OFST:	set	0
7743                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7745  0001 a30000        	cpw	x,#0
7746  0004 270f          	jreq	L2521
7747  0006 a30004        	cpw	x,#4
7748  0009 270a          	jreq	L2521
7749  000b a30008        	cpw	x,#8
7750  000e 2705          	jreq	L2521
7751  0010 a3000c        	cpw	x,#12
7752  0013 2603          	jrne	L0521
7753  0015               L2521:
7754  0015 4f            	clr	a
7755  0016 2010          	jra	L4521
7756  0018               L0521:
7757  0018 ae0737        	ldw	x,#1847
7758  001b 89            	pushw	x
7759  001c ae0000        	ldw	x,#0
7760  001f 89            	pushw	x
7761  0020 ae0000        	ldw	x,#L37
7762  0023 cd0000        	call	_assert_failed
7764  0026 5b04          	addw	sp,#4
7765  0028               L4521:
7766                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7766                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7768  0028 c65258        	ld	a,21080
7769  002b a4f3          	and	a,#243
7770  002d 1a02          	or	a,(OFST+2,sp)
7771  002f c75258        	ld	21080,a
7772                     ; 1852 }
7775  0032 85            	popw	x
7776  0033 81            	ret
7813                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7813                     ; 1865 {
7814                     .text:	section	.text,new
7815  0000               _TIM1_SetIC2Prescaler:
7817  0000 89            	pushw	x
7818       00000000      OFST:	set	0
7821                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7823  0001 a30000        	cpw	x,#0
7824  0004 270f          	jreq	L2621
7825  0006 a30004        	cpw	x,#4
7826  0009 270a          	jreq	L2621
7827  000b a30008        	cpw	x,#8
7828  000e 2705          	jreq	L2621
7829  0010 a3000c        	cpw	x,#12
7830  0013 2603          	jrne	L0621
7831  0015               L2621:
7832  0015 4f            	clr	a
7833  0016 2010          	jra	L4621
7834  0018               L0621:
7835  0018 ae074c        	ldw	x,#1868
7836  001b 89            	pushw	x
7837  001c ae0000        	ldw	x,#0
7838  001f 89            	pushw	x
7839  0020 ae0000        	ldw	x,#L37
7840  0023 cd0000        	call	_assert_failed
7842  0026 5b04          	addw	sp,#4
7843  0028               L4621:
7844                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7844                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7846  0028 c65259        	ld	a,21081
7847  002b a4f3          	and	a,#243
7848  002d 1a02          	or	a,(OFST+2,sp)
7849  002f c75259        	ld	21081,a
7850                     ; 1873 }
7853  0032 85            	popw	x
7854  0033 81            	ret
7891                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7891                     ; 1886 {
7892                     .text:	section	.text,new
7893  0000               _TIM1_SetIC3Prescaler:
7895  0000 89            	pushw	x
7896       00000000      OFST:	set	0
7899                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7901  0001 a30000        	cpw	x,#0
7902  0004 270f          	jreq	L2721
7903  0006 a30004        	cpw	x,#4
7904  0009 270a          	jreq	L2721
7905  000b a30008        	cpw	x,#8
7906  000e 2705          	jreq	L2721
7907  0010 a3000c        	cpw	x,#12
7908  0013 2603          	jrne	L0721
7909  0015               L2721:
7910  0015 4f            	clr	a
7911  0016 2010          	jra	L4721
7912  0018               L0721:
7913  0018 ae0761        	ldw	x,#1889
7914  001b 89            	pushw	x
7915  001c ae0000        	ldw	x,#0
7916  001f 89            	pushw	x
7917  0020 ae0000        	ldw	x,#L37
7918  0023 cd0000        	call	_assert_failed
7920  0026 5b04          	addw	sp,#4
7921  0028               L4721:
7922                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7922                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7924  0028 c6525a        	ld	a,21082
7925  002b a4f3          	and	a,#243
7926  002d 1a02          	or	a,(OFST+2,sp)
7927  002f c7525a        	ld	21082,a
7928                     ; 1894 }
7931  0032 85            	popw	x
7932  0033 81            	ret
7969                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7969                     ; 1907 {
7970                     .text:	section	.text,new
7971  0000               _TIM1_SetIC4Prescaler:
7973  0000 89            	pushw	x
7974       00000000      OFST:	set	0
7977                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7979  0001 a30000        	cpw	x,#0
7980  0004 270f          	jreq	L2031
7981  0006 a30004        	cpw	x,#4
7982  0009 270a          	jreq	L2031
7983  000b a30008        	cpw	x,#8
7984  000e 2705          	jreq	L2031
7985  0010 a3000c        	cpw	x,#12
7986  0013 2603          	jrne	L0031
7987  0015               L2031:
7988  0015 4f            	clr	a
7989  0016 2010          	jra	L4031
7990  0018               L0031:
7991  0018 ae0776        	ldw	x,#1910
7992  001b 89            	pushw	x
7993  001c ae0000        	ldw	x,#0
7994  001f 89            	pushw	x
7995  0020 ae0000        	ldw	x,#L37
7996  0023 cd0000        	call	_assert_failed
7998  0026 5b04          	addw	sp,#4
7999  0028               L4031:
8000                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8000                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8002  0028 c6525b        	ld	a,21083
8003  002b a4f3          	and	a,#243
8004  002d 1a02          	or	a,(OFST+2,sp)
8005  002f c7525b        	ld	21083,a
8006                     ; 1915 }
8009  0032 85            	popw	x
8010  0033 81            	ret
8056                     ; 1922 uint16_t TIM1_GetCapture1(void)
8056                     ; 1923 {
8057                     .text:	section	.text,new
8058  0000               _TIM1_GetCapture1:
8060  0000 5204          	subw	sp,#4
8061       00000004      OFST:	set	4
8064                     ; 1926   uint16_t tmpccr1 = 0;
8066                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8070                     ; 1929   tmpccr1h = TIM1->CCR1H;
8072  0002 c65265        	ld	a,21093
8073  0005 6b02          	ld	(OFST-2,sp),a
8074                     ; 1930   tmpccr1l = TIM1->CCR1L;
8076  0007 c65266        	ld	a,21094
8077  000a 6b01          	ld	(OFST-3,sp),a
8078                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8080  000c 7b01          	ld	a,(OFST-3,sp)
8081  000e 5f            	clrw	x
8082  000f 97            	ld	xl,a
8083  0010 1f03          	ldw	(OFST-1,sp),x
8084                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8086  0012 7b02          	ld	a,(OFST-2,sp)
8087  0014 5f            	clrw	x
8088  0015 97            	ld	xl,a
8089  0016 4f            	clr	a
8090  0017 02            	rlwa	x,a
8091  0018 01            	rrwa	x,a
8092  0019 1a04          	or	a,(OFST+0,sp)
8093  001b 01            	rrwa	x,a
8094  001c 1a03          	or	a,(OFST-1,sp)
8095  001e 01            	rrwa	x,a
8096  001f 1f03          	ldw	(OFST-1,sp),x
8097                     ; 1935   return (uint16_t)tmpccr1;
8099  0021 1e03          	ldw	x,(OFST-1,sp)
8102  0023 5b04          	addw	sp,#4
8103  0025 81            	ret
8149                     ; 1943 uint16_t TIM1_GetCapture2(void)
8149                     ; 1944 {
8150                     .text:	section	.text,new
8151  0000               _TIM1_GetCapture2:
8153  0000 5204          	subw	sp,#4
8154       00000004      OFST:	set	4
8157                     ; 1947   uint16_t tmpccr2 = 0;
8159                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8163                     ; 1950   tmpccr2h = TIM1->CCR2H;
8165  0002 c65267        	ld	a,21095
8166  0005 6b02          	ld	(OFST-2,sp),a
8167                     ; 1951   tmpccr2l = TIM1->CCR2L;
8169  0007 c65268        	ld	a,21096
8170  000a 6b01          	ld	(OFST-3,sp),a
8171                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8173  000c 7b01          	ld	a,(OFST-3,sp)
8174  000e 5f            	clrw	x
8175  000f 97            	ld	xl,a
8176  0010 1f03          	ldw	(OFST-1,sp),x
8177                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8179  0012 7b02          	ld	a,(OFST-2,sp)
8180  0014 5f            	clrw	x
8181  0015 97            	ld	xl,a
8182  0016 4f            	clr	a
8183  0017 02            	rlwa	x,a
8184  0018 01            	rrwa	x,a
8185  0019 1a04          	or	a,(OFST+0,sp)
8186  001b 01            	rrwa	x,a
8187  001c 1a03          	or	a,(OFST-1,sp)
8188  001e 01            	rrwa	x,a
8189  001f 1f03          	ldw	(OFST-1,sp),x
8190                     ; 1956   return (uint16_t)tmpccr2;
8192  0021 1e03          	ldw	x,(OFST-1,sp)
8195  0023 5b04          	addw	sp,#4
8196  0025 81            	ret
8242                     ; 1964 uint16_t TIM1_GetCapture3(void)
8242                     ; 1965 {
8243                     .text:	section	.text,new
8244  0000               _TIM1_GetCapture3:
8246  0000 5204          	subw	sp,#4
8247       00000004      OFST:	set	4
8250                     ; 1967   uint16_t tmpccr3 = 0;
8252                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8256                     ; 1970   tmpccr3h = TIM1->CCR3H;
8258  0002 c65269        	ld	a,21097
8259  0005 6b02          	ld	(OFST-2,sp),a
8260                     ; 1971   tmpccr3l = TIM1->CCR3L;
8262  0007 c6526a        	ld	a,21098
8263  000a 6b01          	ld	(OFST-3,sp),a
8264                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8266  000c 7b01          	ld	a,(OFST-3,sp)
8267  000e 5f            	clrw	x
8268  000f 97            	ld	xl,a
8269  0010 1f03          	ldw	(OFST-1,sp),x
8270                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8272  0012 7b02          	ld	a,(OFST-2,sp)
8273  0014 5f            	clrw	x
8274  0015 97            	ld	xl,a
8275  0016 4f            	clr	a
8276  0017 02            	rlwa	x,a
8277  0018 01            	rrwa	x,a
8278  0019 1a04          	or	a,(OFST+0,sp)
8279  001b 01            	rrwa	x,a
8280  001c 1a03          	or	a,(OFST-1,sp)
8281  001e 01            	rrwa	x,a
8282  001f 1f03          	ldw	(OFST-1,sp),x
8283                     ; 1976   return (uint16_t)tmpccr3;
8285  0021 1e03          	ldw	x,(OFST-1,sp)
8288  0023 5b04          	addw	sp,#4
8289  0025 81            	ret
8335                     ; 1984 uint16_t TIM1_GetCapture4(void)
8335                     ; 1985 {
8336                     .text:	section	.text,new
8337  0000               _TIM1_GetCapture4:
8339  0000 5204          	subw	sp,#4
8340       00000004      OFST:	set	4
8343                     ; 1987   uint16_t tmpccr4 = 0;
8345                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8349                     ; 1990   tmpccr4h = TIM1->CCR4H;
8351  0002 c6526b        	ld	a,21099
8352  0005 6b02          	ld	(OFST-2,sp),a
8353                     ; 1991   tmpccr4l = TIM1->CCR4L;
8355  0007 c6526c        	ld	a,21100
8356  000a 6b01          	ld	(OFST-3,sp),a
8357                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8359  000c 7b01          	ld	a,(OFST-3,sp)
8360  000e 5f            	clrw	x
8361  000f 97            	ld	xl,a
8362  0010 1f03          	ldw	(OFST-1,sp),x
8363                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8365  0012 7b02          	ld	a,(OFST-2,sp)
8366  0014 5f            	clrw	x
8367  0015 97            	ld	xl,a
8368  0016 4f            	clr	a
8369  0017 02            	rlwa	x,a
8370  0018 01            	rrwa	x,a
8371  0019 1a04          	or	a,(OFST+0,sp)
8372  001b 01            	rrwa	x,a
8373  001c 1a03          	or	a,(OFST-1,sp)
8374  001e 01            	rrwa	x,a
8375  001f 1f03          	ldw	(OFST-1,sp),x
8376                     ; 1996   return (uint16_t)tmpccr4;
8378  0021 1e03          	ldw	x,(OFST-1,sp)
8381  0023 5b04          	addw	sp,#4
8382  0025 81            	ret
8414                     ; 2004 uint16_t TIM1_GetCounter(void)
8414                     ; 2005 {
8415                     .text:	section	.text,new
8416  0000               _TIM1_GetCounter:
8418  0000 89            	pushw	x
8419       00000002      OFST:	set	2
8422                     ; 2006   uint16_t tmpcntr = 0;
8424                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8426  0001 c6525e        	ld	a,21086
8427  0004 5f            	clrw	x
8428  0005 97            	ld	xl,a
8429  0006 4f            	clr	a
8430  0007 02            	rlwa	x,a
8431  0008 1f01          	ldw	(OFST-1,sp),x
8432                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8434  000a c6525f        	ld	a,21087
8435  000d 5f            	clrw	x
8436  000e 97            	ld	xl,a
8437  000f 01            	rrwa	x,a
8438  0010 1a02          	or	a,(OFST+0,sp)
8439  0012 01            	rrwa	x,a
8440  0013 1a01          	or	a,(OFST-1,sp)
8441  0015 01            	rrwa	x,a
8444  0016 5b02          	addw	sp,#2
8445  0018 81            	ret
8477                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8477                     ; 2020 {
8478                     .text:	section	.text,new
8479  0000               _TIM1_GetPrescaler:
8481  0000 89            	pushw	x
8482       00000002      OFST:	set	2
8485                     ; 2021   uint16_t temp = 0;
8487                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8489  0001 c65260        	ld	a,21088
8490  0004 5f            	clrw	x
8491  0005 97            	ld	xl,a
8492  0006 4f            	clr	a
8493  0007 02            	rlwa	x,a
8494  0008 1f01          	ldw	(OFST-1,sp),x
8495                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8497  000a c65261        	ld	a,21089
8498  000d 5f            	clrw	x
8499  000e 97            	ld	xl,a
8500  000f 01            	rrwa	x,a
8501  0010 1a02          	or	a,(OFST+0,sp)
8502  0012 01            	rrwa	x,a
8503  0013 1a01          	or	a,(OFST-1,sp)
8504  0015 01            	rrwa	x,a
8507  0016 5b02          	addw	sp,#2
8508  0018 81            	ret
8679                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8679                     ; 2048 {
8680                     .text:	section	.text,new
8681  0000               _TIM1_GetFlagStatus:
8683  0000 89            	pushw	x
8684  0001 5204          	subw	sp,#4
8685       00000004      OFST:	set	4
8688                     ; 2049   FlagStatus bitstatus = RESET;
8690                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8694                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8696  0003 a30001        	cpw	x,#1
8697  0006 2737          	jreq	L6231
8698  0008 a30002        	cpw	x,#2
8699  000b 2732          	jreq	L6231
8700  000d a30004        	cpw	x,#4
8701  0010 272d          	jreq	L6231
8702  0012 a30008        	cpw	x,#8
8703  0015 2728          	jreq	L6231
8704  0017 a30010        	cpw	x,#16
8705  001a 2723          	jreq	L6231
8706  001c a30020        	cpw	x,#32
8707  001f 271e          	jreq	L6231
8708  0021 a30040        	cpw	x,#64
8709  0024 2719          	jreq	L6231
8710  0026 a30080        	cpw	x,#128
8711  0029 2714          	jreq	L6231
8712  002b a30200        	cpw	x,#512
8713  002e 270f          	jreq	L6231
8714  0030 a30400        	cpw	x,#1024
8715  0033 270a          	jreq	L6231
8716  0035 a30800        	cpw	x,#2048
8717  0038 2705          	jreq	L6231
8718  003a a31000        	cpw	x,#4096
8719  003d 2603          	jrne	L4231
8720  003f               L6231:
8721  003f 4f            	clr	a
8722  0040 2010          	jra	L0331
8723  0042               L4231:
8724  0042 ae0805        	ldw	x,#2053
8725  0045 89            	pushw	x
8726  0046 ae0000        	ldw	x,#0
8727  0049 89            	pushw	x
8728  004a ae0000        	ldw	x,#L37
8729  004d cd0000        	call	_assert_failed
8731  0050 5b04          	addw	sp,#4
8732  0052               L0331:
8733                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8735  0052 c65255        	ld	a,21077
8736  0055 1406          	and	a,(OFST+2,sp)
8737  0057 6b01          	ld	(OFST-3,sp),a
8738                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8740  0059 1e05          	ldw	x,(OFST+1,sp)
8741  005b 4f            	clr	a
8742  005c 01            	rrwa	x,a
8743  005d 9f            	ld	a,xl
8744  005e 6b02          	ld	(OFST-2,sp),a
8745                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8747  0060 c65256        	ld	a,21078
8748  0063 1402          	and	a,(OFST-2,sp)
8749  0065 1a01          	or	a,(OFST-3,sp)
8750  0067 2707          	jreq	L1533
8751                     ; 2060     bitstatus = SET;
8753  0069 ae0001        	ldw	x,#1
8754  006c 1f03          	ldw	(OFST-1,sp),x
8756  006e 2003          	jra	L3533
8757  0070               L1533:
8758                     ; 2064     bitstatus = RESET;
8760  0070 5f            	clrw	x
8761  0071 1f03          	ldw	(OFST-1,sp),x
8762  0073               L3533:
8763                     ; 2066   return (FlagStatus)(bitstatus);
8765  0073 1e03          	ldw	x,(OFST-1,sp)
8768  0075 5b06          	addw	sp,#6
8769  0077 81            	ret
8805                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8805                     ; 2088 {
8806                     .text:	section	.text,new
8807  0000               _TIM1_ClearFlag:
8809  0000 89            	pushw	x
8810       00000000      OFST:	set	0
8813                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8815  0001 01            	rrwa	x,a
8816  0002 9f            	ld	a,xl
8817  0003 a4e1          	and	a,#225
8818  0005 97            	ld	xl,a
8819  0006 4f            	clr	a
8820  0007 02            	rlwa	x,a
8821  0008 5d            	tnzw	x
8822  0009 2607          	jrne	L4331
8823  000b 1e01          	ldw	x,(OFST+1,sp)
8824  000d 2703          	jreq	L4331
8825  000f 4f            	clr	a
8826  0010 2010          	jra	L6331
8827  0012               L4331:
8828  0012 ae082a        	ldw	x,#2090
8829  0015 89            	pushw	x
8830  0016 ae0000        	ldw	x,#0
8831  0019 89            	pushw	x
8832  001a ae0000        	ldw	x,#L37
8833  001d cd0000        	call	_assert_failed
8835  0020 5b04          	addw	sp,#4
8836  0022               L6331:
8837                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8839  0022 7b02          	ld	a,(OFST+2,sp)
8840  0024 43            	cpl	a
8841  0025 c75255        	ld	21077,a
8842                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8842                     ; 2095                         (uint8_t)0x1E);
8844  0028 1e01          	ldw	x,(OFST+1,sp)
8845  002a 4f            	clr	a
8846  002b 01            	rrwa	x,a
8847  002c 9f            	ld	a,xl
8848  002d 43            	cpl	a
8849  002e a41e          	and	a,#30
8850  0030 c75256        	ld	21078,a
8851                     ; 2096 }
8854  0033 85            	popw	x
8855  0034 81            	ret
8916                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8916                     ; 2113 {
8917                     .text:	section	.text,new
8918  0000               _TIM1_GetITStatus:
8920  0000 89            	pushw	x
8921  0001 5204          	subw	sp,#4
8922       00000004      OFST:	set	4
8925                     ; 2114   ITStatus bitstatus = RESET;
8927                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8931                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8933  0003 a30001        	cpw	x,#1
8934  0006 2723          	jreq	L4431
8935  0008 a30002        	cpw	x,#2
8936  000b 271e          	jreq	L4431
8937  000d a30004        	cpw	x,#4
8938  0010 2719          	jreq	L4431
8939  0012 a30008        	cpw	x,#8
8940  0015 2714          	jreq	L4431
8941  0017 a30010        	cpw	x,#16
8942  001a 270f          	jreq	L4431
8943  001c a30020        	cpw	x,#32
8944  001f 270a          	jreq	L4431
8945  0021 a30040        	cpw	x,#64
8946  0024 2705          	jreq	L4431
8947  0026 a30080        	cpw	x,#128
8948  0029 2603          	jrne	L2431
8949  002b               L4431:
8950  002b 4f            	clr	a
8951  002c 2010          	jra	L6431
8952  002e               L2431:
8953  002e ae0846        	ldw	x,#2118
8954  0031 89            	pushw	x
8955  0032 ae0000        	ldw	x,#0
8956  0035 89            	pushw	x
8957  0036 ae0000        	ldw	x,#L37
8958  0039 cd0000        	call	_assert_failed
8960  003c 5b04          	addw	sp,#4
8961  003e               L6431:
8962                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8964  003e c65255        	ld	a,21077
8965  0041 1406          	and	a,(OFST+2,sp)
8966  0043 6b01          	ld	(OFST-3,sp),a
8967                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8969  0045 c65254        	ld	a,21076
8970  0048 1406          	and	a,(OFST+2,sp)
8971  004a 6b02          	ld	(OFST-2,sp),a
8972                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8974  004c 0d01          	tnz	(OFST-3,sp)
8975  004e 270b          	jreq	L1243
8977  0050 0d02          	tnz	(OFST-2,sp)
8978  0052 2707          	jreq	L1243
8979                     ; 2126     bitstatus = SET;
8981  0054 ae0001        	ldw	x,#1
8982  0057 1f03          	ldw	(OFST-1,sp),x
8984  0059 2003          	jra	L3243
8985  005b               L1243:
8986                     ; 2130     bitstatus = RESET;
8988  005b 5f            	clrw	x
8989  005c 1f03          	ldw	(OFST-1,sp),x
8990  005e               L3243:
8991                     ; 2132   return (ITStatus)(bitstatus);
8993  005e 1e03          	ldw	x,(OFST-1,sp)
8996  0060 5b06          	addw	sp,#6
8997  0062 81            	ret
9034                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9034                     ; 2150 {
9035                     .text:	section	.text,new
9036  0000               _TIM1_ClearITPendingBit:
9038  0000 89            	pushw	x
9039       00000000      OFST:	set	0
9042                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9044  0001 a30000        	cpw	x,#0
9045  0004 2703          	jreq	L2531
9046  0006 4f            	clr	a
9047  0007 2010          	jra	L4531
9048  0009               L2531:
9049  0009 ae0868        	ldw	x,#2152
9050  000c 89            	pushw	x
9051  000d ae0000        	ldw	x,#0
9052  0010 89            	pushw	x
9053  0011 ae0000        	ldw	x,#L37
9054  0014 cd0000        	call	_assert_failed
9056  0017 5b04          	addw	sp,#4
9057  0019               L4531:
9058                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9060  0019 7b02          	ld	a,(OFST+2,sp)
9061  001b 43            	cpl	a
9062  001c c75255        	ld	21077,a
9063                     ; 2156 }
9066  001f 85            	popw	x
9067  0020 81            	ret
9113                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9113                     ; 2175                        uint8_t TIM1_ICSelection,
9113                     ; 2176                        uint8_t TIM1_ICFilter)
9113                     ; 2177 {
9114                     .text:	section	.text,new
9115  0000               L3_TI1_Config:
9117  0000 89            	pushw	x
9118  0001 88            	push	a
9119       00000001      OFST:	set	1
9122                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9124  0002 7211525c      	bres	21084,#0
9125                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9125                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9127  0006 7b06          	ld	a,(OFST+5,sp)
9128  0008 97            	ld	xl,a
9129  0009 a610          	ld	a,#16
9130  000b 42            	mul	x,a
9131  000c 9f            	ld	a,xl
9132  000d 1a03          	or	a,(OFST+2,sp)
9133  000f 6b01          	ld	(OFST+0,sp),a
9134  0011 c65258        	ld	a,21080
9135  0014 a40c          	and	a,#12
9136  0016 1a01          	or	a,(OFST+0,sp)
9137  0018 c75258        	ld	21080,a
9138                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9140  001b 0d02          	tnz	(OFST+1,sp)
9141  001d 2706          	jreq	L3643
9142                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9144  001f 7212525c      	bset	21084,#1
9146  0023 2004          	jra	L5643
9147  0025               L3643:
9148                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9150  0025 7213525c      	bres	21084,#1
9151  0029               L5643:
9152                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9154  0029 7210525c      	bset	21084,#0
9155                     ; 2197 }
9158  002d 5b03          	addw	sp,#3
9159  002f 81            	ret
9205                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9205                     ; 2216                        uint8_t TIM1_ICSelection,
9205                     ; 2217                        uint8_t TIM1_ICFilter)
9205                     ; 2218 {
9206                     .text:	section	.text,new
9207  0000               L5_TI2_Config:
9209  0000 89            	pushw	x
9210  0001 88            	push	a
9211       00000001      OFST:	set	1
9214                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9216  0002 7219525c      	bres	21084,#4
9217                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9217                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9219  0006 7b06          	ld	a,(OFST+5,sp)
9220  0008 97            	ld	xl,a
9221  0009 a610          	ld	a,#16
9222  000b 42            	mul	x,a
9223  000c 9f            	ld	a,xl
9224  000d 1a03          	or	a,(OFST+2,sp)
9225  000f 6b01          	ld	(OFST+0,sp),a
9226  0011 c65259        	ld	a,21081
9227  0014 a40c          	and	a,#12
9228  0016 1a01          	or	a,(OFST+0,sp)
9229  0018 c75259        	ld	21081,a
9230                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9232  001b 0d02          	tnz	(OFST+1,sp)
9233  001d 2706          	jreq	L7053
9234                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9236  001f 721a525c      	bset	21084,#5
9238  0023 2004          	jra	L1153
9239  0025               L7053:
9240                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9242  0025 721b525c      	bres	21084,#5
9243  0029               L1153:
9244                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9246  0029 7218525c      	bset	21084,#4
9247                     ; 2236 }
9250  002d 5b03          	addw	sp,#3
9251  002f 81            	ret
9297                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9297                     ; 2255                        uint8_t TIM1_ICSelection,
9297                     ; 2256                        uint8_t TIM1_ICFilter)
9297                     ; 2257 {
9298                     .text:	section	.text,new
9299  0000               L7_TI3_Config:
9301  0000 89            	pushw	x
9302  0001 88            	push	a
9303       00000001      OFST:	set	1
9306                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9308  0002 7211525d      	bres	21085,#0
9309                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9309                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9311  0006 7b06          	ld	a,(OFST+5,sp)
9312  0008 97            	ld	xl,a
9313  0009 a610          	ld	a,#16
9314  000b 42            	mul	x,a
9315  000c 9f            	ld	a,xl
9316  000d 1a03          	or	a,(OFST+2,sp)
9317  000f 6b01          	ld	(OFST+0,sp),a
9318  0011 c6525a        	ld	a,21082
9319  0014 a40c          	and	a,#12
9320  0016 1a01          	or	a,(OFST+0,sp)
9321  0018 c7525a        	ld	21082,a
9322                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9324  001b 0d02          	tnz	(OFST+1,sp)
9325  001d 2706          	jreq	L3353
9326                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9328  001f 7212525d      	bset	21085,#1
9330  0023 2004          	jra	L5353
9331  0025               L3353:
9332                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9334  0025 7213525d      	bres	21085,#1
9335  0029               L5353:
9336                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9338  0029 7210525d      	bset	21085,#0
9339                     ; 2276 }
9342  002d 5b03          	addw	sp,#3
9343  002f 81            	ret
9389                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9389                     ; 2295                        uint8_t TIM1_ICSelection,
9389                     ; 2296                        uint8_t TIM1_ICFilter)
9389                     ; 2297 {
9390                     .text:	section	.text,new
9391  0000               L11_TI4_Config:
9393  0000 89            	pushw	x
9394  0001 88            	push	a
9395       00000001      OFST:	set	1
9398                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9400  0002 7219525d      	bres	21085,#4
9401                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9401                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9403  0006 7b06          	ld	a,(OFST+5,sp)
9404  0008 97            	ld	xl,a
9405  0009 a610          	ld	a,#16
9406  000b 42            	mul	x,a
9407  000c 9f            	ld	a,xl
9408  000d 1a03          	or	a,(OFST+2,sp)
9409  000f 6b01          	ld	(OFST+0,sp),a
9410  0011 c6525b        	ld	a,21083
9411  0014 a40c          	and	a,#12
9412  0016 1a01          	or	a,(OFST+0,sp)
9413  0018 c7525b        	ld	21083,a
9414                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9416  001b 0d02          	tnz	(OFST+1,sp)
9417  001d 2706          	jreq	L7553
9418                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9420  001f 721a525d      	bset	21085,#5
9422  0023 2004          	jra	L1653
9423  0025               L7553:
9424                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9426  0025 721b525d      	bres	21085,#5
9427  0029               L1653:
9428                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9430  0029 7218525d      	bset	21085,#4
9431                     ; 2317 }
9434  002d 5b03          	addw	sp,#3
9435  002f 81            	ret
9448                     	xdef	_TIM1_ClearITPendingBit
9449                     	xdef	_TIM1_GetITStatus
9450                     	xdef	_TIM1_ClearFlag
9451                     	xdef	_TIM1_GetFlagStatus
9452                     	xdef	_TIM1_GetPrescaler
9453                     	xdef	_TIM1_GetCounter
9454                     	xdef	_TIM1_GetCapture4
9455                     	xdef	_TIM1_GetCapture3
9456                     	xdef	_TIM1_GetCapture2
9457                     	xdef	_TIM1_GetCapture1
9458                     	xdef	_TIM1_SetIC4Prescaler
9459                     	xdef	_TIM1_SetIC3Prescaler
9460                     	xdef	_TIM1_SetIC2Prescaler
9461                     	xdef	_TIM1_SetIC1Prescaler
9462                     	xdef	_TIM1_SetCompare4
9463                     	xdef	_TIM1_SetCompare3
9464                     	xdef	_TIM1_SetCompare2
9465                     	xdef	_TIM1_SetCompare1
9466                     	xdef	_TIM1_SetAutoreload
9467                     	xdef	_TIM1_SetCounter
9468                     	xdef	_TIM1_SelectOCxM
9469                     	xdef	_TIM1_CCxNCmd
9470                     	xdef	_TIM1_CCxCmd
9471                     	xdef	_TIM1_OC4PolarityConfig
9472                     	xdef	_TIM1_OC3NPolarityConfig
9473                     	xdef	_TIM1_OC3PolarityConfig
9474                     	xdef	_TIM1_OC2NPolarityConfig
9475                     	xdef	_TIM1_OC2PolarityConfig
9476                     	xdef	_TIM1_OC1NPolarityConfig
9477                     	xdef	_TIM1_OC1PolarityConfig
9478                     	xdef	_TIM1_GenerateEvent
9479                     	xdef	_TIM1_OC4FastConfig
9480                     	xdef	_TIM1_OC3FastConfig
9481                     	xdef	_TIM1_OC2FastConfig
9482                     	xdef	_TIM1_OC1FastConfig
9483                     	xdef	_TIM1_OC4PreloadConfig
9484                     	xdef	_TIM1_OC3PreloadConfig
9485                     	xdef	_TIM1_OC2PreloadConfig
9486                     	xdef	_TIM1_OC1PreloadConfig
9487                     	xdef	_TIM1_CCPreloadControl
9488                     	xdef	_TIM1_SelectCOM
9489                     	xdef	_TIM1_ARRPreloadConfig
9490                     	xdef	_TIM1_ForcedOC4Config
9491                     	xdef	_TIM1_ForcedOC3Config
9492                     	xdef	_TIM1_ForcedOC2Config
9493                     	xdef	_TIM1_ForcedOC1Config
9494                     	xdef	_TIM1_CounterModeConfig
9495                     	xdef	_TIM1_PrescalerConfig
9496                     	xdef	_TIM1_EncoderInterfaceConfig
9497                     	xdef	_TIM1_SelectMasterSlaveMode
9498                     	xdef	_TIM1_SelectSlaveMode
9499                     	xdef	_TIM1_SelectOutputTrigger
9500                     	xdef	_TIM1_SelectOnePulseMode
9501                     	xdef	_TIM1_SelectHallSensor
9502                     	xdef	_TIM1_UpdateRequestConfig
9503                     	xdef	_TIM1_UpdateDisableConfig
9504                     	xdef	_TIM1_SelectInputTrigger
9505                     	xdef	_TIM1_TIxExternalClockConfig
9506                     	xdef	_TIM1_ETRConfig
9507                     	xdef	_TIM1_ETRClockMode2Config
9508                     	xdef	_TIM1_ETRClockMode1Config
9509                     	xdef	_TIM1_InternalClockConfig
9510                     	xdef	_TIM1_ITConfig
9511                     	xdef	_TIM1_CtrlPWMOutputs
9512                     	xdef	_TIM1_Cmd
9513                     	xdef	_TIM1_PWMIConfig
9514                     	xdef	_TIM1_ICInit
9515                     	xdef	_TIM1_BDTRConfig
9516                     	xdef	_TIM1_OC4Init
9517                     	xdef	_TIM1_OC3Init
9518                     	xdef	_TIM1_OC2Init
9519                     	xdef	_TIM1_OC1Init
9520                     	xdef	_TIM1_TimeBaseInit
9521                     	xdef	_TIM1_DeInit
9522                     	xref	_assert_failed
9523                     .const:	section	.text
9524  0000               L37:
9525  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
9526  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
9527  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
9528  0036 6d312e6300    	dc.b	"m1.c",0
9548                     	end

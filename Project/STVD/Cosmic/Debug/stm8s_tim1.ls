   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 58 void TIM1_DeInit(void)
  50                     ; 59 {
  52                     .text:	section	.text,new
  53  0000               _TIM1_DeInit:
  57                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  59  0000 725f5250      	clr	21072
  60                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  62  0004 725f5251      	clr	21073
  63                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  65  0008 725f5252      	clr	21074
  66                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  68  000c 725f5253      	clr	21075
  69                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  71  0010 725f5254      	clr	21076
  72                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  74  0014 725f5256      	clr	21078
  75                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  77  0018 725f525c      	clr	21084
  78                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  80  001c 725f525d      	clr	21085
  81                     ; 70   TIM1->CCMR1 = 0x01;
  83  0020 35015258      	mov	21080,#1
  84                     ; 71   TIM1->CCMR2 = 0x01;
  86  0024 35015259      	mov	21081,#1
  87                     ; 72   TIM1->CCMR3 = 0x01;
  89  0028 3501525a      	mov	21082,#1
  90                     ; 73   TIM1->CCMR4 = 0x01;
  92  002c 3501525b      	mov	21083,#1
  93                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  95  0030 725f525c      	clr	21084
  96                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  98  0034 725f525d      	clr	21085
  99                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
 101  0038 725f5258      	clr	21080
 102                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 104  003c 725f5259      	clr	21081
 105                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 107  0040 725f525a      	clr	21082
 108                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 110  0044 725f525b      	clr	21083
 111                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 113  0048 725f525e      	clr	21086
 114                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 116  004c 725f525f      	clr	21087
 117                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 119  0050 725f5260      	clr	21088
 120                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 122  0054 725f5261      	clr	21089
 123                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 125  0058 35ff5262      	mov	21090,#255
 126                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 128  005c 35ff5263      	mov	21091,#255
 129                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 131  0060 725f5265      	clr	21093
 132                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 134  0064 725f5266      	clr	21094
 135                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 137  0068 725f5267      	clr	21095
 138                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 140  006c 725f5268      	clr	21096
 141                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 143  0070 725f5269      	clr	21097
 144                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 146  0074 725f526a      	clr	21098
 147                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 149  0078 725f526b      	clr	21099
 150                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 152  007c 725f526c      	clr	21100
 153                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 155  0080 725f526f      	clr	21103
 156                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 158  0084 35015257      	mov	21079,#1
 159                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 161  0088 725f526e      	clr	21102
 162                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 164  008c 725f526d      	clr	21101
 165                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 167  0090 725f5264      	clr	21092
 168                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 170  0094 725f5255      	clr	21077
 171                     ; 101 }
 174  0098 81            	ret	
 284                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 284                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 284                     ; 113                        uint16_t TIM1_Period,
 284                     ; 114                        uint8_t TIM1_RepetitionCounter)
 284                     ; 115 {
 285                     .text:	section	.text,new
 286  0000               _TIM1_TimeBaseInit:
 288  0000 89            	pushw	x
 289       00000000      OFST:	set	0
 292                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 294  0001 1e05          	ldw	x,(OFST+5,sp)
 295  0003 2722          	jreq	L41
 296  0005 a30010        	cpw	x,#16
 297  0008 271d          	jreq	L41
 298  000a a30020        	cpw	x,#32
 299  000d 2718          	jreq	L41
 300  000f a30040        	cpw	x,#64
 301  0012 2713          	jreq	L41
 302  0014 a30060        	cpw	x,#96
 303  0017 270e          	jreq	L41
 304  0019 ae0075        	ldw	x,#117
 305  001c 89            	pushw	x
 306  001d 5f            	clrw	x
 307  001e 89            	pushw	x
 308  001f ae0000        	ldw	x,#L101
 309  0022 cd0000        	call	_assert_failed
 311  0025 5b04          	addw	sp,#4
 312  0027               L41:
 313                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 315  0027 7b07          	ld	a,(OFST+7,sp)
 316  0029 c75262        	ld	21090,a
 317                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 319  002c 7b08          	ld	a,(OFST+8,sp)
 320  002e c75263        	ld	21091,a
 321                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 323  0031 7b01          	ld	a,(OFST+1,sp)
 324  0033 c75260        	ld	21088,a
 325                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 327  0036 7b02          	ld	a,(OFST+2,sp)
 328  0038 c75261        	ld	21089,a
 329                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 329                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 331  003b c65250        	ld	a,21072
 332  003e a48f          	and	a,#143
 333  0040 1a06          	or	a,(OFST+6,sp)
 334  0042 c75250        	ld	21072,a
 335                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 337  0045 7b09          	ld	a,(OFST+9,sp)
 338  0047 c75264        	ld	21092,a
 339                     ; 133 }
 342  004a 85            	popw	x
 343  004b 81            	ret	
 629                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 629                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 629                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 629                     ; 157                   uint16_t TIM1_Pulse,
 629                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 629                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 629                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 629                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 629                     ; 162 {
 630                     .text:	section	.text,new
 631  0000               _TIM1_OC1Init:
 633  0000 89            	pushw	x
 634  0001 5203          	subw	sp,#3
 635       00000003      OFST:	set	3
 638                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 640  0003 5d            	tnzw	x
 641  0004 271f          	jreq	L62
 642  0006 a30010        	cpw	x,#16
 643  0009 271a          	jreq	L62
 644  000b a30020        	cpw	x,#32
 645  000e 2715          	jreq	L62
 646  0010 a30030        	cpw	x,#48
 647  0013 2710          	jreq	L62
 648  0015 a30060        	cpw	x,#96
 649  0018 270b          	jreq	L62
 650  001a a30070        	cpw	x,#112
 651  001d 2706          	jreq	L62
 652  001f ae00a4        	ldw	x,#164
 653  0022 cd00db        	call	LC001
 654  0025               L62:
 655                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 657  0025 1e08          	ldw	x,(OFST+5,sp)
 658  0027 270b          	jreq	L63
 659  0029 a30011        	cpw	x,#17
 660  002c 2706          	jreq	L63
 661  002e ae00a5        	ldw	x,#165
 662  0031 cd00db        	call	LC001
 663  0034               L63:
 664                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 666  0034 1e0a          	ldw	x,(OFST+7,sp)
 667  0036 270b          	jreq	L64
 668  0038 a30044        	cpw	x,#68
 669  003b 2706          	jreq	L64
 670  003d ae00a6        	ldw	x,#166
 671  0040 cd00db        	call	LC001
 672  0043               L64:
 673                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 675  0043 1e0e          	ldw	x,(OFST+11,sp)
 676  0045 270b          	jreq	L65
 677  0047 a30022        	cpw	x,#34
 678  004a 2706          	jreq	L65
 679  004c ae00a7        	ldw	x,#167
 680  004f cd00db        	call	LC001
 681  0052               L65:
 682                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 684  0052 1e10          	ldw	x,(OFST+13,sp)
 685  0054 270a          	jreq	L66
 686  0056 a30088        	cpw	x,#136
 687  0059 2705          	jreq	L66
 688  005b ae00a8        	ldw	x,#168
 689  005e ad7b          	call	LC001
 690  0060               L66:
 691                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 693  0060 1e12          	ldw	x,(OFST+15,sp)
 694  0062 a30055        	cpw	x,#85
 695  0065 2709          	jreq	L67
 696  0067 1e12          	ldw	x,(OFST+15,sp)
 697  0069 2705          	jreq	L67
 698  006b ae00a9        	ldw	x,#169
 699  006e ad6b          	call	LC001
 700  0070               L67:
 701                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 703  0070 1e14          	ldw	x,(OFST+17,sp)
 704  0072 a3002a        	cpw	x,#42
 705  0075 2709          	jreq	L601
 706  0077 1e14          	ldw	x,(OFST+17,sp)
 707  0079 2705          	jreq	L601
 708  007b ae00aa        	ldw	x,#170
 709  007e ad5b          	call	LC001
 710  0080               L601:
 711                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 711                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 713  0080 c6525c        	ld	a,21084
 714  0083 a4f0          	and	a,#240
 715  0085 c7525c        	ld	21084,a
 716                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 716                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 716                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 716                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 718  0088 7b11          	ld	a,(OFST+14,sp)
 719  008a a408          	and	a,#8
 720  008c 6b03          	ld	(OFST+0,sp),a
 721  008e 7b0f          	ld	a,(OFST+12,sp)
 722  0090 a402          	and	a,#2
 723  0092 1a03          	or	a,(OFST+0,sp)
 724  0094 6b02          	ld	(OFST-1,sp),a
 725  0096 7b0b          	ld	a,(OFST+8,sp)
 726  0098 a404          	and	a,#4
 727  009a 6b01          	ld	(OFST-2,sp),a
 728  009c 7b09          	ld	a,(OFST+6,sp)
 729  009e a401          	and	a,#1
 730  00a0 1a01          	or	a,(OFST-2,sp)
 731  00a2 1a02          	or	a,(OFST-1,sp)
 732  00a4 ca525c        	or	a,21084
 733  00a7 c7525c        	ld	21084,a
 734                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 734                     ; 185                           (uint8_t)TIM1_OCMode);
 736  00aa c65258        	ld	a,21080
 737  00ad a48f          	and	a,#143
 738  00af 1a05          	or	a,(OFST+2,sp)
 739  00b1 c75258        	ld	21080,a
 740                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 742  00b4 c6526f        	ld	a,21103
 743  00b7 a4fc          	and	a,#252
 744  00b9 c7526f        	ld	21103,a
 745                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 745                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 747  00bc 7b15          	ld	a,(OFST+18,sp)
 748  00be a402          	and	a,#2
 749  00c0 6b03          	ld	(OFST+0,sp),a
 750  00c2 7b13          	ld	a,(OFST+16,sp)
 751  00c4 a401          	and	a,#1
 752  00c6 1a03          	or	a,(OFST+0,sp)
 753  00c8 ca526f        	or	a,21103
 754  00cb c7526f        	ld	21103,a
 755                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 757  00ce 7b0c          	ld	a,(OFST+9,sp)
 758  00d0 c75265        	ld	21093,a
 759                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 761  00d3 7b0d          	ld	a,(OFST+10,sp)
 762  00d5 c75266        	ld	21094,a
 763                     ; 196 }
 766  00d8 5b05          	addw	sp,#5
 767  00da 81            	ret	
 768  00db               LC001:
 769  00db 89            	pushw	x
 770  00dc 5f            	clrw	x
 771  00dd 89            	pushw	x
 772  00de ae0000        	ldw	x,#L101
 773  00e1 cd0000        	call	_assert_failed
 775  00e4 5b04          	addw	sp,#4
 776  00e6 81            	ret	
 881                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 881                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 881                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 881                     ; 220                   uint16_t TIM1_Pulse,
 881                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 881                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 881                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 881                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 881                     ; 225 {
 882                     .text:	section	.text,new
 883  0000               _TIM1_OC2Init:
 885  0000 89            	pushw	x
 886  0001 5203          	subw	sp,#3
 887       00000003      OFST:	set	3
 890                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 892  0003 5d            	tnzw	x
 893  0004 271f          	jreq	L021
 894  0006 a30010        	cpw	x,#16
 895  0009 271a          	jreq	L021
 896  000b a30020        	cpw	x,#32
 897  000e 2715          	jreq	L021
 898  0010 a30030        	cpw	x,#48
 899  0013 2710          	jreq	L021
 900  0015 a30060        	cpw	x,#96
 901  0018 270b          	jreq	L021
 902  001a a30070        	cpw	x,#112
 903  001d 2706          	jreq	L021
 904  001f ae00e3        	ldw	x,#227
 905  0022 cd00db        	call	LC002
 906  0025               L021:
 907                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 909  0025 1e08          	ldw	x,(OFST+5,sp)
 910  0027 270b          	jreq	L031
 911  0029 a30011        	cpw	x,#17
 912  002c 2706          	jreq	L031
 913  002e ae00e4        	ldw	x,#228
 914  0031 cd00db        	call	LC002
 915  0034               L031:
 916                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 918  0034 1e0a          	ldw	x,(OFST+7,sp)
 919  0036 270b          	jreq	L041
 920  0038 a30044        	cpw	x,#68
 921  003b 2706          	jreq	L041
 922  003d ae00e5        	ldw	x,#229
 923  0040 cd00db        	call	LC002
 924  0043               L041:
 925                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 927  0043 1e0e          	ldw	x,(OFST+11,sp)
 928  0045 270b          	jreq	L051
 929  0047 a30022        	cpw	x,#34
 930  004a 2706          	jreq	L051
 931  004c ae00e6        	ldw	x,#230
 932  004f cd00db        	call	LC002
 933  0052               L051:
 934                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 936  0052 1e10          	ldw	x,(OFST+13,sp)
 937  0054 270a          	jreq	L061
 938  0056 a30088        	cpw	x,#136
 939  0059 2705          	jreq	L061
 940  005b ae00e7        	ldw	x,#231
 941  005e ad7b          	call	LC002
 942  0060               L061:
 943                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 945  0060 1e12          	ldw	x,(OFST+15,sp)
 946  0062 a30055        	cpw	x,#85
 947  0065 2709          	jreq	L071
 948  0067 1e12          	ldw	x,(OFST+15,sp)
 949  0069 2705          	jreq	L071
 950  006b ae00e8        	ldw	x,#232
 951  006e ad6b          	call	LC002
 952  0070               L071:
 953                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 955  0070 1e14          	ldw	x,(OFST+17,sp)
 956  0072 a3002a        	cpw	x,#42
 957  0075 2709          	jreq	L002
 958  0077 1e14          	ldw	x,(OFST+17,sp)
 959  0079 2705          	jreq	L002
 960  007b ae00e9        	ldw	x,#233
 961  007e ad5b          	call	LC002
 962  0080               L002:
 963                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 963                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 965  0080 c6525c        	ld	a,21084
 966  0083 a40f          	and	a,#15
 967  0085 c7525c        	ld	21084,a
 968                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 968                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 968                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 968                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 970  0088 7b11          	ld	a,(OFST+14,sp)
 971  008a a480          	and	a,#128
 972  008c 6b03          	ld	(OFST+0,sp),a
 973  008e 7b0f          	ld	a,(OFST+12,sp)
 974  0090 a420          	and	a,#32
 975  0092 1a03          	or	a,(OFST+0,sp)
 976  0094 6b02          	ld	(OFST-1,sp),a
 977  0096 7b0b          	ld	a,(OFST+8,sp)
 978  0098 a440          	and	a,#64
 979  009a 6b01          	ld	(OFST-2,sp),a
 980  009c 7b09          	ld	a,(OFST+6,sp)
 981  009e a410          	and	a,#16
 982  00a0 1a01          	or	a,(OFST-2,sp)
 983  00a2 1a02          	or	a,(OFST-1,sp)
 984  00a4 ca525c        	or	a,21084
 985  00a7 c7525c        	ld	21084,a
 986                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 986                     ; 249                           (uint8_t)TIM1_OCMode);
 988  00aa c65259        	ld	a,21081
 989  00ad a48f          	and	a,#143
 990  00af 1a05          	or	a,(OFST+2,sp)
 991  00b1 c75259        	ld	21081,a
 992                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 994  00b4 c6526f        	ld	a,21103
 995  00b7 a4f3          	and	a,#243
 996  00b9 c7526f        	ld	21103,a
 997                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 997                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 999  00bc 7b15          	ld	a,(OFST+18,sp)
1000  00be a408          	and	a,#8
1001  00c0 6b03          	ld	(OFST+0,sp),a
1002  00c2 7b13          	ld	a,(OFST+16,sp)
1003  00c4 a404          	and	a,#4
1004  00c6 1a03          	or	a,(OFST+0,sp)
1005  00c8 ca526f        	or	a,21103
1006  00cb c7526f        	ld	21103,a
1007                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1009  00ce 7b0c          	ld	a,(OFST+9,sp)
1010  00d0 c75267        	ld	21095,a
1011                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1013  00d3 7b0d          	ld	a,(OFST+10,sp)
1014  00d5 c75268        	ld	21096,a
1015                     ; 260 }
1018  00d8 5b05          	addw	sp,#5
1019  00da 81            	ret	
1020  00db               LC002:
1021  00db 89            	pushw	x
1022  00dc 5f            	clrw	x
1023  00dd 89            	pushw	x
1024  00de ae0000        	ldw	x,#L101
1025  00e1 cd0000        	call	_assert_failed
1027  00e4 5b04          	addw	sp,#4
1028  00e6 81            	ret	
1133                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1133                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1133                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1133                     ; 284                   uint16_t TIM1_Pulse,
1133                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1133                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1133                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1133                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1133                     ; 289 {
1134                     .text:	section	.text,new
1135  0000               _TIM1_OC3Init:
1137  0000 89            	pushw	x
1138  0001 5203          	subw	sp,#3
1139       00000003      OFST:	set	3
1142                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1144  0003 5d            	tnzw	x
1145  0004 271f          	jreq	L212
1146  0006 a30010        	cpw	x,#16
1147  0009 271a          	jreq	L212
1148  000b a30020        	cpw	x,#32
1149  000e 2715          	jreq	L212
1150  0010 a30030        	cpw	x,#48
1151  0013 2710          	jreq	L212
1152  0015 a30060        	cpw	x,#96
1153  0018 270b          	jreq	L212
1154  001a a30070        	cpw	x,#112
1155  001d 2706          	jreq	L212
1156  001f ae0123        	ldw	x,#291
1157  0022 cd00db        	call	LC003
1158  0025               L212:
1159                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1161  0025 1e08          	ldw	x,(OFST+5,sp)
1162  0027 270b          	jreq	L222
1163  0029 a30011        	cpw	x,#17
1164  002c 2706          	jreq	L222
1165  002e ae0124        	ldw	x,#292
1166  0031 cd00db        	call	LC003
1167  0034               L222:
1168                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1170  0034 1e0a          	ldw	x,(OFST+7,sp)
1171  0036 270b          	jreq	L232
1172  0038 a30044        	cpw	x,#68
1173  003b 2706          	jreq	L232
1174  003d ae0125        	ldw	x,#293
1175  0040 cd00db        	call	LC003
1176  0043               L232:
1177                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1179  0043 1e0e          	ldw	x,(OFST+11,sp)
1180  0045 270b          	jreq	L242
1181  0047 a30022        	cpw	x,#34
1182  004a 2706          	jreq	L242
1183  004c ae0126        	ldw	x,#294
1184  004f cd00db        	call	LC003
1185  0052               L242:
1186                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1188  0052 1e10          	ldw	x,(OFST+13,sp)
1189  0054 270a          	jreq	L252
1190  0056 a30088        	cpw	x,#136
1191  0059 2705          	jreq	L252
1192  005b ae0127        	ldw	x,#295
1193  005e ad7b          	call	LC003
1194  0060               L252:
1195                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1197  0060 1e12          	ldw	x,(OFST+15,sp)
1198  0062 a30055        	cpw	x,#85
1199  0065 2709          	jreq	L262
1200  0067 1e12          	ldw	x,(OFST+15,sp)
1201  0069 2705          	jreq	L262
1202  006b ae0128        	ldw	x,#296
1203  006e ad6b          	call	LC003
1204  0070               L262:
1205                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1207  0070 1e14          	ldw	x,(OFST+17,sp)
1208  0072 a3002a        	cpw	x,#42
1209  0075 2709          	jreq	L272
1210  0077 1e14          	ldw	x,(OFST+17,sp)
1211  0079 2705          	jreq	L272
1212  007b ae0129        	ldw	x,#297
1213  007e ad5b          	call	LC003
1214  0080               L272:
1215                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1215                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1217  0080 c6525d        	ld	a,21085
1218  0083 a4f0          	and	a,#240
1219  0085 c7525d        	ld	21085,a
1220                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1220                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1220                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1220                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1222  0088 7b11          	ld	a,(OFST+14,sp)
1223  008a a408          	and	a,#8
1224  008c 6b03          	ld	(OFST+0,sp),a
1225  008e 7b0f          	ld	a,(OFST+12,sp)
1226  0090 a402          	and	a,#2
1227  0092 1a03          	or	a,(OFST+0,sp)
1228  0094 6b02          	ld	(OFST-1,sp),a
1229  0096 7b0b          	ld	a,(OFST+8,sp)
1230  0098 a404          	and	a,#4
1231  009a 6b01          	ld	(OFST-2,sp),a
1232  009c 7b09          	ld	a,(OFST+6,sp)
1233  009e a401          	and	a,#1
1234  00a0 1a01          	or	a,(OFST-2,sp)
1235  00a2 1a02          	or	a,(OFST-1,sp)
1236  00a4 ca525d        	or	a,21085
1237  00a7 c7525d        	ld	21085,a
1238                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1238                     ; 312                           (uint8_t)TIM1_OCMode);
1240  00aa c6525a        	ld	a,21082
1241  00ad a48f          	and	a,#143
1242  00af 1a05          	or	a,(OFST+2,sp)
1243  00b1 c7525a        	ld	21082,a
1244                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1246  00b4 c6526f        	ld	a,21103
1247  00b7 a4cf          	and	a,#207
1248  00b9 c7526f        	ld	21103,a
1249                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1249                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1251  00bc 7b15          	ld	a,(OFST+18,sp)
1252  00be a420          	and	a,#32
1253  00c0 6b03          	ld	(OFST+0,sp),a
1254  00c2 7b13          	ld	a,(OFST+16,sp)
1255  00c4 a410          	and	a,#16
1256  00c6 1a03          	or	a,(OFST+0,sp)
1257  00c8 ca526f        	or	a,21103
1258  00cb c7526f        	ld	21103,a
1259                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1261  00ce 7b0c          	ld	a,(OFST+9,sp)
1262  00d0 c75269        	ld	21097,a
1263                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1265  00d3 7b0d          	ld	a,(OFST+10,sp)
1266  00d5 c7526a        	ld	21098,a
1267                     ; 323 }
1270  00d8 5b05          	addw	sp,#5
1271  00da 81            	ret	
1272  00db               LC003:
1273  00db 89            	pushw	x
1274  00dc 5f            	clrw	x
1275  00dd 89            	pushw	x
1276  00de ae0000        	ldw	x,#L101
1277  00e1 cd0000        	call	_assert_failed
1279  00e4 5b04          	addw	sp,#4
1280  00e6 81            	ret	
1355                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1355                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1355                     ; 340                   uint16_t TIM1_Pulse,
1355                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1355                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1355                     ; 343 {
1356                     .text:	section	.text,new
1357  0000               _TIM1_OC4Init:
1359  0000 89            	pushw	x
1360  0001 88            	push	a
1361       00000001      OFST:	set	1
1364                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1366  0002 5d            	tnzw	x
1367  0003 271e          	jreq	L403
1368  0005 a30010        	cpw	x,#16
1369  0008 2719          	jreq	L403
1370  000a a30020        	cpw	x,#32
1371  000d 2714          	jreq	L403
1372  000f a30030        	cpw	x,#48
1373  0012 270f          	jreq	L403
1374  0014 a30060        	cpw	x,#96
1375  0017 270a          	jreq	L403
1376  0019 a30070        	cpw	x,#112
1377  001c 2705          	jreq	L403
1378  001e ae0159        	ldw	x,#345
1379  0021 ad6f          	call	LC004
1380  0023               L403:
1381                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1383  0023 1e06          	ldw	x,(OFST+5,sp)
1384  0025 270a          	jreq	L413
1385  0027 a30011        	cpw	x,#17
1386  002a 2705          	jreq	L413
1387  002c ae015a        	ldw	x,#346
1388  002f ad61          	call	LC004
1389  0031               L413:
1390                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1392  0031 1e0a          	ldw	x,(OFST+9,sp)
1393  0033 270a          	jreq	L423
1394  0035 a30022        	cpw	x,#34
1395  0038 2705          	jreq	L423
1396  003a ae015b        	ldw	x,#347
1397  003d ad53          	call	LC004
1398  003f               L423:
1399                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1401  003f 1e0c          	ldw	x,(OFST+11,sp)
1402  0041 a30055        	cpw	x,#85
1403  0044 2709          	jreq	L433
1404  0046 1e0c          	ldw	x,(OFST+11,sp)
1405  0048 2705          	jreq	L433
1406  004a ae015c        	ldw	x,#348
1407  004d ad43          	call	LC004
1408  004f               L433:
1409                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1411  004f c6525d        	ld	a,21085
1412  0052 a4cf          	and	a,#207
1413  0054 c7525d        	ld	21085,a
1414                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1414                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1416  0057 7b0b          	ld	a,(OFST+10,sp)
1417  0059 a420          	and	a,#32
1418  005b 6b01          	ld	(OFST+0,sp),a
1419  005d 7b07          	ld	a,(OFST+6,sp)
1420  005f a410          	and	a,#16
1421  0061 1a01          	or	a,(OFST+0,sp)
1422  0063 ca525d        	or	a,21085
1423  0066 c7525d        	ld	21085,a
1424                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1424                     ; 358                           TIM1_OCMode);
1426  0069 c6525b        	ld	a,21083
1427  006c a48f          	and	a,#143
1428  006e 1a03          	or	a,(OFST+2,sp)
1429  0070 c7525b        	ld	21083,a
1430                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1432  0073 1e0c          	ldw	x,(OFST+11,sp)
1433  0075 270a          	jreq	L734
1434                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1436  0077 c6526f        	ld	a,21103
1437  007a aadf          	or	a,#223
1438  007c c7526f        	ld	21103,a
1440  007f 2004          	jra	L144
1441  0081               L734:
1442                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1444  0081 721d526f      	bres	21103,#6
1445  0085               L144:
1446                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1448  0085 7b08          	ld	a,(OFST+7,sp)
1449  0087 c7526b        	ld	21099,a
1450                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1452  008a 7b09          	ld	a,(OFST+8,sp)
1453  008c c7526c        	ld	21100,a
1454                     ; 373 }
1457  008f 5b03          	addw	sp,#3
1458  0091 81            	ret	
1459  0092               LC004:
1460  0092 89            	pushw	x
1461  0093 5f            	clrw	x
1462  0094 89            	pushw	x
1463  0095 ae0000        	ldw	x,#L101
1464  0098 cd0000        	call	_assert_failed
1466  009b 5b04          	addw	sp,#4
1467  009d 81            	ret	
1673                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1673                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1673                     ; 390                      uint8_t TIM1_DeadTime,
1673                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1673                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1673                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1673                     ; 394 {
1674                     .text:	section	.text,new
1675  0000               _TIM1_BDTRConfig:
1677  0000 89            	pushw	x
1678  0001 88            	push	a
1679       00000001      OFST:	set	1
1682                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1684  0002 a30004        	cpw	x,#4
1685  0005 2708          	jreq	L643
1686  0007 5d            	tnzw	x
1687  0008 2705          	jreq	L643
1688  000a ae018c        	ldw	x,#396
1689  000d ad5f          	call	LC005
1690  000f               L643:
1691                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1693  000f 1e06          	ldw	x,(OFST+5,sp)
1694  0011 2714          	jreq	L653
1695  0013 a30001        	cpw	x,#1
1696  0016 270f          	jreq	L653
1697  0018 a30002        	cpw	x,#2
1698  001b 270a          	jreq	L653
1699  001d a30003        	cpw	x,#3
1700  0020 2705          	jreq	L653
1701  0022 ae018d        	ldw	x,#397
1702  0025 ad47          	call	LC005
1703  0027               L653:
1704                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1706  0027 1e09          	ldw	x,(OFST+8,sp)
1707  0029 a30010        	cpw	x,#16
1708  002c 2709          	jreq	L663
1709  002e 1e09          	ldw	x,(OFST+8,sp)
1710  0030 2705          	jreq	L663
1711  0032 ae018e        	ldw	x,#398
1712  0035 ad37          	call	LC005
1713  0037               L663:
1714                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1716  0037 1e0b          	ldw	x,(OFST+10,sp)
1717  0039 270a          	jreq	L673
1718  003b a30020        	cpw	x,#32
1719  003e 2705          	jreq	L673
1720  0040 ae018f        	ldw	x,#399
1721  0043 ad29          	call	LC005
1722  0045               L673:
1723                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1725  0045 1e0d          	ldw	x,(OFST+12,sp)
1726  0047 a30040        	cpw	x,#64
1727  004a 2709          	jreq	L604
1728  004c 1e0d          	ldw	x,(OFST+12,sp)
1729  004e 2705          	jreq	L604
1730  0050 ae0190        	ldw	x,#400
1731  0053 ad19          	call	LC005
1732  0055               L604:
1733                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1735  0055 7b08          	ld	a,(OFST+7,sp)
1736  0057 c7526e        	ld	21102,a
1737                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1737                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1737                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1739  005a 7b0c          	ld	a,(OFST+11,sp)
1740  005c 1a0a          	or	a,(OFST+9,sp)
1741  005e 1a0e          	or	a,(OFST+13,sp)
1742  0060 6b01          	ld	(OFST+0,sp),a
1743  0062 7b07          	ld	a,(OFST+6,sp)
1744  0064 1a03          	or	a,(OFST+2,sp)
1745  0066 1a01          	or	a,(OFST+0,sp)
1746  0068 c7526d        	ld	21101,a
1747                     ; 409 }
1750  006b 5b03          	addw	sp,#3
1751  006d 81            	ret	
1752  006e               LC005:
1753  006e 89            	pushw	x
1754  006f 5f            	clrw	x
1755  0070 89            	pushw	x
1756  0071 ae0000        	ldw	x,#L101
1757  0074 cd0000        	call	_assert_failed
1759  0077 5b04          	addw	sp,#4
1760  0079 81            	ret	
1963                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1963                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1963                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1963                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1963                     ; 427                  uint8_t TIM1_ICFilter)
1963                     ; 428 {
1964                     .text:	section	.text,new
1965  0000               _TIM1_ICInit:
1967  0000 89            	pushw	x
1968       00000000      OFST:	set	0
1971                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1973  0001 5d            	tnzw	x
1974  0002 2715          	jreq	L024
1975  0004 a30001        	cpw	x,#1
1976  0007 2710          	jreq	L024
1977  0009 a30002        	cpw	x,#2
1978  000c 270b          	jreq	L024
1979  000e a30003        	cpw	x,#3
1980  0011 2706          	jreq	L024
1981  0013 ae01ae        	ldw	x,#430
1982  0016 cd00be        	call	LC006
1983  0019               L024:
1984                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1986  0019 1e05          	ldw	x,(OFST+5,sp)
1987  001b 2709          	jreq	L034
1988  001d 5a            	decw	x
1989  001e 2706          	jreq	L034
1990  0020 ae01af        	ldw	x,#431
1991  0023 cd00be        	call	LC006
1992  0026               L034:
1993                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1995  0026 1e07          	ldw	x,(OFST+7,sp)
1996  0028 a30001        	cpw	x,#1
1997  002b 2710          	jreq	L044
1998  002d a30002        	cpw	x,#2
1999  0030 270b          	jreq	L044
2000  0032 a30003        	cpw	x,#3
2001  0035 2706          	jreq	L044
2002  0037 ae01b0        	ldw	x,#432
2003  003a cd00be        	call	LC006
2004  003d               L044:
2005                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2007  003d 1e09          	ldw	x,(OFST+9,sp)
2008  003f 2714          	jreq	L054
2009  0041 a30004        	cpw	x,#4
2010  0044 270f          	jreq	L054
2011  0046 a30008        	cpw	x,#8
2012  0049 270a          	jreq	L054
2013  004b a3000c        	cpw	x,#12
2014  004e 2705          	jreq	L054
2015  0050 ae01b1        	ldw	x,#433
2016  0053 ad69          	call	LC006
2017  0055               L054:
2018                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2020  0055 7b0b          	ld	a,(OFST+11,sp)
2021  0057 a110          	cp	a,#16
2022  0059 2505          	jrult	L654
2023  005b ae01b2        	ldw	x,#434
2024  005e ad5e          	call	LC006
2025  0060               L654:
2026                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2028  0060 1e01          	ldw	x,(OFST+1,sp)
2029  0062 2614          	jrne	L176
2030                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2030                     ; 440                (uint8_t)TIM1_ICSelection,
2030                     ; 441                (uint8_t)TIM1_ICFilter);
2032  0064 7b0b          	ld	a,(OFST+11,sp)
2033  0066 88            	push	a
2034  0067 7b09          	ld	a,(OFST+9,sp)
2035  0069 97            	ld	xl,a
2036  006a 7b07          	ld	a,(OFST+7,sp)
2037  006c 95            	ld	xh,a
2038  006d cd0000        	call	L3_TI1_Config
2040  0070 84            	pop	a
2041                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2043  0071 1e09          	ldw	x,(OFST+9,sp)
2044  0073 cd0000        	call	_TIM1_SetIC1Prescaler
2047  0076 2044          	jra	L376
2048  0078               L176:
2049                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2051  0078 a30001        	cpw	x,#1
2052  007b 2614          	jrne	L576
2053                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2053                     ; 449                (uint8_t)TIM1_ICSelection,
2053                     ; 450                (uint8_t)TIM1_ICFilter);
2055  007d 7b0b          	ld	a,(OFST+11,sp)
2056  007f 88            	push	a
2057  0080 7b09          	ld	a,(OFST+9,sp)
2058  0082 97            	ld	xl,a
2059  0083 7b07          	ld	a,(OFST+7,sp)
2060  0085 95            	ld	xh,a
2061  0086 cd0000        	call	L5_TI2_Config
2063  0089 84            	pop	a
2064                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2066  008a 1e09          	ldw	x,(OFST+9,sp)
2067  008c cd0000        	call	_TIM1_SetIC2Prescaler
2070  008f 202b          	jra	L376
2071  0091               L576:
2072                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2074  0091 a30002        	cpw	x,#2
2075  0094 2614          	jrne	L107
2076                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2076                     ; 458                (uint8_t)TIM1_ICSelection,
2076                     ; 459                (uint8_t)TIM1_ICFilter);
2078  0096 7b0b          	ld	a,(OFST+11,sp)
2079  0098 88            	push	a
2080  0099 7b09          	ld	a,(OFST+9,sp)
2081  009b 97            	ld	xl,a
2082  009c 7b07          	ld	a,(OFST+7,sp)
2083  009e 95            	ld	xh,a
2084  009f cd0000        	call	L7_TI3_Config
2086  00a2 84            	pop	a
2087                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2089  00a3 1e09          	ldw	x,(OFST+9,sp)
2090  00a5 cd0000        	call	_TIM1_SetIC3Prescaler
2093  00a8 2012          	jra	L376
2094  00aa               L107:
2095                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2095                     ; 467                (uint8_t)TIM1_ICSelection,
2095                     ; 468                (uint8_t)TIM1_ICFilter);
2097  00aa 7b0b          	ld	a,(OFST+11,sp)
2098  00ac 88            	push	a
2099  00ad 7b09          	ld	a,(OFST+9,sp)
2100  00af 97            	ld	xl,a
2101  00b0 7b07          	ld	a,(OFST+7,sp)
2102  00b2 95            	ld	xh,a
2103  00b3 cd0000        	call	L11_TI4_Config
2105  00b6 84            	pop	a
2106                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2108  00b7 1e09          	ldw	x,(OFST+9,sp)
2109  00b9 cd0000        	call	_TIM1_SetIC4Prescaler
2111  00bc               L376:
2112                     ; 472 }
2115  00bc 85            	popw	x
2116  00bd 81            	ret	
2117  00be               LC006:
2118  00be 89            	pushw	x
2119  00bf 5f            	clrw	x
2120  00c0 89            	pushw	x
2121  00c1 ae0000        	ldw	x,#L101
2122  00c4 cd0000        	call	_assert_failed
2124  00c7 5b04          	addw	sp,#4
2125  00c9 81            	ret	
2222                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2222                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2222                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2222                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2222                     ; 492                      uint8_t TIM1_ICFilter)
2222                     ; 493 {
2223                     .text:	section	.text,new
2224  0000               _TIM1_PWMIConfig:
2226  0000 89            	pushw	x
2227  0001 89            	pushw	x
2228       00000002      OFST:	set	2
2231                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2233                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2235                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2237  0002 5d            	tnzw	x
2238  0003 2709          	jreq	L015
2239  0005 5a            	decw	x
2240  0006 2706          	jreq	L015
2241  0008 ae01f2        	ldw	x,#498
2242  000b cd00b5        	call	LC007
2243  000e               L015:
2244                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2246  000e 1e07          	ldw	x,(OFST+5,sp)
2247  0010 2709          	jreq	L025
2248  0012 5a            	decw	x
2249  0013 2706          	jreq	L025
2250  0015 ae01f3        	ldw	x,#499
2251  0018 cd00b5        	call	LC007
2252  001b               L025:
2253                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2255  001b 1e09          	ldw	x,(OFST+7,sp)
2256  001d a30001        	cpw	x,#1
2257  0020 2710          	jreq	L035
2258  0022 a30002        	cpw	x,#2
2259  0025 270b          	jreq	L035
2260  0027 a30003        	cpw	x,#3
2261  002a 2706          	jreq	L035
2262  002c ae01f4        	ldw	x,#500
2263  002f cd00b5        	call	LC007
2264  0032               L035:
2265                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2267  0032 1e0b          	ldw	x,(OFST+9,sp)
2268  0034 2714          	jreq	L045
2269  0036 a30004        	cpw	x,#4
2270  0039 270f          	jreq	L045
2271  003b a30008        	cpw	x,#8
2272  003e 270a          	jreq	L045
2273  0040 a3000c        	cpw	x,#12
2274  0043 2705          	jreq	L045
2275  0045 ae01f5        	ldw	x,#501
2276  0048 ad6b          	call	LC007
2277  004a               L045:
2278                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2280  004a 1e07          	ldw	x,(OFST+5,sp)
2281  004c 5a            	decw	x
2282  004d 2706          	jreq	L357
2283                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2285  004f a601          	ld	a,#1
2286  0051 6b01          	ld	(OFST-1,sp),a
2288  0053 2002          	jra	L557
2289  0055               L357:
2290                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2292  0055 0f01          	clr	(OFST-1,sp)
2293  0057               L557:
2294                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2296  0057 1e09          	ldw	x,(OFST+7,sp)
2297  0059 5a            	decw	x
2298  005a 2604          	jrne	L757
2299                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2301  005c a602          	ld	a,#2
2303  005e 2002          	jra	L167
2304  0060               L757:
2305                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2307  0060 a601          	ld	a,#1
2308  0062               L167:
2309  0062 6b02          	ld	(OFST+0,sp),a
2310                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2312  0064 1e03          	ldw	x,(OFST+1,sp)
2313  0066 2626          	jrne	L367
2314                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2314                     ; 527                (uint8_t)TIM1_ICFilter);
2316  0068 7b0d          	ld	a,(OFST+11,sp)
2317  006a 88            	push	a
2318  006b 7b0b          	ld	a,(OFST+9,sp)
2319  006d 97            	ld	xl,a
2320  006e 7b09          	ld	a,(OFST+7,sp)
2321  0070 95            	ld	xh,a
2322  0071 cd0000        	call	L3_TI1_Config
2324  0074 84            	pop	a
2325                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2327  0075 1e0b          	ldw	x,(OFST+9,sp)
2328  0077 cd0000        	call	_TIM1_SetIC1Prescaler
2330                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2332  007a 7b0d          	ld	a,(OFST+11,sp)
2333  007c 88            	push	a
2334  007d 7b03          	ld	a,(OFST+1,sp)
2335  007f 97            	ld	xl,a
2336  0080 7b02          	ld	a,(OFST+0,sp)
2337  0082 95            	ld	xh,a
2338  0083 cd0000        	call	L5_TI2_Config
2340  0086 84            	pop	a
2341                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2343  0087 1e0b          	ldw	x,(OFST+9,sp)
2344  0089 cd0000        	call	_TIM1_SetIC2Prescaler
2347  008c 2024          	jra	L567
2348  008e               L367:
2349                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2349                     ; 542                (uint8_t)TIM1_ICFilter);
2351  008e 7b0d          	ld	a,(OFST+11,sp)
2352  0090 88            	push	a
2353  0091 7b0b          	ld	a,(OFST+9,sp)
2354  0093 97            	ld	xl,a
2355  0094 7b09          	ld	a,(OFST+7,sp)
2356  0096 95            	ld	xh,a
2357  0097 cd0000        	call	L5_TI2_Config
2359  009a 84            	pop	a
2360                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2362  009b 1e0b          	ldw	x,(OFST+9,sp)
2363  009d cd0000        	call	_TIM1_SetIC2Prescaler
2365                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2367  00a0 7b0d          	ld	a,(OFST+11,sp)
2368  00a2 88            	push	a
2369  00a3 7b03          	ld	a,(OFST+1,sp)
2370  00a5 97            	ld	xl,a
2371  00a6 7b02          	ld	a,(OFST+0,sp)
2372  00a8 95            	ld	xh,a
2373  00a9 cd0000        	call	L3_TI1_Config
2375  00ac 84            	pop	a
2376                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2378  00ad 1e0b          	ldw	x,(OFST+9,sp)
2379  00af cd0000        	call	_TIM1_SetIC1Prescaler
2381  00b2               L567:
2382                     ; 553 }
2385  00b2 5b04          	addw	sp,#4
2386  00b4 81            	ret	
2387  00b5               LC007:
2388  00b5 89            	pushw	x
2389  00b6 5f            	clrw	x
2390  00b7 89            	pushw	x
2391  00b8 ae0000        	ldw	x,#L101
2392  00bb cd0000        	call	_assert_failed
2394  00be 5b04          	addw	sp,#4
2395  00c0 81            	ret	
2451                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2451                     ; 562 {
2452                     .text:	section	.text,new
2453  0000               _TIM1_Cmd:
2455  0000 89            	pushw	x
2456       00000000      OFST:	set	0
2459                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2461  0001 5d            	tnzw	x
2462  0002 2711          	jreq	L275
2463  0004 5a            	decw	x
2464  0005 270e          	jreq	L275
2465  0007 ae0234        	ldw	x,#564
2466  000a 89            	pushw	x
2467  000b 5f            	clrw	x
2468  000c 89            	pushw	x
2469  000d ae0000        	ldw	x,#L101
2470  0010 cd0000        	call	_assert_failed
2472  0013 5b04          	addw	sp,#4
2473  0015               L275:
2474                     ; 567   if (NewState != DISABLE)
2476  0015 1e01          	ldw	x,(OFST+1,sp)
2477  0017 2706          	jreq	L5101
2478                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2480  0019 72105250      	bset	21072,#0
2482  001d 2004          	jra	L7101
2483  001f               L5101:
2484                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2486  001f 72115250      	bres	21072,#0
2487  0023               L7101:
2488                     ; 575 }
2491  0023 85            	popw	x
2492  0024 81            	ret	
2529                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2529                     ; 584 {
2530                     .text:	section	.text,new
2531  0000               _TIM1_CtrlPWMOutputs:
2533  0000 89            	pushw	x
2534       00000000      OFST:	set	0
2537                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2539  0001 5d            	tnzw	x
2540  0002 2711          	jreq	L406
2541  0004 5a            	decw	x
2542  0005 270e          	jreq	L406
2543  0007 ae024a        	ldw	x,#586
2544  000a 89            	pushw	x
2545  000b 5f            	clrw	x
2546  000c 89            	pushw	x
2547  000d ae0000        	ldw	x,#L101
2548  0010 cd0000        	call	_assert_failed
2550  0013 5b04          	addw	sp,#4
2551  0015               L406:
2552                     ; 590   if (NewState != DISABLE)
2554  0015 1e01          	ldw	x,(OFST+1,sp)
2555  0017 2706          	jreq	L7301
2556                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2558  0019 721e526d      	bset	21101,#7
2560  001d 2004          	jra	L1401
2561  001f               L7301:
2562                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2564  001f 721f526d      	bres	21101,#7
2565  0023               L1401:
2566                     ; 598 }
2569  0023 85            	popw	x
2570  0024 81            	ret	
2678                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2678                     ; 618 {
2679                     .text:	section	.text,new
2680  0000               _TIM1_ITConfig:
2682  0000 89            	pushw	x
2683       00000000      OFST:	set	0
2686                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2688  0001 5d            	tnzw	x
2689  0002 2605          	jrne	L416
2690  0004 ae026c        	ldw	x,#620
2691  0007 ad22          	call	LC008
2692  0009               L416:
2693                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2695  0009 1e05          	ldw	x,(OFST+5,sp)
2696  000b 2708          	jreq	L426
2697  000d 5a            	decw	x
2698  000e 2705          	jreq	L426
2699  0010 ae026d        	ldw	x,#621
2700  0013 ad16          	call	LC008
2701  0015               L426:
2702                     ; 623   if (NewState != DISABLE)
2704  0015 1e05          	ldw	x,(OFST+5,sp)
2705  0017 2707          	jreq	L1111
2706                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2708  0019 c65254        	ld	a,21076
2709  001c 1a02          	or	a,(OFST+2,sp)
2711  001e 2006          	jra	L3111
2712  0020               L1111:
2713                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2715  0020 7b02          	ld	a,(OFST+2,sp)
2716  0022 43            	cpl	a
2717  0023 c45254        	and	a,21076
2718  0026               L3111:
2719  0026 c75254        	ld	21076,a
2720                     ; 633 }
2723  0029 85            	popw	x
2724  002a 81            	ret	
2725  002b               LC008:
2726  002b 89            	pushw	x
2727  002c 5f            	clrw	x
2728  002d 89            	pushw	x
2729  002e ae0000        	ldw	x,#L101
2730  0031 cd0000        	call	_assert_failed
2732  0034 5b04          	addw	sp,#4
2733  0036 81            	ret	
2757                     ; 640 void TIM1_InternalClockConfig(void)
2757                     ; 641 {
2758                     .text:	section	.text,new
2759  0000               _TIM1_InternalClockConfig:
2763                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2765  0000 c65252        	ld	a,21074
2766  0003 a4f8          	and	a,#248
2767  0005 c75252        	ld	21074,a
2768                     ; 644 }
2771  0008 81            	ret	
2889                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2889                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2889                     ; 664                               uint8_t ExtTRGFilter)
2889                     ; 665 {
2890                     .text:	section	.text,new
2891  0000               _TIM1_ETRClockMode1Config:
2893  0000 89            	pushw	x
2894       00000000      OFST:	set	0
2897                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2899  0001 5d            	tnzw	x
2900  0002 2714          	jreq	L046
2901  0004 a30010        	cpw	x,#16
2902  0007 270f          	jreq	L046
2903  0009 a30020        	cpw	x,#32
2904  000c 270a          	jreq	L046
2905  000e a30030        	cpw	x,#48
2906  0011 2705          	jreq	L046
2907  0013 ae029b        	ldw	x,#667
2908  0016 ad27          	call	LC009
2909  0018               L046:
2910                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2912  0018 1e05          	ldw	x,(OFST+5,sp)
2913  001a a30080        	cpw	x,#128
2914  001d 2709          	jreq	L056
2915  001f 1e05          	ldw	x,(OFST+5,sp)
2916  0021 2705          	jreq	L056
2917  0023 ae029c        	ldw	x,#668
2918  0026 ad17          	call	LC009
2919  0028               L056:
2920                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2922  0028 7b07          	ld	a,(OFST+7,sp)
2923  002a 88            	push	a
2924  002b 1e06          	ldw	x,(OFST+6,sp)
2925  002d 89            	pushw	x
2926  002e 1e04          	ldw	x,(OFST+4,sp)
2927  0030 cd0000        	call	_TIM1_ETRConfig
2929  0033 5b03          	addw	sp,#3
2930                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2930                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2932  0035 c65252        	ld	a,21074
2933  0038 aa77          	or	a,#119
2934  003a c75252        	ld	21074,a
2935                     ; 676 }
2938  003d 85            	popw	x
2939  003e 81            	ret	
2940  003f               LC009:
2941  003f 89            	pushw	x
2942  0040 5f            	clrw	x
2943  0041 89            	pushw	x
2944  0042 ae0000        	ldw	x,#L101
2945  0045 cd0000        	call	_assert_failed
2947  0048 5b04          	addw	sp,#4
2948  004a 81            	ret	
3007                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3007                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3007                     ; 696                               uint8_t ExtTRGFilter)
3007                     ; 697 {
3008                     .text:	section	.text,new
3009  0000               _TIM1_ETRClockMode2Config:
3011  0000 89            	pushw	x
3012       00000000      OFST:	set	0
3015                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3017  0001 5d            	tnzw	x
3018  0002 2714          	jreq	L466
3019  0004 a30010        	cpw	x,#16
3020  0007 270f          	jreq	L466
3021  0009 a30020        	cpw	x,#32
3022  000c 270a          	jreq	L466
3023  000e a30030        	cpw	x,#48
3024  0011 2705          	jreq	L466
3025  0013 ae02bb        	ldw	x,#699
3026  0016 ad23          	call	LC010
3027  0018               L466:
3028                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3030  0018 1e05          	ldw	x,(OFST+5,sp)
3031  001a a30080        	cpw	x,#128
3032  001d 2709          	jreq	L476
3033  001f 1e05          	ldw	x,(OFST+5,sp)
3034  0021 2705          	jreq	L476
3035  0023 ae02bc        	ldw	x,#700
3036  0026 ad13          	call	LC010
3037  0028               L476:
3038                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3040  0028 7b07          	ld	a,(OFST+7,sp)
3041  002a 88            	push	a
3042  002b 1e06          	ldw	x,(OFST+6,sp)
3043  002d 89            	pushw	x
3044  002e 1e04          	ldw	x,(OFST+4,sp)
3045  0030 cd0000        	call	_TIM1_ETRConfig
3047  0033 5b03          	addw	sp,#3
3048                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3050  0035 721c5253      	bset	21075,#6
3051                     ; 707 }
3054  0039 85            	popw	x
3055  003a 81            	ret	
3056  003b               LC010:
3057  003b 89            	pushw	x
3058  003c 5f            	clrw	x
3059  003d 89            	pushw	x
3060  003e ae0000        	ldw	x,#L101
3061  0041 cd0000        	call	_assert_failed
3063  0044 5b04          	addw	sp,#4
3064  0046 81            	ret	
3121                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3121                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3121                     ; 727                     uint8_t ExtTRGFilter)
3121                     ; 728 {
3122                     .text:	section	.text,new
3123  0000               _TIM1_ETRConfig:
3125  0000 89            	pushw	x
3126       00000000      OFST:	set	0
3129                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3131  0001 7b07          	ld	a,(OFST+7,sp)
3132  0003 a110          	cp	a,#16
3133  0005 250e          	jrult	L607
3134  0007 ae02da        	ldw	x,#730
3135  000a 89            	pushw	x
3136  000b 5f            	clrw	x
3137  000c 89            	pushw	x
3138  000d ae0000        	ldw	x,#L101
3139  0010 cd0000        	call	_assert_failed
3141  0013 5b04          	addw	sp,#4
3142  0015               L607:
3143                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3143                     ; 733                          (uint8_t)ExtTRGFilter );
3145  0015 7b06          	ld	a,(OFST+6,sp)
3146  0017 1a02          	or	a,(OFST+2,sp)
3147  0019 1a07          	or	a,(OFST+7,sp)
3148  001b ca5253        	or	a,21075
3149  001e c75253        	ld	21075,a
3150                     ; 734 }
3153  0021 85            	popw	x
3154  0022 81            	ret	
3244                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3244                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3244                     ; 753                                  uint8_t ICFilter)
3244                     ; 754 {
3245                     .text:	section	.text,new
3246  0000               _TIM1_TIxExternalClockConfig:
3248  0000 89            	pushw	x
3249       00000000      OFST:	set	0
3252                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3254  0001 a30040        	cpw	x,#64
3255  0004 270f          	jreq	L027
3256  0006 a30060        	cpw	x,#96
3257  0009 270a          	jreq	L027
3258  000b a30050        	cpw	x,#80
3259  000e 2705          	jreq	L027
3260  0010 ae02f4        	ldw	x,#756
3261  0013 ad48          	call	LC011
3262  0015               L027:
3263                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3265  0015 1e05          	ldw	x,(OFST+5,sp)
3266  0017 2708          	jreq	L037
3267  0019 5a            	decw	x
3268  001a 2705          	jreq	L037
3269  001c ae02f5        	ldw	x,#757
3270  001f ad3c          	call	LC011
3271  0021               L037:
3272                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3274  0021 7b07          	ld	a,(OFST+7,sp)
3275  0023 a110          	cp	a,#16
3276  0025 2505          	jrult	L637
3277  0027 ae02f6        	ldw	x,#758
3278  002a ad31          	call	LC011
3279  002c               L637:
3280                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3282  002c 1e01          	ldw	x,(OFST+1,sp)
3283  002e a30060        	cpw	x,#96
3284  0031 260e          	jrne	L3131
3285                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3287  0033 7b07          	ld	a,(OFST+7,sp)
3288  0035 88            	push	a
3289  0036 ae0001        	ldw	x,#1
3290  0039 7b07          	ld	a,(OFST+7,sp)
3291  003b 95            	ld	xh,a
3292  003c cd0000        	call	L5_TI2_Config
3295  003f 200c          	jra	L5131
3296  0041               L3131:
3297                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3299  0041 7b07          	ld	a,(OFST+7,sp)
3300  0043 88            	push	a
3301  0044 ae0001        	ldw	x,#1
3302  0047 7b07          	ld	a,(OFST+7,sp)
3303  0049 95            	ld	xh,a
3304  004a cd0000        	call	L3_TI1_Config
3306  004d               L5131:
3307  004d 84            	pop	a
3308                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3310  004e 1e01          	ldw	x,(OFST+1,sp)
3311  0050 cd0000        	call	_TIM1_SelectInputTrigger
3313                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3315  0053 c65252        	ld	a,21074
3316  0056 aa07          	or	a,#7
3317  0058 c75252        	ld	21074,a
3318                     ; 775 }
3321  005b 85            	popw	x
3322  005c 81            	ret	
3323  005d               LC011:
3324  005d 89            	pushw	x
3325  005e 5f            	clrw	x
3326  005f 89            	pushw	x
3327  0060 ae0000        	ldw	x,#L101
3328  0063 cd0000        	call	_assert_failed
3330  0066 5b04          	addw	sp,#4
3331  0068 81            	ret	
3417                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3417                     ; 788 {
3418                     .text:	section	.text,new
3419  0000               _TIM1_SelectInputTrigger:
3421  0000 89            	pushw	x
3422       00000000      OFST:	set	0
3425                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3427  0001 a30040        	cpw	x,#64
3428  0004 2725          	jreq	L657
3429  0006 a30050        	cpw	x,#80
3430  0009 2720          	jreq	L657
3431  000b a30060        	cpw	x,#96
3432  000e 271b          	jreq	L657
3433  0010 a30070        	cpw	x,#112
3434  0013 2716          	jreq	L657
3435  0015 a30030        	cpw	x,#48
3436  0018 2711          	jreq	L657
3437  001a 5d            	tnzw	x
3438  001b 270e          	jreq	L657
3439  001d ae0316        	ldw	x,#790
3440  0020 89            	pushw	x
3441  0021 5f            	clrw	x
3442  0022 89            	pushw	x
3443  0023 ae0000        	ldw	x,#L101
3444  0026 cd0000        	call	_assert_failed
3446  0029 5b04          	addw	sp,#4
3447  002b               L657:
3448                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3450  002b c65252        	ld	a,21074
3451  002e a48f          	and	a,#143
3452  0030 1a02          	or	a,(OFST+2,sp)
3453  0032 c75252        	ld	21074,a
3454                     ; 794 }
3457  0035 85            	popw	x
3458  0036 81            	ret	
3495                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3495                     ; 804 {
3496                     .text:	section	.text,new
3497  0000               _TIM1_UpdateDisableConfig:
3499  0000 89            	pushw	x
3500       00000000      OFST:	set	0
3503                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3505  0001 5d            	tnzw	x
3506  0002 2711          	jreq	L077
3507  0004 5a            	decw	x
3508  0005 270e          	jreq	L077
3509  0007 ae0326        	ldw	x,#806
3510  000a 89            	pushw	x
3511  000b 5f            	clrw	x
3512  000c 89            	pushw	x
3513  000d ae0000        	ldw	x,#L101
3514  0010 cd0000        	call	_assert_failed
3516  0013 5b04          	addw	sp,#4
3517  0015               L077:
3518                     ; 809   if (NewState != DISABLE)
3520  0015 1e01          	ldw	x,(OFST+1,sp)
3521  0017 2706          	jreq	L3731
3522                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3524  0019 72125250      	bset	21072,#1
3526  001d 2004          	jra	L5731
3527  001f               L3731:
3528                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3530  001f 72135250      	bres	21072,#1
3531  0023               L5731:
3532                     ; 817 }
3535  0023 85            	popw	x
3536  0024 81            	ret	
3595                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3595                     ; 828 {
3596                     .text:	section	.text,new
3597  0000               _TIM1_UpdateRequestConfig:
3599  0000 89            	pushw	x
3600       00000000      OFST:	set	0
3603                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3605  0001 5d            	tnzw	x
3606  0002 2711          	jreq	L2001
3607  0004 5a            	decw	x
3608  0005 270e          	jreq	L2001
3609  0007 ae033e        	ldw	x,#830
3610  000a 89            	pushw	x
3611  000b 5f            	clrw	x
3612  000c 89            	pushw	x
3613  000d ae0000        	ldw	x,#L101
3614  0010 cd0000        	call	_assert_failed
3616  0013 5b04          	addw	sp,#4
3617  0015               L2001:
3618                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3620  0015 1e01          	ldw	x,(OFST+1,sp)
3621  0017 2706          	jreq	L5241
3622                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3624  0019 72145250      	bset	21072,#2
3626  001d 2004          	jra	L7241
3627  001f               L5241:
3628                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3630  001f 72155250      	bres	21072,#2
3631  0023               L7241:
3632                     ; 841 }
3635  0023 85            	popw	x
3636  0024 81            	ret	
3673                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3673                     ; 850 {
3674                     .text:	section	.text,new
3675  0000               _TIM1_SelectHallSensor:
3677  0000 89            	pushw	x
3678       00000000      OFST:	set	0
3681                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3683  0001 5d            	tnzw	x
3684  0002 2711          	jreq	L4101
3685  0004 5a            	decw	x
3686  0005 270e          	jreq	L4101
3687  0007 ae0354        	ldw	x,#852
3688  000a 89            	pushw	x
3689  000b 5f            	clrw	x
3690  000c 89            	pushw	x
3691  000d ae0000        	ldw	x,#L101
3692  0010 cd0000        	call	_assert_failed
3694  0013 5b04          	addw	sp,#4
3695  0015               L4101:
3696                     ; 855   if (NewState != DISABLE)
3698  0015 1e01          	ldw	x,(OFST+1,sp)
3699  0017 2706          	jreq	L7441
3700                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3702  0019 721e5251      	bset	21073,#7
3704  001d 2004          	jra	L1541
3705  001f               L7441:
3706                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3708  001f 721f5251      	bres	21073,#7
3709  0023               L1541:
3710                     ; 863 }
3713  0023 85            	popw	x
3714  0024 81            	ret	
3772                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3772                     ; 874 {
3773                     .text:	section	.text,new
3774  0000               _TIM1_SelectOnePulseMode:
3776  0000 89            	pushw	x
3777       00000000      OFST:	set	0
3780                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3782  0001 a30001        	cpw	x,#1
3783  0004 2711          	jreq	L6201
3784  0006 5d            	tnzw	x
3785  0007 270e          	jreq	L6201
3786  0009 ae036c        	ldw	x,#876
3787  000c 89            	pushw	x
3788  000d 5f            	clrw	x
3789  000e 89            	pushw	x
3790  000f ae0000        	ldw	x,#L101
3791  0012 cd0000        	call	_assert_failed
3793  0015 5b04          	addw	sp,#4
3794  0017               L6201:
3795                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3797  0017 1e01          	ldw	x,(OFST+1,sp)
3798  0019 2706          	jreq	L1051
3799                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3801  001b 72165250      	bset	21072,#3
3803  001f 2004          	jra	L3051
3804  0021               L1051:
3805                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3807  0021 72175250      	bres	21072,#3
3808  0025               L3051:
3809                     ; 888 }
3812  0025 85            	popw	x
3813  0026 81            	ret	
3912                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3912                     ; 904 {
3913                     .text:	section	.text,new
3914  0000               _TIM1_SelectOutputTrigger:
3916  0000 89            	pushw	x
3917       00000000      OFST:	set	0
3920                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3922  0001 5d            	tnzw	x
3923  0002 272c          	jreq	L0401
3924  0004 a30010        	cpw	x,#16
3925  0007 2727          	jreq	L0401
3926  0009 a30020        	cpw	x,#32
3927  000c 2722          	jreq	L0401
3928  000e a30030        	cpw	x,#48
3929  0011 271d          	jreq	L0401
3930  0013 a30040        	cpw	x,#64
3931  0016 2718          	jreq	L0401
3932  0018 a30050        	cpw	x,#80
3933  001b 2713          	jreq	L0401
3934  001d a30060        	cpw	x,#96
3935  0020 270e          	jreq	L0401
3936  0022 ae038a        	ldw	x,#906
3937  0025 89            	pushw	x
3938  0026 5f            	clrw	x
3939  0027 89            	pushw	x
3940  0028 ae0000        	ldw	x,#L101
3941  002b cd0000        	call	_assert_failed
3943  002e 5b04          	addw	sp,#4
3944  0030               L0401:
3945                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3945                     ; 910                         (uint8_t) TIM1_TRGOSource);
3947  0030 c65251        	ld	a,21073
3948  0033 a48f          	and	a,#143
3949  0035 1a02          	or	a,(OFST+2,sp)
3950  0037 c75251        	ld	21073,a
3951                     ; 911 }
3954  003a 85            	popw	x
3955  003b 81            	ret	
4030                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4030                     ; 924 {
4031                     .text:	section	.text,new
4032  0000               _TIM1_SelectSlaveMode:
4034  0000 89            	pushw	x
4035       00000000      OFST:	set	0
4038                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4040  0001 a30004        	cpw	x,#4
4041  0004 271d          	jreq	L2501
4042  0006 a30005        	cpw	x,#5
4043  0009 2718          	jreq	L2501
4044  000b a30006        	cpw	x,#6
4045  000e 2713          	jreq	L2501
4046  0010 a30007        	cpw	x,#7
4047  0013 270e          	jreq	L2501
4048  0015 ae039e        	ldw	x,#926
4049  0018 89            	pushw	x
4050  0019 5f            	clrw	x
4051  001a 89            	pushw	x
4052  001b ae0000        	ldw	x,#L101
4053  001e cd0000        	call	_assert_failed
4055  0021 5b04          	addw	sp,#4
4056  0023               L2501:
4057                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4057                     ; 930                          (uint8_t)TIM1_SlaveMode);
4059  0023 c65252        	ld	a,21074
4060  0026 a4f8          	and	a,#248
4061  0028 1a02          	or	a,(OFST+2,sp)
4062  002a c75252        	ld	21074,a
4063                     ; 931 }
4066  002d 85            	popw	x
4067  002e 81            	ret	
4104                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4104                     ; 940 {
4105                     .text:	section	.text,new
4106  0000               _TIM1_SelectMasterSlaveMode:
4108  0000 89            	pushw	x
4109       00000000      OFST:	set	0
4112                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4114  0001 5d            	tnzw	x
4115  0002 2711          	jreq	L4601
4116  0004 5a            	decw	x
4117  0005 270e          	jreq	L4601
4118  0007 ae03ae        	ldw	x,#942
4119  000a 89            	pushw	x
4120  000b 5f            	clrw	x
4121  000c 89            	pushw	x
4122  000d ae0000        	ldw	x,#L101
4123  0010 cd0000        	call	_assert_failed
4125  0013 5b04          	addw	sp,#4
4126  0015               L4601:
4127                     ; 945   if (NewState != DISABLE)
4129  0015 1e01          	ldw	x,(OFST+1,sp)
4130  0017 2706          	jreq	L5161
4131                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4133  0019 721e5252      	bset	21074,#7
4135  001d 2004          	jra	L7161
4136  001f               L5161:
4137                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4139  001f 721f5252      	bres	21074,#7
4140  0023               L7161:
4141                     ; 953 }
4144  0023 85            	popw	x
4145  0024 81            	ret	
4232                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4232                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4232                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4232                     ; 978 {
4233                     .text:	section	.text,new
4234  0000               _TIM1_EncoderInterfaceConfig:
4236  0000 89            	pushw	x
4237       00000000      OFST:	set	0
4240                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4242  0001 a30001        	cpw	x,#1
4243  0004 270f          	jreq	L6701
4244  0006 a30002        	cpw	x,#2
4245  0009 270a          	jreq	L6701
4246  000b a30003        	cpw	x,#3
4247  000e 2705          	jreq	L6701
4248  0010 ae03d4        	ldw	x,#980
4249  0013 ad54          	call	LC012
4250  0015               L6701:
4251                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4253  0015 1e05          	ldw	x,(OFST+5,sp)
4254  0017 2708          	jreq	L6011
4255  0019 5a            	decw	x
4256  001a 2705          	jreq	L6011
4257  001c ae03d5        	ldw	x,#981
4258  001f ad48          	call	LC012
4259  0021               L6011:
4260                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4262  0021 1e07          	ldw	x,(OFST+7,sp)
4263  0023 2708          	jreq	L6111
4264  0025 5a            	decw	x
4265  0026 2705          	jreq	L6111
4266  0028 ae03d6        	ldw	x,#982
4267  002b ad3c          	call	LC012
4268  002d               L6111:
4269                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4271  002d 1e05          	ldw	x,(OFST+5,sp)
4272  002f 2706          	jreq	L1661
4273                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4275  0031 7212525c      	bset	21084,#1
4277  0035 2004          	jra	L3661
4278  0037               L1661:
4279                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4281  0037 7213525c      	bres	21084,#1
4282  003b               L3661:
4283                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4285  003b 1e07          	ldw	x,(OFST+7,sp)
4286  003d 2706          	jreq	L5661
4287                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4289  003f 721a525c      	bset	21084,#5
4291  0043 2004          	jra	L7661
4292  0045               L5661:
4293                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4295  0045 721b525c      	bres	21084,#5
4296  0049               L7661:
4297                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4297                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4299  0049 c65252        	ld	a,21074
4300  004c a4f0          	and	a,#240
4301  004e 1a02          	or	a,(OFST+2,sp)
4302  0050 c75252        	ld	21074,a
4303                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4303                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4305  0053 c65258        	ld	a,21080
4306  0056 a4fc          	and	a,#252
4307  0058 aa01          	or	a,#1
4308  005a c75258        	ld	21080,a
4309                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4309                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4311  005d c65259        	ld	a,21081
4312  0060 a4fc          	and	a,#252
4313  0062 aa01          	or	a,#1
4314  0064 c75259        	ld	21081,a
4315                     ; 1011 }
4318  0067 85            	popw	x
4319  0068 81            	ret	
4320  0069               LC012:
4321  0069 89            	pushw	x
4322  006a 5f            	clrw	x
4323  006b 89            	pushw	x
4324  006c ae0000        	ldw	x,#L101
4325  006f cd0000        	call	_assert_failed
4327  0072 5b04          	addw	sp,#4
4328  0074 81            	ret	
4396                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4396                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4396                     ; 1025 {
4397                     .text:	section	.text,new
4398  0000               _TIM1_PrescalerConfig:
4400  0000 89            	pushw	x
4401       00000000      OFST:	set	0
4404                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4406  0001 1e05          	ldw	x,(OFST+5,sp)
4407  0003 2711          	jreq	L0311
4408  0005 5a            	decw	x
4409  0006 270e          	jreq	L0311
4410  0008 ae0403        	ldw	x,#1027
4411  000b 89            	pushw	x
4412  000c 5f            	clrw	x
4413  000d 89            	pushw	x
4414  000e ae0000        	ldw	x,#L101
4415  0011 cd0000        	call	_assert_failed
4417  0014 5b04          	addw	sp,#4
4418  0016               L0311:
4419                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4421  0016 7b01          	ld	a,(OFST+1,sp)
4422  0018 c75260        	ld	21088,a
4423                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4425  001b 7b02          	ld	a,(OFST+2,sp)
4426  001d c75261        	ld	21089,a
4427                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4429  0020 7b06          	ld	a,(OFST+6,sp)
4430  0022 c75257        	ld	21079,a
4431                     ; 1035 }
4434  0025 85            	popw	x
4435  0026 81            	ret	
4472                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4472                     ; 1049 {
4473                     .text:	section	.text,new
4474  0000               _TIM1_CounterModeConfig:
4476  0000 89            	pushw	x
4477       00000000      OFST:	set	0
4480                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4482  0001 5d            	tnzw	x
4483  0002 2722          	jreq	L2411
4484  0004 a30010        	cpw	x,#16
4485  0007 271d          	jreq	L2411
4486  0009 a30020        	cpw	x,#32
4487  000c 2718          	jreq	L2411
4488  000e a30040        	cpw	x,#64
4489  0011 2713          	jreq	L2411
4490  0013 a30060        	cpw	x,#96
4491  0016 270e          	jreq	L2411
4492  0018 ae041b        	ldw	x,#1051
4493  001b 89            	pushw	x
4494  001c 5f            	clrw	x
4495  001d 89            	pushw	x
4496  001e ae0000        	ldw	x,#L101
4497  0021 cd0000        	call	_assert_failed
4499  0024 5b04          	addw	sp,#4
4500  0026               L2411:
4501                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4501                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4503  0026 c65250        	ld	a,21072
4504  0029 a48f          	and	a,#143
4505  002b 1a02          	or	a,(OFST+2,sp)
4506  002d c75250        	ld	21072,a
4507                     ; 1057 }
4510  0030 85            	popw	x
4511  0031 81            	ret	
4570                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4570                     ; 1068 {
4571                     .text:	section	.text,new
4572  0000               _TIM1_ForcedOC1Config:
4574  0000 89            	pushw	x
4575       00000000      OFST:	set	0
4578                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4580  0001 a30050        	cpw	x,#80
4581  0004 2713          	jreq	L4511
4582  0006 a30040        	cpw	x,#64
4583  0009 270e          	jreq	L4511
4584  000b ae042e        	ldw	x,#1070
4585  000e 89            	pushw	x
4586  000f 5f            	clrw	x
4587  0010 89            	pushw	x
4588  0011 ae0000        	ldw	x,#L101
4589  0014 cd0000        	call	_assert_failed
4591  0017 5b04          	addw	sp,#4
4592  0019               L4511:
4593                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4593                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4595  0019 c65258        	ld	a,21080
4596  001c a48f          	and	a,#143
4597  001e 1a02          	or	a,(OFST+2,sp)
4598  0020 c75258        	ld	21080,a
4599                     ; 1075 }
4602  0023 85            	popw	x
4603  0024 81            	ret	
4640                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4640                     ; 1086 {
4641                     .text:	section	.text,new
4642  0000               _TIM1_ForcedOC2Config:
4644  0000 89            	pushw	x
4645       00000000      OFST:	set	0
4648                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4650  0001 a30050        	cpw	x,#80
4651  0004 2713          	jreq	L6611
4652  0006 a30040        	cpw	x,#64
4653  0009 270e          	jreq	L6611
4654  000b ae0440        	ldw	x,#1088
4655  000e 89            	pushw	x
4656  000f 5f            	clrw	x
4657  0010 89            	pushw	x
4658  0011 ae0000        	ldw	x,#L101
4659  0014 cd0000        	call	_assert_failed
4661  0017 5b04          	addw	sp,#4
4662  0019               L6611:
4663                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4663                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4665  0019 c65259        	ld	a,21081
4666  001c a48f          	and	a,#143
4667  001e 1a02          	or	a,(OFST+2,sp)
4668  0020 c75259        	ld	21081,a
4669                     ; 1093 }
4672  0023 85            	popw	x
4673  0024 81            	ret	
4710                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4710                     ; 1105 {
4711                     .text:	section	.text,new
4712  0000               _TIM1_ForcedOC3Config:
4714  0000 89            	pushw	x
4715       00000000      OFST:	set	0
4718                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4720  0001 a30050        	cpw	x,#80
4721  0004 2713          	jreq	L0021
4722  0006 a30040        	cpw	x,#64
4723  0009 270e          	jreq	L0021
4724  000b ae0453        	ldw	x,#1107
4725  000e 89            	pushw	x
4726  000f 5f            	clrw	x
4727  0010 89            	pushw	x
4728  0011 ae0000        	ldw	x,#L101
4729  0014 cd0000        	call	_assert_failed
4731  0017 5b04          	addw	sp,#4
4732  0019               L0021:
4733                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4733                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4735  0019 c6525a        	ld	a,21082
4736  001c a48f          	and	a,#143
4737  001e 1a02          	or	a,(OFST+2,sp)
4738  0020 c7525a        	ld	21082,a
4739                     ; 1112 }
4742  0023 85            	popw	x
4743  0024 81            	ret	
4780                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4780                     ; 1124 {
4781                     .text:	section	.text,new
4782  0000               _TIM1_ForcedOC4Config:
4784  0000 89            	pushw	x
4785       00000000      OFST:	set	0
4788                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4790  0001 a30050        	cpw	x,#80
4791  0004 2713          	jreq	L2121
4792  0006 a30040        	cpw	x,#64
4793  0009 270e          	jreq	L2121
4794  000b ae0466        	ldw	x,#1126
4795  000e 89            	pushw	x
4796  000f 5f            	clrw	x
4797  0010 89            	pushw	x
4798  0011 ae0000        	ldw	x,#L101
4799  0014 cd0000        	call	_assert_failed
4801  0017 5b04          	addw	sp,#4
4802  0019               L2121:
4803                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4803                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4805  0019 c6525b        	ld	a,21083
4806  001c a48f          	and	a,#143
4807  001e 1a02          	or	a,(OFST+2,sp)
4808  0020 c7525b        	ld	21083,a
4809                     ; 1131 }
4812  0023 85            	popw	x
4813  0024 81            	ret	
4850                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4850                     ; 1140 {
4851                     .text:	section	.text,new
4852  0000               _TIM1_ARRPreloadConfig:
4854  0000 89            	pushw	x
4855       00000000      OFST:	set	0
4858                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4860  0001 5d            	tnzw	x
4861  0002 2711          	jreq	L4221
4862  0004 5a            	decw	x
4863  0005 270e          	jreq	L4221
4864  0007 ae0476        	ldw	x,#1142
4865  000a 89            	pushw	x
4866  000b 5f            	clrw	x
4867  000c 89            	pushw	x
4868  000d ae0000        	ldw	x,#L101
4869  0010 cd0000        	call	_assert_failed
4871  0013 5b04          	addw	sp,#4
4872  0015               L4221:
4873                     ; 1145   if (NewState != DISABLE)
4875  0015 1e01          	ldw	x,(OFST+1,sp)
4876  0017 2706          	jreq	L7502
4877                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4879  0019 721e5250      	bset	21072,#7
4881  001d 2004          	jra	L1602
4882  001f               L7502:
4883                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4885  001f 721f5250      	bres	21072,#7
4886  0023               L1602:
4887                     ; 1153 }
4890  0023 85            	popw	x
4891  0024 81            	ret	
4927                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4927                     ; 1162 {
4928                     .text:	section	.text,new
4929  0000               _TIM1_SelectCOM:
4931  0000 89            	pushw	x
4932       00000000      OFST:	set	0
4935                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4937  0001 5d            	tnzw	x
4938  0002 2711          	jreq	L6321
4939  0004 5a            	decw	x
4940  0005 270e          	jreq	L6321
4941  0007 ae048c        	ldw	x,#1164
4942  000a 89            	pushw	x
4943  000b 5f            	clrw	x
4944  000c 89            	pushw	x
4945  000d ae0000        	ldw	x,#L101
4946  0010 cd0000        	call	_assert_failed
4948  0013 5b04          	addw	sp,#4
4949  0015               L6321:
4950                     ; 1167   if (NewState != DISABLE)
4952  0015 1e01          	ldw	x,(OFST+1,sp)
4953  0017 2706          	jreq	L1012
4954                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4956  0019 72145251      	bset	21073,#2
4958  001d 2004          	jra	L3012
4959  001f               L1012:
4960                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4962  001f 72155251      	bres	21073,#2
4963  0023               L3012:
4964                     ; 1175 }
4967  0023 85            	popw	x
4968  0024 81            	ret	
5005                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5005                     ; 1184 {
5006                     .text:	section	.text,new
5007  0000               _TIM1_CCPreloadControl:
5009  0000 89            	pushw	x
5010       00000000      OFST:	set	0
5013                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5015  0001 5d            	tnzw	x
5016  0002 2711          	jreq	L0521
5017  0004 5a            	decw	x
5018  0005 270e          	jreq	L0521
5019  0007 ae04a2        	ldw	x,#1186
5020  000a 89            	pushw	x
5021  000b 5f            	clrw	x
5022  000c 89            	pushw	x
5023  000d ae0000        	ldw	x,#L101
5024  0010 cd0000        	call	_assert_failed
5026  0013 5b04          	addw	sp,#4
5027  0015               L0521:
5028                     ; 1189   if (NewState != DISABLE)
5030  0015 1e01          	ldw	x,(OFST+1,sp)
5031  0017 2706          	jreq	L3212
5032                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5034  0019 72105251      	bset	21073,#0
5036  001d 2004          	jra	L5212
5037  001f               L3212:
5038                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5040  001f 72115251      	bres	21073,#0
5041  0023               L5212:
5042                     ; 1197 }
5045  0023 85            	popw	x
5046  0024 81            	ret	
5083                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5083                     ; 1206 {
5084                     .text:	section	.text,new
5085  0000               _TIM1_OC1PreloadConfig:
5087  0000 89            	pushw	x
5088       00000000      OFST:	set	0
5091                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5093  0001 5d            	tnzw	x
5094  0002 2711          	jreq	L2621
5095  0004 5a            	decw	x
5096  0005 270e          	jreq	L2621
5097  0007 ae04b8        	ldw	x,#1208
5098  000a 89            	pushw	x
5099  000b 5f            	clrw	x
5100  000c 89            	pushw	x
5101  000d ae0000        	ldw	x,#L101
5102  0010 cd0000        	call	_assert_failed
5104  0013 5b04          	addw	sp,#4
5105  0015               L2621:
5106                     ; 1211   if (NewState != DISABLE)
5108  0015 1e01          	ldw	x,(OFST+1,sp)
5109  0017 2706          	jreq	L5412
5110                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5112  0019 72165258      	bset	21080,#3
5114  001d 2004          	jra	L7412
5115  001f               L5412:
5116                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5118  001f 72175258      	bres	21080,#3
5119  0023               L7412:
5120                     ; 1219 }
5123  0023 85            	popw	x
5124  0024 81            	ret	
5161                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5161                     ; 1228 {
5162                     .text:	section	.text,new
5163  0000               _TIM1_OC2PreloadConfig:
5165  0000 89            	pushw	x
5166       00000000      OFST:	set	0
5169                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5171  0001 5d            	tnzw	x
5172  0002 2711          	jreq	L4721
5173  0004 5a            	decw	x
5174  0005 270e          	jreq	L4721
5175  0007 ae04ce        	ldw	x,#1230
5176  000a 89            	pushw	x
5177  000b 5f            	clrw	x
5178  000c 89            	pushw	x
5179  000d ae0000        	ldw	x,#L101
5180  0010 cd0000        	call	_assert_failed
5182  0013 5b04          	addw	sp,#4
5183  0015               L4721:
5184                     ; 1233   if (NewState != DISABLE)
5186  0015 1e01          	ldw	x,(OFST+1,sp)
5187  0017 2706          	jreq	L7612
5188                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5190  0019 72165259      	bset	21081,#3
5192  001d 2004          	jra	L1712
5193  001f               L7612:
5194                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5196  001f 72175259      	bres	21081,#3
5197  0023               L1712:
5198                     ; 1241 }
5201  0023 85            	popw	x
5202  0024 81            	ret	
5239                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5239                     ; 1250 {
5240                     .text:	section	.text,new
5241  0000               _TIM1_OC3PreloadConfig:
5243  0000 89            	pushw	x
5244       00000000      OFST:	set	0
5247                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5249  0001 5d            	tnzw	x
5250  0002 2711          	jreq	L6031
5251  0004 5a            	decw	x
5252  0005 270e          	jreq	L6031
5253  0007 ae04e4        	ldw	x,#1252
5254  000a 89            	pushw	x
5255  000b 5f            	clrw	x
5256  000c 89            	pushw	x
5257  000d ae0000        	ldw	x,#L101
5258  0010 cd0000        	call	_assert_failed
5260  0013 5b04          	addw	sp,#4
5261  0015               L6031:
5262                     ; 1255   if (NewState != DISABLE)
5264  0015 1e01          	ldw	x,(OFST+1,sp)
5265  0017 2706          	jreq	L1122
5266                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5268  0019 7216525a      	bset	21082,#3
5270  001d 2004          	jra	L3122
5271  001f               L1122:
5272                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5274  001f 7217525a      	bres	21082,#3
5275  0023               L3122:
5276                     ; 1263 }
5279  0023 85            	popw	x
5280  0024 81            	ret	
5317                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5317                     ; 1272 {
5318                     .text:	section	.text,new
5319  0000               _TIM1_OC4PreloadConfig:
5321  0000 89            	pushw	x
5322       00000000      OFST:	set	0
5325                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5327  0001 5d            	tnzw	x
5328  0002 2711          	jreq	L0231
5329  0004 5a            	decw	x
5330  0005 270e          	jreq	L0231
5331  0007 ae04fa        	ldw	x,#1274
5332  000a 89            	pushw	x
5333  000b 5f            	clrw	x
5334  000c 89            	pushw	x
5335  000d ae0000        	ldw	x,#L101
5336  0010 cd0000        	call	_assert_failed
5338  0013 5b04          	addw	sp,#4
5339  0015               L0231:
5340                     ; 1277   if (NewState != DISABLE)
5342  0015 1e01          	ldw	x,(OFST+1,sp)
5343  0017 2706          	jreq	L3322
5344                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5346  0019 7216525b      	bset	21083,#3
5348  001d 2004          	jra	L5322
5349  001f               L3322:
5350                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5352  001f 7217525b      	bres	21083,#3
5353  0023               L5322:
5354                     ; 1285 }
5357  0023 85            	popw	x
5358  0024 81            	ret	
5394                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5394                     ; 1294 {
5395                     .text:	section	.text,new
5396  0000               _TIM1_OC1FastConfig:
5398  0000 89            	pushw	x
5399       00000000      OFST:	set	0
5402                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5404  0001 5d            	tnzw	x
5405  0002 2711          	jreq	L2331
5406  0004 5a            	decw	x
5407  0005 270e          	jreq	L2331
5408  0007 ae0510        	ldw	x,#1296
5409  000a 89            	pushw	x
5410  000b 5f            	clrw	x
5411  000c 89            	pushw	x
5412  000d ae0000        	ldw	x,#L101
5413  0010 cd0000        	call	_assert_failed
5415  0013 5b04          	addw	sp,#4
5416  0015               L2331:
5417                     ; 1299   if (NewState != DISABLE)
5419  0015 1e01          	ldw	x,(OFST+1,sp)
5420  0017 2706          	jreq	L5522
5421                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5423  0019 72145258      	bset	21080,#2
5425  001d 2004          	jra	L7522
5426  001f               L5522:
5427                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5429  001f 72155258      	bres	21080,#2
5430  0023               L7522:
5431                     ; 1307 }
5434  0023 85            	popw	x
5435  0024 81            	ret	
5471                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5471                     ; 1316 {
5472                     .text:	section	.text,new
5473  0000               _TIM1_OC2FastConfig:
5475  0000 89            	pushw	x
5476       00000000      OFST:	set	0
5479                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5481  0001 5d            	tnzw	x
5482  0002 2711          	jreq	L4431
5483  0004 5a            	decw	x
5484  0005 270e          	jreq	L4431
5485  0007 ae0526        	ldw	x,#1318
5486  000a 89            	pushw	x
5487  000b 5f            	clrw	x
5488  000c 89            	pushw	x
5489  000d ae0000        	ldw	x,#L101
5490  0010 cd0000        	call	_assert_failed
5492  0013 5b04          	addw	sp,#4
5493  0015               L4431:
5494                     ; 1321   if (NewState != DISABLE)
5496  0015 1e01          	ldw	x,(OFST+1,sp)
5497  0017 2706          	jreq	L7722
5498                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5500  0019 72145259      	bset	21081,#2
5502  001d 2004          	jra	L1032
5503  001f               L7722:
5504                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5506  001f 72155259      	bres	21081,#2
5507  0023               L1032:
5508                     ; 1329 }
5511  0023 85            	popw	x
5512  0024 81            	ret	
5548                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5548                     ; 1338 {
5549                     .text:	section	.text,new
5550  0000               _TIM1_OC3FastConfig:
5552  0000 89            	pushw	x
5553       00000000      OFST:	set	0
5556                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5558  0001 5d            	tnzw	x
5559  0002 2711          	jreq	L6531
5560  0004 5a            	decw	x
5561  0005 270e          	jreq	L6531
5562  0007 ae053c        	ldw	x,#1340
5563  000a 89            	pushw	x
5564  000b 5f            	clrw	x
5565  000c 89            	pushw	x
5566  000d ae0000        	ldw	x,#L101
5567  0010 cd0000        	call	_assert_failed
5569  0013 5b04          	addw	sp,#4
5570  0015               L6531:
5571                     ; 1343   if (NewState != DISABLE)
5573  0015 1e01          	ldw	x,(OFST+1,sp)
5574  0017 2706          	jreq	L1232
5575                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5577  0019 7214525a      	bset	21082,#2
5579  001d 2004          	jra	L3232
5580  001f               L1232:
5581                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5583  001f 7215525a      	bres	21082,#2
5584  0023               L3232:
5585                     ; 1351 }
5588  0023 85            	popw	x
5589  0024 81            	ret	
5625                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5625                     ; 1360 {
5626                     .text:	section	.text,new
5627  0000               _TIM1_OC4FastConfig:
5629  0000 89            	pushw	x
5630       00000000      OFST:	set	0
5633                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5635  0001 5d            	tnzw	x
5636  0002 2711          	jreq	L0731
5637  0004 5a            	decw	x
5638  0005 270e          	jreq	L0731
5639  0007 ae0552        	ldw	x,#1362
5640  000a 89            	pushw	x
5641  000b 5f            	clrw	x
5642  000c 89            	pushw	x
5643  000d ae0000        	ldw	x,#L101
5644  0010 cd0000        	call	_assert_failed
5646  0013 5b04          	addw	sp,#4
5647  0015               L0731:
5648                     ; 1365   if (NewState != DISABLE)
5650  0015 1e01          	ldw	x,(OFST+1,sp)
5651  0017 2706          	jreq	L3432
5652                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5654  0019 7214525b      	bset	21083,#2
5656  001d 2004          	jra	L5432
5657  001f               L3432:
5658                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5660  001f 7215525b      	bres	21083,#2
5661  0023               L5432:
5662                     ; 1373 }
5665  0023 85            	popw	x
5666  0024 81            	ret	
5772                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5772                     ; 1390 {
5773                     .text:	section	.text,new
5774  0000               _TIM1_GenerateEvent:
5776  0000 89            	pushw	x
5777       00000000      OFST:	set	0
5780                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5782  0001 5d            	tnzw	x
5783  0002 260e          	jrne	L0041
5784  0004 ae0570        	ldw	x,#1392
5785  0007 89            	pushw	x
5786  0008 5f            	clrw	x
5787  0009 89            	pushw	x
5788  000a ae0000        	ldw	x,#L101
5789  000d cd0000        	call	_assert_failed
5791  0010 5b04          	addw	sp,#4
5792  0012               L0041:
5793                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5795  0012 7b02          	ld	a,(OFST+2,sp)
5796  0014 c75257        	ld	21079,a
5797                     ; 1396 }
5800  0017 85            	popw	x
5801  0018 81            	ret	
5838                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5838                     ; 1407 {
5839                     .text:	section	.text,new
5840  0000               _TIM1_OC1PolarityConfig:
5842  0000 89            	pushw	x
5843       00000000      OFST:	set	0
5846                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5848  0001 5d            	tnzw	x
5849  0002 2713          	jreq	L2141
5850  0004 a30022        	cpw	x,#34
5851  0007 270e          	jreq	L2141
5852  0009 ae0581        	ldw	x,#1409
5853  000c 89            	pushw	x
5854  000d 5f            	clrw	x
5855  000e 89            	pushw	x
5856  000f ae0000        	ldw	x,#L101
5857  0012 cd0000        	call	_assert_failed
5859  0015 5b04          	addw	sp,#4
5860  0017               L2141:
5861                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5863  0017 1e01          	ldw	x,(OFST+1,sp)
5864  0019 2706          	jreq	L7242
5865                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5867  001b 7212525c      	bset	21084,#1
5869  001f 2004          	jra	L1342
5870  0021               L7242:
5871                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5873  0021 7213525c      	bres	21084,#1
5874  0025               L1342:
5875                     ; 1420 }
5878  0025 85            	popw	x
5879  0026 81            	ret	
5916                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5916                     ; 1431 {
5917                     .text:	section	.text,new
5918  0000               _TIM1_OC1NPolarityConfig:
5920  0000 89            	pushw	x
5921       00000000      OFST:	set	0
5924                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5926  0001 5d            	tnzw	x
5927  0002 2713          	jreq	L4241
5928  0004 a30088        	cpw	x,#136
5929  0007 270e          	jreq	L4241
5930  0009 ae0599        	ldw	x,#1433
5931  000c 89            	pushw	x
5932  000d 5f            	clrw	x
5933  000e 89            	pushw	x
5934  000f ae0000        	ldw	x,#L101
5935  0012 cd0000        	call	_assert_failed
5937  0015 5b04          	addw	sp,#4
5938  0017               L4241:
5939                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5941  0017 1e01          	ldw	x,(OFST+1,sp)
5942  0019 2706          	jreq	L1542
5943                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5945  001b 7216525c      	bset	21084,#3
5947  001f 2004          	jra	L3542
5948  0021               L1542:
5949                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5951  0021 7217525c      	bres	21084,#3
5952  0025               L3542:
5953                     ; 1444 }
5956  0025 85            	popw	x
5957  0026 81            	ret	
5994                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5994                     ; 1455 {
5995                     .text:	section	.text,new
5996  0000               _TIM1_OC2PolarityConfig:
5998  0000 89            	pushw	x
5999       00000000      OFST:	set	0
6002                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6004  0001 5d            	tnzw	x
6005  0002 2713          	jreq	L6341
6006  0004 a30022        	cpw	x,#34
6007  0007 270e          	jreq	L6341
6008  0009 ae05b1        	ldw	x,#1457
6009  000c 89            	pushw	x
6010  000d 5f            	clrw	x
6011  000e 89            	pushw	x
6012  000f ae0000        	ldw	x,#L101
6013  0012 cd0000        	call	_assert_failed
6015  0015 5b04          	addw	sp,#4
6016  0017               L6341:
6017                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6019  0017 1e01          	ldw	x,(OFST+1,sp)
6020  0019 2706          	jreq	L3742
6021                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6023  001b 721a525c      	bset	21084,#5
6025  001f 2004          	jra	L5742
6026  0021               L3742:
6027                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6029  0021 721b525c      	bres	21084,#5
6030  0025               L5742:
6031                     ; 1468 }
6034  0025 85            	popw	x
6035  0026 81            	ret	
6072                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6072                     ; 1479 {
6073                     .text:	section	.text,new
6074  0000               _TIM1_OC2NPolarityConfig:
6076  0000 89            	pushw	x
6077       00000000      OFST:	set	0
6080                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6082  0001 5d            	tnzw	x
6083  0002 2713          	jreq	L0541
6084  0004 a30088        	cpw	x,#136
6085  0007 270e          	jreq	L0541
6086  0009 ae05c9        	ldw	x,#1481
6087  000c 89            	pushw	x
6088  000d 5f            	clrw	x
6089  000e 89            	pushw	x
6090  000f ae0000        	ldw	x,#L101
6091  0012 cd0000        	call	_assert_failed
6093  0015 5b04          	addw	sp,#4
6094  0017               L0541:
6095                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6097  0017 1e01          	ldw	x,(OFST+1,sp)
6098  0019 2706          	jreq	L5152
6099                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6101  001b 721e525c      	bset	21084,#7
6103  001f 2004          	jra	L7152
6104  0021               L5152:
6105                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6107  0021 721f525c      	bres	21084,#7
6108  0025               L7152:
6109                     ; 1492 }
6112  0025 85            	popw	x
6113  0026 81            	ret	
6150                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6150                     ; 1503 {
6151                     .text:	section	.text,new
6152  0000               _TIM1_OC3PolarityConfig:
6154  0000 89            	pushw	x
6155       00000000      OFST:	set	0
6158                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6160  0001 5d            	tnzw	x
6161  0002 2713          	jreq	L2641
6162  0004 a30022        	cpw	x,#34
6163  0007 270e          	jreq	L2641
6164  0009 ae05e1        	ldw	x,#1505
6165  000c 89            	pushw	x
6166  000d 5f            	clrw	x
6167  000e 89            	pushw	x
6168  000f ae0000        	ldw	x,#L101
6169  0012 cd0000        	call	_assert_failed
6171  0015 5b04          	addw	sp,#4
6172  0017               L2641:
6173                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6175  0017 1e01          	ldw	x,(OFST+1,sp)
6176  0019 2706          	jreq	L7352
6177                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6179  001b 7212525d      	bset	21085,#1
6181  001f 2004          	jra	L1452
6182  0021               L7352:
6183                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6185  0021 7213525d      	bres	21085,#1
6186  0025               L1452:
6187                     ; 1516 }
6190  0025 85            	popw	x
6191  0026 81            	ret	
6228                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6228                     ; 1528 {
6229                     .text:	section	.text,new
6230  0000               _TIM1_OC3NPolarityConfig:
6232  0000 89            	pushw	x
6233       00000000      OFST:	set	0
6236                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6238  0001 5d            	tnzw	x
6239  0002 2713          	jreq	L4741
6240  0004 a30088        	cpw	x,#136
6241  0007 270e          	jreq	L4741
6242  0009 ae05fa        	ldw	x,#1530
6243  000c 89            	pushw	x
6244  000d 5f            	clrw	x
6245  000e 89            	pushw	x
6246  000f ae0000        	ldw	x,#L101
6247  0012 cd0000        	call	_assert_failed
6249  0015 5b04          	addw	sp,#4
6250  0017               L4741:
6251                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6253  0017 1e01          	ldw	x,(OFST+1,sp)
6254  0019 2706          	jreq	L1652
6255                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6257  001b 7216525d      	bset	21085,#3
6259  001f 2004          	jra	L3652
6260  0021               L1652:
6261                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6263  0021 7217525d      	bres	21085,#3
6264  0025               L3652:
6265                     ; 1541 }
6268  0025 85            	popw	x
6269  0026 81            	ret	
6306                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6306                     ; 1552 {
6307                     .text:	section	.text,new
6308  0000               _TIM1_OC4PolarityConfig:
6310  0000 89            	pushw	x
6311       00000000      OFST:	set	0
6314                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6316  0001 5d            	tnzw	x
6317  0002 2713          	jreq	L6051
6318  0004 a30022        	cpw	x,#34
6319  0007 270e          	jreq	L6051
6320  0009 ae0612        	ldw	x,#1554
6321  000c 89            	pushw	x
6322  000d 5f            	clrw	x
6323  000e 89            	pushw	x
6324  000f ae0000        	ldw	x,#L101
6325  0012 cd0000        	call	_assert_failed
6327  0015 5b04          	addw	sp,#4
6328  0017               L6051:
6329                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6331  0017 1e01          	ldw	x,(OFST+1,sp)
6332  0019 2706          	jreq	L3062
6333                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6335  001b 721a525d      	bset	21085,#5
6337  001f 2004          	jra	L5062
6338  0021               L3062:
6339                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6341  0021 721b525d      	bres	21085,#5
6342  0025               L5062:
6343                     ; 1565 }
6346  0025 85            	popw	x
6347  0026 81            	ret	
6393                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6393                     ; 1580 {
6394                     .text:	section	.text,new
6395  0000               _TIM1_CCxCmd:
6397  0000 89            	pushw	x
6398       00000000      OFST:	set	0
6401                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6403  0001 5d            	tnzw	x
6404  0002 2714          	jreq	L0251
6405  0004 a30001        	cpw	x,#1
6406  0007 270f          	jreq	L0251
6407  0009 a30002        	cpw	x,#2
6408  000c 270a          	jreq	L0251
6409  000e a30003        	cpw	x,#3
6410  0011 2705          	jreq	L0251
6411  0013 ae062e        	ldw	x,#1582
6412  0016 ad5a          	call	LC013
6413  0018               L0251:
6414                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6416  0018 1e05          	ldw	x,(OFST+5,sp)
6417  001a 2708          	jreq	L0351
6418  001c 5a            	decw	x
6419  001d 2705          	jreq	L0351
6420  001f ae062f        	ldw	x,#1583
6421  0022 ad4e          	call	LC013
6422  0024               L0351:
6423                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6425  0024 1e01          	ldw	x,(OFST+1,sp)
6426  0026 2610          	jrne	L1362
6427                     ; 1588     if (NewState != DISABLE)
6429  0028 1e05          	ldw	x,(OFST+5,sp)
6430  002a 2706          	jreq	L3362
6431                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6433  002c 7210525c      	bset	21084,#0
6435  0030 203e          	jra	L7362
6436  0032               L3362:
6437                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6439  0032 7211525c      	bres	21084,#0
6440  0036 2038          	jra	L7362
6441  0038               L1362:
6442                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6444  0038 a30001        	cpw	x,#1
6445  003b 2610          	jrne	L1462
6446                     ; 1601     if (NewState != DISABLE)
6448  003d 1e05          	ldw	x,(OFST+5,sp)
6449  003f 2706          	jreq	L3462
6450                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6452  0041 7218525c      	bset	21084,#4
6454  0045 2029          	jra	L7362
6455  0047               L3462:
6456                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6458  0047 7219525c      	bres	21084,#4
6459  004b 2023          	jra	L7362
6460  004d               L1462:
6461                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6463  004d a30002        	cpw	x,#2
6464  0050 2610          	jrne	L1562
6465                     ; 1613     if (NewState != DISABLE)
6467  0052 1e05          	ldw	x,(OFST+5,sp)
6468  0054 2706          	jreq	L3562
6469                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6471  0056 7210525d      	bset	21085,#0
6473  005a 2014          	jra	L7362
6474  005c               L3562:
6475                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6477  005c 7211525d      	bres	21085,#0
6478  0060 200e          	jra	L7362
6479  0062               L1562:
6480                     ; 1625     if (NewState != DISABLE)
6482  0062 1e05          	ldw	x,(OFST+5,sp)
6483  0064 2706          	jreq	L1662
6484                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6486  0066 7218525d      	bset	21085,#4
6488  006a 2004          	jra	L7362
6489  006c               L1662:
6490                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6492  006c 7219525d      	bres	21085,#4
6493  0070               L7362:
6494                     ; 1634 }
6497  0070 85            	popw	x
6498  0071 81            	ret	
6499  0072               LC013:
6500  0072 89            	pushw	x
6501  0073 5f            	clrw	x
6502  0074 89            	pushw	x
6503  0075 ae0000        	ldw	x,#L101
6504  0078 cd0000        	call	_assert_failed
6506  007b 5b04          	addw	sp,#4
6507  007d 81            	ret	
6553                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6553                     ; 1648 {
6554                     .text:	section	.text,new
6555  0000               _TIM1_CCxNCmd:
6557  0000 89            	pushw	x
6558       00000000      OFST:	set	0
6561                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6563  0001 5d            	tnzw	x
6564  0002 270f          	jreq	L2451
6565  0004 a30001        	cpw	x,#1
6566  0007 270a          	jreq	L2451
6567  0009 a30002        	cpw	x,#2
6568  000c 2705          	jreq	L2451
6569  000e ae0672        	ldw	x,#1650
6570  0011 ad43          	call	LC014
6571  0013               L2451:
6572                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6574  0013 1e05          	ldw	x,(OFST+5,sp)
6575  0015 2708          	jreq	L2551
6576  0017 5a            	decw	x
6577  0018 2705          	jreq	L2551
6578  001a ae0673        	ldw	x,#1651
6579  001d ad37          	call	LC014
6580  001f               L2551:
6581                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6583  001f 1e01          	ldw	x,(OFST+1,sp)
6584  0021 2610          	jrne	L7072
6585                     ; 1656     if (NewState != DISABLE)
6587  0023 1e05          	ldw	x,(OFST+5,sp)
6588  0025 2706          	jreq	L1172
6589                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6591  0027 7214525c      	bset	21084,#2
6593  002b 2027          	jra	L5172
6594  002d               L1172:
6595                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6597  002d 7215525c      	bres	21084,#2
6598  0031 2021          	jra	L5172
6599  0033               L7072:
6600                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6602  0033 5a            	decw	x
6603  0034 2610          	jrne	L7172
6604                     ; 1668     if (NewState != DISABLE)
6606  0036 1e05          	ldw	x,(OFST+5,sp)
6607  0038 2706          	jreq	L1272
6608                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6610  003a 721c525c      	bset	21084,#6
6612  003e 2014          	jra	L5172
6613  0040               L1272:
6614                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6616  0040 721d525c      	bres	21084,#6
6617  0044 200e          	jra	L5172
6618  0046               L7172:
6619                     ; 1680     if (NewState != DISABLE)
6621  0046 1e05          	ldw	x,(OFST+5,sp)
6622  0048 2706          	jreq	L7272
6623                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6625  004a 7214525d      	bset	21085,#2
6627  004e 2004          	jra	L5172
6628  0050               L7272:
6629                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6631  0050 7215525d      	bres	21085,#2
6632  0054               L5172:
6633                     ; 1689 }
6636  0054 85            	popw	x
6637  0055 81            	ret	
6638  0056               LC014:
6639  0056 89            	pushw	x
6640  0057 5f            	clrw	x
6641  0058 89            	pushw	x
6642  0059 ae0000        	ldw	x,#L101
6643  005c cd0000        	call	_assert_failed
6645  005f 5b04          	addw	sp,#4
6646  0061 81            	ret	
6692                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6692                     ; 1713 {
6693                     .text:	section	.text,new
6694  0000               _TIM1_SelectOCxM:
6696  0000 89            	pushw	x
6697       00000000      OFST:	set	0
6700                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6702  0001 5d            	tnzw	x
6703  0002 2714          	jreq	L4651
6704  0004 a30001        	cpw	x,#1
6705  0007 270f          	jreq	L4651
6706  0009 a30002        	cpw	x,#2
6707  000c 270a          	jreq	L4651
6708  000e a30003        	cpw	x,#3
6709  0011 2705          	jreq	L4651
6710  0013 ae06b3        	ldw	x,#1715
6711  0016 ad7a          	call	LC015
6712  0018               L4651:
6713                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6715  0018 1e05          	ldw	x,(OFST+5,sp)
6716  001a 2728          	jreq	L4751
6717  001c a30010        	cpw	x,#16
6718  001f 2723          	jreq	L4751
6719  0021 a30020        	cpw	x,#32
6720  0024 271e          	jreq	L4751
6721  0026 a30030        	cpw	x,#48
6722  0029 2719          	jreq	L4751
6723  002b a30060        	cpw	x,#96
6724  002e 2714          	jreq	L4751
6725  0030 a30070        	cpw	x,#112
6726  0033 270f          	jreq	L4751
6727  0035 a30050        	cpw	x,#80
6728  0038 270a          	jreq	L4751
6729  003a a30040        	cpw	x,#64
6730  003d 2705          	jreq	L4751
6731  003f ae06b4        	ldw	x,#1716
6732  0042 ad4e          	call	LC015
6733  0044               L4751:
6734                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6736  0044 1e01          	ldw	x,(OFST+1,sp)
6737  0046 2610          	jrne	L5572
6738                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6740  0048 7211525c      	bres	21084,#0
6741                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6741                     ; 1725                             | (uint8_t)TIM1_OCMode);
6743  004c c65258        	ld	a,21080
6744  004f a48f          	and	a,#143
6745  0051 1a06          	or	a,(OFST+6,sp)
6746  0053 c75258        	ld	21080,a
6748  0056 2038          	jra	L7572
6749  0058               L5572:
6750                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6752  0058 a30001        	cpw	x,#1
6753  005b 2610          	jrne	L1672
6754                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6756  005d 7219525c      	bres	21084,#4
6757                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6757                     ; 1734                             | (uint8_t)TIM1_OCMode);
6759  0061 c65259        	ld	a,21081
6760  0064 a48f          	and	a,#143
6761  0066 1a06          	or	a,(OFST+6,sp)
6762  0068 c75259        	ld	21081,a
6764  006b 2023          	jra	L7572
6765  006d               L1672:
6766                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6768  006d a30002        	cpw	x,#2
6769  0070 2610          	jrne	L5672
6770                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6772  0072 7211525d      	bres	21085,#0
6773                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6773                     ; 1743                             | (uint8_t)TIM1_OCMode);
6775  0076 c6525a        	ld	a,21082
6776  0079 a48f          	and	a,#143
6777  007b 1a06          	or	a,(OFST+6,sp)
6778  007d c7525a        	ld	21082,a
6780  0080 200e          	jra	L7572
6781  0082               L5672:
6782                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6784  0082 7219525d      	bres	21085,#4
6785                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6785                     ; 1752                             | (uint8_t)TIM1_OCMode);
6787  0086 c6525b        	ld	a,21083
6788  0089 a48f          	and	a,#143
6789  008b 1a06          	or	a,(OFST+6,sp)
6790  008d c7525b        	ld	21083,a
6791  0090               L7572:
6792                     ; 1754 }
6795  0090 85            	popw	x
6796  0091 81            	ret	
6797  0092               LC015:
6798  0092 89            	pushw	x
6799  0093 5f            	clrw	x
6800  0094 89            	pushw	x
6801  0095 ae0000        	ldw	x,#L101
6802  0098 cd0000        	call	_assert_failed
6804  009b 5b04          	addw	sp,#4
6805  009d 81            	ret	
6839                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6839                     ; 1763 {
6840                     .text:	section	.text,new
6841  0000               _TIM1_SetCounter:
6845                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6847  0000 9e            	ld	a,xh
6848  0001 c7525e        	ld	21086,a
6849                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6851  0004 9f            	ld	a,xl
6852  0005 c7525f        	ld	21087,a
6853                     ; 1767 }
6856  0008 81            	ret	
6890                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6890                     ; 1776 {
6891                     .text:	section	.text,new
6892  0000               _TIM1_SetAutoreload:
6896                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6898  0000 9e            	ld	a,xh
6899  0001 c75262        	ld	21090,a
6900                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6902  0004 9f            	ld	a,xl
6903  0005 c75263        	ld	21091,a
6904                     ; 1780  }
6907  0008 81            	ret	
6941                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6941                     ; 1789 {
6942                     .text:	section	.text,new
6943  0000               _TIM1_SetCompare1:
6947                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6949  0000 9e            	ld	a,xh
6950  0001 c75265        	ld	21093,a
6951                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
6953  0004 9f            	ld	a,xl
6954  0005 c75266        	ld	21094,a
6955                     ; 1793 }
6958  0008 81            	ret	
6992                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
6992                     ; 1802 {
6993                     .text:	section	.text,new
6994  0000               _TIM1_SetCompare2:
6998                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7000  0000 9e            	ld	a,xh
7001  0001 c75267        	ld	21095,a
7002                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7004  0004 9f            	ld	a,xl
7005  0005 c75268        	ld	21096,a
7006                     ; 1806 }
7009  0008 81            	ret	
7043                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7043                     ; 1815 {
7044                     .text:	section	.text,new
7045  0000               _TIM1_SetCompare3:
7049                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7051  0000 9e            	ld	a,xh
7052  0001 c75269        	ld	21097,a
7053                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7055  0004 9f            	ld	a,xl
7056  0005 c7526a        	ld	21098,a
7057                     ; 1819 }
7060  0008 81            	ret	
7094                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7094                     ; 1828 {
7095                     .text:	section	.text,new
7096  0000               _TIM1_SetCompare4:
7100                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7102  0000 9e            	ld	a,xh
7103  0001 c7526b        	ld	21099,a
7104                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7106  0004 9f            	ld	a,xl
7107  0005 c7526c        	ld	21100,a
7108                     ; 1832 }
7111  0008 81            	ret	
7148                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7148                     ; 1845 {
7149                     .text:	section	.text,new
7150  0000               _TIM1_SetIC1Prescaler:
7152  0000 89            	pushw	x
7153       00000000      OFST:	set	0
7156                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7158  0001 5d            	tnzw	x
7159  0002 271d          	jreq	L2261
7160  0004 a30004        	cpw	x,#4
7161  0007 2718          	jreq	L2261
7162  0009 a30008        	cpw	x,#8
7163  000c 2713          	jreq	L2261
7164  000e a3000c        	cpw	x,#12
7165  0011 270e          	jreq	L2261
7166  0013 ae0737        	ldw	x,#1847
7167  0016 89            	pushw	x
7168  0017 5f            	clrw	x
7169  0018 89            	pushw	x
7170  0019 ae0000        	ldw	x,#L101
7171  001c cd0000        	call	_assert_failed
7173  001f 5b04          	addw	sp,#4
7174  0021               L2261:
7175                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7175                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7177  0021 c65258        	ld	a,21080
7178  0024 a4f3          	and	a,#243
7179  0026 1a02          	or	a,(OFST+2,sp)
7180  0028 c75258        	ld	21080,a
7181                     ; 1852 }
7184  002b 85            	popw	x
7185  002c 81            	ret	
7222                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7222                     ; 1865 {
7223                     .text:	section	.text,new
7224  0000               _TIM1_SetIC2Prescaler:
7226  0000 89            	pushw	x
7227       00000000      OFST:	set	0
7230                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7232  0001 5d            	tnzw	x
7233  0002 271d          	jreq	L4361
7234  0004 a30004        	cpw	x,#4
7235  0007 2718          	jreq	L4361
7236  0009 a30008        	cpw	x,#8
7237  000c 2713          	jreq	L4361
7238  000e a3000c        	cpw	x,#12
7239  0011 270e          	jreq	L4361
7240  0013 ae074c        	ldw	x,#1868
7241  0016 89            	pushw	x
7242  0017 5f            	clrw	x
7243  0018 89            	pushw	x
7244  0019 ae0000        	ldw	x,#L101
7245  001c cd0000        	call	_assert_failed
7247  001f 5b04          	addw	sp,#4
7248  0021               L4361:
7249                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7249                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7251  0021 c65259        	ld	a,21081
7252  0024 a4f3          	and	a,#243
7253  0026 1a02          	or	a,(OFST+2,sp)
7254  0028 c75259        	ld	21081,a
7255                     ; 1873 }
7258  002b 85            	popw	x
7259  002c 81            	ret	
7296                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7296                     ; 1886 {
7297                     .text:	section	.text,new
7298  0000               _TIM1_SetIC3Prescaler:
7300  0000 89            	pushw	x
7301       00000000      OFST:	set	0
7304                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7306  0001 5d            	tnzw	x
7307  0002 271d          	jreq	L6461
7308  0004 a30004        	cpw	x,#4
7309  0007 2718          	jreq	L6461
7310  0009 a30008        	cpw	x,#8
7311  000c 2713          	jreq	L6461
7312  000e a3000c        	cpw	x,#12
7313  0011 270e          	jreq	L6461
7314  0013 ae0761        	ldw	x,#1889
7315  0016 89            	pushw	x
7316  0017 5f            	clrw	x
7317  0018 89            	pushw	x
7318  0019 ae0000        	ldw	x,#L101
7319  001c cd0000        	call	_assert_failed
7321  001f 5b04          	addw	sp,#4
7322  0021               L6461:
7323                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7323                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7325  0021 c6525a        	ld	a,21082
7326  0024 a4f3          	and	a,#243
7327  0026 1a02          	or	a,(OFST+2,sp)
7328  0028 c7525a        	ld	21082,a
7329                     ; 1894 }
7332  002b 85            	popw	x
7333  002c 81            	ret	
7370                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7370                     ; 1907 {
7371                     .text:	section	.text,new
7372  0000               _TIM1_SetIC4Prescaler:
7374  0000 89            	pushw	x
7375       00000000      OFST:	set	0
7378                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7380  0001 5d            	tnzw	x
7381  0002 271d          	jreq	L0661
7382  0004 a30004        	cpw	x,#4
7383  0007 2718          	jreq	L0661
7384  0009 a30008        	cpw	x,#8
7385  000c 2713          	jreq	L0661
7386  000e a3000c        	cpw	x,#12
7387  0011 270e          	jreq	L0661
7388  0013 ae0776        	ldw	x,#1910
7389  0016 89            	pushw	x
7390  0017 5f            	clrw	x
7391  0018 89            	pushw	x
7392  0019 ae0000        	ldw	x,#L101
7393  001c cd0000        	call	_assert_failed
7395  001f 5b04          	addw	sp,#4
7396  0021               L0661:
7397                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7397                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7399  0021 c6525b        	ld	a,21083
7400  0024 a4f3          	and	a,#243
7401  0026 1a02          	or	a,(OFST+2,sp)
7402  0028 c7525b        	ld	21083,a
7403                     ; 1915 }
7406  002b 85            	popw	x
7407  002c 81            	ret	
7459                     ; 1922 uint16_t TIM1_GetCapture1(void)
7459                     ; 1923 {
7460                     .text:	section	.text,new
7461  0000               _TIM1_GetCapture1:
7463  0000 5204          	subw	sp,#4
7464       00000004      OFST:	set	4
7467                     ; 1926   uint16_t tmpccr1 = 0;
7469                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7473                     ; 1929   tmpccr1h = TIM1->CCR1H;
7475  0002 c65265        	ld	a,21093
7476  0005 6b02          	ld	(OFST-2,sp),a
7477                     ; 1930   tmpccr1l = TIM1->CCR1L;
7479  0007 c65266        	ld	a,21094
7480  000a 6b01          	ld	(OFST-3,sp),a
7481                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7483  000c 5f            	clrw	x
7484  000d 97            	ld	xl,a
7485  000e 1f03          	ldw	(OFST-1,sp),x
7486                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7488  0010 5f            	clrw	x
7489  0011 7b02          	ld	a,(OFST-2,sp)
7490  0013 97            	ld	xl,a
7491  0014 7b04          	ld	a,(OFST+0,sp)
7492  0016 01            	rrwa	x,a
7493  0017 1a03          	or	a,(OFST-1,sp)
7494  0019 01            	rrwa	x,a
7495                     ; 1935   return (uint16_t)tmpccr1;
7499  001a 5b04          	addw	sp,#4
7500  001c 81            	ret	
7552                     ; 1943 uint16_t TIM1_GetCapture2(void)
7552                     ; 1944 {
7553                     .text:	section	.text,new
7554  0000               _TIM1_GetCapture2:
7556  0000 5204          	subw	sp,#4
7557       00000004      OFST:	set	4
7560                     ; 1947   uint16_t tmpccr2 = 0;
7562                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7566                     ; 1950   tmpccr2h = TIM1->CCR2H;
7568  0002 c65267        	ld	a,21095
7569  0005 6b02          	ld	(OFST-2,sp),a
7570                     ; 1951   tmpccr2l = TIM1->CCR2L;
7572  0007 c65268        	ld	a,21096
7573  000a 6b01          	ld	(OFST-3,sp),a
7574                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7576  000c 5f            	clrw	x
7577  000d 97            	ld	xl,a
7578  000e 1f03          	ldw	(OFST-1,sp),x
7579                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7581  0010 5f            	clrw	x
7582  0011 7b02          	ld	a,(OFST-2,sp)
7583  0013 97            	ld	xl,a
7584  0014 7b04          	ld	a,(OFST+0,sp)
7585  0016 01            	rrwa	x,a
7586  0017 1a03          	or	a,(OFST-1,sp)
7587  0019 01            	rrwa	x,a
7588                     ; 1956   return (uint16_t)tmpccr2;
7592  001a 5b04          	addw	sp,#4
7593  001c 81            	ret	
7645                     ; 1964 uint16_t TIM1_GetCapture3(void)
7645                     ; 1965 {
7646                     .text:	section	.text,new
7647  0000               _TIM1_GetCapture3:
7649  0000 5204          	subw	sp,#4
7650       00000004      OFST:	set	4
7653                     ; 1967   uint16_t tmpccr3 = 0;
7655                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7659                     ; 1970   tmpccr3h = TIM1->CCR3H;
7661  0002 c65269        	ld	a,21097
7662  0005 6b02          	ld	(OFST-2,sp),a
7663                     ; 1971   tmpccr3l = TIM1->CCR3L;
7665  0007 c6526a        	ld	a,21098
7666  000a 6b01          	ld	(OFST-3,sp),a
7667                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7669  000c 5f            	clrw	x
7670  000d 97            	ld	xl,a
7671  000e 1f03          	ldw	(OFST-1,sp),x
7672                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7674  0010 5f            	clrw	x
7675  0011 7b02          	ld	a,(OFST-2,sp)
7676  0013 97            	ld	xl,a
7677  0014 7b04          	ld	a,(OFST+0,sp)
7678  0016 01            	rrwa	x,a
7679  0017 1a03          	or	a,(OFST-1,sp)
7680  0019 01            	rrwa	x,a
7681                     ; 1976   return (uint16_t)tmpccr3;
7685  001a 5b04          	addw	sp,#4
7686  001c 81            	ret	
7738                     ; 1984 uint16_t TIM1_GetCapture4(void)
7738                     ; 1985 {
7739                     .text:	section	.text,new
7740  0000               _TIM1_GetCapture4:
7742  0000 5204          	subw	sp,#4
7743       00000004      OFST:	set	4
7746                     ; 1987   uint16_t tmpccr4 = 0;
7748                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7752                     ; 1990   tmpccr4h = TIM1->CCR4H;
7754  0002 c6526b        	ld	a,21099
7755  0005 6b02          	ld	(OFST-2,sp),a
7756                     ; 1991   tmpccr4l = TIM1->CCR4L;
7758  0007 c6526c        	ld	a,21100
7759  000a 6b01          	ld	(OFST-3,sp),a
7760                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7762  000c 5f            	clrw	x
7763  000d 97            	ld	xl,a
7764  000e 1f03          	ldw	(OFST-1,sp),x
7765                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7767  0010 5f            	clrw	x
7768  0011 7b02          	ld	a,(OFST-2,sp)
7769  0013 97            	ld	xl,a
7770  0014 7b04          	ld	a,(OFST+0,sp)
7771  0016 01            	rrwa	x,a
7772  0017 1a03          	or	a,(OFST-1,sp)
7773  0019 01            	rrwa	x,a
7774                     ; 1996   return (uint16_t)tmpccr4;
7778  001a 5b04          	addw	sp,#4
7779  001c 81            	ret	
7813                     ; 2004 uint16_t TIM1_GetCounter(void)
7813                     ; 2005 {
7814                     .text:	section	.text,new
7815  0000               _TIM1_GetCounter:
7817  0000 89            	pushw	x
7818       00000002      OFST:	set	2
7821                     ; 2006   uint16_t tmpcntr = 0;
7823                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7825  0001 c6525e        	ld	a,21086
7826  0004 97            	ld	xl,a
7827  0005 4f            	clr	a
7828  0006 02            	rlwa	x,a
7829  0007 1f01          	ldw	(OFST-1,sp),x
7830                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7832  0009 5f            	clrw	x
7833  000a c6525f        	ld	a,21087
7834  000d 97            	ld	xl,a
7835  000e 01            	rrwa	x,a
7836  000f 1a02          	or	a,(OFST+0,sp)
7837  0011 01            	rrwa	x,a
7838  0012 1a01          	or	a,(OFST-1,sp)
7839  0014 01            	rrwa	x,a
7842  0015 5b02          	addw	sp,#2
7843  0017 81            	ret	
7877                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7877                     ; 2020 {
7878                     .text:	section	.text,new
7879  0000               _TIM1_GetPrescaler:
7881  0000 89            	pushw	x
7882       00000002      OFST:	set	2
7885                     ; 2021   uint16_t temp = 0;
7887                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7889  0001 c65260        	ld	a,21088
7890  0004 97            	ld	xl,a
7891  0005 4f            	clr	a
7892  0006 02            	rlwa	x,a
7893  0007 1f01          	ldw	(OFST-1,sp),x
7894                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7896  0009 5f            	clrw	x
7897  000a c65261        	ld	a,21089
7898  000d 97            	ld	xl,a
7899  000e 01            	rrwa	x,a
7900  000f 1a02          	or	a,(OFST+0,sp)
7901  0011 01            	rrwa	x,a
7902  0012 1a01          	or	a,(OFST-1,sp)
7903  0014 01            	rrwa	x,a
7906  0015 5b02          	addw	sp,#2
7907  0017 81            	ret	
8082                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8082                     ; 2048 {
8083                     .text:	section	.text,new
8084  0000               _TIM1_GetFlagStatus:
8086  0000 89            	pushw	x
8087  0001 5204          	subw	sp,#4
8088       00000004      OFST:	set	4
8091                     ; 2049   FlagStatus bitstatus = RESET;
8093                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8097                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8099  0003 a30001        	cpw	x,#1
8100  0006 2745          	jreq	L6071
8101  0008 a30002        	cpw	x,#2
8102  000b 2740          	jreq	L6071
8103  000d a30004        	cpw	x,#4
8104  0010 273b          	jreq	L6071
8105  0012 a30008        	cpw	x,#8
8106  0015 2736          	jreq	L6071
8107  0017 a30010        	cpw	x,#16
8108  001a 2731          	jreq	L6071
8109  001c a30020        	cpw	x,#32
8110  001f 272c          	jreq	L6071
8111  0021 a30040        	cpw	x,#64
8112  0024 2727          	jreq	L6071
8113  0026 a30080        	cpw	x,#128
8114  0029 2722          	jreq	L6071
8115  002b a30200        	cpw	x,#512
8116  002e 271d          	jreq	L6071
8117  0030 a30400        	cpw	x,#1024
8118  0033 2718          	jreq	L6071
8119  0035 a30800        	cpw	x,#2048
8120  0038 2713          	jreq	L6071
8121  003a a31000        	cpw	x,#4096
8122  003d 270e          	jreq	L6071
8123  003f ae0805        	ldw	x,#2053
8124  0042 89            	pushw	x
8125  0043 5f            	clrw	x
8126  0044 89            	pushw	x
8127  0045 ae0000        	ldw	x,#L101
8128  0048 cd0000        	call	_assert_failed
8130  004b 5b04          	addw	sp,#4
8131  004d               L6071:
8132                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8134  004d c65255        	ld	a,21077
8135  0050 1406          	and	a,(OFST+2,sp)
8136  0052 6b01          	ld	(OFST-3,sp),a
8137                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8139  0054 4f            	clr	a
8140  0055 1e05          	ldw	x,(OFST+1,sp)
8141  0057 01            	rrwa	x,a
8142  0058 9f            	ld	a,xl
8143  0059 6b02          	ld	(OFST-2,sp),a
8144                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8146  005b c45256        	and	a,21078
8147  005e 1a01          	or	a,(OFST-3,sp)
8148  0060 2705          	jreq	L7643
8149                     ; 2060     bitstatus = SET;
8151  0062 ae0001        	ldw	x,#1
8153  0065 2001          	jra	L1743
8154  0067               L7643:
8155                     ; 2064     bitstatus = RESET;
8157  0067 5f            	clrw	x
8158  0068               L1743:
8159                     ; 2066   return (FlagStatus)(bitstatus);
8163  0068 5b06          	addw	sp,#6
8164  006a 81            	ret	
8200                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8200                     ; 2088 {
8201                     .text:	section	.text,new
8202  0000               _TIM1_ClearFlag:
8204  0000 89            	pushw	x
8205       00000000      OFST:	set	0
8208                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8210  0001 01            	rrwa	x,a
8211  0002 9f            	ld	a,xl
8212  0003 a4e1          	and	a,#225
8213  0005 97            	ld	xl,a
8214  0006 4f            	clr	a
8215  0007 02            	rlwa	x,a
8216  0008 5d            	tnzw	x
8217  0009 2604          	jrne	L4171
8218  000b 1e01          	ldw	x,(OFST+1,sp)
8219  000d 260e          	jrne	L6171
8220  000f               L4171:
8221  000f ae082a        	ldw	x,#2090
8222  0012 89            	pushw	x
8223  0013 5f            	clrw	x
8224  0014 89            	pushw	x
8225  0015 ae0000        	ldw	x,#L101
8226  0018 cd0000        	call	_assert_failed
8228  001b 5b04          	addw	sp,#4
8229  001d               L6171:
8230                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8232  001d 7b02          	ld	a,(OFST+2,sp)
8233  001f 43            	cpl	a
8234  0020 c75255        	ld	21077,a
8235                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8235                     ; 2095                         (uint8_t)0x1E);
8237  0023 4f            	clr	a
8238  0024 1e01          	ldw	x,(OFST+1,sp)
8239  0026 01            	rrwa	x,a
8240  0027 9f            	ld	a,xl
8241  0028 43            	cpl	a
8242  0029 a41e          	and	a,#30
8243  002b c75256        	ld	21078,a
8244                     ; 2096 }
8247  002e 85            	popw	x
8248  002f 81            	ret	
8313                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8313                     ; 2113 {
8314                     .text:	section	.text,new
8315  0000               _TIM1_GetITStatus:
8317  0000 89            	pushw	x
8318  0001 5204          	subw	sp,#4
8319       00000004      OFST:	set	4
8322                     ; 2114   ITStatus bitstatus = RESET;
8324                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8328                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8330  0003 a30001        	cpw	x,#1
8331  0006 2731          	jreq	L0371
8332  0008 a30002        	cpw	x,#2
8333  000b 272c          	jreq	L0371
8334  000d a30004        	cpw	x,#4
8335  0010 2727          	jreq	L0371
8336  0012 a30008        	cpw	x,#8
8337  0015 2722          	jreq	L0371
8338  0017 a30010        	cpw	x,#16
8339  001a 271d          	jreq	L0371
8340  001c a30020        	cpw	x,#32
8341  001f 2718          	jreq	L0371
8342  0021 a30040        	cpw	x,#64
8343  0024 2713          	jreq	L0371
8344  0026 a30080        	cpw	x,#128
8345  0029 270e          	jreq	L0371
8346  002b ae0846        	ldw	x,#2118
8347  002e 89            	pushw	x
8348  002f 5f            	clrw	x
8349  0030 89            	pushw	x
8350  0031 ae0000        	ldw	x,#L101
8351  0034 cd0000        	call	_assert_failed
8353  0037 5b04          	addw	sp,#4
8354  0039               L0371:
8355                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8357  0039 c65255        	ld	a,21077
8358  003c 1406          	and	a,(OFST+2,sp)
8359  003e 6b01          	ld	(OFST-3,sp),a
8360                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8362  0040 c65254        	ld	a,21076
8363  0043 1406          	and	a,(OFST+2,sp)
8364  0045 6b02          	ld	(OFST-2,sp),a
8365                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8367  0047 7b01          	ld	a,(OFST-3,sp)
8368  0049 2709          	jreq	L3453
8370  004b 7b02          	ld	a,(OFST-2,sp)
8371  004d 2705          	jreq	L3453
8372                     ; 2126     bitstatus = SET;
8374  004f ae0001        	ldw	x,#1
8376  0052 2001          	jra	L5453
8377  0054               L3453:
8378                     ; 2130     bitstatus = RESET;
8380  0054 5f            	clrw	x
8381  0055               L5453:
8382                     ; 2132   return (ITStatus)(bitstatus);
8386  0055 5b06          	addw	sp,#6
8387  0057 81            	ret	
8424                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8424                     ; 2150 {
8425                     .text:	section	.text,new
8426  0000               _TIM1_ClearITPendingBit:
8428  0000 89            	pushw	x
8429       00000000      OFST:	set	0
8432                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8434  0001 5d            	tnzw	x
8435  0002 260e          	jrne	L0471
8436  0004 ae0868        	ldw	x,#2152
8437  0007 89            	pushw	x
8438  0008 5f            	clrw	x
8439  0009 89            	pushw	x
8440  000a ae0000        	ldw	x,#L101
8441  000d cd0000        	call	_assert_failed
8443  0010 5b04          	addw	sp,#4
8444  0012               L0471:
8445                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8447  0012 7b02          	ld	a,(OFST+2,sp)
8448  0014 43            	cpl	a
8449  0015 c75255        	ld	21077,a
8450                     ; 2156 }
8453  0018 85            	popw	x
8454  0019 81            	ret	
8506                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8506                     ; 2175                        uint8_t TIM1_ICSelection,
8506                     ; 2176                        uint8_t TIM1_ICFilter)
8506                     ; 2177 {
8507                     .text:	section	.text,new
8508  0000               L3_TI1_Config:
8510  0000 89            	pushw	x
8511       00000001      OFST:	set	1
8514                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8516  0001 7211525c      	bres	21084,#0
8517  0005 88            	push	a
8518                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8518                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8520  0006 7b06          	ld	a,(OFST+5,sp)
8521  0008 97            	ld	xl,a
8522  0009 a610          	ld	a,#16
8523  000b 42            	mul	x,a
8524  000c 9f            	ld	a,xl
8525  000d 1a03          	or	a,(OFST+2,sp)
8526  000f 6b01          	ld	(OFST+0,sp),a
8527  0011 c65258        	ld	a,21080
8528  0014 a40c          	and	a,#12
8529  0016 1a01          	or	a,(OFST+0,sp)
8530  0018 c75258        	ld	21080,a
8531                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8533  001b 7b02          	ld	a,(OFST+1,sp)
8534  001d 2706          	jreq	L3163
8535                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8537  001f 7212525c      	bset	21084,#1
8539  0023 2004          	jra	L5163
8540  0025               L3163:
8541                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8543  0025 7213525c      	bres	21084,#1
8544  0029               L5163:
8545                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8547  0029 7210525c      	bset	21084,#0
8548                     ; 2197 }
8551  002d 5b03          	addw	sp,#3
8552  002f 81            	ret	
8604                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8604                     ; 2216                        uint8_t TIM1_ICSelection,
8604                     ; 2217                        uint8_t TIM1_ICFilter)
8604                     ; 2218 {
8605                     .text:	section	.text,new
8606  0000               L5_TI2_Config:
8608  0000 89            	pushw	x
8609       00000001      OFST:	set	1
8612                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8614  0001 7219525c      	bres	21084,#4
8615  0005 88            	push	a
8616                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8616                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8618  0006 7b06          	ld	a,(OFST+5,sp)
8619  0008 97            	ld	xl,a
8620  0009 a610          	ld	a,#16
8621  000b 42            	mul	x,a
8622  000c 9f            	ld	a,xl
8623  000d 1a03          	or	a,(OFST+2,sp)
8624  000f 6b01          	ld	(OFST+0,sp),a
8625  0011 c65259        	ld	a,21081
8626  0014 a40c          	and	a,#12
8627  0016 1a01          	or	a,(OFST+0,sp)
8628  0018 c75259        	ld	21081,a
8629                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8631  001b 7b02          	ld	a,(OFST+1,sp)
8632  001d 2706          	jreq	L5463
8633                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8635  001f 721a525c      	bset	21084,#5
8637  0023 2004          	jra	L7463
8638  0025               L5463:
8639                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8641  0025 721b525c      	bres	21084,#5
8642  0029               L7463:
8643                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8645  0029 7218525c      	bset	21084,#4
8646                     ; 2236 }
8649  002d 5b03          	addw	sp,#3
8650  002f 81            	ret	
8702                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8702                     ; 2255                        uint8_t TIM1_ICSelection,
8702                     ; 2256                        uint8_t TIM1_ICFilter)
8702                     ; 2257 {
8703                     .text:	section	.text,new
8704  0000               L7_TI3_Config:
8706  0000 89            	pushw	x
8707       00000001      OFST:	set	1
8710                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8712  0001 7211525d      	bres	21085,#0
8713  0005 88            	push	a
8714                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8714                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8716  0006 7b06          	ld	a,(OFST+5,sp)
8717  0008 97            	ld	xl,a
8718  0009 a610          	ld	a,#16
8719  000b 42            	mul	x,a
8720  000c 9f            	ld	a,xl
8721  000d 1a03          	or	a,(OFST+2,sp)
8722  000f 6b01          	ld	(OFST+0,sp),a
8723  0011 c6525a        	ld	a,21082
8724  0014 a40c          	and	a,#12
8725  0016 1a01          	or	a,(OFST+0,sp)
8726  0018 c7525a        	ld	21082,a
8727                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8729  001b 7b02          	ld	a,(OFST+1,sp)
8730  001d 2706          	jreq	L7763
8731                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8733  001f 7212525d      	bset	21085,#1
8735  0023 2004          	jra	L1073
8736  0025               L7763:
8737                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8739  0025 7213525d      	bres	21085,#1
8740  0029               L1073:
8741                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8743  0029 7210525d      	bset	21085,#0
8744                     ; 2276 }
8747  002d 5b03          	addw	sp,#3
8748  002f 81            	ret	
8800                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8800                     ; 2295                        uint8_t TIM1_ICSelection,
8800                     ; 2296                        uint8_t TIM1_ICFilter)
8800                     ; 2297 {
8801                     .text:	section	.text,new
8802  0000               L11_TI4_Config:
8804  0000 89            	pushw	x
8805       00000001      OFST:	set	1
8808                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8810  0001 7219525d      	bres	21085,#4
8811  0005 88            	push	a
8812                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8812                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8814  0006 7b06          	ld	a,(OFST+5,sp)
8815  0008 97            	ld	xl,a
8816  0009 a610          	ld	a,#16
8817  000b 42            	mul	x,a
8818  000c 9f            	ld	a,xl
8819  000d 1a03          	or	a,(OFST+2,sp)
8820  000f 6b01          	ld	(OFST+0,sp),a
8821  0011 c6525b        	ld	a,21083
8822  0014 a40c          	and	a,#12
8823  0016 1a01          	or	a,(OFST+0,sp)
8824  0018 c7525b        	ld	21083,a
8825                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8827  001b 7b02          	ld	a,(OFST+1,sp)
8828  001d 2706          	jreq	L1373
8829                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8831  001f 721a525d      	bset	21085,#5
8833  0023 2004          	jra	L3373
8834  0025               L1373:
8835                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8837  0025 721b525d      	bres	21085,#5
8838  0029               L3373:
8839                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8841  0029 7218525d      	bset	21085,#4
8842                     ; 2317 }
8845  002d 5b03          	addw	sp,#3
8846  002f 81            	ret	
8859                     	xdef	_TIM1_ClearITPendingBit
8860                     	xdef	_TIM1_GetITStatus
8861                     	xdef	_TIM1_ClearFlag
8862                     	xdef	_TIM1_GetFlagStatus
8863                     	xdef	_TIM1_GetPrescaler
8864                     	xdef	_TIM1_GetCounter
8865                     	xdef	_TIM1_GetCapture4
8866                     	xdef	_TIM1_GetCapture3
8867                     	xdef	_TIM1_GetCapture2
8868                     	xdef	_TIM1_GetCapture1
8869                     	xdef	_TIM1_SetIC4Prescaler
8870                     	xdef	_TIM1_SetIC3Prescaler
8871                     	xdef	_TIM1_SetIC2Prescaler
8872                     	xdef	_TIM1_SetIC1Prescaler
8873                     	xdef	_TIM1_SetCompare4
8874                     	xdef	_TIM1_SetCompare3
8875                     	xdef	_TIM1_SetCompare2
8876                     	xdef	_TIM1_SetCompare1
8877                     	xdef	_TIM1_SetAutoreload
8878                     	xdef	_TIM1_SetCounter
8879                     	xdef	_TIM1_SelectOCxM
8880                     	xdef	_TIM1_CCxNCmd
8881                     	xdef	_TIM1_CCxCmd
8882                     	xdef	_TIM1_OC4PolarityConfig
8883                     	xdef	_TIM1_OC3NPolarityConfig
8884                     	xdef	_TIM1_OC3PolarityConfig
8885                     	xdef	_TIM1_OC2NPolarityConfig
8886                     	xdef	_TIM1_OC2PolarityConfig
8887                     	xdef	_TIM1_OC1NPolarityConfig
8888                     	xdef	_TIM1_OC1PolarityConfig
8889                     	xdef	_TIM1_GenerateEvent
8890                     	xdef	_TIM1_OC4FastConfig
8891                     	xdef	_TIM1_OC3FastConfig
8892                     	xdef	_TIM1_OC2FastConfig
8893                     	xdef	_TIM1_OC1FastConfig
8894                     	xdef	_TIM1_OC4PreloadConfig
8895                     	xdef	_TIM1_OC3PreloadConfig
8896                     	xdef	_TIM1_OC2PreloadConfig
8897                     	xdef	_TIM1_OC1PreloadConfig
8898                     	xdef	_TIM1_CCPreloadControl
8899                     	xdef	_TIM1_SelectCOM
8900                     	xdef	_TIM1_ARRPreloadConfig
8901                     	xdef	_TIM1_ForcedOC4Config
8902                     	xdef	_TIM1_ForcedOC3Config
8903                     	xdef	_TIM1_ForcedOC2Config
8904                     	xdef	_TIM1_ForcedOC1Config
8905                     	xdef	_TIM1_CounterModeConfig
8906                     	xdef	_TIM1_PrescalerConfig
8907                     	xdef	_TIM1_EncoderInterfaceConfig
8908                     	xdef	_TIM1_SelectMasterSlaveMode
8909                     	xdef	_TIM1_SelectSlaveMode
8910                     	xdef	_TIM1_SelectOutputTrigger
8911                     	xdef	_TIM1_SelectOnePulseMode
8912                     	xdef	_TIM1_SelectHallSensor
8913                     	xdef	_TIM1_UpdateRequestConfig
8914                     	xdef	_TIM1_UpdateDisableConfig
8915                     	xdef	_TIM1_SelectInputTrigger
8916                     	xdef	_TIM1_TIxExternalClockConfig
8917                     	xdef	_TIM1_ETRConfig
8918                     	xdef	_TIM1_ETRClockMode2Config
8919                     	xdef	_TIM1_ETRClockMode1Config
8920                     	xdef	_TIM1_InternalClockConfig
8921                     	xdef	_TIM1_ITConfig
8922                     	xdef	_TIM1_CtrlPWMOutputs
8923                     	xdef	_TIM1_Cmd
8924                     	xdef	_TIM1_PWMIConfig
8925                     	xdef	_TIM1_ICInit
8926                     	xdef	_TIM1_BDTRConfig
8927                     	xdef	_TIM1_OC4Init
8928                     	xdef	_TIM1_OC3Init
8929                     	xdef	_TIM1_OC2Init
8930                     	xdef	_TIM1_OC1Init
8931                     	xdef	_TIM1_TimeBaseInit
8932                     	xdef	_TIM1_DeInit
8933                     	xref	_assert_failed
8934                     .const:	section	.text
8935  0000               L101:
8936  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
8937  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
8938  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
8939  0036 6d312e6300    	dc.b	"m1.c",0
8959                     	end

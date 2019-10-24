   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 58 void TIM1_DeInit(void)
  17                     ; 59 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _TIM1_DeInit:
  22                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  23  0000 725f5250      	clr	21072
  24                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  25  0004 725f5251      	clr	21073
  26                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  27  0008 725f5252      	clr	21074
  28                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  29  000c 725f5253      	clr	21075
  30                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  31  0010 725f5254      	clr	21076
  32                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  33  0014 725f5256      	clr	21078
  34                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  35  0018 725f525c      	clr	21084
  36                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  37  001c 725f525d      	clr	21085
  38                     ; 70   TIM1->CCMR1 = 0x01;
  39  0020 35015258      	mov	21080,#1
  40                     ; 71   TIM1->CCMR2 = 0x01;
  41  0024 35015259      	mov	21081,#1
  42                     ; 72   TIM1->CCMR3 = 0x01;
  43  0028 3501525a      	mov	21082,#1
  44                     ; 73   TIM1->CCMR4 = 0x01;
  45  002c 3501525b      	mov	21083,#1
  46                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  47  0030 725f525c      	clr	21084
  48                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  49  0034 725f525d      	clr	21085
  50                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  51  0038 725f5258      	clr	21080
  52                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  53  003c 725f5259      	clr	21081
  54                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  55  0040 725f525a      	clr	21082
  56                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
  57  0044 725f525b      	clr	21083
  58                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
  59  0048 725f525e      	clr	21086
  60                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
  61  004c 725f525f      	clr	21087
  62                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
  63  0050 725f5260      	clr	21088
  64                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
  65  0054 725f5261      	clr	21089
  66                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
  67  0058 35ff5262      	mov	21090,#255
  68                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
  69  005c 35ff5263      	mov	21091,#255
  70                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
  71  0060 725f5265      	clr	21093
  72                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
  73  0064 725f5266      	clr	21094
  74                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
  75  0068 725f5267      	clr	21095
  76                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
  77  006c 725f5268      	clr	21096
  78                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
  79  0070 725f5269      	clr	21097
  80                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
  81  0074 725f526a      	clr	21098
  82                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
  83  0078 725f526b      	clr	21099
  84                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
  85  007c 725f526c      	clr	21100
  86                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
  87  0080 725f526f      	clr	21103
  88                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
  89  0084 35015257      	mov	21079,#1
  90                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
  91  0088 725f526e      	clr	21102
  92                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
  93  008c 725f526d      	clr	21101
  94                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
  95  0090 725f5264      	clr	21092
  96                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
  97  0094 725f5255      	clr	21077
  98                     ; 101 }
  99  0098 81            	ret
 101                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 101                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 101                     ; 113                        uint16_t TIM1_Period,
 101                     ; 114                        uint8_t TIM1_RepetitionCounter)
 101                     ; 115 {
 102                     .text:	section	.text,new
 103  0000               _TIM1_TimeBaseInit:
 104  0000 89            	pushw	x
 105       00000000      OFST:	set	0
 107                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 108  0001 1e05          	ldw	x,(OFST+5,sp)
 109  0003 271c          	jreq	L01
 110  0005 1e05          	ldw	x,(OFST+5,sp)
 111  0007 a30010        	cpw	x,#16
 112  000a 2715          	jreq	L01
 113  000c 1e05          	ldw	x,(OFST+5,sp)
 114  000e a30020        	cpw	x,#32
 115  0011 270e          	jreq	L01
 116  0013 1e05          	ldw	x,(OFST+5,sp)
 117  0015 a30040        	cpw	x,#64
 118  0018 2707          	jreq	L01
 119  001a 1e05          	ldw	x,(OFST+5,sp)
 120  001c a30060        	cpw	x,#96
 121  001f 2603          	jrne	L6
 122  0021               L01:
 123  0021 4f            	clr	a
 124  0022 2010          	jra	L21
 125  0024               L6:
 126  0024 ae0075        	ldw	x,#117
 127  0027 89            	pushw	x
 128  0028 ae0000        	ldw	x,#0
 129  002b 89            	pushw	x
 130  002c ae0000        	ldw	x,#L31
 131  002f cd0000        	call	_assert_failed
 133  0032 5b04          	addw	sp,#4
 134  0034               L21:
 135                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 136  0034 7b07          	ld	a,(OFST+7,sp)
 137  0036 c75262        	ld	21090,a
 138                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 139  0039 7b08          	ld	a,(OFST+8,sp)
 140  003b c75263        	ld	21091,a
 141                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 142  003e 7b01          	ld	a,(OFST+1,sp)
 143  0040 c75260        	ld	21088,a
 144                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 145  0043 7b02          	ld	a,(OFST+2,sp)
 146  0045 c75261        	ld	21089,a
 147                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 147                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 148  0048 c65250        	ld	a,21072
 149  004b a48f          	and	a,#143
 150  004d 1a06          	or	a,(OFST+6,sp)
 151  004f c75250        	ld	21072,a
 152                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 153  0052 7b09          	ld	a,(OFST+9,sp)
 154  0054 c75264        	ld	21092,a
 155                     ; 133 }
 156  0057 85            	popw	x
 157  0058 81            	ret
 159                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 159                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 159                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 159                     ; 157                   uint16_t TIM1_Pulse,
 159                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 159                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 159                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 159                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 159                     ; 162 {
 160                     .text:	section	.text,new
 161  0000               _TIM1_OC1Init:
 162  0000 89            	pushw	x
 163  0001 5203          	subw	sp,#3
 164       00000003      OFST:	set	3
 166                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 167  0003 a30000        	cpw	x,#0
 168  0006 2719          	jreq	L02
 169  0008 a30010        	cpw	x,#16
 170  000b 2714          	jreq	L02
 171  000d a30020        	cpw	x,#32
 172  0010 270f          	jreq	L02
 173  0012 a30030        	cpw	x,#48
 174  0015 270a          	jreq	L02
 175  0017 a30060        	cpw	x,#96
 176  001a 2705          	jreq	L02
 177  001c a30070        	cpw	x,#112
 178  001f 2603          	jrne	L61
 179  0021               L02:
 180  0021 4f            	clr	a
 181  0022 2010          	jra	L22
 182  0024               L61:
 183  0024 ae00a4        	ldw	x,#164
 184  0027 89            	pushw	x
 185  0028 ae0000        	ldw	x,#0
 186  002b 89            	pushw	x
 187  002c ae0000        	ldw	x,#L31
 188  002f cd0000        	call	_assert_failed
 190  0032 5b04          	addw	sp,#4
 191  0034               L22:
 192                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 193  0034 1e08          	ldw	x,(OFST+5,sp)
 194  0036 2707          	jreq	L62
 195  0038 1e08          	ldw	x,(OFST+5,sp)
 196  003a a30011        	cpw	x,#17
 197  003d 2603          	jrne	L42
 198  003f               L62:
 199  003f 4f            	clr	a
 200  0040 2010          	jra	L03
 201  0042               L42:
 202  0042 ae00a5        	ldw	x,#165
 203  0045 89            	pushw	x
 204  0046 ae0000        	ldw	x,#0
 205  0049 89            	pushw	x
 206  004a ae0000        	ldw	x,#L31
 207  004d cd0000        	call	_assert_failed
 209  0050 5b04          	addw	sp,#4
 210  0052               L03:
 211                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 212  0052 1e0a          	ldw	x,(OFST+7,sp)
 213  0054 2707          	jreq	L43
 214  0056 1e0a          	ldw	x,(OFST+7,sp)
 215  0058 a30044        	cpw	x,#68
 216  005b 2603          	jrne	L23
 217  005d               L43:
 218  005d 4f            	clr	a
 219  005e 2010          	jra	L63
 220  0060               L23:
 221  0060 ae00a6        	ldw	x,#166
 222  0063 89            	pushw	x
 223  0064 ae0000        	ldw	x,#0
 224  0067 89            	pushw	x
 225  0068 ae0000        	ldw	x,#L31
 226  006b cd0000        	call	_assert_failed
 228  006e 5b04          	addw	sp,#4
 229  0070               L63:
 230                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 231  0070 1e0e          	ldw	x,(OFST+11,sp)
 232  0072 2707          	jreq	L24
 233  0074 1e0e          	ldw	x,(OFST+11,sp)
 234  0076 a30022        	cpw	x,#34
 235  0079 2603          	jrne	L04
 236  007b               L24:
 237  007b 4f            	clr	a
 238  007c 2010          	jra	L44
 239  007e               L04:
 240  007e ae00a7        	ldw	x,#167
 241  0081 89            	pushw	x
 242  0082 ae0000        	ldw	x,#0
 243  0085 89            	pushw	x
 244  0086 ae0000        	ldw	x,#L31
 245  0089 cd0000        	call	_assert_failed
 247  008c 5b04          	addw	sp,#4
 248  008e               L44:
 249                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 250  008e 1e10          	ldw	x,(OFST+13,sp)
 251  0090 2707          	jreq	L05
 252  0092 1e10          	ldw	x,(OFST+13,sp)
 253  0094 a30088        	cpw	x,#136
 254  0097 2603          	jrne	L64
 255  0099               L05:
 256  0099 4f            	clr	a
 257  009a 2010          	jra	L25
 258  009c               L64:
 259  009c ae00a8        	ldw	x,#168
 260  009f 89            	pushw	x
 261  00a0 ae0000        	ldw	x,#0
 262  00a3 89            	pushw	x
 263  00a4 ae0000        	ldw	x,#L31
 264  00a7 cd0000        	call	_assert_failed
 266  00aa 5b04          	addw	sp,#4
 267  00ac               L25:
 268                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 269  00ac 1e12          	ldw	x,(OFST+15,sp)
 270  00ae a30055        	cpw	x,#85
 271  00b1 2704          	jreq	L65
 272  00b3 1e12          	ldw	x,(OFST+15,sp)
 273  00b5 2603          	jrne	L45
 274  00b7               L65:
 275  00b7 4f            	clr	a
 276  00b8 2010          	jra	L06
 277  00ba               L45:
 278  00ba ae00a9        	ldw	x,#169
 279  00bd 89            	pushw	x
 280  00be ae0000        	ldw	x,#0
 281  00c1 89            	pushw	x
 282  00c2 ae0000        	ldw	x,#L31
 283  00c5 cd0000        	call	_assert_failed
 285  00c8 5b04          	addw	sp,#4
 286  00ca               L06:
 287                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 288  00ca 1e14          	ldw	x,(OFST+17,sp)
 289  00cc a3002a        	cpw	x,#42
 290  00cf 2704          	jreq	L46
 291  00d1 1e14          	ldw	x,(OFST+17,sp)
 292  00d3 2603          	jrne	L26
 293  00d5               L46:
 294  00d5 4f            	clr	a
 295  00d6 2010          	jra	L66
 296  00d8               L26:
 297  00d8 ae00aa        	ldw	x,#170
 298  00db 89            	pushw	x
 299  00dc ae0000        	ldw	x,#0
 300  00df 89            	pushw	x
 301  00e0 ae0000        	ldw	x,#L31
 302  00e3 cd0000        	call	_assert_failed
 304  00e6 5b04          	addw	sp,#4
 305  00e8               L66:
 306                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 306                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 307  00e8 c6525c        	ld	a,21084
 308  00eb a4f0          	and	a,#240
 309  00ed c7525c        	ld	21084,a
 310                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 310                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 310                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 310                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 311  00f0 7b11          	ld	a,(OFST+14,sp)
 312  00f2 a408          	and	a,#8
 313  00f4 6b03          	ld	(OFST+0,sp),a
 314  00f6 7b0f          	ld	a,(OFST+12,sp)
 315  00f8 a402          	and	a,#2
 316  00fa 1a03          	or	a,(OFST+0,sp)
 317  00fc 6b02          	ld	(OFST-1,sp),a
 318  00fe 7b0b          	ld	a,(OFST+8,sp)
 319  0100 a404          	and	a,#4
 320  0102 6b01          	ld	(OFST-2,sp),a
 321  0104 7b09          	ld	a,(OFST+6,sp)
 322  0106 a401          	and	a,#1
 323  0108 1a01          	or	a,(OFST-2,sp)
 324  010a 1a02          	or	a,(OFST-1,sp)
 325  010c ca525c        	or	a,21084
 326  010f c7525c        	ld	21084,a
 327                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 327                     ; 185                           (uint8_t)TIM1_OCMode);
 328  0112 c65258        	ld	a,21080
 329  0115 a48f          	and	a,#143
 330  0117 1a05          	or	a,(OFST+2,sp)
 331  0119 c75258        	ld	21080,a
 332                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 333  011c c6526f        	ld	a,21103
 334  011f a4fc          	and	a,#252
 335  0121 c7526f        	ld	21103,a
 336                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 336                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 337  0124 7b15          	ld	a,(OFST+18,sp)
 338  0126 a402          	and	a,#2
 339  0128 6b03          	ld	(OFST+0,sp),a
 340  012a 7b13          	ld	a,(OFST+16,sp)
 341  012c a401          	and	a,#1
 342  012e 1a03          	or	a,(OFST+0,sp)
 343  0130 ca526f        	or	a,21103
 344  0133 c7526f        	ld	21103,a
 345                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 346  0136 7b0c          	ld	a,(OFST+9,sp)
 347  0138 c75265        	ld	21093,a
 348                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 349  013b 7b0d          	ld	a,(OFST+10,sp)
 350  013d c75266        	ld	21094,a
 351                     ; 196 }
 352  0140 5b05          	addw	sp,#5
 353  0142 81            	ret
 355                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 355                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 355                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 355                     ; 220                   uint16_t TIM1_Pulse,
 355                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 355                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 355                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 355                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 355                     ; 225 {
 356                     .text:	section	.text,new
 357  0000               _TIM1_OC2Init:
 358  0000 89            	pushw	x
 359  0001 5203          	subw	sp,#3
 360       00000003      OFST:	set	3
 362                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 363  0003 a30000        	cpw	x,#0
 364  0006 2719          	jreq	L47
 365  0008 a30010        	cpw	x,#16
 366  000b 2714          	jreq	L47
 367  000d a30020        	cpw	x,#32
 368  0010 270f          	jreq	L47
 369  0012 a30030        	cpw	x,#48
 370  0015 270a          	jreq	L47
 371  0017 a30060        	cpw	x,#96
 372  001a 2705          	jreq	L47
 373  001c a30070        	cpw	x,#112
 374  001f 2603          	jrne	L27
 375  0021               L47:
 376  0021 4f            	clr	a
 377  0022 2010          	jra	L67
 378  0024               L27:
 379  0024 ae00e3        	ldw	x,#227
 380  0027 89            	pushw	x
 381  0028 ae0000        	ldw	x,#0
 382  002b 89            	pushw	x
 383  002c ae0000        	ldw	x,#L31
 384  002f cd0000        	call	_assert_failed
 386  0032 5b04          	addw	sp,#4
 387  0034               L67:
 388                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 389  0034 1e08          	ldw	x,(OFST+5,sp)
 390  0036 2707          	jreq	L201
 391  0038 1e08          	ldw	x,(OFST+5,sp)
 392  003a a30011        	cpw	x,#17
 393  003d 2603          	jrne	L001
 394  003f               L201:
 395  003f 4f            	clr	a
 396  0040 2010          	jra	L401
 397  0042               L001:
 398  0042 ae00e4        	ldw	x,#228
 399  0045 89            	pushw	x
 400  0046 ae0000        	ldw	x,#0
 401  0049 89            	pushw	x
 402  004a ae0000        	ldw	x,#L31
 403  004d cd0000        	call	_assert_failed
 405  0050 5b04          	addw	sp,#4
 406  0052               L401:
 407                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 408  0052 1e0a          	ldw	x,(OFST+7,sp)
 409  0054 2707          	jreq	L011
 410  0056 1e0a          	ldw	x,(OFST+7,sp)
 411  0058 a30044        	cpw	x,#68
 412  005b 2603          	jrne	L601
 413  005d               L011:
 414  005d 4f            	clr	a
 415  005e 2010          	jra	L211
 416  0060               L601:
 417  0060 ae00e5        	ldw	x,#229
 418  0063 89            	pushw	x
 419  0064 ae0000        	ldw	x,#0
 420  0067 89            	pushw	x
 421  0068 ae0000        	ldw	x,#L31
 422  006b cd0000        	call	_assert_failed
 424  006e 5b04          	addw	sp,#4
 425  0070               L211:
 426                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 427  0070 1e0e          	ldw	x,(OFST+11,sp)
 428  0072 2707          	jreq	L611
 429  0074 1e0e          	ldw	x,(OFST+11,sp)
 430  0076 a30022        	cpw	x,#34
 431  0079 2603          	jrne	L411
 432  007b               L611:
 433  007b 4f            	clr	a
 434  007c 2010          	jra	L021
 435  007e               L411:
 436  007e ae00e6        	ldw	x,#230
 437  0081 89            	pushw	x
 438  0082 ae0000        	ldw	x,#0
 439  0085 89            	pushw	x
 440  0086 ae0000        	ldw	x,#L31
 441  0089 cd0000        	call	_assert_failed
 443  008c 5b04          	addw	sp,#4
 444  008e               L021:
 445                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 446  008e 1e10          	ldw	x,(OFST+13,sp)
 447  0090 2707          	jreq	L421
 448  0092 1e10          	ldw	x,(OFST+13,sp)
 449  0094 a30088        	cpw	x,#136
 450  0097 2603          	jrne	L221
 451  0099               L421:
 452  0099 4f            	clr	a
 453  009a 2010          	jra	L621
 454  009c               L221:
 455  009c ae00e7        	ldw	x,#231
 456  009f 89            	pushw	x
 457  00a0 ae0000        	ldw	x,#0
 458  00a3 89            	pushw	x
 459  00a4 ae0000        	ldw	x,#L31
 460  00a7 cd0000        	call	_assert_failed
 462  00aa 5b04          	addw	sp,#4
 463  00ac               L621:
 464                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 465  00ac 1e12          	ldw	x,(OFST+15,sp)
 466  00ae a30055        	cpw	x,#85
 467  00b1 2704          	jreq	L231
 468  00b3 1e12          	ldw	x,(OFST+15,sp)
 469  00b5 2603          	jrne	L031
 470  00b7               L231:
 471  00b7 4f            	clr	a
 472  00b8 2010          	jra	L431
 473  00ba               L031:
 474  00ba ae00e8        	ldw	x,#232
 475  00bd 89            	pushw	x
 476  00be ae0000        	ldw	x,#0
 477  00c1 89            	pushw	x
 478  00c2 ae0000        	ldw	x,#L31
 479  00c5 cd0000        	call	_assert_failed
 481  00c8 5b04          	addw	sp,#4
 482  00ca               L431:
 483                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 484  00ca 1e14          	ldw	x,(OFST+17,sp)
 485  00cc a3002a        	cpw	x,#42
 486  00cf 2704          	jreq	L041
 487  00d1 1e14          	ldw	x,(OFST+17,sp)
 488  00d3 2603          	jrne	L631
 489  00d5               L041:
 490  00d5 4f            	clr	a
 491  00d6 2010          	jra	L241
 492  00d8               L631:
 493  00d8 ae00e9        	ldw	x,#233
 494  00db 89            	pushw	x
 495  00dc ae0000        	ldw	x,#0
 496  00df 89            	pushw	x
 497  00e0 ae0000        	ldw	x,#L31
 498  00e3 cd0000        	call	_assert_failed
 500  00e6 5b04          	addw	sp,#4
 501  00e8               L241:
 502                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 502                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 503  00e8 c6525c        	ld	a,21084
 504  00eb a40f          	and	a,#15
 505  00ed c7525c        	ld	21084,a
 506                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 506                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 506                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 506                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 507  00f0 7b11          	ld	a,(OFST+14,sp)
 508  00f2 a480          	and	a,#128
 509  00f4 6b03          	ld	(OFST+0,sp),a
 510  00f6 7b0f          	ld	a,(OFST+12,sp)
 511  00f8 a420          	and	a,#32
 512  00fa 1a03          	or	a,(OFST+0,sp)
 513  00fc 6b02          	ld	(OFST-1,sp),a
 514  00fe 7b0b          	ld	a,(OFST+8,sp)
 515  0100 a440          	and	a,#64
 516  0102 6b01          	ld	(OFST-2,sp),a
 517  0104 7b09          	ld	a,(OFST+6,sp)
 518  0106 a410          	and	a,#16
 519  0108 1a01          	or	a,(OFST-2,sp)
 520  010a 1a02          	or	a,(OFST-1,sp)
 521  010c ca525c        	or	a,21084
 522  010f c7525c        	ld	21084,a
 523                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 523                     ; 249                           (uint8_t)TIM1_OCMode);
 524  0112 c65259        	ld	a,21081
 525  0115 a48f          	and	a,#143
 526  0117 1a05          	or	a,(OFST+2,sp)
 527  0119 c75259        	ld	21081,a
 528                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 529  011c c6526f        	ld	a,21103
 530  011f a4f3          	and	a,#243
 531  0121 c7526f        	ld	21103,a
 532                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 532                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 533  0124 7b15          	ld	a,(OFST+18,sp)
 534  0126 a408          	and	a,#8
 535  0128 6b03          	ld	(OFST+0,sp),a
 536  012a 7b13          	ld	a,(OFST+16,sp)
 537  012c a404          	and	a,#4
 538  012e 1a03          	or	a,(OFST+0,sp)
 539  0130 ca526f        	or	a,21103
 540  0133 c7526f        	ld	21103,a
 541                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 542  0136 7b0c          	ld	a,(OFST+9,sp)
 543  0138 c75267        	ld	21095,a
 544                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 545  013b 7b0d          	ld	a,(OFST+10,sp)
 546  013d c75268        	ld	21096,a
 547                     ; 260 }
 548  0140 5b05          	addw	sp,#5
 549  0142 81            	ret
 551                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 551                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
 551                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 551                     ; 284                   uint16_t TIM1_Pulse,
 551                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 551                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 551                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 551                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 551                     ; 289 {
 552                     .text:	section	.text,new
 553  0000               _TIM1_OC3Init:
 554  0000 89            	pushw	x
 555  0001 5203          	subw	sp,#3
 556       00000003      OFST:	set	3
 558                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 559  0003 a30000        	cpw	x,#0
 560  0006 2719          	jreq	L051
 561  0008 a30010        	cpw	x,#16
 562  000b 2714          	jreq	L051
 563  000d a30020        	cpw	x,#32
 564  0010 270f          	jreq	L051
 565  0012 a30030        	cpw	x,#48
 566  0015 270a          	jreq	L051
 567  0017 a30060        	cpw	x,#96
 568  001a 2705          	jreq	L051
 569  001c a30070        	cpw	x,#112
 570  001f 2603          	jrne	L641
 571  0021               L051:
 572  0021 4f            	clr	a
 573  0022 2010          	jra	L251
 574  0024               L641:
 575  0024 ae0123        	ldw	x,#291
 576  0027 89            	pushw	x
 577  0028 ae0000        	ldw	x,#0
 578  002b 89            	pushw	x
 579  002c ae0000        	ldw	x,#L31
 580  002f cd0000        	call	_assert_failed
 582  0032 5b04          	addw	sp,#4
 583  0034               L251:
 584                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 585  0034 1e08          	ldw	x,(OFST+5,sp)
 586  0036 2707          	jreq	L651
 587  0038 1e08          	ldw	x,(OFST+5,sp)
 588  003a a30011        	cpw	x,#17
 589  003d 2603          	jrne	L451
 590  003f               L651:
 591  003f 4f            	clr	a
 592  0040 2010          	jra	L061
 593  0042               L451:
 594  0042 ae0124        	ldw	x,#292
 595  0045 89            	pushw	x
 596  0046 ae0000        	ldw	x,#0
 597  0049 89            	pushw	x
 598  004a ae0000        	ldw	x,#L31
 599  004d cd0000        	call	_assert_failed
 601  0050 5b04          	addw	sp,#4
 602  0052               L061:
 603                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 604  0052 1e0a          	ldw	x,(OFST+7,sp)
 605  0054 2707          	jreq	L461
 606  0056 1e0a          	ldw	x,(OFST+7,sp)
 607  0058 a30044        	cpw	x,#68
 608  005b 2603          	jrne	L261
 609  005d               L461:
 610  005d 4f            	clr	a
 611  005e 2010          	jra	L661
 612  0060               L261:
 613  0060 ae0125        	ldw	x,#293
 614  0063 89            	pushw	x
 615  0064 ae0000        	ldw	x,#0
 616  0067 89            	pushw	x
 617  0068 ae0000        	ldw	x,#L31
 618  006b cd0000        	call	_assert_failed
 620  006e 5b04          	addw	sp,#4
 621  0070               L661:
 622                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 623  0070 1e0e          	ldw	x,(OFST+11,sp)
 624  0072 2707          	jreq	L271
 625  0074 1e0e          	ldw	x,(OFST+11,sp)
 626  0076 a30022        	cpw	x,#34
 627  0079 2603          	jrne	L071
 628  007b               L271:
 629  007b 4f            	clr	a
 630  007c 2010          	jra	L471
 631  007e               L071:
 632  007e ae0126        	ldw	x,#294
 633  0081 89            	pushw	x
 634  0082 ae0000        	ldw	x,#0
 635  0085 89            	pushw	x
 636  0086 ae0000        	ldw	x,#L31
 637  0089 cd0000        	call	_assert_failed
 639  008c 5b04          	addw	sp,#4
 640  008e               L471:
 641                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 642  008e 1e10          	ldw	x,(OFST+13,sp)
 643  0090 2707          	jreq	L002
 644  0092 1e10          	ldw	x,(OFST+13,sp)
 645  0094 a30088        	cpw	x,#136
 646  0097 2603          	jrne	L671
 647  0099               L002:
 648  0099 4f            	clr	a
 649  009a 2010          	jra	L202
 650  009c               L671:
 651  009c ae0127        	ldw	x,#295
 652  009f 89            	pushw	x
 653  00a0 ae0000        	ldw	x,#0
 654  00a3 89            	pushw	x
 655  00a4 ae0000        	ldw	x,#L31
 656  00a7 cd0000        	call	_assert_failed
 658  00aa 5b04          	addw	sp,#4
 659  00ac               L202:
 660                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 661  00ac 1e12          	ldw	x,(OFST+15,sp)
 662  00ae a30055        	cpw	x,#85
 663  00b1 2704          	jreq	L602
 664  00b3 1e12          	ldw	x,(OFST+15,sp)
 665  00b5 2603          	jrne	L402
 666  00b7               L602:
 667  00b7 4f            	clr	a
 668  00b8 2010          	jra	L012
 669  00ba               L402:
 670  00ba ae0128        	ldw	x,#296
 671  00bd 89            	pushw	x
 672  00be ae0000        	ldw	x,#0
 673  00c1 89            	pushw	x
 674  00c2 ae0000        	ldw	x,#L31
 675  00c5 cd0000        	call	_assert_failed
 677  00c8 5b04          	addw	sp,#4
 678  00ca               L012:
 679                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 680  00ca 1e14          	ldw	x,(OFST+17,sp)
 681  00cc a3002a        	cpw	x,#42
 682  00cf 2704          	jreq	L412
 683  00d1 1e14          	ldw	x,(OFST+17,sp)
 684  00d3 2603          	jrne	L212
 685  00d5               L412:
 686  00d5 4f            	clr	a
 687  00d6 2010          	jra	L612
 688  00d8               L212:
 689  00d8 ae0129        	ldw	x,#297
 690  00db 89            	pushw	x
 691  00dc ae0000        	ldw	x,#0
 692  00df 89            	pushw	x
 693  00e0 ae0000        	ldw	x,#L31
 694  00e3 cd0000        	call	_assert_failed
 696  00e6 5b04          	addw	sp,#4
 697  00e8               L612:
 698                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
 698                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 699  00e8 c6525d        	ld	a,21085
 700  00eb a4f0          	and	a,#240
 701  00ed c7525d        	ld	21085,a
 702                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
 702                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
 702                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
 702                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
 703  00f0 7b11          	ld	a,(OFST+14,sp)
 704  00f2 a408          	and	a,#8
 705  00f4 6b03          	ld	(OFST+0,sp),a
 706  00f6 7b0f          	ld	a,(OFST+12,sp)
 707  00f8 a402          	and	a,#2
 708  00fa 1a03          	or	a,(OFST+0,sp)
 709  00fc 6b02          	ld	(OFST-1,sp),a
 710  00fe 7b0b          	ld	a,(OFST+8,sp)
 711  0100 a404          	and	a,#4
 712  0102 6b01          	ld	(OFST-2,sp),a
 713  0104 7b09          	ld	a,(OFST+6,sp)
 714  0106 a401          	and	a,#1
 715  0108 1a01          	or	a,(OFST-2,sp)
 716  010a 1a02          	or	a,(OFST-1,sp)
 717  010c ca525d        	or	a,21085
 718  010f c7525d        	ld	21085,a
 719                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 719                     ; 312                           (uint8_t)TIM1_OCMode);
 720  0112 c6525a        	ld	a,21082
 721  0115 a48f          	and	a,#143
 722  0117 1a05          	or	a,(OFST+2,sp)
 723  0119 c7525a        	ld	21082,a
 724                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
 725  011c c6526f        	ld	a,21103
 726  011f a4cf          	and	a,#207
 727  0121 c7526f        	ld	21103,a
 728                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
 728                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
 729  0124 7b15          	ld	a,(OFST+18,sp)
 730  0126 a420          	and	a,#32
 731  0128 6b03          	ld	(OFST+0,sp),a
 732  012a 7b13          	ld	a,(OFST+16,sp)
 733  012c a410          	and	a,#16
 734  012e 1a03          	or	a,(OFST+0,sp)
 735  0130 ca526f        	or	a,21103
 736  0133 c7526f        	ld	21103,a
 737                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
 738  0136 7b0c          	ld	a,(OFST+9,sp)
 739  0138 c75269        	ld	21097,a
 740                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
 741  013b 7b0d          	ld	a,(OFST+10,sp)
 742  013d c7526a        	ld	21098,a
 743                     ; 323 }
 744  0140 5b05          	addw	sp,#5
 745  0142 81            	ret
 747                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 747                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
 747                     ; 340                   uint16_t TIM1_Pulse,
 747                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 747                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
 747                     ; 343 {
 748                     .text:	section	.text,new
 749  0000               _TIM1_OC4Init:
 750  0000 89            	pushw	x
 751  0001 88            	push	a
 752       00000001      OFST:	set	1
 754                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 755  0002 a30000        	cpw	x,#0
 756  0005 2719          	jreq	L422
 757  0007 a30010        	cpw	x,#16
 758  000a 2714          	jreq	L422
 759  000c a30020        	cpw	x,#32
 760  000f 270f          	jreq	L422
 761  0011 a30030        	cpw	x,#48
 762  0014 270a          	jreq	L422
 763  0016 a30060        	cpw	x,#96
 764  0019 2705          	jreq	L422
 765  001b a30070        	cpw	x,#112
 766  001e 2603          	jrne	L222
 767  0020               L422:
 768  0020 4f            	clr	a
 769  0021 2010          	jra	L622
 770  0023               L222:
 771  0023 ae0159        	ldw	x,#345
 772  0026 89            	pushw	x
 773  0027 ae0000        	ldw	x,#0
 774  002a 89            	pushw	x
 775  002b ae0000        	ldw	x,#L31
 776  002e cd0000        	call	_assert_failed
 778  0031 5b04          	addw	sp,#4
 779  0033               L622:
 780                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 781  0033 1e06          	ldw	x,(OFST+5,sp)
 782  0035 2707          	jreq	L232
 783  0037 1e06          	ldw	x,(OFST+5,sp)
 784  0039 a30011        	cpw	x,#17
 785  003c 2603          	jrne	L032
 786  003e               L232:
 787  003e 4f            	clr	a
 788  003f 2010          	jra	L432
 789  0041               L032:
 790  0041 ae015a        	ldw	x,#346
 791  0044 89            	pushw	x
 792  0045 ae0000        	ldw	x,#0
 793  0048 89            	pushw	x
 794  0049 ae0000        	ldw	x,#L31
 795  004c cd0000        	call	_assert_failed
 797  004f 5b04          	addw	sp,#4
 798  0051               L432:
 799                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 800  0051 1e0a          	ldw	x,(OFST+9,sp)
 801  0053 2707          	jreq	L042
 802  0055 1e0a          	ldw	x,(OFST+9,sp)
 803  0057 a30022        	cpw	x,#34
 804  005a 2603          	jrne	L632
 805  005c               L042:
 806  005c 4f            	clr	a
 807  005d 2010          	jra	L242
 808  005f               L632:
 809  005f ae015b        	ldw	x,#347
 810  0062 89            	pushw	x
 811  0063 ae0000        	ldw	x,#0
 812  0066 89            	pushw	x
 813  0067 ae0000        	ldw	x,#L31
 814  006a cd0000        	call	_assert_failed
 816  006d 5b04          	addw	sp,#4
 817  006f               L242:
 818                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 819  006f 1e0c          	ldw	x,(OFST+11,sp)
 820  0071 a30055        	cpw	x,#85
 821  0074 2704          	jreq	L642
 822  0076 1e0c          	ldw	x,(OFST+11,sp)
 823  0078 2603          	jrne	L442
 824  007a               L642:
 825  007a 4f            	clr	a
 826  007b 2010          	jra	L052
 827  007d               L442:
 828  007d ae015c        	ldw	x,#348
 829  0080 89            	pushw	x
 830  0081 ae0000        	ldw	x,#0
 831  0084 89            	pushw	x
 832  0085 ae0000        	ldw	x,#L31
 833  0088 cd0000        	call	_assert_failed
 835  008b 5b04          	addw	sp,#4
 836  008d               L052:
 837                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
 838  008d c6525d        	ld	a,21085
 839  0090 a4cf          	and	a,#207
 840  0092 c7525d        	ld	21085,a
 841                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
 841                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
 842  0095 7b0b          	ld	a,(OFST+10,sp)
 843  0097 a420          	and	a,#32
 844  0099 6b01          	ld	(OFST+0,sp),a
 845  009b 7b07          	ld	a,(OFST+6,sp)
 846  009d a410          	and	a,#16
 847  009f 1a01          	or	a,(OFST+0,sp)
 848  00a1 ca525d        	or	a,21085
 849  00a4 c7525d        	ld	21085,a
 850                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 850                     ; 358                           TIM1_OCMode);
 851  00a7 c6525b        	ld	a,21083
 852  00aa a48f          	and	a,#143
 853  00ac 1a03          	or	a,(OFST+2,sp)
 854  00ae c7525b        	ld	21083,a
 855                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
 856  00b1 1e0c          	ldw	x,(OFST+11,sp)
 857  00b3 270a          	jreq	L51
 858                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
 859  00b5 c6526f        	ld	a,21103
 860  00b8 aadf          	or	a,#223
 861  00ba c7526f        	ld	21103,a
 863  00bd 2004          	jra	L71
 864  00bf               L51:
 865                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
 866  00bf 721d526f      	bres	21103,#6
 867  00c3               L71:
 868                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
 869  00c3 7b08          	ld	a,(OFST+7,sp)
 870  00c5 c7526b        	ld	21099,a
 871                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
 872  00c8 7b09          	ld	a,(OFST+8,sp)
 873  00ca c7526c        	ld	21100,a
 874                     ; 373 }
 875  00cd 5b03          	addw	sp,#3
 876  00cf 81            	ret
 878                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
 878                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
 878                     ; 390                      uint8_t TIM1_DeadTime,
 878                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
 878                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
 878                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
 878                     ; 394 {
 879                     .text:	section	.text,new
 880  0000               _TIM1_BDTRConfig:
 881  0000 89            	pushw	x
 882  0001 88            	push	a
 883       00000001      OFST:	set	1
 885                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
 886  0002 a30004        	cpw	x,#4
 887  0005 2705          	jreq	L652
 888  0007 a30000        	cpw	x,#0
 889  000a 2603          	jrne	L452
 890  000c               L652:
 891  000c 4f            	clr	a
 892  000d 2010          	jra	L062
 893  000f               L452:
 894  000f ae018c        	ldw	x,#396
 895  0012 89            	pushw	x
 896  0013 ae0000        	ldw	x,#0
 897  0016 89            	pushw	x
 898  0017 ae0000        	ldw	x,#L31
 899  001a cd0000        	call	_assert_failed
 901  001d 5b04          	addw	sp,#4
 902  001f               L062:
 903                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
 904  001f 1e06          	ldw	x,(OFST+5,sp)
 905  0021 2715          	jreq	L462
 906  0023 1e06          	ldw	x,(OFST+5,sp)
 907  0025 a30001        	cpw	x,#1
 908  0028 270e          	jreq	L462
 909  002a 1e06          	ldw	x,(OFST+5,sp)
 910  002c a30002        	cpw	x,#2
 911  002f 2707          	jreq	L462
 912  0031 1e06          	ldw	x,(OFST+5,sp)
 913  0033 a30003        	cpw	x,#3
 914  0036 2603          	jrne	L262
 915  0038               L462:
 916  0038 4f            	clr	a
 917  0039 2010          	jra	L662
 918  003b               L262:
 919  003b ae018d        	ldw	x,#397
 920  003e 89            	pushw	x
 921  003f ae0000        	ldw	x,#0
 922  0042 89            	pushw	x
 923  0043 ae0000        	ldw	x,#L31
 924  0046 cd0000        	call	_assert_failed
 926  0049 5b04          	addw	sp,#4
 927  004b               L662:
 928                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
 929  004b 1e09          	ldw	x,(OFST+8,sp)
 930  004d a30010        	cpw	x,#16
 931  0050 2704          	jreq	L272
 932  0052 1e09          	ldw	x,(OFST+8,sp)
 933  0054 2603          	jrne	L072
 934  0056               L272:
 935  0056 4f            	clr	a
 936  0057 2010          	jra	L472
 937  0059               L072:
 938  0059 ae018e        	ldw	x,#398
 939  005c 89            	pushw	x
 940  005d ae0000        	ldw	x,#0
 941  0060 89            	pushw	x
 942  0061 ae0000        	ldw	x,#L31
 943  0064 cd0000        	call	_assert_failed
 945  0067 5b04          	addw	sp,#4
 946  0069               L472:
 947                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
 948  0069 1e0b          	ldw	x,(OFST+10,sp)
 949  006b 2707          	jreq	L003
 950  006d 1e0b          	ldw	x,(OFST+10,sp)
 951  006f a30020        	cpw	x,#32
 952  0072 2603          	jrne	L672
 953  0074               L003:
 954  0074 4f            	clr	a
 955  0075 2010          	jra	L203
 956  0077               L672:
 957  0077 ae018f        	ldw	x,#399
 958  007a 89            	pushw	x
 959  007b ae0000        	ldw	x,#0
 960  007e 89            	pushw	x
 961  007f ae0000        	ldw	x,#L31
 962  0082 cd0000        	call	_assert_failed
 964  0085 5b04          	addw	sp,#4
 965  0087               L203:
 966                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
 967  0087 1e0d          	ldw	x,(OFST+12,sp)
 968  0089 a30040        	cpw	x,#64
 969  008c 2704          	jreq	L603
 970  008e 1e0d          	ldw	x,(OFST+12,sp)
 971  0090 2603          	jrne	L403
 972  0092               L603:
 973  0092 4f            	clr	a
 974  0093 2010          	jra	L013
 975  0095               L403:
 976  0095 ae0190        	ldw	x,#400
 977  0098 89            	pushw	x
 978  0099 ae0000        	ldw	x,#0
 979  009c 89            	pushw	x
 980  009d ae0000        	ldw	x,#L31
 981  00a0 cd0000        	call	_assert_failed
 983  00a3 5b04          	addw	sp,#4
 984  00a5               L013:
 985                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
 986  00a5 7b08          	ld	a,(OFST+7,sp)
 987  00a7 c7526e        	ld	21102,a
 988                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
 988                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
 988                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
 989  00aa 7b0c          	ld	a,(OFST+11,sp)
 990  00ac 1a0a          	or	a,(OFST+9,sp)
 991  00ae 1a0e          	or	a,(OFST+13,sp)
 992  00b0 6b01          	ld	(OFST+0,sp),a
 993  00b2 7b07          	ld	a,(OFST+6,sp)
 994  00b4 1a03          	or	a,(OFST+2,sp)
 995  00b6 1a01          	or	a,(OFST+0,sp)
 996  00b8 c7526d        	ld	21101,a
 997                     ; 409 }
 998  00bb 5b03          	addw	sp,#3
 999  00bd 81            	ret
1001                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1001                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1001                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1001                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1001                     ; 427                  uint8_t TIM1_ICFilter)
1001                     ; 428 {
1002                     .text:	section	.text,new
1003  0000               _TIM1_ICInit:
1004  0000 89            	pushw	x
1005       00000000      OFST:	set	0
1007                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1008  0001 a30000        	cpw	x,#0
1009  0004 270f          	jreq	L613
1010  0006 a30001        	cpw	x,#1
1011  0009 270a          	jreq	L613
1012  000b a30002        	cpw	x,#2
1013  000e 2705          	jreq	L613
1014  0010 a30003        	cpw	x,#3
1015  0013 2603          	jrne	L413
1016  0015               L613:
1017  0015 4f            	clr	a
1018  0016 2010          	jra	L023
1019  0018               L413:
1020  0018 ae01ae        	ldw	x,#430
1021  001b 89            	pushw	x
1022  001c ae0000        	ldw	x,#0
1023  001f 89            	pushw	x
1024  0020 ae0000        	ldw	x,#L31
1025  0023 cd0000        	call	_assert_failed
1027  0026 5b04          	addw	sp,#4
1028  0028               L023:
1029                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1030  0028 1e05          	ldw	x,(OFST+5,sp)
1031  002a 2707          	jreq	L423
1032  002c 1e05          	ldw	x,(OFST+5,sp)
1033  002e a30001        	cpw	x,#1
1034  0031 2603          	jrne	L223
1035  0033               L423:
1036  0033 4f            	clr	a
1037  0034 2010          	jra	L623
1038  0036               L223:
1039  0036 ae01af        	ldw	x,#431
1040  0039 89            	pushw	x
1041  003a ae0000        	ldw	x,#0
1042  003d 89            	pushw	x
1043  003e ae0000        	ldw	x,#L31
1044  0041 cd0000        	call	_assert_failed
1046  0044 5b04          	addw	sp,#4
1047  0046               L623:
1048                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1049  0046 1e07          	ldw	x,(OFST+7,sp)
1050  0048 a30001        	cpw	x,#1
1051  004b 270e          	jreq	L233
1052  004d 1e07          	ldw	x,(OFST+7,sp)
1053  004f a30002        	cpw	x,#2
1054  0052 2707          	jreq	L233
1055  0054 1e07          	ldw	x,(OFST+7,sp)
1056  0056 a30003        	cpw	x,#3
1057  0059 2603          	jrne	L033
1058  005b               L233:
1059  005b 4f            	clr	a
1060  005c 2010          	jra	L433
1061  005e               L033:
1062  005e ae01b0        	ldw	x,#432
1063  0061 89            	pushw	x
1064  0062 ae0000        	ldw	x,#0
1065  0065 89            	pushw	x
1066  0066 ae0000        	ldw	x,#L31
1067  0069 cd0000        	call	_assert_failed
1069  006c 5b04          	addw	sp,#4
1070  006e               L433:
1071                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1072  006e 1e09          	ldw	x,(OFST+9,sp)
1073  0070 2715          	jreq	L043
1074  0072 1e09          	ldw	x,(OFST+9,sp)
1075  0074 a30004        	cpw	x,#4
1076  0077 270e          	jreq	L043
1077  0079 1e09          	ldw	x,(OFST+9,sp)
1078  007b a30008        	cpw	x,#8
1079  007e 2707          	jreq	L043
1080  0080 1e09          	ldw	x,(OFST+9,sp)
1081  0082 a3000c        	cpw	x,#12
1082  0085 2603          	jrne	L633
1083  0087               L043:
1084  0087 4f            	clr	a
1085  0088 2010          	jra	L243
1086  008a               L633:
1087  008a ae01b1        	ldw	x,#433
1088  008d 89            	pushw	x
1089  008e ae0000        	ldw	x,#0
1090  0091 89            	pushw	x
1091  0092 ae0000        	ldw	x,#L31
1092  0095 cd0000        	call	_assert_failed
1094  0098 5b04          	addw	sp,#4
1095  009a               L243:
1096                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1097  009a 7b0b          	ld	a,(OFST+11,sp)
1098  009c a110          	cp	a,#16
1099  009e 2403          	jruge	L443
1100  00a0 4f            	clr	a
1101  00a1 2010          	jra	L643
1102  00a3               L443:
1103  00a3 ae01b2        	ldw	x,#434
1104  00a6 89            	pushw	x
1105  00a7 ae0000        	ldw	x,#0
1106  00aa 89            	pushw	x
1107  00ab ae0000        	ldw	x,#L31
1108  00ae cd0000        	call	_assert_failed
1110  00b1 5b04          	addw	sp,#4
1111  00b3               L643:
1112                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
1113  00b3 1e01          	ldw	x,(OFST+1,sp)
1114  00b5 2614          	jrne	L12
1115                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
1115                     ; 440                (uint8_t)TIM1_ICSelection,
1115                     ; 441                (uint8_t)TIM1_ICFilter);
1116  00b7 7b0b          	ld	a,(OFST+11,sp)
1117  00b9 88            	push	a
1118  00ba 7b09          	ld	a,(OFST+9,sp)
1119  00bc 97            	ld	xl,a
1120  00bd 7b07          	ld	a,(OFST+7,sp)
1121  00bf 95            	ld	xh,a
1122  00c0 cd0000        	call	L3_TI1_Config
1124  00c3 84            	pop	a
1125                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1126  00c4 1e09          	ldw	x,(OFST+9,sp)
1127  00c6 cd0000        	call	_TIM1_SetIC1Prescaler
1130  00c9 2048          	jra	L32
1131  00cb               L12:
1132                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
1133  00cb 1e01          	ldw	x,(OFST+1,sp)
1134  00cd a30001        	cpw	x,#1
1135  00d0 2614          	jrne	L52
1136                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
1136                     ; 449                (uint8_t)TIM1_ICSelection,
1136                     ; 450                (uint8_t)TIM1_ICFilter);
1137  00d2 7b0b          	ld	a,(OFST+11,sp)
1138  00d4 88            	push	a
1139  00d5 7b09          	ld	a,(OFST+9,sp)
1140  00d7 97            	ld	xl,a
1141  00d8 7b07          	ld	a,(OFST+7,sp)
1142  00da 95            	ld	xh,a
1143  00db cd0000        	call	L5_TI2_Config
1145  00de 84            	pop	a
1146                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1147  00df 1e09          	ldw	x,(OFST+9,sp)
1148  00e1 cd0000        	call	_TIM1_SetIC2Prescaler
1151  00e4 202d          	jra	L32
1152  00e6               L52:
1153                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
1154  00e6 1e01          	ldw	x,(OFST+1,sp)
1155  00e8 a30002        	cpw	x,#2
1156  00eb 2614          	jrne	L13
1157                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
1157                     ; 458                (uint8_t)TIM1_ICSelection,
1157                     ; 459                (uint8_t)TIM1_ICFilter);
1158  00ed 7b0b          	ld	a,(OFST+11,sp)
1159  00ef 88            	push	a
1160  00f0 7b09          	ld	a,(OFST+9,sp)
1161  00f2 97            	ld	xl,a
1162  00f3 7b07          	ld	a,(OFST+7,sp)
1163  00f5 95            	ld	xh,a
1164  00f6 cd0000        	call	L7_TI3_Config
1166  00f9 84            	pop	a
1167                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1168  00fa 1e09          	ldw	x,(OFST+9,sp)
1169  00fc cd0000        	call	_TIM1_SetIC3Prescaler
1172  00ff 2012          	jra	L32
1173  0101               L13:
1174                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
1174                     ; 467                (uint8_t)TIM1_ICSelection,
1174                     ; 468                (uint8_t)TIM1_ICFilter);
1175  0101 7b0b          	ld	a,(OFST+11,sp)
1176  0103 88            	push	a
1177  0104 7b09          	ld	a,(OFST+9,sp)
1178  0106 97            	ld	xl,a
1179  0107 7b07          	ld	a,(OFST+7,sp)
1180  0109 95            	ld	xh,a
1181  010a cd0000        	call	L11_TI4_Config
1183  010d 84            	pop	a
1184                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1185  010e 1e09          	ldw	x,(OFST+9,sp)
1186  0110 cd0000        	call	_TIM1_SetIC4Prescaler
1188  0113               L32:
1189                     ; 472 }
1190  0113 85            	popw	x
1191  0114 81            	ret
1193                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1193                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1193                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1193                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1193                     ; 492                      uint8_t TIM1_ICFilter)
1193                     ; 493 {
1194                     .text:	section	.text,new
1195  0000               _TIM1_PWMIConfig:
1196  0000 89            	pushw	x
1197  0001 89            	pushw	x
1198       00000002      OFST:	set	2
1200                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1201                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1202                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1203  0002 a30000        	cpw	x,#0
1204  0005 2705          	jreq	L453
1205  0007 a30001        	cpw	x,#1
1206  000a 2603          	jrne	L253
1207  000c               L453:
1208  000c 4f            	clr	a
1209  000d 2010          	jra	L653
1210  000f               L253:
1211  000f ae01f2        	ldw	x,#498
1212  0012 89            	pushw	x
1213  0013 ae0000        	ldw	x,#0
1214  0016 89            	pushw	x
1215  0017 ae0000        	ldw	x,#L31
1216  001a cd0000        	call	_assert_failed
1218  001d 5b04          	addw	sp,#4
1219  001f               L653:
1220                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1221  001f 1e07          	ldw	x,(OFST+5,sp)
1222  0021 2707          	jreq	L263
1223  0023 1e07          	ldw	x,(OFST+5,sp)
1224  0025 a30001        	cpw	x,#1
1225  0028 2603          	jrne	L063
1226  002a               L263:
1227  002a 4f            	clr	a
1228  002b 2010          	jra	L463
1229  002d               L063:
1230  002d ae01f3        	ldw	x,#499
1231  0030 89            	pushw	x
1232  0031 ae0000        	ldw	x,#0
1233  0034 89            	pushw	x
1234  0035 ae0000        	ldw	x,#L31
1235  0038 cd0000        	call	_assert_failed
1237  003b 5b04          	addw	sp,#4
1238  003d               L463:
1239                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1240  003d 1e09          	ldw	x,(OFST+7,sp)
1241  003f a30001        	cpw	x,#1
1242  0042 270e          	jreq	L073
1243  0044 1e09          	ldw	x,(OFST+7,sp)
1244  0046 a30002        	cpw	x,#2
1245  0049 2707          	jreq	L073
1246  004b 1e09          	ldw	x,(OFST+7,sp)
1247  004d a30003        	cpw	x,#3
1248  0050 2603          	jrne	L663
1249  0052               L073:
1250  0052 4f            	clr	a
1251  0053 2010          	jra	L273
1252  0055               L663:
1253  0055 ae01f4        	ldw	x,#500
1254  0058 89            	pushw	x
1255  0059 ae0000        	ldw	x,#0
1256  005c 89            	pushw	x
1257  005d ae0000        	ldw	x,#L31
1258  0060 cd0000        	call	_assert_failed
1260  0063 5b04          	addw	sp,#4
1261  0065               L273:
1262                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1263  0065 1e0b          	ldw	x,(OFST+9,sp)
1264  0067 2715          	jreq	L673
1265  0069 1e0b          	ldw	x,(OFST+9,sp)
1266  006b a30004        	cpw	x,#4
1267  006e 270e          	jreq	L673
1268  0070 1e0b          	ldw	x,(OFST+9,sp)
1269  0072 a30008        	cpw	x,#8
1270  0075 2707          	jreq	L673
1271  0077 1e0b          	ldw	x,(OFST+9,sp)
1272  0079 a3000c        	cpw	x,#12
1273  007c 2603          	jrne	L473
1274  007e               L673:
1275  007e 4f            	clr	a
1276  007f 2010          	jra	L004
1277  0081               L473:
1278  0081 ae01f5        	ldw	x,#501
1279  0084 89            	pushw	x
1280  0085 ae0000        	ldw	x,#0
1281  0088 89            	pushw	x
1282  0089 ae0000        	ldw	x,#L31
1283  008c cd0000        	call	_assert_failed
1285  008f 5b04          	addw	sp,#4
1286  0091               L004:
1287                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1288  0091 1e07          	ldw	x,(OFST+5,sp)
1289  0093 a30001        	cpw	x,#1
1290  0096 2706          	jreq	L53
1291                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
1292  0098 a601          	ld	a,#1
1293  009a 6b01          	ld	(OFST-1,sp),a
1295  009c 2002          	jra	L73
1296  009e               L53:
1297                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
1298  009e 0f01          	clr	(OFST-1,sp)
1299  00a0               L73:
1300                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1301  00a0 1e09          	ldw	x,(OFST+7,sp)
1302  00a2 a30001        	cpw	x,#1
1303  00a5 2606          	jrne	L14
1304                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
1305  00a7 a602          	ld	a,#2
1306  00a9 6b02          	ld	(OFST+0,sp),a
1308  00ab 2004          	jra	L34
1309  00ad               L14:
1310                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
1311  00ad a601          	ld	a,#1
1312  00af 6b02          	ld	(OFST+0,sp),a
1313  00b1               L34:
1314                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
1315  00b1 1e03          	ldw	x,(OFST+1,sp)
1316  00b3 2626          	jrne	L54
1317                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1317                     ; 527                (uint8_t)TIM1_ICFilter);
1318  00b5 7b0d          	ld	a,(OFST+11,sp)
1319  00b7 88            	push	a
1320  00b8 7b0b          	ld	a,(OFST+9,sp)
1321  00ba 97            	ld	xl,a
1322  00bb 7b09          	ld	a,(OFST+7,sp)
1323  00bd 95            	ld	xh,a
1324  00be cd0000        	call	L3_TI1_Config
1326  00c1 84            	pop	a
1327                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1328  00c2 1e0b          	ldw	x,(OFST+9,sp)
1329  00c4 cd0000        	call	_TIM1_SetIC1Prescaler
1331                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1332  00c7 7b0d          	ld	a,(OFST+11,sp)
1333  00c9 88            	push	a
1334  00ca 7b03          	ld	a,(OFST+1,sp)
1335  00cc 97            	ld	xl,a
1336  00cd 7b02          	ld	a,(OFST+0,sp)
1337  00cf 95            	ld	xh,a
1338  00d0 cd0000        	call	L5_TI2_Config
1340  00d3 84            	pop	a
1341                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1342  00d4 1e0b          	ldw	x,(OFST+9,sp)
1343  00d6 cd0000        	call	_TIM1_SetIC2Prescaler
1346  00d9 2024          	jra	L74
1347  00db               L54:
1348                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1348                     ; 542                (uint8_t)TIM1_ICFilter);
1349  00db 7b0d          	ld	a,(OFST+11,sp)
1350  00dd 88            	push	a
1351  00de 7b0b          	ld	a,(OFST+9,sp)
1352  00e0 97            	ld	xl,a
1353  00e1 7b09          	ld	a,(OFST+7,sp)
1354  00e3 95            	ld	xh,a
1355  00e4 cd0000        	call	L5_TI2_Config
1357  00e7 84            	pop	a
1358                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1359  00e8 1e0b          	ldw	x,(OFST+9,sp)
1360  00ea cd0000        	call	_TIM1_SetIC2Prescaler
1362                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1363  00ed 7b0d          	ld	a,(OFST+11,sp)
1364  00ef 88            	push	a
1365  00f0 7b03          	ld	a,(OFST+1,sp)
1366  00f2 97            	ld	xl,a
1367  00f3 7b02          	ld	a,(OFST+0,sp)
1368  00f5 95            	ld	xh,a
1369  00f6 cd0000        	call	L3_TI1_Config
1371  00f9 84            	pop	a
1372                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1373  00fa 1e0b          	ldw	x,(OFST+9,sp)
1374  00fc cd0000        	call	_TIM1_SetIC1Prescaler
1376  00ff               L74:
1377                     ; 553 }
1378  00ff 5b04          	addw	sp,#4
1379  0101 81            	ret
1381                     ; 561 void TIM1_Cmd(FunctionalState NewState)
1381                     ; 562 {
1382                     .text:	section	.text,new
1383  0000               _TIM1_Cmd:
1384  0000 89            	pushw	x
1385       00000000      OFST:	set	0
1387                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1388  0001 a30000        	cpw	x,#0
1389  0004 2705          	jreq	L604
1390  0006 a30001        	cpw	x,#1
1391  0009 2603          	jrne	L404
1392  000b               L604:
1393  000b 4f            	clr	a
1394  000c 2010          	jra	L014
1395  000e               L404:
1396  000e ae0234        	ldw	x,#564
1397  0011 89            	pushw	x
1398  0012 ae0000        	ldw	x,#0
1399  0015 89            	pushw	x
1400  0016 ae0000        	ldw	x,#L31
1401  0019 cd0000        	call	_assert_failed
1403  001c 5b04          	addw	sp,#4
1404  001e               L014:
1405                     ; 567   if (NewState != DISABLE)
1406  001e 1e01          	ldw	x,(OFST+1,sp)
1407  0020 2706          	jreq	L15
1408                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
1409  0022 72105250      	bset	21072,#0
1411  0026 2004          	jra	L35
1412  0028               L15:
1413                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
1414  0028 72115250      	bres	21072,#0
1415  002c               L35:
1416                     ; 575 }
1417  002c 85            	popw	x
1418  002d 81            	ret
1420                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
1420                     ; 584 {
1421                     .text:	section	.text,new
1422  0000               _TIM1_CtrlPWMOutputs:
1423  0000 89            	pushw	x
1424       00000000      OFST:	set	0
1426                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1427  0001 a30000        	cpw	x,#0
1428  0004 2705          	jreq	L614
1429  0006 a30001        	cpw	x,#1
1430  0009 2603          	jrne	L414
1431  000b               L614:
1432  000b 4f            	clr	a
1433  000c 2010          	jra	L024
1434  000e               L414:
1435  000e ae024a        	ldw	x,#586
1436  0011 89            	pushw	x
1437  0012 ae0000        	ldw	x,#0
1438  0015 89            	pushw	x
1439  0016 ae0000        	ldw	x,#L31
1440  0019 cd0000        	call	_assert_failed
1442  001c 5b04          	addw	sp,#4
1443  001e               L024:
1444                     ; 590   if (NewState != DISABLE)
1445  001e 1e01          	ldw	x,(OFST+1,sp)
1446  0020 2706          	jreq	L55
1447                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
1448  0022 721e526d      	bset	21101,#7
1450  0026 2004          	jra	L75
1451  0028               L55:
1452                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
1453  0028 721f526d      	bres	21101,#7
1454  002c               L75:
1455                     ; 598 }
1456  002c 85            	popw	x
1457  002d 81            	ret
1459                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
1459                     ; 618 {
1460                     .text:	section	.text,new
1461  0000               _TIM1_ITConfig:
1462  0000 89            	pushw	x
1463       00000000      OFST:	set	0
1465                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
1466  0001 a30000        	cpw	x,#0
1467  0004 2703          	jreq	L424
1468  0006 4f            	clr	a
1469  0007 2010          	jra	L624
1470  0009               L424:
1471  0009 ae026c        	ldw	x,#620
1472  000c 89            	pushw	x
1473  000d ae0000        	ldw	x,#0
1474  0010 89            	pushw	x
1475  0011 ae0000        	ldw	x,#L31
1476  0014 cd0000        	call	_assert_failed
1478  0017 5b04          	addw	sp,#4
1479  0019               L624:
1480                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1481  0019 1e05          	ldw	x,(OFST+5,sp)
1482  001b 2707          	jreq	L234
1483  001d 1e05          	ldw	x,(OFST+5,sp)
1484  001f a30001        	cpw	x,#1
1485  0022 2603          	jrne	L034
1486  0024               L234:
1487  0024 4f            	clr	a
1488  0025 2010          	jra	L434
1489  0027               L034:
1490  0027 ae026d        	ldw	x,#621
1491  002a 89            	pushw	x
1492  002b ae0000        	ldw	x,#0
1493  002e 89            	pushw	x
1494  002f ae0000        	ldw	x,#L31
1495  0032 cd0000        	call	_assert_failed
1497  0035 5b04          	addw	sp,#4
1498  0037               L434:
1499                     ; 623   if (NewState != DISABLE)
1500  0037 1e05          	ldw	x,(OFST+5,sp)
1501  0039 270a          	jreq	L16
1502                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
1503  003b c65254        	ld	a,21076
1504  003e 1a02          	or	a,(OFST+2,sp)
1505  0040 c75254        	ld	21076,a
1507  0043 2009          	jra	L36
1508  0045               L16:
1509                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
1510  0045 7b02          	ld	a,(OFST+2,sp)
1511  0047 43            	cpl	a
1512  0048 c45254        	and	a,21076
1513  004b c75254        	ld	21076,a
1514  004e               L36:
1515                     ; 633 }
1516  004e 85            	popw	x
1517  004f 81            	ret
1519                     ; 640 void TIM1_InternalClockConfig(void)
1519                     ; 641 {
1520                     .text:	section	.text,new
1521  0000               _TIM1_InternalClockConfig:
1523                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
1524  0000 c65252        	ld	a,21074
1525  0003 a4f8          	and	a,#248
1526  0005 c75252        	ld	21074,a
1527                     ; 644 }
1528  0008 81            	ret
1530                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
1530                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
1530                     ; 664                               uint8_t ExtTRGFilter)
1530                     ; 665 {
1531                     .text:	section	.text,new
1532  0000               _TIM1_ETRClockMode1Config:
1533  0000 89            	pushw	x
1534       00000000      OFST:	set	0
1536                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
1537  0001 a30000        	cpw	x,#0
1538  0004 270f          	jreq	L444
1539  0006 a30010        	cpw	x,#16
1540  0009 270a          	jreq	L444
1541  000b a30020        	cpw	x,#32
1542  000e 2705          	jreq	L444
1543  0010 a30030        	cpw	x,#48
1544  0013 2603          	jrne	L244
1545  0015               L444:
1546  0015 4f            	clr	a
1547  0016 2010          	jra	L644
1548  0018               L244:
1549  0018 ae029b        	ldw	x,#667
1550  001b 89            	pushw	x
1551  001c ae0000        	ldw	x,#0
1552  001f 89            	pushw	x
1553  0020 ae0000        	ldw	x,#L31
1554  0023 cd0000        	call	_assert_failed
1556  0026 5b04          	addw	sp,#4
1557  0028               L644:
1558                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
1559  0028 1e05          	ldw	x,(OFST+5,sp)
1560  002a a30080        	cpw	x,#128
1561  002d 2704          	jreq	L254
1562  002f 1e05          	ldw	x,(OFST+5,sp)
1563  0031 2603          	jrne	L054
1564  0033               L254:
1565  0033 4f            	clr	a
1566  0034 2010          	jra	L454
1567  0036               L054:
1568  0036 ae029c        	ldw	x,#668
1569  0039 89            	pushw	x
1570  003a ae0000        	ldw	x,#0
1571  003d 89            	pushw	x
1572  003e ae0000        	ldw	x,#L31
1573  0041 cd0000        	call	_assert_failed
1575  0044 5b04          	addw	sp,#4
1576  0046               L454:
1577                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
1578  0046 7b07          	ld	a,(OFST+7,sp)
1579  0048 88            	push	a
1580  0049 1e06          	ldw	x,(OFST+6,sp)
1581  004b 89            	pushw	x
1582  004c 1e04          	ldw	x,(OFST+4,sp)
1583  004e cd0000        	call	_TIM1_ETRConfig
1585  0051 5b03          	addw	sp,#3
1586                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
1586                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
1587  0053 c65252        	ld	a,21074
1588  0056 a488          	and	a,#136
1589  0058 aa77          	or	a,#119
1590  005a c75252        	ld	21074,a
1591                     ; 676 }
1592  005d 85            	popw	x
1593  005e 81            	ret
1595                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
1595                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
1595                     ; 696                               uint8_t ExtTRGFilter)
1595                     ; 697 {
1596                     .text:	section	.text,new
1597  0000               _TIM1_ETRClockMode2Config:
1598  0000 89            	pushw	x
1599       00000000      OFST:	set	0
1601                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
1602  0001 a30000        	cpw	x,#0
1603  0004 270f          	jreq	L264
1604  0006 a30010        	cpw	x,#16
1605  0009 270a          	jreq	L264
1606  000b a30020        	cpw	x,#32
1607  000e 2705          	jreq	L264
1608  0010 a30030        	cpw	x,#48
1609  0013 2603          	jrne	L064
1610  0015               L264:
1611  0015 4f            	clr	a
1612  0016 2010          	jra	L464
1613  0018               L064:
1614  0018 ae02bb        	ldw	x,#699
1615  001b 89            	pushw	x
1616  001c ae0000        	ldw	x,#0
1617  001f 89            	pushw	x
1618  0020 ae0000        	ldw	x,#L31
1619  0023 cd0000        	call	_assert_failed
1621  0026 5b04          	addw	sp,#4
1622  0028               L464:
1623                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
1624  0028 1e05          	ldw	x,(OFST+5,sp)
1625  002a a30080        	cpw	x,#128
1626  002d 2704          	jreq	L074
1627  002f 1e05          	ldw	x,(OFST+5,sp)
1628  0031 2603          	jrne	L664
1629  0033               L074:
1630  0033 4f            	clr	a
1631  0034 2010          	jra	L274
1632  0036               L664:
1633  0036 ae02bc        	ldw	x,#700
1634  0039 89            	pushw	x
1635  003a ae0000        	ldw	x,#0
1636  003d 89            	pushw	x
1637  003e ae0000        	ldw	x,#L31
1638  0041 cd0000        	call	_assert_failed
1640  0044 5b04          	addw	sp,#4
1641  0046               L274:
1642                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
1643  0046 7b07          	ld	a,(OFST+7,sp)
1644  0048 88            	push	a
1645  0049 1e06          	ldw	x,(OFST+6,sp)
1646  004b 89            	pushw	x
1647  004c 1e04          	ldw	x,(OFST+4,sp)
1648  004e cd0000        	call	_TIM1_ETRConfig
1650  0051 5b03          	addw	sp,#3
1651                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
1652  0053 721c5253      	bset	21075,#6
1653                     ; 707 }
1654  0057 85            	popw	x
1655  0058 81            	ret
1657                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
1657                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
1657                     ; 727                     uint8_t ExtTRGFilter)
1657                     ; 728 {
1658                     .text:	section	.text,new
1659  0000               _TIM1_ETRConfig:
1660  0000 89            	pushw	x
1661       00000000      OFST:	set	0
1663                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
1664  0001 7b07          	ld	a,(OFST+7,sp)
1665  0003 a110          	cp	a,#16
1666  0005 2403          	jruge	L674
1667  0007 4f            	clr	a
1668  0008 2010          	jra	L005
1669  000a               L674:
1670  000a ae02da        	ldw	x,#730
1671  000d 89            	pushw	x
1672  000e ae0000        	ldw	x,#0
1673  0011 89            	pushw	x
1674  0012 ae0000        	ldw	x,#L31
1675  0015 cd0000        	call	_assert_failed
1677  0018 5b04          	addw	sp,#4
1678  001a               L005:
1679                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
1679                     ; 733                          (uint8_t)ExtTRGFilter );
1680  001a 7b06          	ld	a,(OFST+6,sp)
1681  001c 1a02          	or	a,(OFST+2,sp)
1682  001e 1a07          	or	a,(OFST+7,sp)
1683  0020 ca5253        	or	a,21075
1684  0023 c75253        	ld	21075,a
1685                     ; 734 }
1686  0026 85            	popw	x
1687  0027 81            	ret
1689                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
1689                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1689                     ; 753                                  uint8_t ICFilter)
1689                     ; 754 {
1690                     .text:	section	.text,new
1691  0000               _TIM1_TIxExternalClockConfig:
1692  0000 89            	pushw	x
1693       00000000      OFST:	set	0
1695                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
1696  0001 a30040        	cpw	x,#64
1697  0004 270a          	jreq	L605
1698  0006 a30060        	cpw	x,#96
1699  0009 2705          	jreq	L605
1700  000b a30050        	cpw	x,#80
1701  000e 2603          	jrne	L405
1702  0010               L605:
1703  0010 4f            	clr	a
1704  0011 2010          	jra	L015
1705  0013               L405:
1706  0013 ae02f4        	ldw	x,#756
1707  0016 89            	pushw	x
1708  0017 ae0000        	ldw	x,#0
1709  001a 89            	pushw	x
1710  001b ae0000        	ldw	x,#L31
1711  001e cd0000        	call	_assert_failed
1713  0021 5b04          	addw	sp,#4
1714  0023               L015:
1715                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1716  0023 1e05          	ldw	x,(OFST+5,sp)
1717  0025 2707          	jreq	L415
1718  0027 1e05          	ldw	x,(OFST+5,sp)
1719  0029 a30001        	cpw	x,#1
1720  002c 2603          	jrne	L215
1721  002e               L415:
1722  002e 4f            	clr	a
1723  002f 2010          	jra	L615
1724  0031               L215:
1725  0031 ae02f5        	ldw	x,#757
1726  0034 89            	pushw	x
1727  0035 ae0000        	ldw	x,#0
1728  0038 89            	pushw	x
1729  0039 ae0000        	ldw	x,#L31
1730  003c cd0000        	call	_assert_failed
1732  003f 5b04          	addw	sp,#4
1733  0041               L615:
1734                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
1735  0041 7b07          	ld	a,(OFST+7,sp)
1736  0043 a110          	cp	a,#16
1737  0045 2403          	jruge	L025
1738  0047 4f            	clr	a
1739  0048 2010          	jra	L225
1740  004a               L025:
1741  004a ae02f6        	ldw	x,#758
1742  004d 89            	pushw	x
1743  004e ae0000        	ldw	x,#0
1744  0051 89            	pushw	x
1745  0052 ae0000        	ldw	x,#L31
1746  0055 cd0000        	call	_assert_failed
1748  0058 5b04          	addw	sp,#4
1749  005a               L225:
1750                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
1751  005a 1e01          	ldw	x,(OFST+1,sp)
1752  005c a30060        	cpw	x,#96
1753  005f 260f          	jrne	L56
1754                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
1755  0061 7b07          	ld	a,(OFST+7,sp)
1756  0063 88            	push	a
1757  0064 ae0001        	ldw	x,#1
1758  0067 7b07          	ld	a,(OFST+7,sp)
1759  0069 95            	ld	xh,a
1760  006a cd0000        	call	L5_TI2_Config
1762  006d 84            	pop	a
1764  006e 200d          	jra	L76
1765  0070               L56:
1766                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
1767  0070 7b07          	ld	a,(OFST+7,sp)
1768  0072 88            	push	a
1769  0073 ae0001        	ldw	x,#1
1770  0076 7b07          	ld	a,(OFST+7,sp)
1771  0078 95            	ld	xh,a
1772  0079 cd0000        	call	L3_TI1_Config
1774  007c 84            	pop	a
1775  007d               L76:
1776                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
1777  007d 1e01          	ldw	x,(OFST+1,sp)
1778  007f cd0000        	call	_TIM1_SelectInputTrigger
1780                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
1781  0082 c65252        	ld	a,21074
1782  0085 aa07          	or	a,#7
1783  0087 c75252        	ld	21074,a
1784                     ; 775 }
1785  008a 85            	popw	x
1786  008b 81            	ret
1788                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
1788                     ; 788 {
1789                     .text:	section	.text,new
1790  0000               _TIM1_SelectInputTrigger:
1791  0000 89            	pushw	x
1792       00000000      OFST:	set	0
1794                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
1795  0001 a30040        	cpw	x,#64
1796  0004 2719          	jreq	L035
1797  0006 a30050        	cpw	x,#80
1798  0009 2714          	jreq	L035
1799  000b a30060        	cpw	x,#96
1800  000e 270f          	jreq	L035
1801  0010 a30070        	cpw	x,#112
1802  0013 270a          	jreq	L035
1803  0015 a30030        	cpw	x,#48
1804  0018 2705          	jreq	L035
1805  001a a30000        	cpw	x,#0
1806  001d 2603          	jrne	L625
1807  001f               L035:
1808  001f 4f            	clr	a
1809  0020 2010          	jra	L235
1810  0022               L625:
1811  0022 ae0316        	ldw	x,#790
1812  0025 89            	pushw	x
1813  0026 ae0000        	ldw	x,#0
1814  0029 89            	pushw	x
1815  002a ae0000        	ldw	x,#L31
1816  002d cd0000        	call	_assert_failed
1818  0030 5b04          	addw	sp,#4
1819  0032               L235:
1820                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
1821  0032 c65252        	ld	a,21074
1822  0035 a48f          	and	a,#143
1823  0037 1a02          	or	a,(OFST+2,sp)
1824  0039 c75252        	ld	21074,a
1825                     ; 794 }
1826  003c 85            	popw	x
1827  003d 81            	ret
1829                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
1829                     ; 804 {
1830                     .text:	section	.text,new
1831  0000               _TIM1_UpdateDisableConfig:
1832  0000 89            	pushw	x
1833       00000000      OFST:	set	0
1835                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1836  0001 a30000        	cpw	x,#0
1837  0004 2705          	jreq	L045
1838  0006 a30001        	cpw	x,#1
1839  0009 2603          	jrne	L635
1840  000b               L045:
1841  000b 4f            	clr	a
1842  000c 2010          	jra	L245
1843  000e               L635:
1844  000e ae0326        	ldw	x,#806
1845  0011 89            	pushw	x
1846  0012 ae0000        	ldw	x,#0
1847  0015 89            	pushw	x
1848  0016 ae0000        	ldw	x,#L31
1849  0019 cd0000        	call	_assert_failed
1851  001c 5b04          	addw	sp,#4
1852  001e               L245:
1853                     ; 809   if (NewState != DISABLE)
1854  001e 1e01          	ldw	x,(OFST+1,sp)
1855  0020 2706          	jreq	L17
1856                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
1857  0022 72125250      	bset	21072,#1
1859  0026 2004          	jra	L37
1860  0028               L17:
1861                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
1862  0028 72135250      	bres	21072,#1
1863  002c               L37:
1864                     ; 817 }
1865  002c 85            	popw	x
1866  002d 81            	ret
1868                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
1868                     ; 828 {
1869                     .text:	section	.text,new
1870  0000               _TIM1_UpdateRequestConfig:
1871  0000 89            	pushw	x
1872       00000000      OFST:	set	0
1874                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
1875  0001 a30000        	cpw	x,#0
1876  0004 2705          	jreq	L055
1877  0006 a30001        	cpw	x,#1
1878  0009 2603          	jrne	L645
1879  000b               L055:
1880  000b 4f            	clr	a
1881  000c 2010          	jra	L255
1882  000e               L645:
1883  000e ae033e        	ldw	x,#830
1884  0011 89            	pushw	x
1885  0012 ae0000        	ldw	x,#0
1886  0015 89            	pushw	x
1887  0016 ae0000        	ldw	x,#L31
1888  0019 cd0000        	call	_assert_failed
1890  001c 5b04          	addw	sp,#4
1891  001e               L255:
1892                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
1893  001e 1e01          	ldw	x,(OFST+1,sp)
1894  0020 2706          	jreq	L57
1895                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
1896  0022 72145250      	bset	21072,#2
1898  0026 2004          	jra	L77
1899  0028               L57:
1900                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
1901  0028 72155250      	bres	21072,#2
1902  002c               L77:
1903                     ; 841 }
1904  002c 85            	popw	x
1905  002d 81            	ret
1907                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
1907                     ; 850 {
1908                     .text:	section	.text,new
1909  0000               _TIM1_SelectHallSensor:
1910  0000 89            	pushw	x
1911       00000000      OFST:	set	0
1913                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1914  0001 a30000        	cpw	x,#0
1915  0004 2705          	jreq	L065
1916  0006 a30001        	cpw	x,#1
1917  0009 2603          	jrne	L655
1918  000b               L065:
1919  000b 4f            	clr	a
1920  000c 2010          	jra	L265
1921  000e               L655:
1922  000e ae0354        	ldw	x,#852
1923  0011 89            	pushw	x
1924  0012 ae0000        	ldw	x,#0
1925  0015 89            	pushw	x
1926  0016 ae0000        	ldw	x,#L31
1927  0019 cd0000        	call	_assert_failed
1929  001c 5b04          	addw	sp,#4
1930  001e               L265:
1931                     ; 855   if (NewState != DISABLE)
1932  001e 1e01          	ldw	x,(OFST+1,sp)
1933  0020 2706          	jreq	L101
1934                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
1935  0022 721e5251      	bset	21073,#7
1937  0026 2004          	jra	L301
1938  0028               L101:
1939                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
1940  0028 721f5251      	bres	21073,#7
1941  002c               L301:
1942                     ; 863 }
1943  002c 85            	popw	x
1944  002d 81            	ret
1946                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
1946                     ; 874 {
1947                     .text:	section	.text,new
1948  0000               _TIM1_SelectOnePulseMode:
1949  0000 89            	pushw	x
1950       00000000      OFST:	set	0
1952                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
1953  0001 a30001        	cpw	x,#1
1954  0004 2705          	jreq	L075
1955  0006 a30000        	cpw	x,#0
1956  0009 2603          	jrne	L665
1957  000b               L075:
1958  000b 4f            	clr	a
1959  000c 2010          	jra	L275
1960  000e               L665:
1961  000e ae036c        	ldw	x,#876
1962  0011 89            	pushw	x
1963  0012 ae0000        	ldw	x,#0
1964  0015 89            	pushw	x
1965  0016 ae0000        	ldw	x,#L31
1966  0019 cd0000        	call	_assert_failed
1968  001c 5b04          	addw	sp,#4
1969  001e               L275:
1970                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
1971  001e 1e01          	ldw	x,(OFST+1,sp)
1972  0020 2706          	jreq	L501
1973                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
1974  0022 72165250      	bset	21072,#3
1976  0026 2004          	jra	L701
1977  0028               L501:
1978                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
1979  0028 72175250      	bres	21072,#3
1980  002c               L701:
1981                     ; 888 }
1982  002c 85            	popw	x
1983  002d 81            	ret
1985                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
1985                     ; 904 {
1986                     .text:	section	.text,new
1987  0000               _TIM1_SelectOutputTrigger:
1988  0000 89            	pushw	x
1989       00000000      OFST:	set	0
1991                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
1992  0001 a30000        	cpw	x,#0
1993  0004 271e          	jreq	L006
1994  0006 a30010        	cpw	x,#16
1995  0009 2719          	jreq	L006
1996  000b a30020        	cpw	x,#32
1997  000e 2714          	jreq	L006
1998  0010 a30030        	cpw	x,#48
1999  0013 270f          	jreq	L006
2000  0015 a30040        	cpw	x,#64
2001  0018 270a          	jreq	L006
2002  001a a30050        	cpw	x,#80
2003  001d 2705          	jreq	L006
2004  001f a30060        	cpw	x,#96
2005  0022 2603          	jrne	L675
2006  0024               L006:
2007  0024 4f            	clr	a
2008  0025 2010          	jra	L206
2009  0027               L675:
2010  0027 ae038a        	ldw	x,#906
2011  002a 89            	pushw	x
2012  002b ae0000        	ldw	x,#0
2013  002e 89            	pushw	x
2014  002f ae0000        	ldw	x,#L31
2015  0032 cd0000        	call	_assert_failed
2017  0035 5b04          	addw	sp,#4
2018  0037               L206:
2019                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
2019                     ; 910                         (uint8_t) TIM1_TRGOSource);
2020  0037 c65251        	ld	a,21073
2021  003a a48f          	and	a,#143
2022  003c 1a02          	or	a,(OFST+2,sp)
2023  003e c75251        	ld	21073,a
2024                     ; 911 }
2025  0041 85            	popw	x
2026  0042 81            	ret
2028                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
2028                     ; 924 {
2029                     .text:	section	.text,new
2030  0000               _TIM1_SelectSlaveMode:
2031  0000 89            	pushw	x
2032       00000000      OFST:	set	0
2034                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
2035  0001 a30004        	cpw	x,#4
2036  0004 270f          	jreq	L016
2037  0006 a30005        	cpw	x,#5
2038  0009 270a          	jreq	L016
2039  000b a30006        	cpw	x,#6
2040  000e 2705          	jreq	L016
2041  0010 a30007        	cpw	x,#7
2042  0013 2603          	jrne	L606
2043  0015               L016:
2044  0015 4f            	clr	a
2045  0016 2010          	jra	L216
2046  0018               L606:
2047  0018 ae039e        	ldw	x,#926
2048  001b 89            	pushw	x
2049  001c ae0000        	ldw	x,#0
2050  001f 89            	pushw	x
2051  0020 ae0000        	ldw	x,#L31
2052  0023 cd0000        	call	_assert_failed
2054  0026 5b04          	addw	sp,#4
2055  0028               L216:
2056                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
2056                     ; 930                          (uint8_t)TIM1_SlaveMode);
2057  0028 c65252        	ld	a,21074
2058  002b a4f8          	and	a,#248
2059  002d 1a02          	or	a,(OFST+2,sp)
2060  002f c75252        	ld	21074,a
2061                     ; 931 }
2062  0032 85            	popw	x
2063  0033 81            	ret
2065                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
2065                     ; 940 {
2066                     .text:	section	.text,new
2067  0000               _TIM1_SelectMasterSlaveMode:
2068  0000 89            	pushw	x
2069       00000000      OFST:	set	0
2071                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2072  0001 a30000        	cpw	x,#0
2073  0004 2705          	jreq	L026
2074  0006 a30001        	cpw	x,#1
2075  0009 2603          	jrne	L616
2076  000b               L026:
2077  000b 4f            	clr	a
2078  000c 2010          	jra	L226
2079  000e               L616:
2080  000e ae03ae        	ldw	x,#942
2081  0011 89            	pushw	x
2082  0012 ae0000        	ldw	x,#0
2083  0015 89            	pushw	x
2084  0016 ae0000        	ldw	x,#L31
2085  0019 cd0000        	call	_assert_failed
2087  001c 5b04          	addw	sp,#4
2088  001e               L226:
2089                     ; 945   if (NewState != DISABLE)
2090  001e 1e01          	ldw	x,(OFST+1,sp)
2091  0020 2706          	jreq	L111
2092                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
2093  0022 721e5252      	bset	21074,#7
2095  0026 2004          	jra	L311
2096  0028               L111:
2097                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
2098  0028 721f5252      	bres	21074,#7
2099  002c               L311:
2100                     ; 953 }
2101  002c 85            	popw	x
2102  002d 81            	ret
2104                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
2104                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
2104                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
2104                     ; 978 {
2105                     .text:	section	.text,new
2106  0000               _TIM1_EncoderInterfaceConfig:
2107  0000 89            	pushw	x
2108       00000000      OFST:	set	0
2110                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
2111  0001 a30001        	cpw	x,#1
2112  0004 270a          	jreq	L036
2113  0006 a30002        	cpw	x,#2
2114  0009 2705          	jreq	L036
2115  000b a30003        	cpw	x,#3
2116  000e 2603          	jrne	L626
2117  0010               L036:
2118  0010 4f            	clr	a
2119  0011 2010          	jra	L236
2120  0013               L626:
2121  0013 ae03d4        	ldw	x,#980
2122  0016 89            	pushw	x
2123  0017 ae0000        	ldw	x,#0
2124  001a 89            	pushw	x
2125  001b ae0000        	ldw	x,#L31
2126  001e cd0000        	call	_assert_failed
2128  0021 5b04          	addw	sp,#4
2129  0023               L236:
2130                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
2131  0023 1e05          	ldw	x,(OFST+5,sp)
2132  0025 2707          	jreq	L636
2133  0027 1e05          	ldw	x,(OFST+5,sp)
2134  0029 a30001        	cpw	x,#1
2135  002c 2603          	jrne	L436
2136  002e               L636:
2137  002e 4f            	clr	a
2138  002f 2010          	jra	L046
2139  0031               L436:
2140  0031 ae03d5        	ldw	x,#981
2141  0034 89            	pushw	x
2142  0035 ae0000        	ldw	x,#0
2143  0038 89            	pushw	x
2144  0039 ae0000        	ldw	x,#L31
2145  003c cd0000        	call	_assert_failed
2147  003f 5b04          	addw	sp,#4
2148  0041               L046:
2149                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
2150  0041 1e07          	ldw	x,(OFST+7,sp)
2151  0043 2707          	jreq	L446
2152  0045 1e07          	ldw	x,(OFST+7,sp)
2153  0047 a30001        	cpw	x,#1
2154  004a 2603          	jrne	L246
2155  004c               L446:
2156  004c 4f            	clr	a
2157  004d 2010          	jra	L646
2158  004f               L246:
2159  004f ae03d6        	ldw	x,#982
2160  0052 89            	pushw	x
2161  0053 ae0000        	ldw	x,#0
2162  0056 89            	pushw	x
2163  0057 ae0000        	ldw	x,#L31
2164  005a cd0000        	call	_assert_failed
2166  005d 5b04          	addw	sp,#4
2167  005f               L646:
2168                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
2169  005f 1e05          	ldw	x,(OFST+5,sp)
2170  0061 2706          	jreq	L511
2171                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
2172  0063 7212525c      	bset	21084,#1
2174  0067 2004          	jra	L711
2175  0069               L511:
2176                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
2177  0069 7213525c      	bres	21084,#1
2178  006d               L711:
2179                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
2180  006d 1e07          	ldw	x,(OFST+7,sp)
2181  006f 2706          	jreq	L121
2182                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
2183  0071 721a525c      	bset	21084,#5
2185  0075 2004          	jra	L321
2186  0077               L121:
2187                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
2188  0077 721b525c      	bres	21084,#5
2189  007b               L321:
2190                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
2190                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
2191  007b c65252        	ld	a,21074
2192  007e a4f0          	and	a,#240
2193  0080 1a02          	or	a,(OFST+2,sp)
2194  0082 c75252        	ld	21074,a
2195                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
2195                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
2196  0085 c65258        	ld	a,21080
2197  0088 a4fc          	and	a,#252
2198  008a aa01          	or	a,#1
2199  008c c75258        	ld	21080,a
2200                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
2200                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
2201  008f c65259        	ld	a,21081
2202  0092 a4fc          	and	a,#252
2203  0094 aa01          	or	a,#1
2204  0096 c75259        	ld	21081,a
2205                     ; 1011 }
2206  0099 85            	popw	x
2207  009a 81            	ret
2209                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
2209                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
2209                     ; 1025 {
2210                     .text:	section	.text,new
2211  0000               _TIM1_PrescalerConfig:
2212  0000 89            	pushw	x
2213       00000000      OFST:	set	0
2215                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
2216  0001 1e05          	ldw	x,(OFST+5,sp)
2217  0003 2707          	jreq	L456
2218  0005 1e05          	ldw	x,(OFST+5,sp)
2219  0007 a30001        	cpw	x,#1
2220  000a 2603          	jrne	L256
2221  000c               L456:
2222  000c 4f            	clr	a
2223  000d 2010          	jra	L656
2224  000f               L256:
2225  000f ae0403        	ldw	x,#1027
2226  0012 89            	pushw	x
2227  0013 ae0000        	ldw	x,#0
2228  0016 89            	pushw	x
2229  0017 ae0000        	ldw	x,#L31
2230  001a cd0000        	call	_assert_failed
2232  001d 5b04          	addw	sp,#4
2233  001f               L656:
2234                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
2235  001f 7b01          	ld	a,(OFST+1,sp)
2236  0021 c75260        	ld	21088,a
2237                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
2238  0024 7b02          	ld	a,(OFST+2,sp)
2239  0026 c75261        	ld	21089,a
2240                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
2241  0029 7b06          	ld	a,(OFST+6,sp)
2242  002b c75257        	ld	21079,a
2243                     ; 1035 }
2244  002e 85            	popw	x
2245  002f 81            	ret
2247                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
2247                     ; 1049 {
2248                     .text:	section	.text,new
2249  0000               _TIM1_CounterModeConfig:
2250  0000 89            	pushw	x
2251       00000000      OFST:	set	0
2253                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
2254  0001 a30000        	cpw	x,#0
2255  0004 2714          	jreq	L466
2256  0006 a30010        	cpw	x,#16
2257  0009 270f          	jreq	L466
2258  000b a30020        	cpw	x,#32
2259  000e 270a          	jreq	L466
2260  0010 a30040        	cpw	x,#64
2261  0013 2705          	jreq	L466
2262  0015 a30060        	cpw	x,#96
2263  0018 2603          	jrne	L266
2264  001a               L466:
2265  001a 4f            	clr	a
2266  001b 2010          	jra	L666
2267  001d               L266:
2268  001d ae041b        	ldw	x,#1051
2269  0020 89            	pushw	x
2270  0021 ae0000        	ldw	x,#0
2271  0024 89            	pushw	x
2272  0025 ae0000        	ldw	x,#L31
2273  0028 cd0000        	call	_assert_failed
2275  002b 5b04          	addw	sp,#4
2276  002d               L666:
2277                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
2277                     ; 1056                         | (uint8_t)TIM1_CounterMode);
2278  002d c65250        	ld	a,21072
2279  0030 a48f          	and	a,#143
2280  0032 1a02          	or	a,(OFST+2,sp)
2281  0034 c75250        	ld	21072,a
2282                     ; 1057 }
2283  0037 85            	popw	x
2284  0038 81            	ret
2286                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
2286                     ; 1068 {
2287                     .text:	section	.text,new
2288  0000               _TIM1_ForcedOC1Config:
2289  0000 89            	pushw	x
2290       00000000      OFST:	set	0
2292                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
2293  0001 a30050        	cpw	x,#80
2294  0004 2705          	jreq	L476
2295  0006 a30040        	cpw	x,#64
2296  0009 2603          	jrne	L276
2297  000b               L476:
2298  000b 4f            	clr	a
2299  000c 2010          	jra	L676
2300  000e               L276:
2301  000e ae042e        	ldw	x,#1070
2302  0011 89            	pushw	x
2303  0012 ae0000        	ldw	x,#0
2304  0015 89            	pushw	x
2305  0016 ae0000        	ldw	x,#L31
2306  0019 cd0000        	call	_assert_failed
2308  001c 5b04          	addw	sp,#4
2309  001e               L676:
2310                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
2310                     ; 1074                            (uint8_t)TIM1_ForcedAction);
2311  001e c65258        	ld	a,21080
2312  0021 a48f          	and	a,#143
2313  0023 1a02          	or	a,(OFST+2,sp)
2314  0025 c75258        	ld	21080,a
2315                     ; 1075 }
2316  0028 85            	popw	x
2317  0029 81            	ret
2319                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
2319                     ; 1086 {
2320                     .text:	section	.text,new
2321  0000               _TIM1_ForcedOC2Config:
2322  0000 89            	pushw	x
2323       00000000      OFST:	set	0
2325                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
2326  0001 a30050        	cpw	x,#80
2327  0004 2705          	jreq	L407
2328  0006 a30040        	cpw	x,#64
2329  0009 2603          	jrne	L207
2330  000b               L407:
2331  000b 4f            	clr	a
2332  000c 2010          	jra	L607
2333  000e               L207:
2334  000e ae0440        	ldw	x,#1088
2335  0011 89            	pushw	x
2336  0012 ae0000        	ldw	x,#0
2337  0015 89            	pushw	x
2338  0016 ae0000        	ldw	x,#L31
2339  0019 cd0000        	call	_assert_failed
2341  001c 5b04          	addw	sp,#4
2342  001e               L607:
2343                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
2343                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
2344  001e c65259        	ld	a,21081
2345  0021 a48f          	and	a,#143
2346  0023 1a02          	or	a,(OFST+2,sp)
2347  0025 c75259        	ld	21081,a
2348                     ; 1093 }
2349  0028 85            	popw	x
2350  0029 81            	ret
2352                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
2352                     ; 1105 {
2353                     .text:	section	.text,new
2354  0000               _TIM1_ForcedOC3Config:
2355  0000 89            	pushw	x
2356       00000000      OFST:	set	0
2358                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
2359  0001 a30050        	cpw	x,#80
2360  0004 2705          	jreq	L417
2361  0006 a30040        	cpw	x,#64
2362  0009 2603          	jrne	L217
2363  000b               L417:
2364  000b 4f            	clr	a
2365  000c 2010          	jra	L617
2366  000e               L217:
2367  000e ae0453        	ldw	x,#1107
2368  0011 89            	pushw	x
2369  0012 ae0000        	ldw	x,#0
2370  0015 89            	pushw	x
2371  0016 ae0000        	ldw	x,#L31
2372  0019 cd0000        	call	_assert_failed
2374  001c 5b04          	addw	sp,#4
2375  001e               L617:
2376                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
2376                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
2377  001e c6525a        	ld	a,21082
2378  0021 a48f          	and	a,#143
2379  0023 1a02          	or	a,(OFST+2,sp)
2380  0025 c7525a        	ld	21082,a
2381                     ; 1112 }
2382  0028 85            	popw	x
2383  0029 81            	ret
2385                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
2385                     ; 1124 {
2386                     .text:	section	.text,new
2387  0000               _TIM1_ForcedOC4Config:
2388  0000 89            	pushw	x
2389       00000000      OFST:	set	0
2391                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
2392  0001 a30050        	cpw	x,#80
2393  0004 2705          	jreq	L427
2394  0006 a30040        	cpw	x,#64
2395  0009 2603          	jrne	L227
2396  000b               L427:
2397  000b 4f            	clr	a
2398  000c 2010          	jra	L627
2399  000e               L227:
2400  000e ae0466        	ldw	x,#1126
2401  0011 89            	pushw	x
2402  0012 ae0000        	ldw	x,#0
2403  0015 89            	pushw	x
2404  0016 ae0000        	ldw	x,#L31
2405  0019 cd0000        	call	_assert_failed
2407  001c 5b04          	addw	sp,#4
2408  001e               L627:
2409                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
2409                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
2410  001e c6525b        	ld	a,21083
2411  0021 a48f          	and	a,#143
2412  0023 1a02          	or	a,(OFST+2,sp)
2413  0025 c7525b        	ld	21083,a
2414                     ; 1131 }
2415  0028 85            	popw	x
2416  0029 81            	ret
2418                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
2418                     ; 1140 {
2419                     .text:	section	.text,new
2420  0000               _TIM1_ARRPreloadConfig:
2421  0000 89            	pushw	x
2422       00000000      OFST:	set	0
2424                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2425  0001 a30000        	cpw	x,#0
2426  0004 2705          	jreq	L437
2427  0006 a30001        	cpw	x,#1
2428  0009 2603          	jrne	L237
2429  000b               L437:
2430  000b 4f            	clr	a
2431  000c 2010          	jra	L637
2432  000e               L237:
2433  000e ae0476        	ldw	x,#1142
2434  0011 89            	pushw	x
2435  0012 ae0000        	ldw	x,#0
2436  0015 89            	pushw	x
2437  0016 ae0000        	ldw	x,#L31
2438  0019 cd0000        	call	_assert_failed
2440  001c 5b04          	addw	sp,#4
2441  001e               L637:
2442                     ; 1145   if (NewState != DISABLE)
2443  001e 1e01          	ldw	x,(OFST+1,sp)
2444  0020 2706          	jreq	L521
2445                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
2446  0022 721e5250      	bset	21072,#7
2448  0026 2004          	jra	L721
2449  0028               L521:
2450                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
2451  0028 721f5250      	bres	21072,#7
2452  002c               L721:
2453                     ; 1153 }
2454  002c 85            	popw	x
2455  002d 81            	ret
2457                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
2457                     ; 1162 {
2458                     .text:	section	.text,new
2459  0000               _TIM1_SelectCOM:
2460  0000 89            	pushw	x
2461       00000000      OFST:	set	0
2463                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2464  0001 a30000        	cpw	x,#0
2465  0004 2705          	jreq	L447
2466  0006 a30001        	cpw	x,#1
2467  0009 2603          	jrne	L247
2468  000b               L447:
2469  000b 4f            	clr	a
2470  000c 2010          	jra	L647
2471  000e               L247:
2472  000e ae048c        	ldw	x,#1164
2473  0011 89            	pushw	x
2474  0012 ae0000        	ldw	x,#0
2475  0015 89            	pushw	x
2476  0016 ae0000        	ldw	x,#L31
2477  0019 cd0000        	call	_assert_failed
2479  001c 5b04          	addw	sp,#4
2480  001e               L647:
2481                     ; 1167   if (NewState != DISABLE)
2482  001e 1e01          	ldw	x,(OFST+1,sp)
2483  0020 2706          	jreq	L131
2484                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
2485  0022 72145251      	bset	21073,#2
2487  0026 2004          	jra	L331
2488  0028               L131:
2489                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
2490  0028 72155251      	bres	21073,#2
2491  002c               L331:
2492                     ; 1175 }
2493  002c 85            	popw	x
2494  002d 81            	ret
2496                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
2496                     ; 1184 {
2497                     .text:	section	.text,new
2498  0000               _TIM1_CCPreloadControl:
2499  0000 89            	pushw	x
2500       00000000      OFST:	set	0
2502                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2503  0001 a30000        	cpw	x,#0
2504  0004 2705          	jreq	L457
2505  0006 a30001        	cpw	x,#1
2506  0009 2603          	jrne	L257
2507  000b               L457:
2508  000b 4f            	clr	a
2509  000c 2010          	jra	L657
2510  000e               L257:
2511  000e ae04a2        	ldw	x,#1186
2512  0011 89            	pushw	x
2513  0012 ae0000        	ldw	x,#0
2514  0015 89            	pushw	x
2515  0016 ae0000        	ldw	x,#L31
2516  0019 cd0000        	call	_assert_failed
2518  001c 5b04          	addw	sp,#4
2519  001e               L657:
2520                     ; 1189   if (NewState != DISABLE)
2521  001e 1e01          	ldw	x,(OFST+1,sp)
2522  0020 2706          	jreq	L531
2523                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
2524  0022 72105251      	bset	21073,#0
2526  0026 2004          	jra	L731
2527  0028               L531:
2528                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
2529  0028 72115251      	bres	21073,#0
2530  002c               L731:
2531                     ; 1197 }
2532  002c 85            	popw	x
2533  002d 81            	ret
2535                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
2535                     ; 1206 {
2536                     .text:	section	.text,new
2537  0000               _TIM1_OC1PreloadConfig:
2538  0000 89            	pushw	x
2539       00000000      OFST:	set	0
2541                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2542  0001 a30000        	cpw	x,#0
2543  0004 2705          	jreq	L467
2544  0006 a30001        	cpw	x,#1
2545  0009 2603          	jrne	L267
2546  000b               L467:
2547  000b 4f            	clr	a
2548  000c 2010          	jra	L667
2549  000e               L267:
2550  000e ae04b8        	ldw	x,#1208
2551  0011 89            	pushw	x
2552  0012 ae0000        	ldw	x,#0
2553  0015 89            	pushw	x
2554  0016 ae0000        	ldw	x,#L31
2555  0019 cd0000        	call	_assert_failed
2557  001c 5b04          	addw	sp,#4
2558  001e               L667:
2559                     ; 1211   if (NewState != DISABLE)
2560  001e 1e01          	ldw	x,(OFST+1,sp)
2561  0020 2706          	jreq	L141
2562                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
2563  0022 72165258      	bset	21080,#3
2565  0026 2004          	jra	L341
2566  0028               L141:
2567                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
2568  0028 72175258      	bres	21080,#3
2569  002c               L341:
2570                     ; 1219 }
2571  002c 85            	popw	x
2572  002d 81            	ret
2574                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
2574                     ; 1228 {
2575                     .text:	section	.text,new
2576  0000               _TIM1_OC2PreloadConfig:
2577  0000 89            	pushw	x
2578       00000000      OFST:	set	0
2580                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2581  0001 a30000        	cpw	x,#0
2582  0004 2705          	jreq	L477
2583  0006 a30001        	cpw	x,#1
2584  0009 2603          	jrne	L277
2585  000b               L477:
2586  000b 4f            	clr	a
2587  000c 2010          	jra	L677
2588  000e               L277:
2589  000e ae04ce        	ldw	x,#1230
2590  0011 89            	pushw	x
2591  0012 ae0000        	ldw	x,#0
2592  0015 89            	pushw	x
2593  0016 ae0000        	ldw	x,#L31
2594  0019 cd0000        	call	_assert_failed
2596  001c 5b04          	addw	sp,#4
2597  001e               L677:
2598                     ; 1233   if (NewState != DISABLE)
2599  001e 1e01          	ldw	x,(OFST+1,sp)
2600  0020 2706          	jreq	L541
2601                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
2602  0022 72165259      	bset	21081,#3
2604  0026 2004          	jra	L741
2605  0028               L541:
2606                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
2607  0028 72175259      	bres	21081,#3
2608  002c               L741:
2609                     ; 1241 }
2610  002c 85            	popw	x
2611  002d 81            	ret
2613                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
2613                     ; 1250 {
2614                     .text:	section	.text,new
2615  0000               _TIM1_OC3PreloadConfig:
2616  0000 89            	pushw	x
2617       00000000      OFST:	set	0
2619                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2620  0001 a30000        	cpw	x,#0
2621  0004 2705          	jreq	L4001
2622  0006 a30001        	cpw	x,#1
2623  0009 2603          	jrne	L2001
2624  000b               L4001:
2625  000b 4f            	clr	a
2626  000c 2010          	jra	L6001
2627  000e               L2001:
2628  000e ae04e4        	ldw	x,#1252
2629  0011 89            	pushw	x
2630  0012 ae0000        	ldw	x,#0
2631  0015 89            	pushw	x
2632  0016 ae0000        	ldw	x,#L31
2633  0019 cd0000        	call	_assert_failed
2635  001c 5b04          	addw	sp,#4
2636  001e               L6001:
2637                     ; 1255   if (NewState != DISABLE)
2638  001e 1e01          	ldw	x,(OFST+1,sp)
2639  0020 2706          	jreq	L151
2640                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
2641  0022 7216525a      	bset	21082,#3
2643  0026 2004          	jra	L351
2644  0028               L151:
2645                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
2646  0028 7217525a      	bres	21082,#3
2647  002c               L351:
2648                     ; 1263 }
2649  002c 85            	popw	x
2650  002d 81            	ret
2652                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
2652                     ; 1272 {
2653                     .text:	section	.text,new
2654  0000               _TIM1_OC4PreloadConfig:
2655  0000 89            	pushw	x
2656       00000000      OFST:	set	0
2658                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2659  0001 a30000        	cpw	x,#0
2660  0004 2705          	jreq	L4101
2661  0006 a30001        	cpw	x,#1
2662  0009 2603          	jrne	L2101
2663  000b               L4101:
2664  000b 4f            	clr	a
2665  000c 2010          	jra	L6101
2666  000e               L2101:
2667  000e ae04fa        	ldw	x,#1274
2668  0011 89            	pushw	x
2669  0012 ae0000        	ldw	x,#0
2670  0015 89            	pushw	x
2671  0016 ae0000        	ldw	x,#L31
2672  0019 cd0000        	call	_assert_failed
2674  001c 5b04          	addw	sp,#4
2675  001e               L6101:
2676                     ; 1277   if (NewState != DISABLE)
2677  001e 1e01          	ldw	x,(OFST+1,sp)
2678  0020 2706          	jreq	L551
2679                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
2680  0022 7216525b      	bset	21083,#3
2682  0026 2004          	jra	L751
2683  0028               L551:
2684                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
2685  0028 7217525b      	bres	21083,#3
2686  002c               L751:
2687                     ; 1285 }
2688  002c 85            	popw	x
2689  002d 81            	ret
2691                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
2691                     ; 1294 {
2692                     .text:	section	.text,new
2693  0000               _TIM1_OC1FastConfig:
2694  0000 89            	pushw	x
2695       00000000      OFST:	set	0
2697                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2698  0001 a30000        	cpw	x,#0
2699  0004 2705          	jreq	L4201
2700  0006 a30001        	cpw	x,#1
2701  0009 2603          	jrne	L2201
2702  000b               L4201:
2703  000b 4f            	clr	a
2704  000c 2010          	jra	L6201
2705  000e               L2201:
2706  000e ae0510        	ldw	x,#1296
2707  0011 89            	pushw	x
2708  0012 ae0000        	ldw	x,#0
2709  0015 89            	pushw	x
2710  0016 ae0000        	ldw	x,#L31
2711  0019 cd0000        	call	_assert_failed
2713  001c 5b04          	addw	sp,#4
2714  001e               L6201:
2715                     ; 1299   if (NewState != DISABLE)
2716  001e 1e01          	ldw	x,(OFST+1,sp)
2717  0020 2706          	jreq	L161
2718                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
2719  0022 72145258      	bset	21080,#2
2721  0026 2004          	jra	L361
2722  0028               L161:
2723                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
2724  0028 72155258      	bres	21080,#2
2725  002c               L361:
2726                     ; 1307 }
2727  002c 85            	popw	x
2728  002d 81            	ret
2730                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
2730                     ; 1316 {
2731                     .text:	section	.text,new
2732  0000               _TIM1_OC2FastConfig:
2733  0000 89            	pushw	x
2734       00000000      OFST:	set	0
2736                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2737  0001 a30000        	cpw	x,#0
2738  0004 2705          	jreq	L4301
2739  0006 a30001        	cpw	x,#1
2740  0009 2603          	jrne	L2301
2741  000b               L4301:
2742  000b 4f            	clr	a
2743  000c 2010          	jra	L6301
2744  000e               L2301:
2745  000e ae0526        	ldw	x,#1318
2746  0011 89            	pushw	x
2747  0012 ae0000        	ldw	x,#0
2748  0015 89            	pushw	x
2749  0016 ae0000        	ldw	x,#L31
2750  0019 cd0000        	call	_assert_failed
2752  001c 5b04          	addw	sp,#4
2753  001e               L6301:
2754                     ; 1321   if (NewState != DISABLE)
2755  001e 1e01          	ldw	x,(OFST+1,sp)
2756  0020 2706          	jreq	L561
2757                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
2758  0022 72145259      	bset	21081,#2
2760  0026 2004          	jra	L761
2761  0028               L561:
2762                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
2763  0028 72155259      	bres	21081,#2
2764  002c               L761:
2765                     ; 1329 }
2766  002c 85            	popw	x
2767  002d 81            	ret
2769                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
2769                     ; 1338 {
2770                     .text:	section	.text,new
2771  0000               _TIM1_OC3FastConfig:
2772  0000 89            	pushw	x
2773       00000000      OFST:	set	0
2775                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2776  0001 a30000        	cpw	x,#0
2777  0004 2705          	jreq	L4401
2778  0006 a30001        	cpw	x,#1
2779  0009 2603          	jrne	L2401
2780  000b               L4401:
2781  000b 4f            	clr	a
2782  000c 2010          	jra	L6401
2783  000e               L2401:
2784  000e ae053c        	ldw	x,#1340
2785  0011 89            	pushw	x
2786  0012 ae0000        	ldw	x,#0
2787  0015 89            	pushw	x
2788  0016 ae0000        	ldw	x,#L31
2789  0019 cd0000        	call	_assert_failed
2791  001c 5b04          	addw	sp,#4
2792  001e               L6401:
2793                     ; 1343   if (NewState != DISABLE)
2794  001e 1e01          	ldw	x,(OFST+1,sp)
2795  0020 2706          	jreq	L171
2796                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
2797  0022 7214525a      	bset	21082,#2
2799  0026 2004          	jra	L371
2800  0028               L171:
2801                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
2802  0028 7215525a      	bres	21082,#2
2803  002c               L371:
2804                     ; 1351 }
2805  002c 85            	popw	x
2806  002d 81            	ret
2808                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
2808                     ; 1360 {
2809                     .text:	section	.text,new
2810  0000               _TIM1_OC4FastConfig:
2811  0000 89            	pushw	x
2812       00000000      OFST:	set	0
2814                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2815  0001 a30000        	cpw	x,#0
2816  0004 2705          	jreq	L4501
2817  0006 a30001        	cpw	x,#1
2818  0009 2603          	jrne	L2501
2819  000b               L4501:
2820  000b 4f            	clr	a
2821  000c 2010          	jra	L6501
2822  000e               L2501:
2823  000e ae0552        	ldw	x,#1362
2824  0011 89            	pushw	x
2825  0012 ae0000        	ldw	x,#0
2826  0015 89            	pushw	x
2827  0016 ae0000        	ldw	x,#L31
2828  0019 cd0000        	call	_assert_failed
2830  001c 5b04          	addw	sp,#4
2831  001e               L6501:
2832                     ; 1365   if (NewState != DISABLE)
2833  001e 1e01          	ldw	x,(OFST+1,sp)
2834  0020 2706          	jreq	L571
2835                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
2836  0022 7214525b      	bset	21083,#2
2838  0026 2004          	jra	L771
2839  0028               L571:
2840                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
2841  0028 7215525b      	bres	21083,#2
2842  002c               L771:
2843                     ; 1373 }
2844  002c 85            	popw	x
2845  002d 81            	ret
2847                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
2847                     ; 1390 {
2848                     .text:	section	.text,new
2849  0000               _TIM1_GenerateEvent:
2850  0000 89            	pushw	x
2851       00000000      OFST:	set	0
2853                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
2854  0001 a30000        	cpw	x,#0
2855  0004 2703          	jreq	L2601
2856  0006 4f            	clr	a
2857  0007 2010          	jra	L4601
2858  0009               L2601:
2859  0009 ae0570        	ldw	x,#1392
2860  000c 89            	pushw	x
2861  000d ae0000        	ldw	x,#0
2862  0010 89            	pushw	x
2863  0011 ae0000        	ldw	x,#L31
2864  0014 cd0000        	call	_assert_failed
2866  0017 5b04          	addw	sp,#4
2867  0019               L4601:
2868                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
2869  0019 7b02          	ld	a,(OFST+2,sp)
2870  001b c75257        	ld	21079,a
2871                     ; 1396 }
2872  001e 85            	popw	x
2873  001f 81            	ret
2875                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
2875                     ; 1407 {
2876                     .text:	section	.text,new
2877  0000               _TIM1_OC1PolarityConfig:
2878  0000 89            	pushw	x
2879       00000000      OFST:	set	0
2881                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
2882  0001 a30000        	cpw	x,#0
2883  0004 2705          	jreq	L2701
2884  0006 a30022        	cpw	x,#34
2885  0009 2603          	jrne	L0701
2886  000b               L2701:
2887  000b 4f            	clr	a
2888  000c 2010          	jra	L4701
2889  000e               L0701:
2890  000e ae0581        	ldw	x,#1409
2891  0011 89            	pushw	x
2892  0012 ae0000        	ldw	x,#0
2893  0015 89            	pushw	x
2894  0016 ae0000        	ldw	x,#L31
2895  0019 cd0000        	call	_assert_failed
2897  001c 5b04          	addw	sp,#4
2898  001e               L4701:
2899                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
2900  001e 1e01          	ldw	x,(OFST+1,sp)
2901  0020 2706          	jreq	L102
2902                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
2903  0022 7212525c      	bset	21084,#1
2905  0026 2004          	jra	L302
2906  0028               L102:
2907                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
2908  0028 7213525c      	bres	21084,#1
2909  002c               L302:
2910                     ; 1420 }
2911  002c 85            	popw	x
2912  002d 81            	ret
2914                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
2914                     ; 1431 {
2915                     .text:	section	.text,new
2916  0000               _TIM1_OC1NPolarityConfig:
2917  0000 89            	pushw	x
2918       00000000      OFST:	set	0
2920                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
2921  0001 a30000        	cpw	x,#0
2922  0004 2705          	jreq	L2011
2923  0006 a30088        	cpw	x,#136
2924  0009 2603          	jrne	L0011
2925  000b               L2011:
2926  000b 4f            	clr	a
2927  000c 2010          	jra	L4011
2928  000e               L0011:
2929  000e ae0599        	ldw	x,#1433
2930  0011 89            	pushw	x
2931  0012 ae0000        	ldw	x,#0
2932  0015 89            	pushw	x
2933  0016 ae0000        	ldw	x,#L31
2934  0019 cd0000        	call	_assert_failed
2936  001c 5b04          	addw	sp,#4
2937  001e               L4011:
2938                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
2939  001e 1e01          	ldw	x,(OFST+1,sp)
2940  0020 2706          	jreq	L502
2941                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
2942  0022 7216525c      	bset	21084,#3
2944  0026 2004          	jra	L702
2945  0028               L502:
2946                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
2947  0028 7217525c      	bres	21084,#3
2948  002c               L702:
2949                     ; 1444 }
2950  002c 85            	popw	x
2951  002d 81            	ret
2953                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
2953                     ; 1455 {
2954                     .text:	section	.text,new
2955  0000               _TIM1_OC2PolarityConfig:
2956  0000 89            	pushw	x
2957       00000000      OFST:	set	0
2959                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
2960  0001 a30000        	cpw	x,#0
2961  0004 2705          	jreq	L2111
2962  0006 a30022        	cpw	x,#34
2963  0009 2603          	jrne	L0111
2964  000b               L2111:
2965  000b 4f            	clr	a
2966  000c 2010          	jra	L4111
2967  000e               L0111:
2968  000e ae05b1        	ldw	x,#1457
2969  0011 89            	pushw	x
2970  0012 ae0000        	ldw	x,#0
2971  0015 89            	pushw	x
2972  0016 ae0000        	ldw	x,#L31
2973  0019 cd0000        	call	_assert_failed
2975  001c 5b04          	addw	sp,#4
2976  001e               L4111:
2977                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
2978  001e 1e01          	ldw	x,(OFST+1,sp)
2979  0020 2706          	jreq	L112
2980                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
2981  0022 721a525c      	bset	21084,#5
2983  0026 2004          	jra	L312
2984  0028               L112:
2985                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
2986  0028 721b525c      	bres	21084,#5
2987  002c               L312:
2988                     ; 1468 }
2989  002c 85            	popw	x
2990  002d 81            	ret
2992                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
2992                     ; 1479 {
2993                     .text:	section	.text,new
2994  0000               _TIM1_OC2NPolarityConfig:
2995  0000 89            	pushw	x
2996       00000000      OFST:	set	0
2998                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
2999  0001 a30000        	cpw	x,#0
3000  0004 2705          	jreq	L2211
3001  0006 a30088        	cpw	x,#136
3002  0009 2603          	jrne	L0211
3003  000b               L2211:
3004  000b 4f            	clr	a
3005  000c 2010          	jra	L4211
3006  000e               L0211:
3007  000e ae05c9        	ldw	x,#1481
3008  0011 89            	pushw	x
3009  0012 ae0000        	ldw	x,#0
3010  0015 89            	pushw	x
3011  0016 ae0000        	ldw	x,#L31
3012  0019 cd0000        	call	_assert_failed
3014  001c 5b04          	addw	sp,#4
3015  001e               L4211:
3016                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
3017  001e 1e01          	ldw	x,(OFST+1,sp)
3018  0020 2706          	jreq	L512
3019                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
3020  0022 721e525c      	bset	21084,#7
3022  0026 2004          	jra	L712
3023  0028               L512:
3024                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
3025  0028 721f525c      	bres	21084,#7
3026  002c               L712:
3027                     ; 1492 }
3028  002c 85            	popw	x
3029  002d 81            	ret
3031                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
3031                     ; 1503 {
3032                     .text:	section	.text,new
3033  0000               _TIM1_OC3PolarityConfig:
3034  0000 89            	pushw	x
3035       00000000      OFST:	set	0
3037                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
3038  0001 a30000        	cpw	x,#0
3039  0004 2705          	jreq	L2311
3040  0006 a30022        	cpw	x,#34
3041  0009 2603          	jrne	L0311
3042  000b               L2311:
3043  000b 4f            	clr	a
3044  000c 2010          	jra	L4311
3045  000e               L0311:
3046  000e ae05e1        	ldw	x,#1505
3047  0011 89            	pushw	x
3048  0012 ae0000        	ldw	x,#0
3049  0015 89            	pushw	x
3050  0016 ae0000        	ldw	x,#L31
3051  0019 cd0000        	call	_assert_failed
3053  001c 5b04          	addw	sp,#4
3054  001e               L4311:
3055                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
3056  001e 1e01          	ldw	x,(OFST+1,sp)
3057  0020 2706          	jreq	L122
3058                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
3059  0022 7212525d      	bset	21085,#1
3061  0026 2004          	jra	L322
3062  0028               L122:
3063                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
3064  0028 7213525d      	bres	21085,#1
3065  002c               L322:
3066                     ; 1516 }
3067  002c 85            	popw	x
3068  002d 81            	ret
3070                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
3070                     ; 1528 {
3071                     .text:	section	.text,new
3072  0000               _TIM1_OC3NPolarityConfig:
3073  0000 89            	pushw	x
3074       00000000      OFST:	set	0
3076                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
3077  0001 a30000        	cpw	x,#0
3078  0004 2705          	jreq	L2411
3079  0006 a30088        	cpw	x,#136
3080  0009 2603          	jrne	L0411
3081  000b               L2411:
3082  000b 4f            	clr	a
3083  000c 2010          	jra	L4411
3084  000e               L0411:
3085  000e ae05fa        	ldw	x,#1530
3086  0011 89            	pushw	x
3087  0012 ae0000        	ldw	x,#0
3088  0015 89            	pushw	x
3089  0016 ae0000        	ldw	x,#L31
3090  0019 cd0000        	call	_assert_failed
3092  001c 5b04          	addw	sp,#4
3093  001e               L4411:
3094                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
3095  001e 1e01          	ldw	x,(OFST+1,sp)
3096  0020 2706          	jreq	L522
3097                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
3098  0022 7216525d      	bset	21085,#3
3100  0026 2004          	jra	L722
3101  0028               L522:
3102                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
3103  0028 7217525d      	bres	21085,#3
3104  002c               L722:
3105                     ; 1541 }
3106  002c 85            	popw	x
3107  002d 81            	ret
3109                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
3109                     ; 1552 {
3110                     .text:	section	.text,new
3111  0000               _TIM1_OC4PolarityConfig:
3112  0000 89            	pushw	x
3113       00000000      OFST:	set	0
3115                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
3116  0001 a30000        	cpw	x,#0
3117  0004 2705          	jreq	L2511
3118  0006 a30022        	cpw	x,#34
3119  0009 2603          	jrne	L0511
3120  000b               L2511:
3121  000b 4f            	clr	a
3122  000c 2010          	jra	L4511
3123  000e               L0511:
3124  000e ae0612        	ldw	x,#1554
3125  0011 89            	pushw	x
3126  0012 ae0000        	ldw	x,#0
3127  0015 89            	pushw	x
3128  0016 ae0000        	ldw	x,#L31
3129  0019 cd0000        	call	_assert_failed
3131  001c 5b04          	addw	sp,#4
3132  001e               L4511:
3133                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
3134  001e 1e01          	ldw	x,(OFST+1,sp)
3135  0020 2706          	jreq	L132
3136                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
3137  0022 721a525d      	bset	21085,#5
3139  0026 2004          	jra	L332
3140  0028               L132:
3141                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
3142  0028 721b525d      	bres	21085,#5
3143  002c               L332:
3144                     ; 1565 }
3145  002c 85            	popw	x
3146  002d 81            	ret
3148                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
3148                     ; 1580 {
3149                     .text:	section	.text,new
3150  0000               _TIM1_CCxCmd:
3151  0000 89            	pushw	x
3152       00000000      OFST:	set	0
3154                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
3155  0001 a30000        	cpw	x,#0
3156  0004 270f          	jreq	L2611
3157  0006 a30001        	cpw	x,#1
3158  0009 270a          	jreq	L2611
3159  000b a30002        	cpw	x,#2
3160  000e 2705          	jreq	L2611
3161  0010 a30003        	cpw	x,#3
3162  0013 2603          	jrne	L0611
3163  0015               L2611:
3164  0015 4f            	clr	a
3165  0016 2010          	jra	L4611
3166  0018               L0611:
3167  0018 ae062e        	ldw	x,#1582
3168  001b 89            	pushw	x
3169  001c ae0000        	ldw	x,#0
3170  001f 89            	pushw	x
3171  0020 ae0000        	ldw	x,#L31
3172  0023 cd0000        	call	_assert_failed
3174  0026 5b04          	addw	sp,#4
3175  0028               L4611:
3176                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3177  0028 1e05          	ldw	x,(OFST+5,sp)
3178  002a 2707          	jreq	L0711
3179  002c 1e05          	ldw	x,(OFST+5,sp)
3180  002e a30001        	cpw	x,#1
3181  0031 2603          	jrne	L6611
3182  0033               L0711:
3183  0033 4f            	clr	a
3184  0034 2010          	jra	L2711
3185  0036               L6611:
3186  0036 ae062f        	ldw	x,#1583
3187  0039 89            	pushw	x
3188  003a ae0000        	ldw	x,#0
3189  003d 89            	pushw	x
3190  003e ae0000        	ldw	x,#L31
3191  0041 cd0000        	call	_assert_failed
3193  0044 5b04          	addw	sp,#4
3194  0046               L2711:
3195                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
3196  0046 1e01          	ldw	x,(OFST+1,sp)
3197  0048 2610          	jrne	L532
3198                     ; 1588     if (NewState != DISABLE)
3199  004a 1e05          	ldw	x,(OFST+5,sp)
3200  004c 2706          	jreq	L732
3201                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
3202  004e 7210525c      	bset	21084,#0
3204  0052 2042          	jra	L342
3205  0054               L732:
3206                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
3207  0054 7211525c      	bres	21084,#0
3208  0058 203c          	jra	L342
3209  005a               L532:
3210                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
3211  005a 1e01          	ldw	x,(OFST+1,sp)
3212  005c a30001        	cpw	x,#1
3213  005f 2610          	jrne	L542
3214                     ; 1601     if (NewState != DISABLE)
3215  0061 1e05          	ldw	x,(OFST+5,sp)
3216  0063 2706          	jreq	L742
3217                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
3218  0065 7218525c      	bset	21084,#4
3220  0069 202b          	jra	L342
3221  006b               L742:
3222                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
3223  006b 7219525c      	bres	21084,#4
3224  006f 2025          	jra	L342
3225  0071               L542:
3226                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
3227  0071 1e01          	ldw	x,(OFST+1,sp)
3228  0073 a30002        	cpw	x,#2
3229  0076 2610          	jrne	L552
3230                     ; 1613     if (NewState != DISABLE)
3231  0078 1e05          	ldw	x,(OFST+5,sp)
3232  007a 2706          	jreq	L752
3233                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
3234  007c 7210525d      	bset	21085,#0
3236  0080 2014          	jra	L342
3237  0082               L752:
3238                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
3239  0082 7211525d      	bres	21085,#0
3240  0086 200e          	jra	L342
3241  0088               L552:
3242                     ; 1625     if (NewState != DISABLE)
3243  0088 1e05          	ldw	x,(OFST+5,sp)
3244  008a 2706          	jreq	L562
3245                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
3246  008c 7218525d      	bset	21085,#4
3248  0090 2004          	jra	L342
3249  0092               L562:
3250                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
3251  0092 7219525d      	bres	21085,#4
3252  0096               L342:
3253                     ; 1634 }
3254  0096 85            	popw	x
3255  0097 81            	ret
3257                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
3257                     ; 1648 {
3258                     .text:	section	.text,new
3259  0000               _TIM1_CCxNCmd:
3260  0000 89            	pushw	x
3261       00000000      OFST:	set	0
3263                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
3264  0001 a30000        	cpw	x,#0
3265  0004 270a          	jreq	L0021
3266  0006 a30001        	cpw	x,#1
3267  0009 2705          	jreq	L0021
3268  000b a30002        	cpw	x,#2
3269  000e 2603          	jrne	L6711
3270  0010               L0021:
3271  0010 4f            	clr	a
3272  0011 2010          	jra	L2021
3273  0013               L6711:
3274  0013 ae0672        	ldw	x,#1650
3275  0016 89            	pushw	x
3276  0017 ae0000        	ldw	x,#0
3277  001a 89            	pushw	x
3278  001b ae0000        	ldw	x,#L31
3279  001e cd0000        	call	_assert_failed
3281  0021 5b04          	addw	sp,#4
3282  0023               L2021:
3283                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3284  0023 1e05          	ldw	x,(OFST+5,sp)
3285  0025 2707          	jreq	L6021
3286  0027 1e05          	ldw	x,(OFST+5,sp)
3287  0029 a30001        	cpw	x,#1
3288  002c 2603          	jrne	L4021
3289  002e               L6021:
3290  002e 4f            	clr	a
3291  002f 2010          	jra	L0121
3292  0031               L4021:
3293  0031 ae0673        	ldw	x,#1651
3294  0034 89            	pushw	x
3295  0035 ae0000        	ldw	x,#0
3296  0038 89            	pushw	x
3297  0039 ae0000        	ldw	x,#L31
3298  003c cd0000        	call	_assert_failed
3300  003f 5b04          	addw	sp,#4
3301  0041               L0121:
3302                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
3303  0041 1e01          	ldw	x,(OFST+1,sp)
3304  0043 2610          	jrne	L172
3305                     ; 1656     if (NewState != DISABLE)
3306  0045 1e05          	ldw	x,(OFST+5,sp)
3307  0047 2706          	jreq	L372
3308                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
3309  0049 7214525c      	bset	21084,#2
3311  004d 202b          	jra	L772
3312  004f               L372:
3313                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
3314  004f 7215525c      	bres	21084,#2
3315  0053 2025          	jra	L772
3316  0055               L172:
3317                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
3318  0055 1e01          	ldw	x,(OFST+1,sp)
3319  0057 a30001        	cpw	x,#1
3320  005a 2610          	jrne	L103
3321                     ; 1668     if (NewState != DISABLE)
3322  005c 1e05          	ldw	x,(OFST+5,sp)
3323  005e 2706          	jreq	L303
3324                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
3325  0060 721c525c      	bset	21084,#6
3327  0064 2014          	jra	L772
3328  0066               L303:
3329                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
3330  0066 721d525c      	bres	21084,#6
3331  006a 200e          	jra	L772
3332  006c               L103:
3333                     ; 1680     if (NewState != DISABLE)
3334  006c 1e05          	ldw	x,(OFST+5,sp)
3335  006e 2706          	jreq	L113
3336                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
3337  0070 7214525d      	bset	21085,#2
3339  0074 2004          	jra	L772
3340  0076               L113:
3341                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
3342  0076 7215525d      	bres	21085,#2
3343  007a               L772:
3344                     ; 1689 }
3345  007a 85            	popw	x
3346  007b 81            	ret
3348                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
3348                     ; 1713 {
3349                     .text:	section	.text,new
3350  0000               _TIM1_SelectOCxM:
3351  0000 89            	pushw	x
3352       00000000      OFST:	set	0
3354                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
3355  0001 a30000        	cpw	x,#0
3356  0004 270f          	jreq	L6121
3357  0006 a30001        	cpw	x,#1
3358  0009 270a          	jreq	L6121
3359  000b a30002        	cpw	x,#2
3360  000e 2705          	jreq	L6121
3361  0010 a30003        	cpw	x,#3
3362  0013 2603          	jrne	L4121
3363  0015               L6121:
3364  0015 4f            	clr	a
3365  0016 2010          	jra	L0221
3366  0018               L4121:
3367  0018 ae06b3        	ldw	x,#1715
3368  001b 89            	pushw	x
3369  001c ae0000        	ldw	x,#0
3370  001f 89            	pushw	x
3371  0020 ae0000        	ldw	x,#L31
3372  0023 cd0000        	call	_assert_failed
3374  0026 5b04          	addw	sp,#4
3375  0028               L0221:
3376                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
3377  0028 1e05          	ldw	x,(OFST+5,sp)
3378  002a 2731          	jreq	L4221
3379  002c 1e05          	ldw	x,(OFST+5,sp)
3380  002e a30010        	cpw	x,#16
3381  0031 272a          	jreq	L4221
3382  0033 1e05          	ldw	x,(OFST+5,sp)
3383  0035 a30020        	cpw	x,#32
3384  0038 2723          	jreq	L4221
3385  003a 1e05          	ldw	x,(OFST+5,sp)
3386  003c a30030        	cpw	x,#48
3387  003f 271c          	jreq	L4221
3388  0041 1e05          	ldw	x,(OFST+5,sp)
3389  0043 a30060        	cpw	x,#96
3390  0046 2715          	jreq	L4221
3391  0048 1e05          	ldw	x,(OFST+5,sp)
3392  004a a30070        	cpw	x,#112
3393  004d 270e          	jreq	L4221
3394  004f 1e05          	ldw	x,(OFST+5,sp)
3395  0051 a30050        	cpw	x,#80
3396  0054 2707          	jreq	L4221
3397  0056 1e05          	ldw	x,(OFST+5,sp)
3398  0058 a30040        	cpw	x,#64
3399  005b 2603          	jrne	L2221
3400  005d               L4221:
3401  005d 4f            	clr	a
3402  005e 2010          	jra	L6221
3403  0060               L2221:
3404  0060 ae06b4        	ldw	x,#1716
3405  0063 89            	pushw	x
3406  0064 ae0000        	ldw	x,#0
3407  0067 89            	pushw	x
3408  0068 ae0000        	ldw	x,#L31
3409  006b cd0000        	call	_assert_failed
3411  006e 5b04          	addw	sp,#4
3412  0070               L6221:
3413                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
3414  0070 1e01          	ldw	x,(OFST+1,sp)
3415  0072 2610          	jrne	L513
3416                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
3417  0074 7211525c      	bres	21084,#0
3418                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
3418                     ; 1725                             | (uint8_t)TIM1_OCMode);
3419  0078 c65258        	ld	a,21080
3420  007b a48f          	and	a,#143
3421  007d 1a06          	or	a,(OFST+6,sp)
3422  007f c75258        	ld	21080,a
3424  0082 203c          	jra	L713
3425  0084               L513:
3426                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
3427  0084 1e01          	ldw	x,(OFST+1,sp)
3428  0086 a30001        	cpw	x,#1
3429  0089 2610          	jrne	L123
3430                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
3431  008b 7219525c      	bres	21084,#4
3432                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3432                     ; 1734                             | (uint8_t)TIM1_OCMode);
3433  008f c65259        	ld	a,21081
3434  0092 a48f          	and	a,#143
3435  0094 1a06          	or	a,(OFST+6,sp)
3436  0096 c75259        	ld	21081,a
3438  0099 2025          	jra	L713
3439  009b               L123:
3440                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
3441  009b 1e01          	ldw	x,(OFST+1,sp)
3442  009d a30002        	cpw	x,#2
3443  00a0 2610          	jrne	L523
3444                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
3445  00a2 7211525d      	bres	21085,#0
3446                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
3446                     ; 1743                             | (uint8_t)TIM1_OCMode);
3447  00a6 c6525a        	ld	a,21082
3448  00a9 a48f          	and	a,#143
3449  00ab 1a06          	or	a,(OFST+6,sp)
3450  00ad c7525a        	ld	21082,a
3452  00b0 200e          	jra	L713
3453  00b2               L523:
3454                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
3455  00b2 7219525d      	bres	21085,#4
3456                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3456                     ; 1752                             | (uint8_t)TIM1_OCMode);
3457  00b6 c6525b        	ld	a,21083
3458  00b9 a48f          	and	a,#143
3459  00bb 1a06          	or	a,(OFST+6,sp)
3460  00bd c7525b        	ld	21083,a
3461  00c0               L713:
3462                     ; 1754 }
3463  00c0 85            	popw	x
3464  00c1 81            	ret
3466                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
3466                     ; 1763 {
3467                     .text:	section	.text,new
3468  0000               _TIM1_SetCounter:
3470                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
3471  0000 9e            	ld	a,xh
3472  0001 c7525e        	ld	21086,a
3473                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
3474  0004 9f            	ld	a,xl
3475  0005 c7525f        	ld	21087,a
3476                     ; 1767 }
3477  0008 81            	ret
3479                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
3479                     ; 1776 {
3480                     .text:	section	.text,new
3481  0000               _TIM1_SetAutoreload:
3483                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
3484  0000 9e            	ld	a,xh
3485  0001 c75262        	ld	21090,a
3486                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
3487  0004 9f            	ld	a,xl
3488  0005 c75263        	ld	21091,a
3489                     ; 1780  }
3490  0008 81            	ret
3492                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
3492                     ; 1789 {
3493                     .text:	section	.text,new
3494  0000               _TIM1_SetCompare1:
3496                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
3497  0000 9e            	ld	a,xh
3498  0001 c75265        	ld	21093,a
3499                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
3500  0004 9f            	ld	a,xl
3501  0005 c75266        	ld	21094,a
3502                     ; 1793 }
3503  0008 81            	ret
3505                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
3505                     ; 1802 {
3506                     .text:	section	.text,new
3507  0000               _TIM1_SetCompare2:
3509                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
3510  0000 9e            	ld	a,xh
3511  0001 c75267        	ld	21095,a
3512                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
3513  0004 9f            	ld	a,xl
3514  0005 c75268        	ld	21096,a
3515                     ; 1806 }
3516  0008 81            	ret
3518                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
3518                     ; 1815 {
3519                     .text:	section	.text,new
3520  0000               _TIM1_SetCompare3:
3522                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
3523  0000 9e            	ld	a,xh
3524  0001 c75269        	ld	21097,a
3525                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
3526  0004 9f            	ld	a,xl
3527  0005 c7526a        	ld	21098,a
3528                     ; 1819 }
3529  0008 81            	ret
3531                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
3531                     ; 1828 {
3532                     .text:	section	.text,new
3533  0000               _TIM1_SetCompare4:
3535                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
3536  0000 9e            	ld	a,xh
3537  0001 c7526b        	ld	21099,a
3538                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
3539  0004 9f            	ld	a,xl
3540  0005 c7526c        	ld	21100,a
3541                     ; 1832 }
3542  0008 81            	ret
3544                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
3544                     ; 1845 {
3545                     .text:	section	.text,new
3546  0000               _TIM1_SetIC1Prescaler:
3547  0000 89            	pushw	x
3548       00000000      OFST:	set	0
3550                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
3551  0001 a30000        	cpw	x,#0
3552  0004 270f          	jreq	L0521
3553  0006 a30004        	cpw	x,#4
3554  0009 270a          	jreq	L0521
3555  000b a30008        	cpw	x,#8
3556  000e 2705          	jreq	L0521
3557  0010 a3000c        	cpw	x,#12
3558  0013 2603          	jrne	L6421
3559  0015               L0521:
3560  0015 4f            	clr	a
3561  0016 2010          	jra	L2521
3562  0018               L6421:
3563  0018 ae0737        	ldw	x,#1847
3564  001b 89            	pushw	x
3565  001c ae0000        	ldw	x,#0
3566  001f 89            	pushw	x
3567  0020 ae0000        	ldw	x,#L31
3568  0023 cd0000        	call	_assert_failed
3570  0026 5b04          	addw	sp,#4
3571  0028               L2521:
3572                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
3572                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
3573  0028 c65258        	ld	a,21080
3574  002b a4f3          	and	a,#243
3575  002d 1a02          	or	a,(OFST+2,sp)
3576  002f c75258        	ld	21080,a
3577                     ; 1852 }
3578  0032 85            	popw	x
3579  0033 81            	ret
3581                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
3581                     ; 1865 {
3582                     .text:	section	.text,new
3583  0000               _TIM1_SetIC2Prescaler:
3584  0000 89            	pushw	x
3585       00000000      OFST:	set	0
3587                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
3588  0001 a30000        	cpw	x,#0
3589  0004 270f          	jreq	L0621
3590  0006 a30004        	cpw	x,#4
3591  0009 270a          	jreq	L0621
3592  000b a30008        	cpw	x,#8
3593  000e 2705          	jreq	L0621
3594  0010 a3000c        	cpw	x,#12
3595  0013 2603          	jrne	L6521
3596  0015               L0621:
3597  0015 4f            	clr	a
3598  0016 2010          	jra	L2621
3599  0018               L6521:
3600  0018 ae074c        	ldw	x,#1868
3601  001b 89            	pushw	x
3602  001c ae0000        	ldw	x,#0
3603  001f 89            	pushw	x
3604  0020 ae0000        	ldw	x,#L31
3605  0023 cd0000        	call	_assert_failed
3607  0026 5b04          	addw	sp,#4
3608  0028               L2621:
3609                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
3609                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
3610  0028 c65259        	ld	a,21081
3611  002b a4f3          	and	a,#243
3612  002d 1a02          	or	a,(OFST+2,sp)
3613  002f c75259        	ld	21081,a
3614                     ; 1873 }
3615  0032 85            	popw	x
3616  0033 81            	ret
3618                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
3618                     ; 1886 {
3619                     .text:	section	.text,new
3620  0000               _TIM1_SetIC3Prescaler:
3621  0000 89            	pushw	x
3622       00000000      OFST:	set	0
3624                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
3625  0001 a30000        	cpw	x,#0
3626  0004 270f          	jreq	L0721
3627  0006 a30004        	cpw	x,#4
3628  0009 270a          	jreq	L0721
3629  000b a30008        	cpw	x,#8
3630  000e 2705          	jreq	L0721
3631  0010 a3000c        	cpw	x,#12
3632  0013 2603          	jrne	L6621
3633  0015               L0721:
3634  0015 4f            	clr	a
3635  0016 2010          	jra	L2721
3636  0018               L6621:
3637  0018 ae0761        	ldw	x,#1889
3638  001b 89            	pushw	x
3639  001c ae0000        	ldw	x,#0
3640  001f 89            	pushw	x
3641  0020 ae0000        	ldw	x,#L31
3642  0023 cd0000        	call	_assert_failed
3644  0026 5b04          	addw	sp,#4
3645  0028               L2721:
3646                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
3646                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
3647  0028 c6525a        	ld	a,21082
3648  002b a4f3          	and	a,#243
3649  002d 1a02          	or	a,(OFST+2,sp)
3650  002f c7525a        	ld	21082,a
3651                     ; 1894 }
3652  0032 85            	popw	x
3653  0033 81            	ret
3655                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
3655                     ; 1907 {
3656                     .text:	section	.text,new
3657  0000               _TIM1_SetIC4Prescaler:
3658  0000 89            	pushw	x
3659       00000000      OFST:	set	0
3661                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
3662  0001 a30000        	cpw	x,#0
3663  0004 270f          	jreq	L0031
3664  0006 a30004        	cpw	x,#4
3665  0009 270a          	jreq	L0031
3666  000b a30008        	cpw	x,#8
3667  000e 2705          	jreq	L0031
3668  0010 a3000c        	cpw	x,#12
3669  0013 2603          	jrne	L6721
3670  0015               L0031:
3671  0015 4f            	clr	a
3672  0016 2010          	jra	L2031
3673  0018               L6721:
3674  0018 ae0776        	ldw	x,#1910
3675  001b 89            	pushw	x
3676  001c ae0000        	ldw	x,#0
3677  001f 89            	pushw	x
3678  0020 ae0000        	ldw	x,#L31
3679  0023 cd0000        	call	_assert_failed
3681  0026 5b04          	addw	sp,#4
3682  0028               L2031:
3683                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
3683                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
3684  0028 c6525b        	ld	a,21083
3685  002b a4f3          	and	a,#243
3686  002d 1a02          	or	a,(OFST+2,sp)
3687  002f c7525b        	ld	21083,a
3688                     ; 1915 }
3689  0032 85            	popw	x
3690  0033 81            	ret
3692                     ; 1922 uint16_t TIM1_GetCapture1(void)
3692                     ; 1923 {
3693                     .text:	section	.text,new
3694  0000               _TIM1_GetCapture1:
3695  0000 5204          	subw	sp,#4
3696       00000004      OFST:	set	4
3698                     ; 1926   uint16_t tmpccr1 = 0;
3699                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
3701                     ; 1929   tmpccr1h = TIM1->CCR1H;
3702  0002 c65265        	ld	a,21093
3703  0005 6b02          	ld	(OFST-2,sp),a
3704                     ; 1930   tmpccr1l = TIM1->CCR1L;
3705  0007 c65266        	ld	a,21094
3706  000a 6b01          	ld	(OFST-3,sp),a
3707                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
3708  000c 7b01          	ld	a,(OFST-3,sp)
3709  000e 5f            	clrw	x
3710  000f 97            	ld	xl,a
3711  0010 1f03          	ldw	(OFST-1,sp),x
3712                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3713  0012 7b02          	ld	a,(OFST-2,sp)
3714  0014 5f            	clrw	x
3715  0015 97            	ld	xl,a
3716  0016 4f            	clr	a
3717  0017 02            	rlwa	x,a
3718  0018 01            	rrwa	x,a
3719  0019 1a04          	or	a,(OFST+0,sp)
3720  001b 01            	rrwa	x,a
3721  001c 1a03          	or	a,(OFST-1,sp)
3722  001e 01            	rrwa	x,a
3723  001f 1f03          	ldw	(OFST-1,sp),x
3724                     ; 1935   return (uint16_t)tmpccr1;
3725  0021 1e03          	ldw	x,(OFST-1,sp)
3727  0023 5b04          	addw	sp,#4
3728  0025 81            	ret
3730                     ; 1943 uint16_t TIM1_GetCapture2(void)
3730                     ; 1944 {
3731                     .text:	section	.text,new
3732  0000               _TIM1_GetCapture2:
3733  0000 5204          	subw	sp,#4
3734       00000004      OFST:	set	4
3736                     ; 1947   uint16_t tmpccr2 = 0;
3737                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
3739                     ; 1950   tmpccr2h = TIM1->CCR2H;
3740  0002 c65267        	ld	a,21095
3741  0005 6b02          	ld	(OFST-2,sp),a
3742                     ; 1951   tmpccr2l = TIM1->CCR2L;
3743  0007 c65268        	ld	a,21096
3744  000a 6b01          	ld	(OFST-3,sp),a
3745                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
3746  000c 7b01          	ld	a,(OFST-3,sp)
3747  000e 5f            	clrw	x
3748  000f 97            	ld	xl,a
3749  0010 1f03          	ldw	(OFST-1,sp),x
3750                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3751  0012 7b02          	ld	a,(OFST-2,sp)
3752  0014 5f            	clrw	x
3753  0015 97            	ld	xl,a
3754  0016 4f            	clr	a
3755  0017 02            	rlwa	x,a
3756  0018 01            	rrwa	x,a
3757  0019 1a04          	or	a,(OFST+0,sp)
3758  001b 01            	rrwa	x,a
3759  001c 1a03          	or	a,(OFST-1,sp)
3760  001e 01            	rrwa	x,a
3761  001f 1f03          	ldw	(OFST-1,sp),x
3762                     ; 1956   return (uint16_t)tmpccr2;
3763  0021 1e03          	ldw	x,(OFST-1,sp)
3765  0023 5b04          	addw	sp,#4
3766  0025 81            	ret
3768                     ; 1964 uint16_t TIM1_GetCapture3(void)
3768                     ; 1965 {
3769                     .text:	section	.text,new
3770  0000               _TIM1_GetCapture3:
3771  0000 5204          	subw	sp,#4
3772       00000004      OFST:	set	4
3774                     ; 1967   uint16_t tmpccr3 = 0;
3775                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
3777                     ; 1970   tmpccr3h = TIM1->CCR3H;
3778  0002 c65269        	ld	a,21097
3779  0005 6b02          	ld	(OFST-2,sp),a
3780                     ; 1971   tmpccr3l = TIM1->CCR3L;
3781  0007 c6526a        	ld	a,21098
3782  000a 6b01          	ld	(OFST-3,sp),a
3783                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
3784  000c 7b01          	ld	a,(OFST-3,sp)
3785  000e 5f            	clrw	x
3786  000f 97            	ld	xl,a
3787  0010 1f03          	ldw	(OFST-1,sp),x
3788                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3789  0012 7b02          	ld	a,(OFST-2,sp)
3790  0014 5f            	clrw	x
3791  0015 97            	ld	xl,a
3792  0016 4f            	clr	a
3793  0017 02            	rlwa	x,a
3794  0018 01            	rrwa	x,a
3795  0019 1a04          	or	a,(OFST+0,sp)
3796  001b 01            	rrwa	x,a
3797  001c 1a03          	or	a,(OFST-1,sp)
3798  001e 01            	rrwa	x,a
3799  001f 1f03          	ldw	(OFST-1,sp),x
3800                     ; 1976   return (uint16_t)tmpccr3;
3801  0021 1e03          	ldw	x,(OFST-1,sp)
3803  0023 5b04          	addw	sp,#4
3804  0025 81            	ret
3806                     ; 1984 uint16_t TIM1_GetCapture4(void)
3806                     ; 1985 {
3807                     .text:	section	.text,new
3808  0000               _TIM1_GetCapture4:
3809  0000 5204          	subw	sp,#4
3810       00000004      OFST:	set	4
3812                     ; 1987   uint16_t tmpccr4 = 0;
3813                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
3815                     ; 1990   tmpccr4h = TIM1->CCR4H;
3816  0002 c6526b        	ld	a,21099
3817  0005 6b02          	ld	(OFST-2,sp),a
3818                     ; 1991   tmpccr4l = TIM1->CCR4L;
3819  0007 c6526c        	ld	a,21100
3820  000a 6b01          	ld	(OFST-3,sp),a
3821                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
3822  000c 7b01          	ld	a,(OFST-3,sp)
3823  000e 5f            	clrw	x
3824  000f 97            	ld	xl,a
3825  0010 1f03          	ldw	(OFST-1,sp),x
3826                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
3827  0012 7b02          	ld	a,(OFST-2,sp)
3828  0014 5f            	clrw	x
3829  0015 97            	ld	xl,a
3830  0016 4f            	clr	a
3831  0017 02            	rlwa	x,a
3832  0018 01            	rrwa	x,a
3833  0019 1a04          	or	a,(OFST+0,sp)
3834  001b 01            	rrwa	x,a
3835  001c 1a03          	or	a,(OFST-1,sp)
3836  001e 01            	rrwa	x,a
3837  001f 1f03          	ldw	(OFST-1,sp),x
3838                     ; 1996   return (uint16_t)tmpccr4;
3839  0021 1e03          	ldw	x,(OFST-1,sp)
3841  0023 5b04          	addw	sp,#4
3842  0025 81            	ret
3844                     ; 2004 uint16_t TIM1_GetCounter(void)
3844                     ; 2005 {
3845                     .text:	section	.text,new
3846  0000               _TIM1_GetCounter:
3847  0000 89            	pushw	x
3848       00000002      OFST:	set	2
3850                     ; 2006   uint16_t tmpcntr = 0;
3851                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
3852  0001 c6525e        	ld	a,21086
3853  0004 5f            	clrw	x
3854  0005 97            	ld	xl,a
3855  0006 4f            	clr	a
3856  0007 02            	rlwa	x,a
3857  0008 1f01          	ldw	(OFST-1,sp),x
3858                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
3859  000a c6525f        	ld	a,21087
3860  000d 5f            	clrw	x
3861  000e 97            	ld	xl,a
3862  000f 01            	rrwa	x,a
3863  0010 1a02          	or	a,(OFST+0,sp)
3864  0012 01            	rrwa	x,a
3865  0013 1a01          	or	a,(OFST-1,sp)
3866  0015 01            	rrwa	x,a
3868  0016 5b02          	addw	sp,#2
3869  0018 81            	ret
3871                     ; 2019 uint16_t TIM1_GetPrescaler(void)
3871                     ; 2020 {
3872                     .text:	section	.text,new
3873  0000               _TIM1_GetPrescaler:
3874  0000 89            	pushw	x
3875       00000002      OFST:	set	2
3877                     ; 2021   uint16_t temp = 0;
3878                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
3879  0001 c65260        	ld	a,21088
3880  0004 5f            	clrw	x
3881  0005 97            	ld	xl,a
3882  0006 4f            	clr	a
3883  0007 02            	rlwa	x,a
3884  0008 1f01          	ldw	(OFST-1,sp),x
3885                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
3886  000a c65261        	ld	a,21089
3887  000d 5f            	clrw	x
3888  000e 97            	ld	xl,a
3889  000f 01            	rrwa	x,a
3890  0010 1a02          	or	a,(OFST+0,sp)
3891  0012 01            	rrwa	x,a
3892  0013 1a01          	or	a,(OFST-1,sp)
3893  0015 01            	rrwa	x,a
3895  0016 5b02          	addw	sp,#2
3896  0018 81            	ret
3898                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
3898                     ; 2048 {
3899                     .text:	section	.text,new
3900  0000               _TIM1_GetFlagStatus:
3901  0000 89            	pushw	x
3902  0001 5204          	subw	sp,#4
3903       00000004      OFST:	set	4
3905                     ; 2049   FlagStatus bitstatus = RESET;
3906                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
3908                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
3909  0003 a30001        	cpw	x,#1
3910  0006 2737          	jreq	L4231
3911  0008 a30002        	cpw	x,#2
3912  000b 2732          	jreq	L4231
3913  000d a30004        	cpw	x,#4
3914  0010 272d          	jreq	L4231
3915  0012 a30008        	cpw	x,#8
3916  0015 2728          	jreq	L4231
3917  0017 a30010        	cpw	x,#16
3918  001a 2723          	jreq	L4231
3919  001c a30020        	cpw	x,#32
3920  001f 271e          	jreq	L4231
3921  0021 a30040        	cpw	x,#64
3922  0024 2719          	jreq	L4231
3923  0026 a30080        	cpw	x,#128
3924  0029 2714          	jreq	L4231
3925  002b a30200        	cpw	x,#512
3926  002e 270f          	jreq	L4231
3927  0030 a30400        	cpw	x,#1024
3928  0033 270a          	jreq	L4231
3929  0035 a30800        	cpw	x,#2048
3930  0038 2705          	jreq	L4231
3931  003a a31000        	cpw	x,#4096
3932  003d 2603          	jrne	L2231
3933  003f               L4231:
3934  003f 4f            	clr	a
3935  0040 2010          	jra	L6231
3936  0042               L2231:
3937  0042 ae0805        	ldw	x,#2053
3938  0045 89            	pushw	x
3939  0046 ae0000        	ldw	x,#0
3940  0049 89            	pushw	x
3941  004a ae0000        	ldw	x,#L31
3942  004d cd0000        	call	_assert_failed
3944  0050 5b04          	addw	sp,#4
3945  0052               L6231:
3946                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
3947  0052 c65255        	ld	a,21077
3948  0055 1406          	and	a,(OFST+2,sp)
3949  0057 6b01          	ld	(OFST-3,sp),a
3950                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
3951  0059 1e05          	ldw	x,(OFST+1,sp)
3952  005b 4f            	clr	a
3953  005c 01            	rrwa	x,a
3954  005d 9f            	ld	a,xl
3955  005e 6b02          	ld	(OFST-2,sp),a
3956                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
3957  0060 c65256        	ld	a,21078
3958  0063 1402          	and	a,(OFST-2,sp)
3959  0065 1a01          	or	a,(OFST-3,sp)
3960  0067 2707          	jreq	L133
3961                     ; 2060     bitstatus = SET;
3962  0069 ae0001        	ldw	x,#1
3963  006c 1f03          	ldw	(OFST-1,sp),x
3965  006e 2003          	jra	L333
3966  0070               L133:
3967                     ; 2064     bitstatus = RESET;
3968  0070 5f            	clrw	x
3969  0071 1f03          	ldw	(OFST-1,sp),x
3970  0073               L333:
3971                     ; 2066   return (FlagStatus)(bitstatus);
3972  0073 1e03          	ldw	x,(OFST-1,sp)
3974  0075 5b06          	addw	sp,#6
3975  0077 81            	ret
3977                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
3977                     ; 2088 {
3978                     .text:	section	.text,new
3979  0000               _TIM1_ClearFlag:
3980  0000 89            	pushw	x
3981       00000000      OFST:	set	0
3983                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
3984  0001 01            	rrwa	x,a
3985  0002 9f            	ld	a,xl
3986  0003 a4e1          	and	a,#225
3987  0005 97            	ld	xl,a
3988  0006 4f            	clr	a
3989  0007 02            	rlwa	x,a
3990  0008 5d            	tnzw	x
3991  0009 2607          	jrne	L2331
3992  000b 1e01          	ldw	x,(OFST+1,sp)
3993  000d 2703          	jreq	L2331
3994  000f 4f            	clr	a
3995  0010 2010          	jra	L4331
3996  0012               L2331:
3997  0012 ae082a        	ldw	x,#2090
3998  0015 89            	pushw	x
3999  0016 ae0000        	ldw	x,#0
4000  0019 89            	pushw	x
4001  001a ae0000        	ldw	x,#L31
4002  001d cd0000        	call	_assert_failed
4004  0020 5b04          	addw	sp,#4
4005  0022               L4331:
4006                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
4007  0022 7b02          	ld	a,(OFST+2,sp)
4008  0024 43            	cpl	a
4009  0025 c75255        	ld	21077,a
4010                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
4010                     ; 2095                         (uint8_t)0x1E);
4011  0028 1e01          	ldw	x,(OFST+1,sp)
4012  002a 4f            	clr	a
4013  002b 01            	rrwa	x,a
4014  002c 9f            	ld	a,xl
4015  002d 43            	cpl	a
4016  002e a41e          	and	a,#30
4017  0030 c75256        	ld	21078,a
4018                     ; 2096 }
4019  0033 85            	popw	x
4020  0034 81            	ret
4022                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
4022                     ; 2113 {
4023                     .text:	section	.text,new
4024  0000               _TIM1_GetITStatus:
4025  0000 89            	pushw	x
4026  0001 5204          	subw	sp,#4
4027       00000004      OFST:	set	4
4029                     ; 2114   ITStatus bitstatus = RESET;
4030                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
4032                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
4033  0003 a30001        	cpw	x,#1
4034  0006 2723          	jreq	L2431
4035  0008 a30002        	cpw	x,#2
4036  000b 271e          	jreq	L2431
4037  000d a30004        	cpw	x,#4
4038  0010 2719          	jreq	L2431
4039  0012 a30008        	cpw	x,#8
4040  0015 2714          	jreq	L2431
4041  0017 a30010        	cpw	x,#16
4042  001a 270f          	jreq	L2431
4043  001c a30020        	cpw	x,#32
4044  001f 270a          	jreq	L2431
4045  0021 a30040        	cpw	x,#64
4046  0024 2705          	jreq	L2431
4047  0026 a30080        	cpw	x,#128
4048  0029 2603          	jrne	L0431
4049  002b               L2431:
4050  002b 4f            	clr	a
4051  002c 2010          	jra	L4431
4052  002e               L0431:
4053  002e ae0846        	ldw	x,#2118
4054  0031 89            	pushw	x
4055  0032 ae0000        	ldw	x,#0
4056  0035 89            	pushw	x
4057  0036 ae0000        	ldw	x,#L31
4058  0039 cd0000        	call	_assert_failed
4060  003c 5b04          	addw	sp,#4
4061  003e               L4431:
4062                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
4063  003e c65255        	ld	a,21077
4064  0041 1406          	and	a,(OFST+2,sp)
4065  0043 6b01          	ld	(OFST-3,sp),a
4066                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
4067  0045 c65254        	ld	a,21076
4068  0048 1406          	and	a,(OFST+2,sp)
4069  004a 6b02          	ld	(OFST-2,sp),a
4070                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
4071  004c 0d01          	tnz	(OFST-3,sp)
4072  004e 270b          	jreq	L533
4074  0050 0d02          	tnz	(OFST-2,sp)
4075  0052 2707          	jreq	L533
4076                     ; 2126     bitstatus = SET;
4077  0054 ae0001        	ldw	x,#1
4078  0057 1f03          	ldw	(OFST-1,sp),x
4080  0059 2003          	jra	L733
4081  005b               L533:
4082                     ; 2130     bitstatus = RESET;
4083  005b 5f            	clrw	x
4084  005c 1f03          	ldw	(OFST-1,sp),x
4085  005e               L733:
4086                     ; 2132   return (ITStatus)(bitstatus);
4087  005e 1e03          	ldw	x,(OFST-1,sp)
4089  0060 5b06          	addw	sp,#6
4090  0062 81            	ret
4092                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
4092                     ; 2150 {
4093                     .text:	section	.text,new
4094  0000               _TIM1_ClearITPendingBit:
4095  0000 89            	pushw	x
4096       00000000      OFST:	set	0
4098                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
4099  0001 a30000        	cpw	x,#0
4100  0004 2703          	jreq	L0531
4101  0006 4f            	clr	a
4102  0007 2010          	jra	L2531
4103  0009               L0531:
4104  0009 ae0868        	ldw	x,#2152
4105  000c 89            	pushw	x
4106  000d ae0000        	ldw	x,#0
4107  0010 89            	pushw	x
4108  0011 ae0000        	ldw	x,#L31
4109  0014 cd0000        	call	_assert_failed
4111  0017 5b04          	addw	sp,#4
4112  0019               L2531:
4113                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
4114  0019 7b02          	ld	a,(OFST+2,sp)
4115  001b 43            	cpl	a
4116  001c c75255        	ld	21077,a
4117                     ; 2156 }
4118  001f 85            	popw	x
4119  0020 81            	ret
4121                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
4121                     ; 2175                        uint8_t TIM1_ICSelection,
4121                     ; 2176                        uint8_t TIM1_ICFilter)
4121                     ; 2177 {
4122                     .text:	section	.text,new
4123  0000               L3_TI1_Config:
4124  0000 89            	pushw	x
4125  0001 88            	push	a
4126       00000001      OFST:	set	1
4128                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
4129  0002 7211525c      	bres	21084,#0
4130                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
4130                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
4131  0006 7b06          	ld	a,(OFST+5,sp)
4132  0008 97            	ld	xl,a
4133  0009 a610          	ld	a,#16
4134  000b 42            	mul	x,a
4135  000c 9f            	ld	a,xl
4136  000d 1a03          	or	a,(OFST+2,sp)
4137  000f 6b01          	ld	(OFST+0,sp),a
4138  0011 c65258        	ld	a,21080
4139  0014 a40c          	and	a,#12
4140  0016 1a01          	or	a,(OFST+0,sp)
4141  0018 c75258        	ld	21080,a
4142                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
4143  001b 0d02          	tnz	(OFST+1,sp)
4144  001d 2706          	jreq	L143
4145                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4146  001f 7212525c      	bset	21084,#1
4148  0023 2004          	jra	L343
4149  0025               L143:
4150                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4151  0025 7213525c      	bres	21084,#1
4152  0029               L343:
4153                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
4154  0029 7210525c      	bset	21084,#0
4155                     ; 2197 }
4156  002d 5b03          	addw	sp,#3
4157  002f 81            	ret
4159                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
4159                     ; 2216                        uint8_t TIM1_ICSelection,
4159                     ; 2217                        uint8_t TIM1_ICFilter)
4159                     ; 2218 {
4160                     .text:	section	.text,new
4161  0000               L5_TI2_Config:
4162  0000 89            	pushw	x
4163  0001 88            	push	a
4164       00000001      OFST:	set	1
4166                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
4167  0002 7219525c      	bres	21084,#4
4168                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
4168                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
4169  0006 7b06          	ld	a,(OFST+5,sp)
4170  0008 97            	ld	xl,a
4171  0009 a610          	ld	a,#16
4172  000b 42            	mul	x,a
4173  000c 9f            	ld	a,xl
4174  000d 1a03          	or	a,(OFST+2,sp)
4175  000f 6b01          	ld	(OFST+0,sp),a
4176  0011 c65259        	ld	a,21081
4177  0014 a40c          	and	a,#12
4178  0016 1a01          	or	a,(OFST+0,sp)
4179  0018 c75259        	ld	21081,a
4180                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
4181  001b 0d02          	tnz	(OFST+1,sp)
4182  001d 2706          	jreq	L543
4183                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4184  001f 721a525c      	bset	21084,#5
4186  0023 2004          	jra	L743
4187  0025               L543:
4188                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4189  0025 721b525c      	bres	21084,#5
4190  0029               L743:
4191                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
4192  0029 7218525c      	bset	21084,#4
4193                     ; 2236 }
4194  002d 5b03          	addw	sp,#3
4195  002f 81            	ret
4197                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
4197                     ; 2255                        uint8_t TIM1_ICSelection,
4197                     ; 2256                        uint8_t TIM1_ICFilter)
4197                     ; 2257 {
4198                     .text:	section	.text,new
4199  0000               L7_TI3_Config:
4200  0000 89            	pushw	x
4201  0001 88            	push	a
4202       00000001      OFST:	set	1
4204                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
4205  0002 7211525d      	bres	21085,#0
4206                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
4206                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
4207  0006 7b06          	ld	a,(OFST+5,sp)
4208  0008 97            	ld	xl,a
4209  0009 a610          	ld	a,#16
4210  000b 42            	mul	x,a
4211  000c 9f            	ld	a,xl
4212  000d 1a03          	or	a,(OFST+2,sp)
4213  000f 6b01          	ld	(OFST+0,sp),a
4214  0011 c6525a        	ld	a,21082
4215  0014 a40c          	and	a,#12
4216  0016 1a01          	or	a,(OFST+0,sp)
4217  0018 c7525a        	ld	21082,a
4218                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
4219  001b 0d02          	tnz	(OFST+1,sp)
4220  001d 2706          	jreq	L153
4221                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
4222  001f 7212525d      	bset	21085,#1
4224  0023 2004          	jra	L353
4225  0025               L153:
4226                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
4227  0025 7213525d      	bres	21085,#1
4228  0029               L353:
4229                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
4230  0029 7210525d      	bset	21085,#0
4231                     ; 2276 }
4232  002d 5b03          	addw	sp,#3
4233  002f 81            	ret
4235                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
4235                     ; 2295                        uint8_t TIM1_ICSelection,
4235                     ; 2296                        uint8_t TIM1_ICFilter)
4235                     ; 2297 {
4236                     .text:	section	.text,new
4237  0000               L11_TI4_Config:
4238  0000 89            	pushw	x
4239  0001 88            	push	a
4240       00000001      OFST:	set	1
4242                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
4243  0002 7219525d      	bres	21085,#4
4244                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
4244                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
4245  0006 7b06          	ld	a,(OFST+5,sp)
4246  0008 97            	ld	xl,a
4247  0009 a610          	ld	a,#16
4248  000b 42            	mul	x,a
4249  000c 9f            	ld	a,xl
4250  000d 1a03          	or	a,(OFST+2,sp)
4251  000f 6b01          	ld	(OFST+0,sp),a
4252  0011 c6525b        	ld	a,21083
4253  0014 a40c          	and	a,#12
4254  0016 1a01          	or	a,(OFST+0,sp)
4255  0018 c7525b        	ld	21083,a
4256                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
4257  001b 0d02          	tnz	(OFST+1,sp)
4258  001d 2706          	jreq	L553
4259                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
4260  001f 721a525d      	bset	21085,#5
4262  0023 2004          	jra	L753
4263  0025               L553:
4264                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
4265  0025 721b525d      	bres	21085,#5
4266  0029               L753:
4267                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
4268  0029 7218525d      	bset	21085,#4
4269                     ; 2317 }
4270  002d 5b03          	addw	sp,#3
4271  002f 81            	ret
4273                     	xdef	_TIM1_ClearITPendingBit
4274                     	xdef	_TIM1_GetITStatus
4275                     	xdef	_TIM1_ClearFlag
4276                     	xdef	_TIM1_GetFlagStatus
4277                     	xdef	_TIM1_GetPrescaler
4278                     	xdef	_TIM1_GetCounter
4279                     	xdef	_TIM1_GetCapture4
4280                     	xdef	_TIM1_GetCapture3
4281                     	xdef	_TIM1_GetCapture2
4282                     	xdef	_TIM1_GetCapture1
4283                     	xdef	_TIM1_SetIC4Prescaler
4284                     	xdef	_TIM1_SetIC3Prescaler
4285                     	xdef	_TIM1_SetIC2Prescaler
4286                     	xdef	_TIM1_SetIC1Prescaler
4287                     	xdef	_TIM1_SetCompare4
4288                     	xdef	_TIM1_SetCompare3
4289                     	xdef	_TIM1_SetCompare2
4290                     	xdef	_TIM1_SetCompare1
4291                     	xdef	_TIM1_SetAutoreload
4292                     	xdef	_TIM1_SetCounter
4293                     	xdef	_TIM1_SelectOCxM
4294                     	xdef	_TIM1_CCxNCmd
4295                     	xdef	_TIM1_CCxCmd
4296                     	xdef	_TIM1_OC4PolarityConfig
4297                     	xdef	_TIM1_OC3NPolarityConfig
4298                     	xdef	_TIM1_OC3PolarityConfig
4299                     	xdef	_TIM1_OC2NPolarityConfig
4300                     	xdef	_TIM1_OC2PolarityConfig
4301                     	xdef	_TIM1_OC1NPolarityConfig
4302                     	xdef	_TIM1_OC1PolarityConfig
4303                     	xdef	_TIM1_GenerateEvent
4304                     	xdef	_TIM1_OC4FastConfig
4305                     	xdef	_TIM1_OC3FastConfig
4306                     	xdef	_TIM1_OC2FastConfig
4307                     	xdef	_TIM1_OC1FastConfig
4308                     	xdef	_TIM1_OC4PreloadConfig
4309                     	xdef	_TIM1_OC3PreloadConfig
4310                     	xdef	_TIM1_OC2PreloadConfig
4311                     	xdef	_TIM1_OC1PreloadConfig
4312                     	xdef	_TIM1_CCPreloadControl
4313                     	xdef	_TIM1_SelectCOM
4314                     	xdef	_TIM1_ARRPreloadConfig
4315                     	xdef	_TIM1_ForcedOC4Config
4316                     	xdef	_TIM1_ForcedOC3Config
4317                     	xdef	_TIM1_ForcedOC2Config
4318                     	xdef	_TIM1_ForcedOC1Config
4319                     	xdef	_TIM1_CounterModeConfig
4320                     	xdef	_TIM1_PrescalerConfig
4321                     	xdef	_TIM1_EncoderInterfaceConfig
4322                     	xdef	_TIM1_SelectMasterSlaveMode
4323                     	xdef	_TIM1_SelectSlaveMode
4324                     	xdef	_TIM1_SelectOutputTrigger
4325                     	xdef	_TIM1_SelectOnePulseMode
4326                     	xdef	_TIM1_SelectHallSensor
4327                     	xdef	_TIM1_UpdateRequestConfig
4328                     	xdef	_TIM1_UpdateDisableConfig
4329                     	xdef	_TIM1_SelectInputTrigger
4330                     	xdef	_TIM1_TIxExternalClockConfig
4331                     	xdef	_TIM1_ETRConfig
4332                     	xdef	_TIM1_ETRClockMode2Config
4333                     	xdef	_TIM1_ETRClockMode1Config
4334                     	xdef	_TIM1_InternalClockConfig
4335                     	xdef	_TIM1_ITConfig
4336                     	xdef	_TIM1_CtrlPWMOutputs
4337                     	xdef	_TIM1_Cmd
4338                     	xdef	_TIM1_PWMIConfig
4339                     	xdef	_TIM1_ICInit
4340                     	xdef	_TIM1_BDTRConfig
4341                     	xdef	_TIM1_OC4Init
4342                     	xdef	_TIM1_OC3Init
4343                     	xdef	_TIM1_OC2Init
4344                     	xdef	_TIM1_OC1Init
4345                     	xdef	_TIM1_TimeBaseInit
4346                     	xdef	_TIM1_DeInit
4347                     	xref	_assert_failed
4348                     .const:	section	.text
4349  0000               L31:
4350  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
4351  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
4352  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
4353  0036 6d312e6300    	dc.b	"m1.c",0
4354                     	end

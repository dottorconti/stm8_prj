   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 52 void TIM2_DeInit(void)
  17                     ; 53 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _TIM2_DeInit:
  22                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  23  0000 725f5300      	clr	21248
  24                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  25  0004 725f5303      	clr	21251
  26                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  27  0008 725f5305      	clr	21253
  28                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  29  000c 725f530a      	clr	21258
  30                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  31  0010 725f530b      	clr	21259
  32                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  33  0014 725f530a      	clr	21258
  34                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  35  0018 725f530b      	clr	21259
  36                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  37  001c 725f5307      	clr	21255
  38                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  39  0020 725f5308      	clr	21256
  40                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  41  0024 725f5309      	clr	21257
  42                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  43  0028 725f530c      	clr	21260
  44                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  45  002c 725f530d      	clr	21261
  46                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  47  0030 725f530e      	clr	21262
  48                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  49  0034 35ff530f      	mov	21263,#255
  50                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  51  0038 35ff5310      	mov	21264,#255
  52                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  53  003c 725f5311      	clr	21265
  54                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
  55  0040 725f5312      	clr	21266
  56                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
  57  0044 725f5313      	clr	21267
  58                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
  59  0048 725f5314      	clr	21268
  60                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
  61  004c 725f5315      	clr	21269
  62                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
  63  0050 725f5316      	clr	21270
  64                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
  65  0054 725f5304      	clr	21252
  66                     ; 81 }
  67  0058 81            	ret
  69                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
  69                     ; 90                         uint16_t TIM2_Period)
  69                     ; 91 {
  70                     .text:	section	.text,new
  71  0000               _TIM2_TimeBaseInit:
  72  0000 89            	pushw	x
  73       00000000      OFST:	set	0
  75                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
  76  0001 9f            	ld	a,xl
  77  0002 c7530e        	ld	21262,a
  78                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
  79  0005 7b05          	ld	a,(OFST+5,sp)
  80  0007 c7530f        	ld	21263,a
  81                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
  82  000a 7b06          	ld	a,(OFST+6,sp)
  83  000c c75310        	ld	21264,a
  84                     ; 97 }
  85  000f 85            	popw	x
  86  0010 81            	ret
  88                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
  88                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
  88                     ; 110                   uint16_t TIM2_Pulse,
  88                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
  88                     ; 112 {
  89                     .text:	section	.text,new
  90  0000               _TIM2_OC1Init:
  91  0000 89            	pushw	x
  92  0001 88            	push	a
  93       00000001      OFST:	set	1
  95                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
  96  0002 a30000        	cpw	x,#0
  97  0005 2719          	jreq	L21
  98  0007 a30010        	cpw	x,#16
  99  000a 2714          	jreq	L21
 100  000c a30020        	cpw	x,#32
 101  000f 270f          	jreq	L21
 102  0011 a30030        	cpw	x,#48
 103  0014 270a          	jreq	L21
 104  0016 a30060        	cpw	x,#96
 105  0019 2705          	jreq	L21
 106  001b a30070        	cpw	x,#112
 107  001e 2603          	jrne	L01
 108  0020               L21:
 109  0020 4f            	clr	a
 110  0021 2010          	jra	L41
 111  0023               L01:
 112  0023 ae0072        	ldw	x,#114
 113  0026 89            	pushw	x
 114  0027 ae0000        	ldw	x,#0
 115  002a 89            	pushw	x
 116  002b ae0000        	ldw	x,#L11
 117  002e cd0000        	call	_assert_failed
 119  0031 5b04          	addw	sp,#4
 120  0033               L41:
 121                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 122  0033 1e06          	ldw	x,(OFST+5,sp)
 123  0035 2707          	jreq	L02
 124  0037 1e06          	ldw	x,(OFST+5,sp)
 125  0039 a30011        	cpw	x,#17
 126  003c 2603          	jrne	L61
 127  003e               L02:
 128  003e 4f            	clr	a
 129  003f 2010          	jra	L22
 130  0041               L61:
 131  0041 ae0073        	ldw	x,#115
 132  0044 89            	pushw	x
 133  0045 ae0000        	ldw	x,#0
 134  0048 89            	pushw	x
 135  0049 ae0000        	ldw	x,#L11
 136  004c cd0000        	call	_assert_failed
 138  004f 5b04          	addw	sp,#4
 139  0051               L22:
 140                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 141  0051 1e0a          	ldw	x,(OFST+9,sp)
 142  0053 2707          	jreq	L62
 143  0055 1e0a          	ldw	x,(OFST+9,sp)
 144  0057 a30022        	cpw	x,#34
 145  005a 2603          	jrne	L42
 146  005c               L62:
 147  005c 4f            	clr	a
 148  005d 2010          	jra	L03
 149  005f               L42:
 150  005f ae0074        	ldw	x,#116
 151  0062 89            	pushw	x
 152  0063 ae0000        	ldw	x,#0
 153  0066 89            	pushw	x
 154  0067 ae0000        	ldw	x,#L11
 155  006a cd0000        	call	_assert_failed
 157  006d 5b04          	addw	sp,#4
 158  006f               L03:
 159                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 160  006f c6530a        	ld	a,21258
 161  0072 a4fc          	and	a,#252
 162  0074 c7530a        	ld	21258,a
 163                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 163                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 164  0077 7b0b          	ld	a,(OFST+10,sp)
 165  0079 a402          	and	a,#2
 166  007b 6b01          	ld	(OFST+0,sp),a
 167  007d 7b07          	ld	a,(OFST+6,sp)
 168  007f a401          	and	a,#1
 169  0081 1a01          	or	a,(OFST+0,sp)
 170  0083 ca530a        	or	a,21258
 171  0086 c7530a        	ld	21258,a
 172                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 172                     ; 126                           (uint8_t)TIM2_OCMode);
 173  0089 c65307        	ld	a,21255
 174  008c a48f          	and	a,#143
 175  008e 1a03          	or	a,(OFST+2,sp)
 176  0090 c75307        	ld	21255,a
 177                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 178  0093 7b08          	ld	a,(OFST+7,sp)
 179  0095 c75311        	ld	21265,a
 180                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 181  0098 7b09          	ld	a,(OFST+8,sp)
 182  009a c75312        	ld	21266,a
 183                     ; 131 }
 184  009d 5b03          	addw	sp,#3
 185  009f 81            	ret
 187                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 187                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 187                     ; 144                   uint16_t TIM2_Pulse,
 187                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 187                     ; 146 {
 188                     .text:	section	.text,new
 189  0000               _TIM2_OC2Init:
 190  0000 89            	pushw	x
 191  0001 88            	push	a
 192       00000001      OFST:	set	1
 194                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 195  0002 a30000        	cpw	x,#0
 196  0005 2719          	jreq	L63
 197  0007 a30010        	cpw	x,#16
 198  000a 2714          	jreq	L63
 199  000c a30020        	cpw	x,#32
 200  000f 270f          	jreq	L63
 201  0011 a30030        	cpw	x,#48
 202  0014 270a          	jreq	L63
 203  0016 a30060        	cpw	x,#96
 204  0019 2705          	jreq	L63
 205  001b a30070        	cpw	x,#112
 206  001e 2603          	jrne	L43
 207  0020               L63:
 208  0020 4f            	clr	a
 209  0021 2010          	jra	L04
 210  0023               L43:
 211  0023 ae0094        	ldw	x,#148
 212  0026 89            	pushw	x
 213  0027 ae0000        	ldw	x,#0
 214  002a 89            	pushw	x
 215  002b ae0000        	ldw	x,#L11
 216  002e cd0000        	call	_assert_failed
 218  0031 5b04          	addw	sp,#4
 219  0033               L04:
 220                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 221  0033 1e06          	ldw	x,(OFST+5,sp)
 222  0035 2707          	jreq	L44
 223  0037 1e06          	ldw	x,(OFST+5,sp)
 224  0039 a30011        	cpw	x,#17
 225  003c 2603          	jrne	L24
 226  003e               L44:
 227  003e 4f            	clr	a
 228  003f 2010          	jra	L64
 229  0041               L24:
 230  0041 ae0095        	ldw	x,#149
 231  0044 89            	pushw	x
 232  0045 ae0000        	ldw	x,#0
 233  0048 89            	pushw	x
 234  0049 ae0000        	ldw	x,#L11
 235  004c cd0000        	call	_assert_failed
 237  004f 5b04          	addw	sp,#4
 238  0051               L64:
 239                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 240  0051 1e0a          	ldw	x,(OFST+9,sp)
 241  0053 2707          	jreq	L25
 242  0055 1e0a          	ldw	x,(OFST+9,sp)
 243  0057 a30022        	cpw	x,#34
 244  005a 2603          	jrne	L05
 245  005c               L25:
 246  005c 4f            	clr	a
 247  005d 2010          	jra	L45
 248  005f               L05:
 249  005f ae0096        	ldw	x,#150
 250  0062 89            	pushw	x
 251  0063 ae0000        	ldw	x,#0
 252  0066 89            	pushw	x
 253  0067 ae0000        	ldw	x,#L11
 254  006a cd0000        	call	_assert_failed
 256  006d 5b04          	addw	sp,#4
 257  006f               L45:
 258                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 259  006f c6530a        	ld	a,21258
 260  0072 a4cf          	and	a,#207
 261  0074 c7530a        	ld	21258,a
 262                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 262                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 263  0077 7b0b          	ld	a,(OFST+10,sp)
 264  0079 a420          	and	a,#32
 265  007b 6b01          	ld	(OFST+0,sp),a
 266  007d 7b07          	ld	a,(OFST+6,sp)
 267  007f a410          	and	a,#16
 268  0081 1a01          	or	a,(OFST+0,sp)
 269  0083 ca530a        	or	a,21258
 270  0086 c7530a        	ld	21258,a
 271                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 271                     ; 162                           (uint8_t)TIM2_OCMode);
 272  0089 c65308        	ld	a,21256
 273  008c a48f          	and	a,#143
 274  008e 1a03          	or	a,(OFST+2,sp)
 275  0090 c75308        	ld	21256,a
 276                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 277  0093 7b08          	ld	a,(OFST+7,sp)
 278  0095 c75313        	ld	21267,a
 279                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 280  0098 7b09          	ld	a,(OFST+8,sp)
 281  009a c75314        	ld	21268,a
 282                     ; 168 }
 283  009d 5b03          	addw	sp,#3
 284  009f 81            	ret
 286                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 286                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 286                     ; 181                   uint16_t TIM2_Pulse,
 286                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 286                     ; 183 {
 287                     .text:	section	.text,new
 288  0000               _TIM2_OC3Init:
 289  0000 89            	pushw	x
 290  0001 88            	push	a
 291       00000001      OFST:	set	1
 293                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 294  0002 a30000        	cpw	x,#0
 295  0005 2719          	jreq	L26
 296  0007 a30010        	cpw	x,#16
 297  000a 2714          	jreq	L26
 298  000c a30020        	cpw	x,#32
 299  000f 270f          	jreq	L26
 300  0011 a30030        	cpw	x,#48
 301  0014 270a          	jreq	L26
 302  0016 a30060        	cpw	x,#96
 303  0019 2705          	jreq	L26
 304  001b a30070        	cpw	x,#112
 305  001e 2603          	jrne	L06
 306  0020               L26:
 307  0020 4f            	clr	a
 308  0021 2010          	jra	L46
 309  0023               L06:
 310  0023 ae00b9        	ldw	x,#185
 311  0026 89            	pushw	x
 312  0027 ae0000        	ldw	x,#0
 313  002a 89            	pushw	x
 314  002b ae0000        	ldw	x,#L11
 315  002e cd0000        	call	_assert_failed
 317  0031 5b04          	addw	sp,#4
 318  0033               L46:
 319                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 320  0033 1e06          	ldw	x,(OFST+5,sp)
 321  0035 2707          	jreq	L07
 322  0037 1e06          	ldw	x,(OFST+5,sp)
 323  0039 a30011        	cpw	x,#17
 324  003c 2603          	jrne	L66
 325  003e               L07:
 326  003e 4f            	clr	a
 327  003f 2010          	jra	L27
 328  0041               L66:
 329  0041 ae00ba        	ldw	x,#186
 330  0044 89            	pushw	x
 331  0045 ae0000        	ldw	x,#0
 332  0048 89            	pushw	x
 333  0049 ae0000        	ldw	x,#L11
 334  004c cd0000        	call	_assert_failed
 336  004f 5b04          	addw	sp,#4
 337  0051               L27:
 338                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 339  0051 1e0a          	ldw	x,(OFST+9,sp)
 340  0053 2707          	jreq	L67
 341  0055 1e0a          	ldw	x,(OFST+9,sp)
 342  0057 a30022        	cpw	x,#34
 343  005a 2603          	jrne	L47
 344  005c               L67:
 345  005c 4f            	clr	a
 346  005d 2010          	jra	L001
 347  005f               L47:
 348  005f ae00bb        	ldw	x,#187
 349  0062 89            	pushw	x
 350  0063 ae0000        	ldw	x,#0
 351  0066 89            	pushw	x
 352  0067 ae0000        	ldw	x,#L11
 353  006a cd0000        	call	_assert_failed
 355  006d 5b04          	addw	sp,#4
 356  006f               L001:
 357                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 358  006f c6530b        	ld	a,21259
 359  0072 a4fc          	and	a,#252
 360  0074 c7530b        	ld	21259,a
 361                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 361                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 362  0077 7b0b          	ld	a,(OFST+10,sp)
 363  0079 a402          	and	a,#2
 364  007b 6b01          	ld	(OFST+0,sp),a
 365  007d 7b07          	ld	a,(OFST+6,sp)
 366  007f a401          	and	a,#1
 367  0081 1a01          	or	a,(OFST+0,sp)
 368  0083 ca530b        	or	a,21259
 369  0086 c7530b        	ld	21259,a
 370                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 370                     ; 196                           (uint8_t)TIM2_OCMode);
 371  0089 c65309        	ld	a,21257
 372  008c a48f          	and	a,#143
 373  008e 1a03          	or	a,(OFST+2,sp)
 374  0090 c75309        	ld	21257,a
 375                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 376  0093 7b08          	ld	a,(OFST+7,sp)
 377  0095 c75315        	ld	21269,a
 378                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 379  0098 7b09          	ld	a,(OFST+8,sp)
 380  009a c75316        	ld	21270,a
 381                     ; 201 }
 382  009d 5b03          	addw	sp,#3
 383  009f 81            	ret
 385                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 385                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 385                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 385                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 385                     ; 216                  uint8_t TIM2_ICFilter)
 385                     ; 217 {
 386                     .text:	section	.text,new
 387  0000               _TIM2_ICInit:
 388  0000 89            	pushw	x
 389       00000000      OFST:	set	0
 391                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 392  0001 a30000        	cpw	x,#0
 393  0004 270a          	jreq	L601
 394  0006 a30001        	cpw	x,#1
 395  0009 2705          	jreq	L601
 396  000b a30002        	cpw	x,#2
 397  000e 2603          	jrne	L401
 398  0010               L601:
 399  0010 4f            	clr	a
 400  0011 2010          	jra	L011
 401  0013               L401:
 402  0013 ae00db        	ldw	x,#219
 403  0016 89            	pushw	x
 404  0017 ae0000        	ldw	x,#0
 405  001a 89            	pushw	x
 406  001b ae0000        	ldw	x,#L11
 407  001e cd0000        	call	_assert_failed
 409  0021 5b04          	addw	sp,#4
 410  0023               L011:
 411                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 412  0023 1e05          	ldw	x,(OFST+5,sp)
 413  0025 2707          	jreq	L411
 414  0027 1e05          	ldw	x,(OFST+5,sp)
 415  0029 a30044        	cpw	x,#68
 416  002c 2603          	jrne	L211
 417  002e               L411:
 418  002e 4f            	clr	a
 419  002f 2010          	jra	L611
 420  0031               L211:
 421  0031 ae00dc        	ldw	x,#220
 422  0034 89            	pushw	x
 423  0035 ae0000        	ldw	x,#0
 424  0038 89            	pushw	x
 425  0039 ae0000        	ldw	x,#L11
 426  003c cd0000        	call	_assert_failed
 428  003f 5b04          	addw	sp,#4
 429  0041               L611:
 430                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 431  0041 1e07          	ldw	x,(OFST+7,sp)
 432  0043 a30001        	cpw	x,#1
 433  0046 270e          	jreq	L221
 434  0048 1e07          	ldw	x,(OFST+7,sp)
 435  004a a30002        	cpw	x,#2
 436  004d 2707          	jreq	L221
 437  004f 1e07          	ldw	x,(OFST+7,sp)
 438  0051 a30003        	cpw	x,#3
 439  0054 2603          	jrne	L021
 440  0056               L221:
 441  0056 4f            	clr	a
 442  0057 2010          	jra	L421
 443  0059               L021:
 444  0059 ae00dd        	ldw	x,#221
 445  005c 89            	pushw	x
 446  005d ae0000        	ldw	x,#0
 447  0060 89            	pushw	x
 448  0061 ae0000        	ldw	x,#L11
 449  0064 cd0000        	call	_assert_failed
 451  0067 5b04          	addw	sp,#4
 452  0069               L421:
 453                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 454  0069 1e09          	ldw	x,(OFST+9,sp)
 455  006b 2715          	jreq	L031
 456  006d 1e09          	ldw	x,(OFST+9,sp)
 457  006f a30004        	cpw	x,#4
 458  0072 270e          	jreq	L031
 459  0074 1e09          	ldw	x,(OFST+9,sp)
 460  0076 a30008        	cpw	x,#8
 461  0079 2707          	jreq	L031
 462  007b 1e09          	ldw	x,(OFST+9,sp)
 463  007d a3000c        	cpw	x,#12
 464  0080 2603          	jrne	L621
 465  0082               L031:
 466  0082 4f            	clr	a
 467  0083 2010          	jra	L231
 468  0085               L621:
 469  0085 ae00de        	ldw	x,#222
 470  0088 89            	pushw	x
 471  0089 ae0000        	ldw	x,#0
 472  008c 89            	pushw	x
 473  008d ae0000        	ldw	x,#L11
 474  0090 cd0000        	call	_assert_failed
 476  0093 5b04          	addw	sp,#4
 477  0095               L231:
 478                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 479  0095 7b0b          	ld	a,(OFST+11,sp)
 480  0097 a110          	cp	a,#16
 481  0099 2403          	jruge	L431
 482  009b 4f            	clr	a
 483  009c 2010          	jra	L631
 484  009e               L431:
 485  009e ae00df        	ldw	x,#223
 486  00a1 89            	pushw	x
 487  00a2 ae0000        	ldw	x,#0
 488  00a5 89            	pushw	x
 489  00a6 ae0000        	ldw	x,#L11
 490  00a9 cd0000        	call	_assert_failed
 492  00ac 5b04          	addw	sp,#4
 493  00ae               L631:
 494                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
 495  00ae 1e01          	ldw	x,(OFST+1,sp)
 496  00b0 2614          	jrne	L31
 497                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
 497                     ; 229                (uint8_t)TIM2_ICSelection,
 497                     ; 230                (uint8_t)TIM2_ICFilter);
 498  00b2 7b0b          	ld	a,(OFST+11,sp)
 499  00b4 88            	push	a
 500  00b5 7b09          	ld	a,(OFST+9,sp)
 501  00b7 97            	ld	xl,a
 502  00b8 7b07          	ld	a,(OFST+7,sp)
 503  00ba 95            	ld	xh,a
 504  00bb cd0000        	call	L3_TI1_Config
 506  00be 84            	pop	a
 507                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 508  00bf 1e09          	ldw	x,(OFST+9,sp)
 509  00c1 cd0000        	call	_TIM2_SetIC1Prescaler
 512  00c4 202d          	jra	L51
 513  00c6               L31:
 514                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
 515  00c6 1e01          	ldw	x,(OFST+1,sp)
 516  00c8 a30001        	cpw	x,#1
 517  00cb 2614          	jrne	L71
 518                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
 518                     ; 239                (uint8_t)TIM2_ICSelection,
 518                     ; 240                (uint8_t)TIM2_ICFilter);
 519  00cd 7b0b          	ld	a,(OFST+11,sp)
 520  00cf 88            	push	a
 521  00d0 7b09          	ld	a,(OFST+9,sp)
 522  00d2 97            	ld	xl,a
 523  00d3 7b07          	ld	a,(OFST+7,sp)
 524  00d5 95            	ld	xh,a
 525  00d6 cd0000        	call	L5_TI2_Config
 527  00d9 84            	pop	a
 528                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 529  00da 1e09          	ldw	x,(OFST+9,sp)
 530  00dc cd0000        	call	_TIM2_SetIC2Prescaler
 533  00df 2012          	jra	L51
 534  00e1               L71:
 535                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
 535                     ; 249                (uint8_t)TIM2_ICSelection,
 535                     ; 250                (uint8_t)TIM2_ICFilter);
 536  00e1 7b0b          	ld	a,(OFST+11,sp)
 537  00e3 88            	push	a
 538  00e4 7b09          	ld	a,(OFST+9,sp)
 539  00e6 97            	ld	xl,a
 540  00e7 7b07          	ld	a,(OFST+7,sp)
 541  00e9 95            	ld	xh,a
 542  00ea cd0000        	call	L7_TI3_Config
 544  00ed 84            	pop	a
 545                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
 546  00ee 1e09          	ldw	x,(OFST+9,sp)
 547  00f0 cd0000        	call	_TIM2_SetIC3Prescaler
 549  00f3               L51:
 550                     ; 255 }
 551  00f3 85            	popw	x
 552  00f4 81            	ret
 554                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
 554                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 554                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
 554                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 554                     ; 270                      uint8_t TIM2_ICFilter)
 554                     ; 271 {
 555                     .text:	section	.text,new
 556  0000               _TIM2_PWMIConfig:
 557  0000 89            	pushw	x
 558  0001 89            	pushw	x
 559       00000002      OFST:	set	2
 561                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
 562                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
 563                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
 564  0002 a30000        	cpw	x,#0
 565  0005 2705          	jreq	L441
 566  0007 a30001        	cpw	x,#1
 567  000a 2603          	jrne	L241
 568  000c               L441:
 569  000c 4f            	clr	a
 570  000d 2010          	jra	L641
 571  000f               L241:
 572  000f ae0114        	ldw	x,#276
 573  0012 89            	pushw	x
 574  0013 ae0000        	ldw	x,#0
 575  0016 89            	pushw	x
 576  0017 ae0000        	ldw	x,#L11
 577  001a cd0000        	call	_assert_failed
 579  001d 5b04          	addw	sp,#4
 580  001f               L641:
 581                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 582  001f 1e07          	ldw	x,(OFST+5,sp)
 583  0021 2707          	jreq	L251
 584  0023 1e07          	ldw	x,(OFST+5,sp)
 585  0025 a30044        	cpw	x,#68
 586  0028 2603          	jrne	L051
 587  002a               L251:
 588  002a 4f            	clr	a
 589  002b 2010          	jra	L451
 590  002d               L051:
 591  002d ae0115        	ldw	x,#277
 592  0030 89            	pushw	x
 593  0031 ae0000        	ldw	x,#0
 594  0034 89            	pushw	x
 595  0035 ae0000        	ldw	x,#L11
 596  0038 cd0000        	call	_assert_failed
 598  003b 5b04          	addw	sp,#4
 599  003d               L451:
 600                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 601  003d 1e09          	ldw	x,(OFST+7,sp)
 602  003f a30001        	cpw	x,#1
 603  0042 270e          	jreq	L061
 604  0044 1e09          	ldw	x,(OFST+7,sp)
 605  0046 a30002        	cpw	x,#2
 606  0049 2707          	jreq	L061
 607  004b 1e09          	ldw	x,(OFST+7,sp)
 608  004d a30003        	cpw	x,#3
 609  0050 2603          	jrne	L651
 610  0052               L061:
 611  0052 4f            	clr	a
 612  0053 2010          	jra	L261
 613  0055               L651:
 614  0055 ae0116        	ldw	x,#278
 615  0058 89            	pushw	x
 616  0059 ae0000        	ldw	x,#0
 617  005c 89            	pushw	x
 618  005d ae0000        	ldw	x,#L11
 619  0060 cd0000        	call	_assert_failed
 621  0063 5b04          	addw	sp,#4
 622  0065               L261:
 623                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 624  0065 1e0b          	ldw	x,(OFST+9,sp)
 625  0067 2715          	jreq	L661
 626  0069 1e0b          	ldw	x,(OFST+9,sp)
 627  006b a30004        	cpw	x,#4
 628  006e 270e          	jreq	L661
 629  0070 1e0b          	ldw	x,(OFST+9,sp)
 630  0072 a30008        	cpw	x,#8
 631  0075 2707          	jreq	L661
 632  0077 1e0b          	ldw	x,(OFST+9,sp)
 633  0079 a3000c        	cpw	x,#12
 634  007c 2603          	jrne	L461
 635  007e               L661:
 636  007e 4f            	clr	a
 637  007f 2010          	jra	L071
 638  0081               L461:
 639  0081 ae0117        	ldw	x,#279
 640  0084 89            	pushw	x
 641  0085 ae0000        	ldw	x,#0
 642  0088 89            	pushw	x
 643  0089 ae0000        	ldw	x,#L11
 644  008c cd0000        	call	_assert_failed
 646  008f 5b04          	addw	sp,#4
 647  0091               L071:
 648                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
 649  0091 1e07          	ldw	x,(OFST+5,sp)
 650  0093 a30044        	cpw	x,#68
 651  0096 2706          	jreq	L32
 652                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
 653  0098 a644          	ld	a,#68
 654  009a 6b01          	ld	(OFST-1,sp),a
 656  009c 2002          	jra	L52
 657  009e               L32:
 658                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
 659  009e 0f01          	clr	(OFST-1,sp)
 660  00a0               L52:
 661                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
 662  00a0 1e09          	ldw	x,(OFST+7,sp)
 663  00a2 a30001        	cpw	x,#1
 664  00a5 2606          	jrne	L72
 665                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
 666  00a7 a602          	ld	a,#2
 667  00a9 6b02          	ld	(OFST+0,sp),a
 669  00ab 2004          	jra	L13
 670  00ad               L72:
 671                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
 672  00ad a601          	ld	a,#1
 673  00af 6b02          	ld	(OFST+0,sp),a
 674  00b1               L13:
 675                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
 676  00b1 1e03          	ldw	x,(OFST+1,sp)
 677  00b3 2626          	jrne	L33
 678                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
 678                     ; 305                (uint8_t)TIM2_ICFilter);
 679  00b5 7b0d          	ld	a,(OFST+11,sp)
 680  00b7 88            	push	a
 681  00b8 7b0b          	ld	a,(OFST+9,sp)
 682  00ba 97            	ld	xl,a
 683  00bb 7b09          	ld	a,(OFST+7,sp)
 684  00bd 95            	ld	xh,a
 685  00be cd0000        	call	L3_TI1_Config
 687  00c1 84            	pop	a
 688                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 689  00c2 1e0b          	ldw	x,(OFST+9,sp)
 690  00c4 cd0000        	call	_TIM2_SetIC1Prescaler
 692                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
 693  00c7 7b0d          	ld	a,(OFST+11,sp)
 694  00c9 88            	push	a
 695  00ca 7b03          	ld	a,(OFST+1,sp)
 696  00cc 97            	ld	xl,a
 697  00cd 7b02          	ld	a,(OFST+0,sp)
 698  00cf 95            	ld	xh,a
 699  00d0 cd0000        	call	L5_TI2_Config
 701  00d3 84            	pop	a
 702                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 703  00d4 1e0b          	ldw	x,(OFST+9,sp)
 704  00d6 cd0000        	call	_TIM2_SetIC2Prescaler
 707  00d9 2024          	jra	L53
 708  00db               L33:
 709                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
 709                     ; 320                (uint8_t)TIM2_ICFilter);
 710  00db 7b0d          	ld	a,(OFST+11,sp)
 711  00dd 88            	push	a
 712  00de 7b0b          	ld	a,(OFST+9,sp)
 713  00e0 97            	ld	xl,a
 714  00e1 7b09          	ld	a,(OFST+7,sp)
 715  00e3 95            	ld	xh,a
 716  00e4 cd0000        	call	L5_TI2_Config
 718  00e7 84            	pop	a
 719                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 720  00e8 1e0b          	ldw	x,(OFST+9,sp)
 721  00ea cd0000        	call	_TIM2_SetIC2Prescaler
 723                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
 724  00ed 7b0d          	ld	a,(OFST+11,sp)
 725  00ef 88            	push	a
 726  00f0 7b03          	ld	a,(OFST+1,sp)
 727  00f2 97            	ld	xl,a
 728  00f3 7b02          	ld	a,(OFST+0,sp)
 729  00f5 95            	ld	xh,a
 730  00f6 cd0000        	call	L3_TI1_Config
 732  00f9 84            	pop	a
 733                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 734  00fa 1e0b          	ldw	x,(OFST+9,sp)
 735  00fc cd0000        	call	_TIM2_SetIC1Prescaler
 737  00ff               L53:
 738                     ; 331 }
 739  00ff 5b04          	addw	sp,#4
 740  0101 81            	ret
 742                     ; 339 void TIM2_Cmd(FunctionalState NewState)
 742                     ; 340 {
 743                     .text:	section	.text,new
 744  0000               _TIM2_Cmd:
 745  0000 89            	pushw	x
 746       00000000      OFST:	set	0
 748                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 749  0001 a30000        	cpw	x,#0
 750  0004 2705          	jreq	L671
 751  0006 a30001        	cpw	x,#1
 752  0009 2603          	jrne	L471
 753  000b               L671:
 754  000b 4f            	clr	a
 755  000c 2010          	jra	L002
 756  000e               L471:
 757  000e ae0156        	ldw	x,#342
 758  0011 89            	pushw	x
 759  0012 ae0000        	ldw	x,#0
 760  0015 89            	pushw	x
 761  0016 ae0000        	ldw	x,#L11
 762  0019 cd0000        	call	_assert_failed
 764  001c 5b04          	addw	sp,#4
 765  001e               L002:
 766                     ; 345   if (NewState != DISABLE)
 767  001e 1e01          	ldw	x,(OFST+1,sp)
 768  0020 2706          	jreq	L73
 769                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
 770  0022 72105300      	bset	21248,#0
 772  0026 2004          	jra	L14
 773  0028               L73:
 774                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
 775  0028 72115300      	bres	21248,#0
 776  002c               L14:
 777                     ; 353 }
 778  002c 85            	popw	x
 779  002d 81            	ret
 781                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
 781                     ; 369 {
 782                     .text:	section	.text,new
 783  0000               _TIM2_ITConfig:
 784  0000 89            	pushw	x
 785       00000000      OFST:	set	0
 787                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
 788  0001 a30000        	cpw	x,#0
 789  0004 2709          	jreq	L402
 790  0006 9c            	rvf
 791  0007 a30010        	cpw	x,#16
 792  000a 2e03          	jrsge	L402
 793  000c 4f            	clr	a
 794  000d 2010          	jra	L602
 795  000f               L402:
 796  000f ae0173        	ldw	x,#371
 797  0012 89            	pushw	x
 798  0013 ae0000        	ldw	x,#0
 799  0016 89            	pushw	x
 800  0017 ae0000        	ldw	x,#L11
 801  001a cd0000        	call	_assert_failed
 803  001d 5b04          	addw	sp,#4
 804  001f               L602:
 805                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 806  001f 1e05          	ldw	x,(OFST+5,sp)
 807  0021 2707          	jreq	L212
 808  0023 1e05          	ldw	x,(OFST+5,sp)
 809  0025 a30001        	cpw	x,#1
 810  0028 2603          	jrne	L012
 811  002a               L212:
 812  002a 4f            	clr	a
 813  002b 2010          	jra	L412
 814  002d               L012:
 815  002d ae0174        	ldw	x,#372
 816  0030 89            	pushw	x
 817  0031 ae0000        	ldw	x,#0
 818  0034 89            	pushw	x
 819  0035 ae0000        	ldw	x,#L11
 820  0038 cd0000        	call	_assert_failed
 822  003b 5b04          	addw	sp,#4
 823  003d               L412:
 824                     ; 374   if (NewState != DISABLE)
 825  003d 1e05          	ldw	x,(OFST+5,sp)
 826  003f 270a          	jreq	L34
 827                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
 828  0041 c65303        	ld	a,21251
 829  0044 1a02          	or	a,(OFST+2,sp)
 830  0046 c75303        	ld	21251,a
 832  0049 2009          	jra	L54
 833  004b               L34:
 834                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
 835  004b 7b02          	ld	a,(OFST+2,sp)
 836  004d 43            	cpl	a
 837  004e c45303        	and	a,21251
 838  0051 c75303        	ld	21251,a
 839  0054               L54:
 840                     ; 384 }
 841  0054 85            	popw	x
 842  0055 81            	ret
 844                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
 844                     ; 393 {
 845                     .text:	section	.text,new
 846  0000               _TIM2_UpdateDisableConfig:
 847  0000 89            	pushw	x
 848       00000000      OFST:	set	0
 850                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 851  0001 a30000        	cpw	x,#0
 852  0004 2705          	jreq	L222
 853  0006 a30001        	cpw	x,#1
 854  0009 2603          	jrne	L022
 855  000b               L222:
 856  000b 4f            	clr	a
 857  000c 2010          	jra	L422
 858  000e               L022:
 859  000e ae018b        	ldw	x,#395
 860  0011 89            	pushw	x
 861  0012 ae0000        	ldw	x,#0
 862  0015 89            	pushw	x
 863  0016 ae0000        	ldw	x,#L11
 864  0019 cd0000        	call	_assert_failed
 866  001c 5b04          	addw	sp,#4
 867  001e               L422:
 868                     ; 398   if (NewState != DISABLE)
 869  001e 1e01          	ldw	x,(OFST+1,sp)
 870  0020 2706          	jreq	L74
 871                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
 872  0022 72125300      	bset	21248,#1
 874  0026 2004          	jra	L15
 875  0028               L74:
 876                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
 877  0028 72135300      	bres	21248,#1
 878  002c               L15:
 879                     ; 406 }
 880  002c 85            	popw	x
 881  002d 81            	ret
 883                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
 883                     ; 417 {
 884                     .text:	section	.text,new
 885  0000               _TIM2_UpdateRequestConfig:
 886  0000 89            	pushw	x
 887       00000000      OFST:	set	0
 889                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
 890  0001 a30000        	cpw	x,#0
 891  0004 2705          	jreq	L232
 892  0006 a30001        	cpw	x,#1
 893  0009 2603          	jrne	L032
 894  000b               L232:
 895  000b 4f            	clr	a
 896  000c 2010          	jra	L432
 897  000e               L032:
 898  000e ae01a3        	ldw	x,#419
 899  0011 89            	pushw	x
 900  0012 ae0000        	ldw	x,#0
 901  0015 89            	pushw	x
 902  0016 ae0000        	ldw	x,#L11
 903  0019 cd0000        	call	_assert_failed
 905  001c 5b04          	addw	sp,#4
 906  001e               L432:
 907                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
 908  001e 1e01          	ldw	x,(OFST+1,sp)
 909  0020 2706          	jreq	L35
 910                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
 911  0022 72145300      	bset	21248,#2
 913  0026 2004          	jra	L55
 914  0028               L35:
 915                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
 916  0028 72155300      	bres	21248,#2
 917  002c               L55:
 918                     ; 430 }
 919  002c 85            	popw	x
 920  002d 81            	ret
 922                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
 922                     ; 441 {
 923                     .text:	section	.text,new
 924  0000               _TIM2_SelectOnePulseMode:
 925  0000 89            	pushw	x
 926       00000000      OFST:	set	0
 928                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
 929  0001 a30001        	cpw	x,#1
 930  0004 2705          	jreq	L242
 931  0006 a30000        	cpw	x,#0
 932  0009 2603          	jrne	L042
 933  000b               L242:
 934  000b 4f            	clr	a
 935  000c 2010          	jra	L442
 936  000e               L042:
 937  000e ae01bb        	ldw	x,#443
 938  0011 89            	pushw	x
 939  0012 ae0000        	ldw	x,#0
 940  0015 89            	pushw	x
 941  0016 ae0000        	ldw	x,#L11
 942  0019 cd0000        	call	_assert_failed
 944  001c 5b04          	addw	sp,#4
 945  001e               L442:
 946                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
 947  001e 1e01          	ldw	x,(OFST+1,sp)
 948  0020 2706          	jreq	L75
 949                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
 950  0022 72165300      	bset	21248,#3
 952  0026 2004          	jra	L16
 953  0028               L75:
 954                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
 955  0028 72175300      	bres	21248,#3
 956  002c               L16:
 957                     ; 454 }
 958  002c 85            	popw	x
 959  002d 81            	ret
 961                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
 961                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
 961                     ; 486 {
 962                     .text:	section	.text,new
 963  0000               _TIM2_PrescalerConfig:
 964  0000 89            	pushw	x
 965       00000000      OFST:	set	0
 967                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
 968  0001 1e05          	ldw	x,(OFST+5,sp)
 969  0003 2707          	jreq	L252
 970  0005 1e05          	ldw	x,(OFST+5,sp)
 971  0007 a30001        	cpw	x,#1
 972  000a 2603          	jrne	L052
 973  000c               L252:
 974  000c 4f            	clr	a
 975  000d 2010          	jra	L452
 976  000f               L052:
 977  000f ae01e8        	ldw	x,#488
 978  0012 89            	pushw	x
 979  0013 ae0000        	ldw	x,#0
 980  0016 89            	pushw	x
 981  0017 ae0000        	ldw	x,#L11
 982  001a cd0000        	call	_assert_failed
 984  001d 5b04          	addw	sp,#4
 985  001f               L452:
 986                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
 987  001f 1e01          	ldw	x,(OFST+1,sp)
 988  0021 2769          	jreq	L062
 989  0023 1e01          	ldw	x,(OFST+1,sp)
 990  0025 a30001        	cpw	x,#1
 991  0028 2762          	jreq	L062
 992  002a 1e01          	ldw	x,(OFST+1,sp)
 993  002c a30002        	cpw	x,#2
 994  002f 275b          	jreq	L062
 995  0031 1e01          	ldw	x,(OFST+1,sp)
 996  0033 a30003        	cpw	x,#3
 997  0036 2754          	jreq	L062
 998  0038 1e01          	ldw	x,(OFST+1,sp)
 999  003a a30004        	cpw	x,#4
1000  003d 274d          	jreq	L062
1001  003f 1e01          	ldw	x,(OFST+1,sp)
1002  0041 a30005        	cpw	x,#5
1003  0044 2746          	jreq	L062
1004  0046 1e01          	ldw	x,(OFST+1,sp)
1005  0048 a30006        	cpw	x,#6
1006  004b 273f          	jreq	L062
1007  004d 1e01          	ldw	x,(OFST+1,sp)
1008  004f a30007        	cpw	x,#7
1009  0052 2738          	jreq	L062
1010  0054 1e01          	ldw	x,(OFST+1,sp)
1011  0056 a30008        	cpw	x,#8
1012  0059 2731          	jreq	L062
1013  005b 1e01          	ldw	x,(OFST+1,sp)
1014  005d a30009        	cpw	x,#9
1015  0060 272a          	jreq	L062
1016  0062 1e01          	ldw	x,(OFST+1,sp)
1017  0064 a3000a        	cpw	x,#10
1018  0067 2723          	jreq	L062
1019  0069 1e01          	ldw	x,(OFST+1,sp)
1020  006b a3000b        	cpw	x,#11
1021  006e 271c          	jreq	L062
1022  0070 1e01          	ldw	x,(OFST+1,sp)
1023  0072 a3000c        	cpw	x,#12
1024  0075 2715          	jreq	L062
1025  0077 1e01          	ldw	x,(OFST+1,sp)
1026  0079 a3000d        	cpw	x,#13
1027  007c 270e          	jreq	L062
1028  007e 1e01          	ldw	x,(OFST+1,sp)
1029  0080 a3000e        	cpw	x,#14
1030  0083 2707          	jreq	L062
1031  0085 1e01          	ldw	x,(OFST+1,sp)
1032  0087 a3000f        	cpw	x,#15
1033  008a 2603          	jrne	L652
1034  008c               L062:
1035  008c 4f            	clr	a
1036  008d 2010          	jra	L262
1037  008f               L652:
1038  008f ae01e9        	ldw	x,#489
1039  0092 89            	pushw	x
1040  0093 ae0000        	ldw	x,#0
1041  0096 89            	pushw	x
1042  0097 ae0000        	ldw	x,#L11
1043  009a cd0000        	call	_assert_failed
1045  009d 5b04          	addw	sp,#4
1046  009f               L262:
1047                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
1048  009f 7b02          	ld	a,(OFST+2,sp)
1049  00a1 c7530e        	ld	21262,a
1050                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1051  00a4 7b06          	ld	a,(OFST+6,sp)
1052  00a6 c75306        	ld	21254,a
1053                     ; 496 }
1054  00a9 85            	popw	x
1055  00aa 81            	ret
1057                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1057                     ; 508 {
1058                     .text:	section	.text,new
1059  0000               _TIM2_ForcedOC1Config:
1060  0000 89            	pushw	x
1061       00000000      OFST:	set	0
1063                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1064  0001 a30050        	cpw	x,#80
1065  0004 2705          	jreq	L072
1066  0006 a30040        	cpw	x,#64
1067  0009 2603          	jrne	L662
1068  000b               L072:
1069  000b 4f            	clr	a
1070  000c 2010          	jra	L272
1071  000e               L662:
1072  000e ae01fe        	ldw	x,#510
1073  0011 89            	pushw	x
1074  0012 ae0000        	ldw	x,#0
1075  0015 89            	pushw	x
1076  0016 ae0000        	ldw	x,#L11
1077  0019 cd0000        	call	_assert_failed
1079  001c 5b04          	addw	sp,#4
1080  001e               L272:
1081                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1081                     ; 514                             | (uint8_t)TIM2_ForcedAction);
1082  001e c65307        	ld	a,21255
1083  0021 a48f          	and	a,#143
1084  0023 1a02          	or	a,(OFST+2,sp)
1085  0025 c75307        	ld	21255,a
1086                     ; 515 }
1087  0028 85            	popw	x
1088  0029 81            	ret
1090                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1090                     ; 527 {
1091                     .text:	section	.text,new
1092  0000               _TIM2_ForcedOC2Config:
1093  0000 89            	pushw	x
1094       00000000      OFST:	set	0
1096                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1097  0001 a30050        	cpw	x,#80
1098  0004 2705          	jreq	L003
1099  0006 a30040        	cpw	x,#64
1100  0009 2603          	jrne	L672
1101  000b               L003:
1102  000b 4f            	clr	a
1103  000c 2010          	jra	L203
1104  000e               L672:
1105  000e ae0211        	ldw	x,#529
1106  0011 89            	pushw	x
1107  0012 ae0000        	ldw	x,#0
1108  0015 89            	pushw	x
1109  0016 ae0000        	ldw	x,#L11
1110  0019 cd0000        	call	_assert_failed
1112  001c 5b04          	addw	sp,#4
1113  001e               L203:
1114                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1114                     ; 533                           | (uint8_t)TIM2_ForcedAction);
1115  001e c65308        	ld	a,21256
1116  0021 a48f          	and	a,#143
1117  0023 1a02          	or	a,(OFST+2,sp)
1118  0025 c75308        	ld	21256,a
1119                     ; 534 }
1120  0028 85            	popw	x
1121  0029 81            	ret
1123                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1123                     ; 546 {
1124                     .text:	section	.text,new
1125  0000               _TIM2_ForcedOC3Config:
1126  0000 89            	pushw	x
1127       00000000      OFST:	set	0
1129                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1130  0001 a30050        	cpw	x,#80
1131  0004 2705          	jreq	L013
1132  0006 a30040        	cpw	x,#64
1133  0009 2603          	jrne	L603
1134  000b               L013:
1135  000b 4f            	clr	a
1136  000c 2010          	jra	L213
1137  000e               L603:
1138  000e ae0224        	ldw	x,#548
1139  0011 89            	pushw	x
1140  0012 ae0000        	ldw	x,#0
1141  0015 89            	pushw	x
1142  0016 ae0000        	ldw	x,#L11
1143  0019 cd0000        	call	_assert_failed
1145  001c 5b04          	addw	sp,#4
1146  001e               L213:
1147                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1147                     ; 552                             | (uint8_t)TIM2_ForcedAction);
1148  001e c65309        	ld	a,21257
1149  0021 a48f          	and	a,#143
1150  0023 1a02          	or	a,(OFST+2,sp)
1151  0025 c75309        	ld	21257,a
1152                     ; 553 }
1153  0028 85            	popw	x
1154  0029 81            	ret
1156                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1156                     ; 562 {
1157                     .text:	section	.text,new
1158  0000               _TIM2_ARRPreloadConfig:
1159  0000 89            	pushw	x
1160       00000000      OFST:	set	0
1162                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1163  0001 a30000        	cpw	x,#0
1164  0004 2705          	jreq	L023
1165  0006 a30001        	cpw	x,#1
1166  0009 2603          	jrne	L613
1167  000b               L023:
1168  000b 4f            	clr	a
1169  000c 2010          	jra	L223
1170  000e               L613:
1171  000e ae0234        	ldw	x,#564
1172  0011 89            	pushw	x
1173  0012 ae0000        	ldw	x,#0
1174  0015 89            	pushw	x
1175  0016 ae0000        	ldw	x,#L11
1176  0019 cd0000        	call	_assert_failed
1178  001c 5b04          	addw	sp,#4
1179  001e               L223:
1180                     ; 567   if (NewState != DISABLE)
1181  001e 1e01          	ldw	x,(OFST+1,sp)
1182  0020 2706          	jreq	L36
1183                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
1184  0022 721e5300      	bset	21248,#7
1186  0026 2004          	jra	L56
1187  0028               L36:
1188                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
1189  0028 721f5300      	bres	21248,#7
1190  002c               L56:
1191                     ; 575 }
1192  002c 85            	popw	x
1193  002d 81            	ret
1195                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
1195                     ; 584 {
1196                     .text:	section	.text,new
1197  0000               _TIM2_OC1PreloadConfig:
1198  0000 89            	pushw	x
1199       00000000      OFST:	set	0
1201                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1202  0001 a30000        	cpw	x,#0
1203  0004 2705          	jreq	L033
1204  0006 a30001        	cpw	x,#1
1205  0009 2603          	jrne	L623
1206  000b               L033:
1207  000b 4f            	clr	a
1208  000c 2010          	jra	L233
1209  000e               L623:
1210  000e ae024a        	ldw	x,#586
1211  0011 89            	pushw	x
1212  0012 ae0000        	ldw	x,#0
1213  0015 89            	pushw	x
1214  0016 ae0000        	ldw	x,#L11
1215  0019 cd0000        	call	_assert_failed
1217  001c 5b04          	addw	sp,#4
1218  001e               L233:
1219                     ; 589   if (NewState != DISABLE)
1220  001e 1e01          	ldw	x,(OFST+1,sp)
1221  0020 2706          	jreq	L76
1222                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
1223  0022 72165307      	bset	21255,#3
1225  0026 2004          	jra	L17
1226  0028               L76:
1227                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
1228  0028 72175307      	bres	21255,#3
1229  002c               L17:
1230                     ; 597 }
1231  002c 85            	popw	x
1232  002d 81            	ret
1234                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
1234                     ; 606 {
1235                     .text:	section	.text,new
1236  0000               _TIM2_OC2PreloadConfig:
1237  0000 89            	pushw	x
1238       00000000      OFST:	set	0
1240                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1241  0001 a30000        	cpw	x,#0
1242  0004 2705          	jreq	L043
1243  0006 a30001        	cpw	x,#1
1244  0009 2603          	jrne	L633
1245  000b               L043:
1246  000b 4f            	clr	a
1247  000c 2010          	jra	L243
1248  000e               L633:
1249  000e ae0260        	ldw	x,#608
1250  0011 89            	pushw	x
1251  0012 ae0000        	ldw	x,#0
1252  0015 89            	pushw	x
1253  0016 ae0000        	ldw	x,#L11
1254  0019 cd0000        	call	_assert_failed
1256  001c 5b04          	addw	sp,#4
1257  001e               L243:
1258                     ; 611   if (NewState != DISABLE)
1259  001e 1e01          	ldw	x,(OFST+1,sp)
1260  0020 2706          	jreq	L37
1261                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
1262  0022 72165308      	bset	21256,#3
1264  0026 2004          	jra	L57
1265  0028               L37:
1266                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
1267  0028 72175308      	bres	21256,#3
1268  002c               L57:
1269                     ; 619 }
1270  002c 85            	popw	x
1271  002d 81            	ret
1273                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
1273                     ; 628 {
1274                     .text:	section	.text,new
1275  0000               _TIM2_OC3PreloadConfig:
1276  0000 89            	pushw	x
1277       00000000      OFST:	set	0
1279                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1280  0001 a30000        	cpw	x,#0
1281  0004 2705          	jreq	L053
1282  0006 a30001        	cpw	x,#1
1283  0009 2603          	jrne	L643
1284  000b               L053:
1285  000b 4f            	clr	a
1286  000c 2010          	jra	L253
1287  000e               L643:
1288  000e ae0276        	ldw	x,#630
1289  0011 89            	pushw	x
1290  0012 ae0000        	ldw	x,#0
1291  0015 89            	pushw	x
1292  0016 ae0000        	ldw	x,#L11
1293  0019 cd0000        	call	_assert_failed
1295  001c 5b04          	addw	sp,#4
1296  001e               L253:
1297                     ; 633   if (NewState != DISABLE)
1298  001e 1e01          	ldw	x,(OFST+1,sp)
1299  0020 2706          	jreq	L77
1300                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
1301  0022 72165309      	bset	21257,#3
1303  0026 2004          	jra	L101
1304  0028               L77:
1305                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
1306  0028 72175309      	bres	21257,#3
1307  002c               L101:
1308                     ; 641 }
1309  002c 85            	popw	x
1310  002d 81            	ret
1312                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
1312                     ; 654 {
1313                     .text:	section	.text,new
1314  0000               _TIM2_GenerateEvent:
1315  0000 89            	pushw	x
1316       00000000      OFST:	set	0
1318                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
1319  0001 a30000        	cpw	x,#0
1320  0004 2703          	jreq	L653
1321  0006 4f            	clr	a
1322  0007 2010          	jra	L063
1323  0009               L653:
1324  0009 ae0290        	ldw	x,#656
1325  000c 89            	pushw	x
1326  000d ae0000        	ldw	x,#0
1327  0010 89            	pushw	x
1328  0011 ae0000        	ldw	x,#L11
1329  0014 cd0000        	call	_assert_failed
1331  0017 5b04          	addw	sp,#4
1332  0019               L063:
1333                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
1334  0019 7b02          	ld	a,(OFST+2,sp)
1335  001b c75306        	ld	21254,a
1336                     ; 660 }
1337  001e 85            	popw	x
1338  001f 81            	ret
1340                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
1340                     ; 671 {
1341                     .text:	section	.text,new
1342  0000               _TIM2_OC1PolarityConfig:
1343  0000 89            	pushw	x
1344       00000000      OFST:	set	0
1346                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
1347  0001 a30000        	cpw	x,#0
1348  0004 2705          	jreq	L663
1349  0006 a30022        	cpw	x,#34
1350  0009 2603          	jrne	L463
1351  000b               L663:
1352  000b 4f            	clr	a
1353  000c 2010          	jra	L073
1354  000e               L463:
1355  000e ae02a1        	ldw	x,#673
1356  0011 89            	pushw	x
1357  0012 ae0000        	ldw	x,#0
1358  0015 89            	pushw	x
1359  0016 ae0000        	ldw	x,#L11
1360  0019 cd0000        	call	_assert_failed
1362  001c 5b04          	addw	sp,#4
1363  001e               L073:
1364                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
1365  001e 1e01          	ldw	x,(OFST+1,sp)
1366  0020 2706          	jreq	L301
1367                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
1368  0022 7212530a      	bset	21258,#1
1370  0026 2004          	jra	L501
1371  0028               L301:
1372                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
1373  0028 7213530a      	bres	21258,#1
1374  002c               L501:
1375                     ; 684 }
1376  002c 85            	popw	x
1377  002d 81            	ret
1379                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
1379                     ; 695 {
1380                     .text:	section	.text,new
1381  0000               _TIM2_OC2PolarityConfig:
1382  0000 89            	pushw	x
1383       00000000      OFST:	set	0
1385                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
1386  0001 a30000        	cpw	x,#0
1387  0004 2705          	jreq	L673
1388  0006 a30022        	cpw	x,#34
1389  0009 2603          	jrne	L473
1390  000b               L673:
1391  000b 4f            	clr	a
1392  000c 2010          	jra	L004
1393  000e               L473:
1394  000e ae02b9        	ldw	x,#697
1395  0011 89            	pushw	x
1396  0012 ae0000        	ldw	x,#0
1397  0015 89            	pushw	x
1398  0016 ae0000        	ldw	x,#L11
1399  0019 cd0000        	call	_assert_failed
1401  001c 5b04          	addw	sp,#4
1402  001e               L004:
1403                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
1404  001e 1e01          	ldw	x,(OFST+1,sp)
1405  0020 2706          	jreq	L701
1406                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
1407  0022 721a530a      	bset	21258,#5
1409  0026 2004          	jra	L111
1410  0028               L701:
1411                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
1412  0028 721b530a      	bres	21258,#5
1413  002c               L111:
1414                     ; 708 }
1415  002c 85            	popw	x
1416  002d 81            	ret
1418                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
1418                     ; 719 {
1419                     .text:	section	.text,new
1420  0000               _TIM2_OC3PolarityConfig:
1421  0000 89            	pushw	x
1422       00000000      OFST:	set	0
1424                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
1425  0001 a30000        	cpw	x,#0
1426  0004 2705          	jreq	L604
1427  0006 a30022        	cpw	x,#34
1428  0009 2603          	jrne	L404
1429  000b               L604:
1430  000b 4f            	clr	a
1431  000c 2010          	jra	L014
1432  000e               L404:
1433  000e ae02d1        	ldw	x,#721
1434  0011 89            	pushw	x
1435  0012 ae0000        	ldw	x,#0
1436  0015 89            	pushw	x
1437  0016 ae0000        	ldw	x,#L11
1438  0019 cd0000        	call	_assert_failed
1440  001c 5b04          	addw	sp,#4
1441  001e               L014:
1442                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
1443  001e 1e01          	ldw	x,(OFST+1,sp)
1444  0020 2706          	jreq	L311
1445                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
1446  0022 7212530b      	bset	21259,#1
1448  0026 2004          	jra	L511
1449  0028               L311:
1450                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
1451  0028 7213530b      	bres	21259,#1
1452  002c               L511:
1453                     ; 732 }
1454  002c 85            	popw	x
1455  002d 81            	ret
1457                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
1457                     ; 746 {
1458                     .text:	section	.text,new
1459  0000               _TIM2_CCxCmd:
1460  0000 89            	pushw	x
1461       00000000      OFST:	set	0
1463                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1464  0001 a30000        	cpw	x,#0
1465  0004 270a          	jreq	L614
1466  0006 a30001        	cpw	x,#1
1467  0009 2705          	jreq	L614
1468  000b a30002        	cpw	x,#2
1469  000e 2603          	jrne	L414
1470  0010               L614:
1471  0010 4f            	clr	a
1472  0011 2010          	jra	L024
1473  0013               L414:
1474  0013 ae02ec        	ldw	x,#748
1475  0016 89            	pushw	x
1476  0017 ae0000        	ldw	x,#0
1477  001a 89            	pushw	x
1478  001b ae0000        	ldw	x,#L11
1479  001e cd0000        	call	_assert_failed
1481  0021 5b04          	addw	sp,#4
1482  0023               L024:
1483                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1484  0023 1e05          	ldw	x,(OFST+5,sp)
1485  0025 2707          	jreq	L424
1486  0027 1e05          	ldw	x,(OFST+5,sp)
1487  0029 a30001        	cpw	x,#1
1488  002c 2603          	jrne	L224
1489  002e               L424:
1490  002e 4f            	clr	a
1491  002f 2010          	jra	L624
1492  0031               L224:
1493  0031 ae02ed        	ldw	x,#749
1494  0034 89            	pushw	x
1495  0035 ae0000        	ldw	x,#0
1496  0038 89            	pushw	x
1497  0039 ae0000        	ldw	x,#L11
1498  003c cd0000        	call	_assert_failed
1500  003f 5b04          	addw	sp,#4
1501  0041               L624:
1502                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
1503  0041 1e01          	ldw	x,(OFST+1,sp)
1504  0043 2610          	jrne	L711
1505                     ; 754     if (NewState != DISABLE)
1506  0045 1e05          	ldw	x,(OFST+5,sp)
1507  0047 2706          	jreq	L121
1508                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
1509  0049 7210530a      	bset	21258,#0
1511  004d 202b          	jra	L521
1512  004f               L121:
1513                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
1514  004f 7211530a      	bres	21258,#0
1515  0053 2025          	jra	L521
1516  0055               L711:
1517                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
1518  0055 1e01          	ldw	x,(OFST+1,sp)
1519  0057 a30001        	cpw	x,#1
1520  005a 2610          	jrne	L721
1521                     ; 767     if (NewState != DISABLE)
1522  005c 1e05          	ldw	x,(OFST+5,sp)
1523  005e 2706          	jreq	L131
1524                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
1525  0060 7218530a      	bset	21258,#4
1527  0064 2014          	jra	L521
1528  0066               L131:
1529                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
1530  0066 7219530a      	bres	21258,#4
1531  006a 200e          	jra	L521
1532  006c               L721:
1533                     ; 779     if (NewState != DISABLE)
1534  006c 1e05          	ldw	x,(OFST+5,sp)
1535  006e 2706          	jreq	L731
1536                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
1537  0070 7210530b      	bset	21259,#0
1539  0074 2004          	jra	L521
1540  0076               L731:
1541                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
1542  0076 7211530b      	bres	21259,#0
1543  007a               L521:
1544                     ; 788 }
1545  007a 85            	popw	x
1546  007b 81            	ret
1548                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
1548                     ; 811 {
1549                     .text:	section	.text,new
1550  0000               _TIM2_SelectOCxM:
1551  0000 89            	pushw	x
1552       00000000      OFST:	set	0
1554                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1555  0001 a30000        	cpw	x,#0
1556  0004 270a          	jreq	L434
1557  0006 a30001        	cpw	x,#1
1558  0009 2705          	jreq	L434
1559  000b a30002        	cpw	x,#2
1560  000e 2603          	jrne	L234
1561  0010               L434:
1562  0010 4f            	clr	a
1563  0011 2010          	jra	L634
1564  0013               L234:
1565  0013 ae032d        	ldw	x,#813
1566  0016 89            	pushw	x
1567  0017 ae0000        	ldw	x,#0
1568  001a 89            	pushw	x
1569  001b ae0000        	ldw	x,#L11
1570  001e cd0000        	call	_assert_failed
1572  0021 5b04          	addw	sp,#4
1573  0023               L634:
1574                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
1575  0023 1e05          	ldw	x,(OFST+5,sp)
1576  0025 2731          	jreq	L244
1577  0027 1e05          	ldw	x,(OFST+5,sp)
1578  0029 a30010        	cpw	x,#16
1579  002c 272a          	jreq	L244
1580  002e 1e05          	ldw	x,(OFST+5,sp)
1581  0030 a30020        	cpw	x,#32
1582  0033 2723          	jreq	L244
1583  0035 1e05          	ldw	x,(OFST+5,sp)
1584  0037 a30030        	cpw	x,#48
1585  003a 271c          	jreq	L244
1586  003c 1e05          	ldw	x,(OFST+5,sp)
1587  003e a30060        	cpw	x,#96
1588  0041 2715          	jreq	L244
1589  0043 1e05          	ldw	x,(OFST+5,sp)
1590  0045 a30070        	cpw	x,#112
1591  0048 270e          	jreq	L244
1592  004a 1e05          	ldw	x,(OFST+5,sp)
1593  004c a30050        	cpw	x,#80
1594  004f 2707          	jreq	L244
1595  0051 1e05          	ldw	x,(OFST+5,sp)
1596  0053 a30040        	cpw	x,#64
1597  0056 2603          	jrne	L044
1598  0058               L244:
1599  0058 4f            	clr	a
1600  0059 2010          	jra	L444
1601  005b               L044:
1602  005b ae032e        	ldw	x,#814
1603  005e 89            	pushw	x
1604  005f ae0000        	ldw	x,#0
1605  0062 89            	pushw	x
1606  0063 ae0000        	ldw	x,#L11
1607  0066 cd0000        	call	_assert_failed
1609  0069 5b04          	addw	sp,#4
1610  006b               L444:
1611                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
1612  006b 1e01          	ldw	x,(OFST+1,sp)
1613  006d 2610          	jrne	L341
1614                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
1615  006f 7211530a      	bres	21258,#0
1616                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
1616                     ; 823                             | (uint8_t)TIM2_OCMode);
1617  0073 c65307        	ld	a,21255
1618  0076 a48f          	and	a,#143
1619  0078 1a06          	or	a,(OFST+6,sp)
1620  007a c75307        	ld	21255,a
1622  007d 2025          	jra	L541
1623  007f               L341:
1624                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
1625  007f 1e01          	ldw	x,(OFST+1,sp)
1626  0081 a30001        	cpw	x,#1
1627  0084 2610          	jrne	L741
1628                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
1629  0086 7219530a      	bres	21258,#4
1630                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
1630                     ; 832                             | (uint8_t)TIM2_OCMode);
1631  008a c65308        	ld	a,21256
1632  008d a48f          	and	a,#143
1633  008f 1a06          	or	a,(OFST+6,sp)
1634  0091 c75308        	ld	21256,a
1636  0094 200e          	jra	L541
1637  0096               L741:
1638                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
1639  0096 7211530b      	bres	21259,#0
1640                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1640                     ; 841                             | (uint8_t)TIM2_OCMode);
1641  009a c65309        	ld	a,21257
1642  009d a48f          	and	a,#143
1643  009f 1a06          	or	a,(OFST+6,sp)
1644  00a1 c75309        	ld	21257,a
1645  00a4               L541:
1646                     ; 843 }
1647  00a4 85            	popw	x
1648  00a5 81            	ret
1650                     ; 851 void TIM2_SetCounter(uint16_t Counter)
1650                     ; 852 {
1651                     .text:	section	.text,new
1652  0000               _TIM2_SetCounter:
1654                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
1655  0000 9e            	ld	a,xh
1656  0001 c7530c        	ld	21260,a
1657                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
1658  0004 9f            	ld	a,xl
1659  0005 c7530d        	ld	21261,a
1660                     ; 856 }
1661  0008 81            	ret
1663                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
1663                     ; 865 {
1664                     .text:	section	.text,new
1665  0000               _TIM2_SetAutoreload:
1667                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
1668  0000 9e            	ld	a,xh
1669  0001 c7530f        	ld	21263,a
1670                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
1671  0004 9f            	ld	a,xl
1672  0005 c75310        	ld	21264,a
1673                     ; 869 }
1674  0008 81            	ret
1676                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
1676                     ; 878 {
1677                     .text:	section	.text,new
1678  0000               _TIM2_SetCompare1:
1680                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
1681  0000 9e            	ld	a,xh
1682  0001 c75311        	ld	21265,a
1683                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
1684  0004 9f            	ld	a,xl
1685  0005 c75312        	ld	21266,a
1686                     ; 882 }
1687  0008 81            	ret
1689                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
1689                     ; 891 {
1690                     .text:	section	.text,new
1691  0000               _TIM2_SetCompare2:
1693                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
1694  0000 9e            	ld	a,xh
1695  0001 c75313        	ld	21267,a
1696                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
1697  0004 9f            	ld	a,xl
1698  0005 c75314        	ld	21268,a
1699                     ; 895 }
1700  0008 81            	ret
1702                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
1702                     ; 904 {
1703                     .text:	section	.text,new
1704  0000               _TIM2_SetCompare3:
1706                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
1707  0000 9e            	ld	a,xh
1708  0001 c75315        	ld	21269,a
1709                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
1710  0004 9f            	ld	a,xl
1711  0005 c75316        	ld	21270,a
1712                     ; 908 }
1713  0008 81            	ret
1715                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
1715                     ; 921 {
1716                     .text:	section	.text,new
1717  0000               _TIM2_SetIC1Prescaler:
1718  0000 89            	pushw	x
1719       00000000      OFST:	set	0
1721                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
1722  0001 a30000        	cpw	x,#0
1723  0004 270f          	jreq	L464
1724  0006 a30004        	cpw	x,#4
1725  0009 270a          	jreq	L464
1726  000b a30008        	cpw	x,#8
1727  000e 2705          	jreq	L464
1728  0010 a3000c        	cpw	x,#12
1729  0013 2603          	jrne	L264
1730  0015               L464:
1731  0015 4f            	clr	a
1732  0016 2010          	jra	L664
1733  0018               L264:
1734  0018 ae039b        	ldw	x,#923
1735  001b 89            	pushw	x
1736  001c ae0000        	ldw	x,#0
1737  001f 89            	pushw	x
1738  0020 ae0000        	ldw	x,#L11
1739  0023 cd0000        	call	_assert_failed
1741  0026 5b04          	addw	sp,#4
1742  0028               L664:
1743                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
1743                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
1744  0028 c65307        	ld	a,21255
1745  002b a4f3          	and	a,#243
1746  002d 1a02          	or	a,(OFST+2,sp)
1747  002f c75307        	ld	21255,a
1748                     ; 928 }
1749  0032 85            	popw	x
1750  0033 81            	ret
1752                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
1752                     ; 941 {
1753                     .text:	section	.text,new
1754  0000               _TIM2_SetIC2Prescaler:
1755  0000 89            	pushw	x
1756       00000000      OFST:	set	0
1758                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
1759  0001 a30000        	cpw	x,#0
1760  0004 270f          	jreq	L474
1761  0006 a30004        	cpw	x,#4
1762  0009 270a          	jreq	L474
1763  000b a30008        	cpw	x,#8
1764  000e 2705          	jreq	L474
1765  0010 a3000c        	cpw	x,#12
1766  0013 2603          	jrne	L274
1767  0015               L474:
1768  0015 4f            	clr	a
1769  0016 2010          	jra	L674
1770  0018               L274:
1771  0018 ae03af        	ldw	x,#943
1772  001b 89            	pushw	x
1773  001c ae0000        	ldw	x,#0
1774  001f 89            	pushw	x
1775  0020 ae0000        	ldw	x,#L11
1776  0023 cd0000        	call	_assert_failed
1778  0026 5b04          	addw	sp,#4
1779  0028               L674:
1780                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
1780                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
1781  0028 c65308        	ld	a,21256
1782  002b a4f3          	and	a,#243
1783  002d 1a02          	or	a,(OFST+2,sp)
1784  002f c75308        	ld	21256,a
1785                     ; 948 }
1786  0032 85            	popw	x
1787  0033 81            	ret
1789                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
1789                     ; 961 {
1790                     .text:	section	.text,new
1791  0000               _TIM2_SetIC3Prescaler:
1792  0000 89            	pushw	x
1793       00000000      OFST:	set	0
1795                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
1796  0001 a30000        	cpw	x,#0
1797  0004 270f          	jreq	L405
1798  0006 a30004        	cpw	x,#4
1799  0009 270a          	jreq	L405
1800  000b a30008        	cpw	x,#8
1801  000e 2705          	jreq	L405
1802  0010 a3000c        	cpw	x,#12
1803  0013 2603          	jrne	L205
1804  0015               L405:
1805  0015 4f            	clr	a
1806  0016 2010          	jra	L605
1807  0018               L205:
1808  0018 ae03c4        	ldw	x,#964
1809  001b 89            	pushw	x
1810  001c ae0000        	ldw	x,#0
1811  001f 89            	pushw	x
1812  0020 ae0000        	ldw	x,#L11
1813  0023 cd0000        	call	_assert_failed
1815  0026 5b04          	addw	sp,#4
1816  0028               L605:
1817                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
1817                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
1818  0028 c65309        	ld	a,21257
1819  002b a4f3          	and	a,#243
1820  002d 1a02          	or	a,(OFST+2,sp)
1821  002f c75309        	ld	21257,a
1822                     ; 968 }
1823  0032 85            	popw	x
1824  0033 81            	ret
1826                     ; 975 uint16_t TIM2_GetCapture1(void)
1826                     ; 976 {
1827                     .text:	section	.text,new
1828  0000               _TIM2_GetCapture1:
1829  0000 5204          	subw	sp,#4
1830       00000004      OFST:	set	4
1832                     ; 978   uint16_t tmpccr1 = 0;
1833                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
1835                     ; 981   tmpccr1h = TIM2->CCR1H;
1836  0002 c65311        	ld	a,21265
1837  0005 6b02          	ld	(OFST-2,sp),a
1838                     ; 982   tmpccr1l = TIM2->CCR1L;
1839  0007 c65312        	ld	a,21266
1840  000a 6b01          	ld	(OFST-3,sp),a
1841                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
1842  000c 7b01          	ld	a,(OFST-3,sp)
1843  000e 5f            	clrw	x
1844  000f 97            	ld	xl,a
1845  0010 1f03          	ldw	(OFST-1,sp),x
1846                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
1847  0012 7b02          	ld	a,(OFST-2,sp)
1848  0014 5f            	clrw	x
1849  0015 97            	ld	xl,a
1850  0016 4f            	clr	a
1851  0017 02            	rlwa	x,a
1852  0018 01            	rrwa	x,a
1853  0019 1a04          	or	a,(OFST+0,sp)
1854  001b 01            	rrwa	x,a
1855  001c 1a03          	or	a,(OFST-1,sp)
1856  001e 01            	rrwa	x,a
1857  001f 1f03          	ldw	(OFST-1,sp),x
1858                     ; 987   return (uint16_t)tmpccr1;
1859  0021 1e03          	ldw	x,(OFST-1,sp)
1861  0023 5b04          	addw	sp,#4
1862  0025 81            	ret
1864                     ; 995 uint16_t TIM2_GetCapture2(void)
1864                     ; 996 {
1865                     .text:	section	.text,new
1866  0000               _TIM2_GetCapture2:
1867  0000 5204          	subw	sp,#4
1868       00000004      OFST:	set	4
1870                     ; 998   uint16_t tmpccr2 = 0;
1871                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
1873                     ; 1001   tmpccr2h = TIM2->CCR2H;
1874  0002 c65313        	ld	a,21267
1875  0005 6b02          	ld	(OFST-2,sp),a
1876                     ; 1002   tmpccr2l = TIM2->CCR2L;
1877  0007 c65314        	ld	a,21268
1878  000a 6b01          	ld	(OFST-3,sp),a
1879                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
1880  000c 7b01          	ld	a,(OFST-3,sp)
1881  000e 5f            	clrw	x
1882  000f 97            	ld	xl,a
1883  0010 1f03          	ldw	(OFST-1,sp),x
1884                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
1885  0012 7b02          	ld	a,(OFST-2,sp)
1886  0014 5f            	clrw	x
1887  0015 97            	ld	xl,a
1888  0016 4f            	clr	a
1889  0017 02            	rlwa	x,a
1890  0018 01            	rrwa	x,a
1891  0019 1a04          	or	a,(OFST+0,sp)
1892  001b 01            	rrwa	x,a
1893  001c 1a03          	or	a,(OFST-1,sp)
1894  001e 01            	rrwa	x,a
1895  001f 1f03          	ldw	(OFST-1,sp),x
1896                     ; 1007   return (uint16_t)tmpccr2;
1897  0021 1e03          	ldw	x,(OFST-1,sp)
1899  0023 5b04          	addw	sp,#4
1900  0025 81            	ret
1902                     ; 1015 uint16_t TIM2_GetCapture3(void)
1902                     ; 1016 {
1903                     .text:	section	.text,new
1904  0000               _TIM2_GetCapture3:
1905  0000 5204          	subw	sp,#4
1906       00000004      OFST:	set	4
1908                     ; 1018   uint16_t tmpccr3 = 0;
1909                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
1911                     ; 1021   tmpccr3h = TIM2->CCR3H;
1912  0002 c65315        	ld	a,21269
1913  0005 6b02          	ld	(OFST-2,sp),a
1914                     ; 1022   tmpccr3l = TIM2->CCR3L;
1915  0007 c65316        	ld	a,21270
1916  000a 6b01          	ld	(OFST-3,sp),a
1917                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
1918  000c 7b01          	ld	a,(OFST-3,sp)
1919  000e 5f            	clrw	x
1920  000f 97            	ld	xl,a
1921  0010 1f03          	ldw	(OFST-1,sp),x
1922                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
1923  0012 7b02          	ld	a,(OFST-2,sp)
1924  0014 5f            	clrw	x
1925  0015 97            	ld	xl,a
1926  0016 4f            	clr	a
1927  0017 02            	rlwa	x,a
1928  0018 01            	rrwa	x,a
1929  0019 1a04          	or	a,(OFST+0,sp)
1930  001b 01            	rrwa	x,a
1931  001c 1a03          	or	a,(OFST-1,sp)
1932  001e 01            	rrwa	x,a
1933  001f 1f03          	ldw	(OFST-1,sp),x
1934                     ; 1027   return (uint16_t)tmpccr3;
1935  0021 1e03          	ldw	x,(OFST-1,sp)
1937  0023 5b04          	addw	sp,#4
1938  0025 81            	ret
1940                     ; 1035 uint16_t TIM2_GetCounter(void)
1940                     ; 1036 {
1941                     .text:	section	.text,new
1942  0000               _TIM2_GetCounter:
1943  0000 89            	pushw	x
1944       00000002      OFST:	set	2
1946                     ; 1037   uint16_t tmpcntr = 0;
1947                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
1948  0001 c6530c        	ld	a,21260
1949  0004 5f            	clrw	x
1950  0005 97            	ld	xl,a
1951  0006 4f            	clr	a
1952  0007 02            	rlwa	x,a
1953  0008 1f01          	ldw	(OFST-1,sp),x
1954                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
1955  000a c6530d        	ld	a,21261
1956  000d 5f            	clrw	x
1957  000e 97            	ld	xl,a
1958  000f 01            	rrwa	x,a
1959  0010 1a02          	or	a,(OFST+0,sp)
1960  0012 01            	rrwa	x,a
1961  0013 1a01          	or	a,(OFST-1,sp)
1962  0015 01            	rrwa	x,a
1964  0016 5b02          	addw	sp,#2
1965  0018 81            	ret
1967                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
1967                     ; 1050 {
1968                     .text:	section	.text,new
1969  0000               _TIM2_GetPrescaler:
1971                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
1972  0000 c6530e        	ld	a,21262
1973  0003 5f            	clrw	x
1974  0004 97            	ld	xl,a
1976  0005 81            	ret
1978                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
1978                     ; 1069 {
1979                     .text:	section	.text,new
1980  0000               _TIM2_GetFlagStatus:
1981  0000 89            	pushw	x
1982  0001 5204          	subw	sp,#4
1983       00000004      OFST:	set	4
1985                     ; 1070   FlagStatus bitstatus = RESET;
1986                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
1988                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
1989  0003 a30001        	cpw	x,#1
1990  0006 271e          	jreq	L625
1991  0008 a30002        	cpw	x,#2
1992  000b 2719          	jreq	L625
1993  000d a30004        	cpw	x,#4
1994  0010 2714          	jreq	L625
1995  0012 a30008        	cpw	x,#8
1996  0015 270f          	jreq	L625
1997  0017 a30200        	cpw	x,#512
1998  001a 270a          	jreq	L625
1999  001c a30400        	cpw	x,#1024
2000  001f 2705          	jreq	L625
2001  0021 a30800        	cpw	x,#2048
2002  0024 2603          	jrne	L425
2003  0026               L625:
2004  0026 4f            	clr	a
2005  0027 2010          	jra	L035
2006  0029               L425:
2007  0029 ae0432        	ldw	x,#1074
2008  002c 89            	pushw	x
2009  002d ae0000        	ldw	x,#0
2010  0030 89            	pushw	x
2011  0031 ae0000        	ldw	x,#L11
2012  0034 cd0000        	call	_assert_failed
2014  0037 5b04          	addw	sp,#4
2015  0039               L035:
2016                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
2017  0039 c65304        	ld	a,21252
2018  003c 1406          	and	a,(OFST+2,sp)
2019  003e 6b01          	ld	(OFST-3,sp),a
2020                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
2021  0040 1e05          	ldw	x,(OFST+1,sp)
2022  0042 4f            	clr	a
2023  0043 01            	rrwa	x,a
2024  0044 9f            	ld	a,xl
2025  0045 6b02          	ld	(OFST-2,sp),a
2026                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
2027  0047 c65305        	ld	a,21253
2028  004a 1402          	and	a,(OFST-2,sp)
2029  004c 1a01          	or	a,(OFST-3,sp)
2030  004e 2707          	jreq	L351
2031                     ; 1081     bitstatus = SET;
2032  0050 ae0001        	ldw	x,#1
2033  0053 1f03          	ldw	(OFST-1,sp),x
2035  0055 2003          	jra	L551
2036  0057               L351:
2037                     ; 1085     bitstatus = RESET;
2038  0057 5f            	clrw	x
2039  0058 1f03          	ldw	(OFST-1,sp),x
2040  005a               L551:
2041                     ; 1087   return (FlagStatus)bitstatus;
2042  005a 1e03          	ldw	x,(OFST-1,sp)
2044  005c 5b06          	addw	sp,#6
2045  005e 81            	ret
2047                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
2047                     ; 1104 {
2048                     .text:	section	.text,new
2049  0000               _TIM2_ClearFlag:
2050  0000 89            	pushw	x
2051       00000000      OFST:	set	0
2053                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
2054  0001 01            	rrwa	x,a
2055  0002 a4f0          	and	a,#240
2056  0004 01            	rrwa	x,a
2057  0005 a4f1          	and	a,#241
2058  0007 01            	rrwa	x,a
2059  0008 a30000        	cpw	x,#0
2060  000b 2607          	jrne	L435
2061  000d 1e01          	ldw	x,(OFST+1,sp)
2062  000f 2703          	jreq	L435
2063  0011 4f            	clr	a
2064  0012 2010          	jra	L635
2065  0014               L435:
2066  0014 ae0452        	ldw	x,#1106
2067  0017 89            	pushw	x
2068  0018 ae0000        	ldw	x,#0
2069  001b 89            	pushw	x
2070  001c ae0000        	ldw	x,#L11
2071  001f cd0000        	call	_assert_failed
2073  0022 5b04          	addw	sp,#4
2074  0024               L635:
2075                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
2076  0024 7b02          	ld	a,(OFST+2,sp)
2077  0026 43            	cpl	a
2078  0027 c75304        	ld	21252,a
2079                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
2080  002a 35ff5305      	mov	21253,#255
2081                     ; 1111 }
2082  002e 85            	popw	x
2083  002f 81            	ret
2085                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
2085                     ; 1124 {
2086                     .text:	section	.text,new
2087  0000               _TIM2_GetITStatus:
2088  0000 89            	pushw	x
2089  0001 5204          	subw	sp,#4
2090       00000004      OFST:	set	4
2092                     ; 1125   ITStatus bitstatus = RESET;
2093                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
2095                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
2096  0003 a30001        	cpw	x,#1
2097  0006 270f          	jreq	L445
2098  0008 a30002        	cpw	x,#2
2099  000b 270a          	jreq	L445
2100  000d a30004        	cpw	x,#4
2101  0010 2705          	jreq	L445
2102  0012 a30008        	cpw	x,#8
2103  0015 2603          	jrne	L245
2104  0017               L445:
2105  0017 4f            	clr	a
2106  0018 2010          	jra	L645
2107  001a               L245:
2108  001a ae0469        	ldw	x,#1129
2109  001d 89            	pushw	x
2110  001e ae0000        	ldw	x,#0
2111  0021 89            	pushw	x
2112  0022 ae0000        	ldw	x,#L11
2113  0025 cd0000        	call	_assert_failed
2115  0028 5b04          	addw	sp,#4
2116  002a               L645:
2117                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
2118  002a c65304        	ld	a,21252
2119  002d 1406          	and	a,(OFST+2,sp)
2120  002f 6b01          	ld	(OFST-3,sp),a
2121                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
2122  0031 c65303        	ld	a,21251
2123  0034 1406          	and	a,(OFST+2,sp)
2124  0036 6b02          	ld	(OFST-2,sp),a
2125                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
2126  0038 0d01          	tnz	(OFST-3,sp)
2127  003a 270b          	jreq	L751
2129  003c 0d02          	tnz	(OFST-2,sp)
2130  003e 2707          	jreq	L751
2131                     ; 1137     bitstatus = SET;
2132  0040 ae0001        	ldw	x,#1
2133  0043 1f03          	ldw	(OFST-1,sp),x
2135  0045 2003          	jra	L161
2136  0047               L751:
2137                     ; 1141     bitstatus = RESET;
2138  0047 5f            	clrw	x
2139  0048 1f03          	ldw	(OFST-1,sp),x
2140  004a               L161:
2141                     ; 1143   return (ITStatus)(bitstatus);
2142  004a 1e03          	ldw	x,(OFST-1,sp)
2144  004c 5b06          	addw	sp,#6
2145  004e 81            	ret
2147                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
2147                     ; 1157 {
2148                     .text:	section	.text,new
2149  0000               _TIM2_ClearITPendingBit:
2150  0000 89            	pushw	x
2151       00000000      OFST:	set	0
2153                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
2154  0001 a30000        	cpw	x,#0
2155  0004 2709          	jreq	L255
2156  0006 9c            	rvf
2157  0007 a30010        	cpw	x,#16
2158  000a 2e03          	jrsge	L255
2159  000c 4f            	clr	a
2160  000d 2010          	jra	L455
2161  000f               L255:
2162  000f ae0487        	ldw	x,#1159
2163  0012 89            	pushw	x
2164  0013 ae0000        	ldw	x,#0
2165  0016 89            	pushw	x
2166  0017 ae0000        	ldw	x,#L11
2167  001a cd0000        	call	_assert_failed
2169  001d 5b04          	addw	sp,#4
2170  001f               L455:
2171                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
2172  001f 7b02          	ld	a,(OFST+2,sp)
2173  0021 43            	cpl	a
2174  0022 c75304        	ld	21252,a
2175                     ; 1163 }
2176  0025 85            	popw	x
2177  0026 81            	ret
2179                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
2179                     ; 1182                        uint8_t TIM2_ICSelection,
2179                     ; 1183                        uint8_t TIM2_ICFilter)
2179                     ; 1184 {
2180                     .text:	section	.text,new
2181  0000               L3_TI1_Config:
2182  0000 89            	pushw	x
2183  0001 88            	push	a
2184       00000001      OFST:	set	1
2186                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2187  0002 7211530a      	bres	21258,#0
2188                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
2188                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
2189  0006 7b06          	ld	a,(OFST+5,sp)
2190  0008 97            	ld	xl,a
2191  0009 a610          	ld	a,#16
2192  000b 42            	mul	x,a
2193  000c 9f            	ld	a,xl
2194  000d 1a03          	or	a,(OFST+2,sp)
2195  000f 6b01          	ld	(OFST+0,sp),a
2196  0011 c65307        	ld	a,21255
2197  0014 a40c          	and	a,#12
2198  0016 1a01          	or	a,(OFST+0,sp)
2199  0018 c75307        	ld	21255,a
2200                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
2201  001b 0d02          	tnz	(OFST+1,sp)
2202  001d 2706          	jreq	L361
2203                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
2204  001f 7212530a      	bset	21258,#1
2206  0023 2004          	jra	L561
2207  0025               L361:
2208                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2209  0025 7213530a      	bres	21258,#1
2210  0029               L561:
2211                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
2212  0029 7210530a      	bset	21258,#0
2213                     ; 1203 }
2214  002d 5b03          	addw	sp,#3
2215  002f 81            	ret
2217                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
2217                     ; 1222                        uint8_t TIM2_ICSelection,
2217                     ; 1223                        uint8_t TIM2_ICFilter)
2217                     ; 1224 {
2218                     .text:	section	.text,new
2219  0000               L5_TI2_Config:
2220  0000 89            	pushw	x
2221  0001 88            	push	a
2222       00000001      OFST:	set	1
2224                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2225  0002 7219530a      	bres	21258,#4
2226                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
2226                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
2227  0006 7b06          	ld	a,(OFST+5,sp)
2228  0008 97            	ld	xl,a
2229  0009 a610          	ld	a,#16
2230  000b 42            	mul	x,a
2231  000c 9f            	ld	a,xl
2232  000d 1a03          	or	a,(OFST+2,sp)
2233  000f 6b01          	ld	(OFST+0,sp),a
2234  0011 c65308        	ld	a,21256
2235  0014 a40c          	and	a,#12
2236  0016 1a01          	or	a,(OFST+0,sp)
2237  0018 c75308        	ld	21256,a
2238                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
2239  001b 0d02          	tnz	(OFST+1,sp)
2240  001d 2706          	jreq	L761
2241                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2242  001f 721a530a      	bset	21258,#5
2244  0023 2004          	jra	L171
2245  0025               L761:
2246                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2247  0025 721b530a      	bres	21258,#5
2248  0029               L171:
2249                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
2250  0029 7218530a      	bset	21258,#4
2251                     ; 1245 }
2252  002d 5b03          	addw	sp,#3
2253  002f 81            	ret
2255                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
2255                     ; 1262                        uint8_t TIM2_ICFilter)
2255                     ; 1263 {
2256                     .text:	section	.text,new
2257  0000               L7_TI3_Config:
2258  0000 89            	pushw	x
2259  0001 88            	push	a
2260       00000001      OFST:	set	1
2262                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
2263  0002 7211530b      	bres	21259,#0
2264                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
2264                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
2265  0006 7b06          	ld	a,(OFST+5,sp)
2266  0008 97            	ld	xl,a
2267  0009 a610          	ld	a,#16
2268  000b 42            	mul	x,a
2269  000c 9f            	ld	a,xl
2270  000d 1a03          	or	a,(OFST+2,sp)
2271  000f 6b01          	ld	(OFST+0,sp),a
2272  0011 c65309        	ld	a,21257
2273  0014 a40c          	and	a,#12
2274  0016 1a01          	or	a,(OFST+0,sp)
2275  0018 c75309        	ld	21257,a
2276                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
2277  001b 0d02          	tnz	(OFST+1,sp)
2278  001d 2706          	jreq	L371
2279                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
2280  001f 7212530b      	bset	21259,#1
2282  0023 2004          	jra	L571
2283  0025               L371:
2284                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2285  0025 7213530b      	bres	21259,#1
2286  0029               L571:
2287                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
2288  0029 7210530b      	bset	21259,#0
2289                     ; 1283 }
2290  002d 5b03          	addw	sp,#3
2291  002f 81            	ret
2293                     	xdef	_TIM2_ClearITPendingBit
2294                     	xdef	_TIM2_GetITStatus
2295                     	xdef	_TIM2_ClearFlag
2296                     	xdef	_TIM2_GetFlagStatus
2297                     	xdef	_TIM2_GetPrescaler
2298                     	xdef	_TIM2_GetCounter
2299                     	xdef	_TIM2_GetCapture3
2300                     	xdef	_TIM2_GetCapture2
2301                     	xdef	_TIM2_GetCapture1
2302                     	xdef	_TIM2_SetIC3Prescaler
2303                     	xdef	_TIM2_SetIC2Prescaler
2304                     	xdef	_TIM2_SetIC1Prescaler
2305                     	xdef	_TIM2_SetCompare3
2306                     	xdef	_TIM2_SetCompare2
2307                     	xdef	_TIM2_SetCompare1
2308                     	xdef	_TIM2_SetAutoreload
2309                     	xdef	_TIM2_SetCounter
2310                     	xdef	_TIM2_SelectOCxM
2311                     	xdef	_TIM2_CCxCmd
2312                     	xdef	_TIM2_OC3PolarityConfig
2313                     	xdef	_TIM2_OC2PolarityConfig
2314                     	xdef	_TIM2_OC1PolarityConfig
2315                     	xdef	_TIM2_GenerateEvent
2316                     	xdef	_TIM2_OC3PreloadConfig
2317                     	xdef	_TIM2_OC2PreloadConfig
2318                     	xdef	_TIM2_OC1PreloadConfig
2319                     	xdef	_TIM2_ARRPreloadConfig
2320                     	xdef	_TIM2_ForcedOC3Config
2321                     	xdef	_TIM2_ForcedOC2Config
2322                     	xdef	_TIM2_ForcedOC1Config
2323                     	xdef	_TIM2_PrescalerConfig
2324                     	xdef	_TIM2_SelectOnePulseMode
2325                     	xdef	_TIM2_UpdateRequestConfig
2326                     	xdef	_TIM2_UpdateDisableConfig
2327                     	xdef	_TIM2_ITConfig
2328                     	xdef	_TIM2_Cmd
2329                     	xdef	_TIM2_PWMIConfig
2330                     	xdef	_TIM2_ICInit
2331                     	xdef	_TIM2_OC3Init
2332                     	xdef	_TIM2_OC2Init
2333                     	xdef	_TIM2_OC1Init
2334                     	xdef	_TIM2_TimeBaseInit
2335                     	xdef	_TIM2_DeInit
2336                     	xref	_assert_failed
2337                     .const:	section	.text
2338  0000               L11:
2339  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
2340  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
2341  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
2342  0036 6d322e6300    	dc.b	"m2.c",0
2343                     	end

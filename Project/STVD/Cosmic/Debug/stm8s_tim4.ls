   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 49 void TIM4_DeInit(void)
  17                     ; 50 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _TIM4_DeInit:
  22                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  23  0000 725f5340      	clr	21312
  24                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  25  0004 725f5343      	clr	21315
  26                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  27  0008 725f5346      	clr	21318
  28                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  29  000c 725f5347      	clr	21319
  30                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  31  0010 35ff5348      	mov	21320,#255
  32                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  33  0014 725f5344      	clr	21316
  34                     ; 57 }
  35  0018 81            	ret
  37                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
  37                     ; 66 {
  38                     .text:	section	.text,new
  39  0000               _TIM4_TimeBaseInit:
  40  0000 89            	pushw	x
  41       00000000      OFST:	set	0
  43                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
  44  0001 a30000        	cpw	x,#0
  45  0004 2723          	jreq	L01
  46  0006 a30001        	cpw	x,#1
  47  0009 271e          	jreq	L01
  48  000b a30002        	cpw	x,#2
  49  000e 2719          	jreq	L01
  50  0010 a30003        	cpw	x,#3
  51  0013 2714          	jreq	L01
  52  0015 a30004        	cpw	x,#4
  53  0018 270f          	jreq	L01
  54  001a a30005        	cpw	x,#5
  55  001d 270a          	jreq	L01
  56  001f a30006        	cpw	x,#6
  57  0022 2705          	jreq	L01
  58  0024 a30007        	cpw	x,#7
  59  0027 2603          	jrne	L6
  60  0029               L01:
  61  0029 4f            	clr	a
  62  002a 2010          	jra	L21
  63  002c               L6:
  64  002c ae0044        	ldw	x,#68
  65  002f 89            	pushw	x
  66  0030 ae0000        	ldw	x,#0
  67  0033 89            	pushw	x
  68  0034 ae0000        	ldw	x,#L3
  69  0037 cd0000        	call	_assert_failed
  71  003a 5b04          	addw	sp,#4
  72  003c               L21:
  73                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
  74  003c 7b02          	ld	a,(OFST+2,sp)
  75  003e c75347        	ld	21319,a
  76                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
  77  0041 7b05          	ld	a,(OFST+5,sp)
  78  0043 c75348        	ld	21320,a
  79                     ; 73 }
  80  0046 85            	popw	x
  81  0047 81            	ret
  83                     ; 81 void TIM4_Cmd(FunctionalState NewState)
  83                     ; 82 {
  84                     .text:	section	.text,new
  85  0000               _TIM4_Cmd:
  86  0000 89            	pushw	x
  87       00000000      OFST:	set	0
  89                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  90  0001 a30000        	cpw	x,#0
  91  0004 2705          	jreq	L02
  92  0006 a30001        	cpw	x,#1
  93  0009 2603          	jrne	L61
  94  000b               L02:
  95  000b 4f            	clr	a
  96  000c 2010          	jra	L22
  97  000e               L61:
  98  000e ae0054        	ldw	x,#84
  99  0011 89            	pushw	x
 100  0012 ae0000        	ldw	x,#0
 101  0015 89            	pushw	x
 102  0016 ae0000        	ldw	x,#L3
 103  0019 cd0000        	call	_assert_failed
 105  001c 5b04          	addw	sp,#4
 106  001e               L22:
 107                     ; 87   if (NewState != DISABLE)
 108  001e 1e01          	ldw	x,(OFST+1,sp)
 109  0020 2706          	jreq	L5
 110                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 111  0022 72105340      	bset	21312,#0
 113  0026 2004          	jra	L7
 114  0028               L5:
 115                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 116  0028 72115340      	bres	21312,#0
 117  002c               L7:
 118                     ; 95 }
 119  002c 85            	popw	x
 120  002d 81            	ret
 122                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 122                     ; 108 {
 123                     .text:	section	.text,new
 124  0000               _TIM4_ITConfig:
 125  0000 89            	pushw	x
 126       00000000      OFST:	set	0
 128                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 129  0001 a30001        	cpw	x,#1
 130  0004 2603          	jrne	L62
 131  0006 4f            	clr	a
 132  0007 2010          	jra	L03
 133  0009               L62:
 134  0009 ae006e        	ldw	x,#110
 135  000c 89            	pushw	x
 136  000d ae0000        	ldw	x,#0
 137  0010 89            	pushw	x
 138  0011 ae0000        	ldw	x,#L3
 139  0014 cd0000        	call	_assert_failed
 141  0017 5b04          	addw	sp,#4
 142  0019               L03:
 143                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 144  0019 1e05          	ldw	x,(OFST+5,sp)
 145  001b 2707          	jreq	L43
 146  001d 1e05          	ldw	x,(OFST+5,sp)
 147  001f a30001        	cpw	x,#1
 148  0022 2603          	jrne	L23
 149  0024               L43:
 150  0024 4f            	clr	a
 151  0025 2010          	jra	L63
 152  0027               L23:
 153  0027 ae006f        	ldw	x,#111
 154  002a 89            	pushw	x
 155  002b ae0000        	ldw	x,#0
 156  002e 89            	pushw	x
 157  002f ae0000        	ldw	x,#L3
 158  0032 cd0000        	call	_assert_failed
 160  0035 5b04          	addw	sp,#4
 161  0037               L63:
 162                     ; 113   if (NewState != DISABLE)
 163  0037 1e05          	ldw	x,(OFST+5,sp)
 164  0039 270a          	jreq	L11
 165                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 166  003b c65343        	ld	a,21315
 167  003e 1a02          	or	a,(OFST+2,sp)
 168  0040 c75343        	ld	21315,a
 170  0043 2009          	jra	L31
 171  0045               L11:
 172                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 173  0045 7b02          	ld	a,(OFST+2,sp)
 174  0047 43            	cpl	a
 175  0048 c45343        	and	a,21315
 176  004b c75343        	ld	21315,a
 177  004e               L31:
 178                     ; 123 }
 179  004e 85            	popw	x
 180  004f 81            	ret
 182                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 182                     ; 132 {
 183                     .text:	section	.text,new
 184  0000               _TIM4_UpdateDisableConfig:
 185  0000 89            	pushw	x
 186       00000000      OFST:	set	0
 188                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 189  0001 a30000        	cpw	x,#0
 190  0004 2705          	jreq	L44
 191  0006 a30001        	cpw	x,#1
 192  0009 2603          	jrne	L24
 193  000b               L44:
 194  000b 4f            	clr	a
 195  000c 2010          	jra	L64
 196  000e               L24:
 197  000e ae0086        	ldw	x,#134
 198  0011 89            	pushw	x
 199  0012 ae0000        	ldw	x,#0
 200  0015 89            	pushw	x
 201  0016 ae0000        	ldw	x,#L3
 202  0019 cd0000        	call	_assert_failed
 204  001c 5b04          	addw	sp,#4
 205  001e               L64:
 206                     ; 137   if (NewState != DISABLE)
 207  001e 1e01          	ldw	x,(OFST+1,sp)
 208  0020 2706          	jreq	L51
 209                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 210  0022 72125340      	bset	21312,#1
 212  0026 2004          	jra	L71
 213  0028               L51:
 214                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 215  0028 72135340      	bres	21312,#1
 216  002c               L71:
 217                     ; 145 }
 218  002c 85            	popw	x
 219  002d 81            	ret
 221                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 221                     ; 156 {
 222                     .text:	section	.text,new
 223  0000               _TIM4_UpdateRequestConfig:
 224  0000 89            	pushw	x
 225       00000000      OFST:	set	0
 227                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 228  0001 a30000        	cpw	x,#0
 229  0004 2705          	jreq	L45
 230  0006 a30001        	cpw	x,#1
 231  0009 2603          	jrne	L25
 232  000b               L45:
 233  000b 4f            	clr	a
 234  000c 2010          	jra	L65
 235  000e               L25:
 236  000e ae009e        	ldw	x,#158
 237  0011 89            	pushw	x
 238  0012 ae0000        	ldw	x,#0
 239  0015 89            	pushw	x
 240  0016 ae0000        	ldw	x,#L3
 241  0019 cd0000        	call	_assert_failed
 243  001c 5b04          	addw	sp,#4
 244  001e               L65:
 245                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 246  001e 1e01          	ldw	x,(OFST+1,sp)
 247  0020 2706          	jreq	L12
 248                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 249  0022 72145340      	bset	21312,#2
 251  0026 2004          	jra	L32
 252  0028               L12:
 253                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 254  0028 72155340      	bres	21312,#2
 255  002c               L32:
 256                     ; 169 }
 257  002c 85            	popw	x
 258  002d 81            	ret
 260                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 260                     ; 180 {
 261                     .text:	section	.text,new
 262  0000               _TIM4_SelectOnePulseMode:
 263  0000 89            	pushw	x
 264       00000000      OFST:	set	0
 266                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 267  0001 a30001        	cpw	x,#1
 268  0004 2705          	jreq	L46
 269  0006 a30000        	cpw	x,#0
 270  0009 2603          	jrne	L26
 271  000b               L46:
 272  000b 4f            	clr	a
 273  000c 2010          	jra	L66
 274  000e               L26:
 275  000e ae00b6        	ldw	x,#182
 276  0011 89            	pushw	x
 277  0012 ae0000        	ldw	x,#0
 278  0015 89            	pushw	x
 279  0016 ae0000        	ldw	x,#L3
 280  0019 cd0000        	call	_assert_failed
 282  001c 5b04          	addw	sp,#4
 283  001e               L66:
 284                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 285  001e 1e01          	ldw	x,(OFST+1,sp)
 286  0020 2706          	jreq	L52
 287                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 288  0022 72165340      	bset	21312,#3
 290  0026 2004          	jra	L72
 291  0028               L52:
 292                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 293  0028 72175340      	bres	21312,#3
 294  002c               L72:
 295                     ; 193 }
 296  002c 85            	popw	x
 297  002d 81            	ret
 299                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 299                     ; 216 {
 300                     .text:	section	.text,new
 301  0000               _TIM4_PrescalerConfig:
 302  0000 89            	pushw	x
 303       00000000      OFST:	set	0
 305                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 306  0001 1e05          	ldw	x,(OFST+5,sp)
 307  0003 2707          	jreq	L47
 308  0005 1e05          	ldw	x,(OFST+5,sp)
 309  0007 a30001        	cpw	x,#1
 310  000a 2603          	jrne	L27
 311  000c               L47:
 312  000c 4f            	clr	a
 313  000d 2010          	jra	L67
 314  000f               L27:
 315  000f ae00da        	ldw	x,#218
 316  0012 89            	pushw	x
 317  0013 ae0000        	ldw	x,#0
 318  0016 89            	pushw	x
 319  0017 ae0000        	ldw	x,#L3
 320  001a cd0000        	call	_assert_failed
 322  001d 5b04          	addw	sp,#4
 323  001f               L67:
 324                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 325  001f 1e01          	ldw	x,(OFST+1,sp)
 326  0021 2731          	jreq	L201
 327  0023 1e01          	ldw	x,(OFST+1,sp)
 328  0025 a30001        	cpw	x,#1
 329  0028 272a          	jreq	L201
 330  002a 1e01          	ldw	x,(OFST+1,sp)
 331  002c a30002        	cpw	x,#2
 332  002f 2723          	jreq	L201
 333  0031 1e01          	ldw	x,(OFST+1,sp)
 334  0033 a30003        	cpw	x,#3
 335  0036 271c          	jreq	L201
 336  0038 1e01          	ldw	x,(OFST+1,sp)
 337  003a a30004        	cpw	x,#4
 338  003d 2715          	jreq	L201
 339  003f 1e01          	ldw	x,(OFST+1,sp)
 340  0041 a30005        	cpw	x,#5
 341  0044 270e          	jreq	L201
 342  0046 1e01          	ldw	x,(OFST+1,sp)
 343  0048 a30006        	cpw	x,#6
 344  004b 2707          	jreq	L201
 345  004d 1e01          	ldw	x,(OFST+1,sp)
 346  004f a30007        	cpw	x,#7
 347  0052 2603          	jrne	L001
 348  0054               L201:
 349  0054 4f            	clr	a
 350  0055 2010          	jra	L401
 351  0057               L001:
 352  0057 ae00db        	ldw	x,#219
 353  005a 89            	pushw	x
 354  005b ae0000        	ldw	x,#0
 355  005e 89            	pushw	x
 356  005f ae0000        	ldw	x,#L3
 357  0062 cd0000        	call	_assert_failed
 359  0065 5b04          	addw	sp,#4
 360  0067               L401:
 361                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 362  0067 7b02          	ld	a,(OFST+2,sp)
 363  0069 c75347        	ld	21319,a
 364                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 365  006c 7b06          	ld	a,(OFST+6,sp)
 366  006e c75345        	ld	21317,a
 367                     ; 226 }
 368  0071 85            	popw	x
 369  0072 81            	ret
 371                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 371                     ; 235 {
 372                     .text:	section	.text,new
 373  0000               _TIM4_ARRPreloadConfig:
 374  0000 89            	pushw	x
 375       00000000      OFST:	set	0
 377                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 378  0001 a30000        	cpw	x,#0
 379  0004 2705          	jreq	L211
 380  0006 a30001        	cpw	x,#1
 381  0009 2603          	jrne	L011
 382  000b               L211:
 383  000b 4f            	clr	a
 384  000c 2010          	jra	L411
 385  000e               L011:
 386  000e ae00ed        	ldw	x,#237
 387  0011 89            	pushw	x
 388  0012 ae0000        	ldw	x,#0
 389  0015 89            	pushw	x
 390  0016 ae0000        	ldw	x,#L3
 391  0019 cd0000        	call	_assert_failed
 393  001c 5b04          	addw	sp,#4
 394  001e               L411:
 395                     ; 240   if (NewState != DISABLE)
 396  001e 1e01          	ldw	x,(OFST+1,sp)
 397  0020 2706          	jreq	L13
 398                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 399  0022 721e5340      	bset	21312,#7
 401  0026 2004          	jra	L33
 402  0028               L13:
 403                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 404  0028 721f5340      	bres	21312,#7
 405  002c               L33:
 406                     ; 248 }
 407  002c 85            	popw	x
 408  002d 81            	ret
 410                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 410                     ; 258 {
 411                     .text:	section	.text,new
 412  0000               _TIM4_GenerateEvent:
 413  0000 89            	pushw	x
 414       00000000      OFST:	set	0
 416                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 417  0001 a30001        	cpw	x,#1
 418  0004 2603          	jrne	L021
 419  0006 4f            	clr	a
 420  0007 2010          	jra	L221
 421  0009               L021:
 422  0009 ae0104        	ldw	x,#260
 423  000c 89            	pushw	x
 424  000d ae0000        	ldw	x,#0
 425  0010 89            	pushw	x
 426  0011 ae0000        	ldw	x,#L3
 427  0014 cd0000        	call	_assert_failed
 429  0017 5b04          	addw	sp,#4
 430  0019               L221:
 431                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
 432  0019 7b02          	ld	a,(OFST+2,sp)
 433  001b c75345        	ld	21317,a
 434                     ; 264 }
 435  001e 85            	popw	x
 436  001f 81            	ret
 438                     ; 272 void TIM4_SetCounter(uint8_t Counter)
 438                     ; 273 {
 439                     .text:	section	.text,new
 440  0000               _TIM4_SetCounter:
 442                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
 443  0000 c75346        	ld	21318,a
 444                     ; 276 }
 445  0003 81            	ret
 447                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
 447                     ; 285 {
 448                     .text:	section	.text,new
 449  0000               _TIM4_SetAutoreload:
 451                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
 452  0000 c75348        	ld	21320,a
 453                     ; 288 }
 454  0003 81            	ret
 456                     ; 295 uint8_t TIM4_GetCounter(void)
 456                     ; 296 {
 457                     .text:	section	.text,new
 458  0000               _TIM4_GetCounter:
 460                     ; 298   return (uint8_t)(TIM4->CNTR);
 461  0000 c65346        	ld	a,21318
 463  0003 81            	ret
 465                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
 465                     ; 307 {
 466                     .text:	section	.text,new
 467  0000               _TIM4_GetPrescaler:
 469                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
 470  0000 c65347        	ld	a,21319
 471  0003 5f            	clrw	x
 472  0004 97            	ld	xl,a
 474  0005 81            	ret
 476                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
 476                     ; 320 {
 477                     .text:	section	.text,new
 478  0000               _TIM4_GetFlagStatus:
 479  0000 89            	pushw	x
 480  0001 89            	pushw	x
 481       00000002      OFST:	set	2
 483                     ; 321   FlagStatus bitstatus = RESET;
 484                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
 485  0002 a30001        	cpw	x,#1
 486  0005 2603          	jrne	L631
 487  0007 4f            	clr	a
 488  0008 2010          	jra	L041
 489  000a               L631:
 490  000a ae0144        	ldw	x,#324
 491  000d 89            	pushw	x
 492  000e ae0000        	ldw	x,#0
 493  0011 89            	pushw	x
 494  0012 ae0000        	ldw	x,#L3
 495  0015 cd0000        	call	_assert_failed
 497  0018 5b04          	addw	sp,#4
 498  001a               L041:
 499                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
 500  001a c65344        	ld	a,21316
 501  001d 1504          	bcp	a,(OFST+2,sp)
 502  001f 2707          	jreq	L53
 503                     ; 328     bitstatus = SET;
 504  0021 ae0001        	ldw	x,#1
 505  0024 1f01          	ldw	(OFST-1,sp),x
 507  0026 2003          	jra	L73
 508  0028               L53:
 509                     ; 332     bitstatus = RESET;
 510  0028 5f            	clrw	x
 511  0029 1f01          	ldw	(OFST-1,sp),x
 512  002b               L73:
 513                     ; 334   return ((FlagStatus)bitstatus);
 514  002b 1e01          	ldw	x,(OFST-1,sp)
 516  002d 5b04          	addw	sp,#4
 517  002f 81            	ret
 519                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
 519                     ; 345 {
 520                     .text:	section	.text,new
 521  0000               _TIM4_ClearFlag:
 522  0000 89            	pushw	x
 523       00000000      OFST:	set	0
 525                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
 526  0001 a30001        	cpw	x,#1
 527  0004 2603          	jrne	L441
 528  0006 4f            	clr	a
 529  0007 2010          	jra	L641
 530  0009               L441:
 531  0009 ae015b        	ldw	x,#347
 532  000c 89            	pushw	x
 533  000d ae0000        	ldw	x,#0
 534  0010 89            	pushw	x
 535  0011 ae0000        	ldw	x,#L3
 536  0014 cd0000        	call	_assert_failed
 538  0017 5b04          	addw	sp,#4
 539  0019               L641:
 540                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
 541  0019 7b02          	ld	a,(OFST+2,sp)
 542  001b 43            	cpl	a
 543  001c c75344        	ld	21316,a
 544                     ; 351 }
 545  001f 85            	popw	x
 546  0020 81            	ret
 548                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
 548                     ; 361 {
 549                     .text:	section	.text,new
 550  0000               _TIM4_GetITStatus:
 551  0000 89            	pushw	x
 552  0001 5204          	subw	sp,#4
 553       00000004      OFST:	set	4
 555                     ; 362   ITStatus bitstatus = RESET;
 556                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
 558                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 559  0003 a30001        	cpw	x,#1
 560  0006 2603          	jrne	L251
 561  0008 4f            	clr	a
 562  0009 2010          	jra	L451
 563  000b               L251:
 564  000b ae016f        	ldw	x,#367
 565  000e 89            	pushw	x
 566  000f ae0000        	ldw	x,#0
 567  0012 89            	pushw	x
 568  0013 ae0000        	ldw	x,#L3
 569  0016 cd0000        	call	_assert_failed
 571  0019 5b04          	addw	sp,#4
 572  001b               L451:
 573                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
 574  001b c65344        	ld	a,21316
 575  001e 1406          	and	a,(OFST+2,sp)
 576  0020 6b01          	ld	(OFST-3,sp),a
 577                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
 578  0022 c65343        	ld	a,21315
 579  0025 1406          	and	a,(OFST+2,sp)
 580  0027 6b02          	ld	(OFST-2,sp),a
 581                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
 582  0029 0d01          	tnz	(OFST-3,sp)
 583  002b 270b          	jreq	L14
 585  002d 0d02          	tnz	(OFST-2,sp)
 586  002f 2707          	jreq	L14
 587                     ; 375     bitstatus = (ITStatus)SET;
 588  0031 ae0001        	ldw	x,#1
 589  0034 1f03          	ldw	(OFST-1,sp),x
 591  0036 2003          	jra	L34
 592  0038               L14:
 593                     ; 379     bitstatus = (ITStatus)RESET;
 594  0038 5f            	clrw	x
 595  0039 1f03          	ldw	(OFST-1,sp),x
 596  003b               L34:
 597                     ; 381   return ((ITStatus)bitstatus);
 598  003b 1e03          	ldw	x,(OFST-1,sp)
 600  003d 5b06          	addw	sp,#6
 601  003f 81            	ret
 603                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
 603                     ; 392 {
 604                     .text:	section	.text,new
 605  0000               _TIM4_ClearITPendingBit:
 606  0000 89            	pushw	x
 607       00000000      OFST:	set	0
 609                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 610  0001 a30001        	cpw	x,#1
 611  0004 2603          	jrne	L061
 612  0006 4f            	clr	a
 613  0007 2010          	jra	L261
 614  0009               L061:
 615  0009 ae018a        	ldw	x,#394
 616  000c 89            	pushw	x
 617  000d ae0000        	ldw	x,#0
 618  0010 89            	pushw	x
 619  0011 ae0000        	ldw	x,#L3
 620  0014 cd0000        	call	_assert_failed
 622  0017 5b04          	addw	sp,#4
 623  0019               L261:
 624                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
 625  0019 7b02          	ld	a,(OFST+2,sp)
 626  001b 43            	cpl	a
 627  001c c75344        	ld	21316,a
 628                     ; 398 }
 629  001f 85            	popw	x
 630  0020 81            	ret
 632                     	xdef	_TIM4_ClearITPendingBit
 633                     	xdef	_TIM4_GetITStatus
 634                     	xdef	_TIM4_ClearFlag
 635                     	xdef	_TIM4_GetFlagStatus
 636                     	xdef	_TIM4_GetPrescaler
 637                     	xdef	_TIM4_GetCounter
 638                     	xdef	_TIM4_SetAutoreload
 639                     	xdef	_TIM4_SetCounter
 640                     	xdef	_TIM4_GenerateEvent
 641                     	xdef	_TIM4_ARRPreloadConfig
 642                     	xdef	_TIM4_PrescalerConfig
 643                     	xdef	_TIM4_SelectOnePulseMode
 644                     	xdef	_TIM4_UpdateRequestConfig
 645                     	xdef	_TIM4_UpdateDisableConfig
 646                     	xdef	_TIM4_ITConfig
 647                     	xdef	_TIM4_Cmd
 648                     	xdef	_TIM4_TimeBaseInit
 649                     	xdef	_TIM4_DeInit
 650                     	xref	_assert_failed
 651                     .const:	section	.text
 652  0000               L3:
 653  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 654  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 655  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
 656  0036 6d342e6300    	dc.b	"m4.c",0
 657                     	end

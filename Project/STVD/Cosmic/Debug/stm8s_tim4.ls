   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  46                     ; 49 void TIM4_DeInit(void)
  46                     ; 50 {
  48                     .text:	section	.text,new
  49  0000               _TIM4_DeInit:
  53                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  55  0000 725f5340      	clr	21312
  56                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  58  0004 725f5343      	clr	21315
  59                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  61  0008 725f5346      	clr	21318
  62                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  64  000c 725f5347      	clr	21319
  65                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  67  0010 35ff5348      	mov	21320,#255
  68                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  70  0014 725f5344      	clr	21316
  71                     ; 57 }
  74  0018 81            	ret
 179                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 179                     ; 66 {
 180                     .text:	section	.text,new
 181  0000               _TIM4_TimeBaseInit:
 183  0000 89            	pushw	x
 184       00000000      OFST:	set	0
 187                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 189  0001 a30000        	cpw	x,#0
 190  0004 2723          	jreq	L21
 191  0006 a30001        	cpw	x,#1
 192  0009 271e          	jreq	L21
 193  000b a30002        	cpw	x,#2
 194  000e 2719          	jreq	L21
 195  0010 a30003        	cpw	x,#3
 196  0013 2714          	jreq	L21
 197  0015 a30004        	cpw	x,#4
 198  0018 270f          	jreq	L21
 199  001a a30005        	cpw	x,#5
 200  001d 270a          	jreq	L21
 201  001f a30006        	cpw	x,#6
 202  0022 2705          	jreq	L21
 203  0024 a30007        	cpw	x,#7
 204  0027 2603          	jrne	L01
 205  0029               L21:
 206  0029 4f            	clr	a
 207  002a 2010          	jra	L41
 208  002c               L01:
 209  002c ae0044        	ldw	x,#68
 210  002f 89            	pushw	x
 211  0030 ae0000        	ldw	x,#0
 212  0033 89            	pushw	x
 213  0034 ae0000        	ldw	x,#L56
 214  0037 cd0000        	call	_assert_failed
 216  003a 5b04          	addw	sp,#4
 217  003c               L41:
 218                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 220  003c 7b02          	ld	a,(OFST+2,sp)
 221  003e c75347        	ld	21319,a
 222                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 224  0041 7b05          	ld	a,(OFST+5,sp)
 225  0043 c75348        	ld	21320,a
 226                     ; 73 }
 229  0046 85            	popw	x
 230  0047 81            	ret
 286                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 286                     ; 82 {
 287                     .text:	section	.text,new
 288  0000               _TIM4_Cmd:
 290  0000 89            	pushw	x
 291       00000000      OFST:	set	0
 294                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 296  0001 a30000        	cpw	x,#0
 297  0004 2705          	jreq	L22
 298  0006 a30001        	cpw	x,#1
 299  0009 2603          	jrne	L02
 300  000b               L22:
 301  000b 4f            	clr	a
 302  000c 2010          	jra	L42
 303  000e               L02:
 304  000e ae0054        	ldw	x,#84
 305  0011 89            	pushw	x
 306  0012 ae0000        	ldw	x,#0
 307  0015 89            	pushw	x
 308  0016 ae0000        	ldw	x,#L56
 309  0019 cd0000        	call	_assert_failed
 311  001c 5b04          	addw	sp,#4
 312  001e               L42:
 313                     ; 87   if (NewState != DISABLE)
 315  001e 1e01          	ldw	x,(OFST+1,sp)
 316  0020 2706          	jreq	L511
 317                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 319  0022 72105340      	bset	21312,#0
 321  0026 2004          	jra	L711
 322  0028               L511:
 323                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 325  0028 72115340      	bres	21312,#0
 326  002c               L711:
 327                     ; 95 }
 330  002c 85            	popw	x
 331  002d 81            	ret
 390                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 390                     ; 108 {
 391                     .text:	section	.text,new
 392  0000               _TIM4_ITConfig:
 394  0000 89            	pushw	x
 395       00000000      OFST:	set	0
 398                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 400  0001 a30001        	cpw	x,#1
 401  0004 2603          	jrne	L03
 402  0006 4f            	clr	a
 403  0007 2010          	jra	L23
 404  0009               L03:
 405  0009 ae006e        	ldw	x,#110
 406  000c 89            	pushw	x
 407  000d ae0000        	ldw	x,#0
 408  0010 89            	pushw	x
 409  0011 ae0000        	ldw	x,#L56
 410  0014 cd0000        	call	_assert_failed
 412  0017 5b04          	addw	sp,#4
 413  0019               L23:
 414                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 416  0019 1e05          	ldw	x,(OFST+5,sp)
 417  001b 2707          	jreq	L63
 418  001d 1e05          	ldw	x,(OFST+5,sp)
 419  001f a30001        	cpw	x,#1
 420  0022 2603          	jrne	L43
 421  0024               L63:
 422  0024 4f            	clr	a
 423  0025 2010          	jra	L04
 424  0027               L43:
 425  0027 ae006f        	ldw	x,#111
 426  002a 89            	pushw	x
 427  002b ae0000        	ldw	x,#0
 428  002e 89            	pushw	x
 429  002f ae0000        	ldw	x,#L56
 430  0032 cd0000        	call	_assert_failed
 432  0035 5b04          	addw	sp,#4
 433  0037               L04:
 434                     ; 113   if (NewState != DISABLE)
 436  0037 1e05          	ldw	x,(OFST+5,sp)
 437  0039 270a          	jreq	L151
 438                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 440  003b c65343        	ld	a,21315
 441  003e 1a02          	or	a,(OFST+2,sp)
 442  0040 c75343        	ld	21315,a
 444  0043 2009          	jra	L351
 445  0045               L151:
 446                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 448  0045 7b02          	ld	a,(OFST+2,sp)
 449  0047 43            	cpl	a
 450  0048 c45343        	and	a,21315
 451  004b c75343        	ld	21315,a
 452  004e               L351:
 453                     ; 123 }
 456  004e 85            	popw	x
 457  004f 81            	ret
 494                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 494                     ; 132 {
 495                     .text:	section	.text,new
 496  0000               _TIM4_UpdateDisableConfig:
 498  0000 89            	pushw	x
 499       00000000      OFST:	set	0
 502                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 504  0001 a30000        	cpw	x,#0
 505  0004 2705          	jreq	L64
 506  0006 a30001        	cpw	x,#1
 507  0009 2603          	jrne	L44
 508  000b               L64:
 509  000b 4f            	clr	a
 510  000c 2010          	jra	L05
 511  000e               L44:
 512  000e ae0086        	ldw	x,#134
 513  0011 89            	pushw	x
 514  0012 ae0000        	ldw	x,#0
 515  0015 89            	pushw	x
 516  0016 ae0000        	ldw	x,#L56
 517  0019 cd0000        	call	_assert_failed
 519  001c 5b04          	addw	sp,#4
 520  001e               L05:
 521                     ; 137   if (NewState != DISABLE)
 523  001e 1e01          	ldw	x,(OFST+1,sp)
 524  0020 2706          	jreq	L371
 525                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 527  0022 72125340      	bset	21312,#1
 529  0026 2004          	jra	L571
 530  0028               L371:
 531                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 533  0028 72135340      	bres	21312,#1
 534  002c               L571:
 535                     ; 145 }
 538  002c 85            	popw	x
 539  002d 81            	ret
 598                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 598                     ; 156 {
 599                     .text:	section	.text,new
 600  0000               _TIM4_UpdateRequestConfig:
 602  0000 89            	pushw	x
 603       00000000      OFST:	set	0
 606                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 608  0001 a30000        	cpw	x,#0
 609  0004 2705          	jreq	L65
 610  0006 a30001        	cpw	x,#1
 611  0009 2603          	jrne	L45
 612  000b               L65:
 613  000b 4f            	clr	a
 614  000c 2010          	jra	L06
 615  000e               L45:
 616  000e ae009e        	ldw	x,#158
 617  0011 89            	pushw	x
 618  0012 ae0000        	ldw	x,#0
 619  0015 89            	pushw	x
 620  0016 ae0000        	ldw	x,#L56
 621  0019 cd0000        	call	_assert_failed
 623  001c 5b04          	addw	sp,#4
 624  001e               L06:
 625                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 627  001e 1e01          	ldw	x,(OFST+1,sp)
 628  0020 2706          	jreq	L522
 629                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 631  0022 72145340      	bset	21312,#2
 633  0026 2004          	jra	L722
 634  0028               L522:
 635                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 637  0028 72155340      	bres	21312,#2
 638  002c               L722:
 639                     ; 169 }
 642  002c 85            	popw	x
 643  002d 81            	ret
 701                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 701                     ; 180 {
 702                     .text:	section	.text,new
 703  0000               _TIM4_SelectOnePulseMode:
 705  0000 89            	pushw	x
 706       00000000      OFST:	set	0
 709                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 711  0001 a30001        	cpw	x,#1
 712  0004 2705          	jreq	L66
 713  0006 a30000        	cpw	x,#0
 714  0009 2603          	jrne	L46
 715  000b               L66:
 716  000b 4f            	clr	a
 717  000c 2010          	jra	L07
 718  000e               L46:
 719  000e ae00b6        	ldw	x,#182
 720  0011 89            	pushw	x
 721  0012 ae0000        	ldw	x,#0
 722  0015 89            	pushw	x
 723  0016 ae0000        	ldw	x,#L56
 724  0019 cd0000        	call	_assert_failed
 726  001c 5b04          	addw	sp,#4
 727  001e               L07:
 728                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 730  001e 1e01          	ldw	x,(OFST+1,sp)
 731  0020 2706          	jreq	L752
 732                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 734  0022 72165340      	bset	21312,#3
 736  0026 2004          	jra	L162
 737  0028               L752:
 738                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 740  0028 72175340      	bres	21312,#3
 741  002c               L162:
 742                     ; 193 }
 745  002c 85            	popw	x
 746  002d 81            	ret
 815                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 815                     ; 216 {
 816                     .text:	section	.text,new
 817  0000               _TIM4_PrescalerConfig:
 819  0000 89            	pushw	x
 820       00000000      OFST:	set	0
 823                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 825  0001 1e05          	ldw	x,(OFST+5,sp)
 826  0003 2707          	jreq	L67
 827  0005 1e05          	ldw	x,(OFST+5,sp)
 828  0007 a30001        	cpw	x,#1
 829  000a 2603          	jrne	L47
 830  000c               L67:
 831  000c 4f            	clr	a
 832  000d 2010          	jra	L001
 833  000f               L47:
 834  000f ae00da        	ldw	x,#218
 835  0012 89            	pushw	x
 836  0013 ae0000        	ldw	x,#0
 837  0016 89            	pushw	x
 838  0017 ae0000        	ldw	x,#L56
 839  001a cd0000        	call	_assert_failed
 841  001d 5b04          	addw	sp,#4
 842  001f               L001:
 843                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 845  001f 1e01          	ldw	x,(OFST+1,sp)
 846  0021 2731          	jreq	L401
 847  0023 1e01          	ldw	x,(OFST+1,sp)
 848  0025 a30001        	cpw	x,#1
 849  0028 272a          	jreq	L401
 850  002a 1e01          	ldw	x,(OFST+1,sp)
 851  002c a30002        	cpw	x,#2
 852  002f 2723          	jreq	L401
 853  0031 1e01          	ldw	x,(OFST+1,sp)
 854  0033 a30003        	cpw	x,#3
 855  0036 271c          	jreq	L401
 856  0038 1e01          	ldw	x,(OFST+1,sp)
 857  003a a30004        	cpw	x,#4
 858  003d 2715          	jreq	L401
 859  003f 1e01          	ldw	x,(OFST+1,sp)
 860  0041 a30005        	cpw	x,#5
 861  0044 270e          	jreq	L401
 862  0046 1e01          	ldw	x,(OFST+1,sp)
 863  0048 a30006        	cpw	x,#6
 864  004b 2707          	jreq	L401
 865  004d 1e01          	ldw	x,(OFST+1,sp)
 866  004f a30007        	cpw	x,#7
 867  0052 2603          	jrne	L201
 868  0054               L401:
 869  0054 4f            	clr	a
 870  0055 2010          	jra	L601
 871  0057               L201:
 872  0057 ae00db        	ldw	x,#219
 873  005a 89            	pushw	x
 874  005b ae0000        	ldw	x,#0
 875  005e 89            	pushw	x
 876  005f ae0000        	ldw	x,#L56
 877  0062 cd0000        	call	_assert_failed
 879  0065 5b04          	addw	sp,#4
 880  0067               L601:
 881                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 883  0067 7b02          	ld	a,(OFST+2,sp)
 884  0069 c75347        	ld	21319,a
 885                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 887  006c 7b06          	ld	a,(OFST+6,sp)
 888  006e c75345        	ld	21317,a
 889                     ; 226 }
 892  0071 85            	popw	x
 893  0072 81            	ret
 930                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 930                     ; 235 {
 931                     .text:	section	.text,new
 932  0000               _TIM4_ARRPreloadConfig:
 934  0000 89            	pushw	x
 935       00000000      OFST:	set	0
 938                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 940  0001 a30000        	cpw	x,#0
 941  0004 2705          	jreq	L411
 942  0006 a30001        	cpw	x,#1
 943  0009 2603          	jrne	L211
 944  000b               L411:
 945  000b 4f            	clr	a
 946  000c 2010          	jra	L611
 947  000e               L211:
 948  000e ae00ed        	ldw	x,#237
 949  0011 89            	pushw	x
 950  0012 ae0000        	ldw	x,#0
 951  0015 89            	pushw	x
 952  0016 ae0000        	ldw	x,#L56
 953  0019 cd0000        	call	_assert_failed
 955  001c 5b04          	addw	sp,#4
 956  001e               L611:
 957                     ; 240   if (NewState != DISABLE)
 959  001e 1e01          	ldw	x,(OFST+1,sp)
 960  0020 2706          	jreq	L333
 961                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 963  0022 721e5340      	bset	21312,#7
 965  0026 2004          	jra	L533
 966  0028               L333:
 967                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 969  0028 721f5340      	bres	21312,#7
 970  002c               L533:
 971                     ; 248 }
 974  002c 85            	popw	x
 975  002d 81            	ret
1025                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
1025                     ; 258 {
1026                     .text:	section	.text,new
1027  0000               _TIM4_GenerateEvent:
1029  0000 89            	pushw	x
1030       00000000      OFST:	set	0
1033                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
1035  0001 a30001        	cpw	x,#1
1036  0004 2603          	jrne	L221
1037  0006 4f            	clr	a
1038  0007 2010          	jra	L421
1039  0009               L221:
1040  0009 ae0104        	ldw	x,#260
1041  000c 89            	pushw	x
1042  000d ae0000        	ldw	x,#0
1043  0010 89            	pushw	x
1044  0011 ae0000        	ldw	x,#L56
1045  0014 cd0000        	call	_assert_failed
1047  0017 5b04          	addw	sp,#4
1048  0019               L421:
1049                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
1051  0019 7b02          	ld	a,(OFST+2,sp)
1052  001b c75345        	ld	21317,a
1053                     ; 264 }
1056  001e 85            	popw	x
1057  001f 81            	ret
1089                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1089                     ; 273 {
1090                     .text:	section	.text,new
1091  0000               _TIM4_SetCounter:
1095                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1097  0000 c75346        	ld	21318,a
1098                     ; 276 }
1101  0003 81            	ret
1133                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1133                     ; 285 {
1134                     .text:	section	.text,new
1135  0000               _TIM4_SetAutoreload:
1139                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1141  0000 c75348        	ld	21320,a
1142                     ; 288 }
1145  0003 81            	ret
1168                     ; 295 uint8_t TIM4_GetCounter(void)
1168                     ; 296 {
1169                     .text:	section	.text,new
1170  0000               _TIM4_GetCounter:
1174                     ; 298   return (uint8_t)(TIM4->CNTR);
1176  0000 c65346        	ld	a,21318
1179  0003 81            	ret
1203                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1203                     ; 307 {
1204                     .text:	section	.text,new
1205  0000               _TIM4_GetPrescaler:
1209                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1211  0000 c65347        	ld	a,21319
1212  0003 5f            	clrw	x
1213  0004 97            	ld	xl,a
1216  0005 81            	ret
1296                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1296                     ; 320 {
1297                     .text:	section	.text,new
1298  0000               _TIM4_GetFlagStatus:
1300  0000 89            	pushw	x
1301  0001 89            	pushw	x
1302       00000002      OFST:	set	2
1305                     ; 321   FlagStatus bitstatus = RESET;
1307                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1309  0002 a30001        	cpw	x,#1
1310  0005 2603          	jrne	L041
1311  0007 4f            	clr	a
1312  0008 2010          	jra	L241
1313  000a               L041:
1314  000a ae0144        	ldw	x,#324
1315  000d 89            	pushw	x
1316  000e ae0000        	ldw	x,#0
1317  0011 89            	pushw	x
1318  0012 ae0000        	ldw	x,#L56
1319  0015 cd0000        	call	_assert_failed
1321  0018 5b04          	addw	sp,#4
1322  001a               L241:
1323                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1325  001a c65344        	ld	a,21316
1326  001d 1504          	bcp	a,(OFST+2,sp)
1327  001f 2707          	jreq	L374
1328                     ; 328     bitstatus = SET;
1330  0021 ae0001        	ldw	x,#1
1331  0024 1f01          	ldw	(OFST-1,sp),x
1333  0026 2003          	jra	L574
1334  0028               L374:
1335                     ; 332     bitstatus = RESET;
1337  0028 5f            	clrw	x
1338  0029 1f01          	ldw	(OFST-1,sp),x
1339  002b               L574:
1340                     ; 334   return ((FlagStatus)bitstatus);
1342  002b 1e01          	ldw	x,(OFST-1,sp)
1345  002d 5b04          	addw	sp,#4
1346  002f 81            	ret
1382                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1382                     ; 345 {
1383                     .text:	section	.text,new
1384  0000               _TIM4_ClearFlag:
1386  0000 89            	pushw	x
1387       00000000      OFST:	set	0
1390                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1392  0001 a30001        	cpw	x,#1
1393  0004 2603          	jrne	L641
1394  0006 4f            	clr	a
1395  0007 2010          	jra	L051
1396  0009               L641:
1397  0009 ae015b        	ldw	x,#347
1398  000c 89            	pushw	x
1399  000d ae0000        	ldw	x,#0
1400  0010 89            	pushw	x
1401  0011 ae0000        	ldw	x,#L56
1402  0014 cd0000        	call	_assert_failed
1404  0017 5b04          	addw	sp,#4
1405  0019               L051:
1406                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1408  0019 7b02          	ld	a,(OFST+2,sp)
1409  001b 43            	cpl	a
1410  001c c75344        	ld	21316,a
1411                     ; 351 }
1414  001f 85            	popw	x
1415  0020 81            	ret
1476                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1476                     ; 361 {
1477                     .text:	section	.text,new
1478  0000               _TIM4_GetITStatus:
1480  0000 89            	pushw	x
1481  0001 5204          	subw	sp,#4
1482       00000004      OFST:	set	4
1485                     ; 362   ITStatus bitstatus = RESET;
1487                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1491                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1493  0003 a30001        	cpw	x,#1
1494  0006 2603          	jrne	L451
1495  0008 4f            	clr	a
1496  0009 2010          	jra	L651
1497  000b               L451:
1498  000b ae016f        	ldw	x,#367
1499  000e 89            	pushw	x
1500  000f ae0000        	ldw	x,#0
1501  0012 89            	pushw	x
1502  0013 ae0000        	ldw	x,#L56
1503  0016 cd0000        	call	_assert_failed
1505  0019 5b04          	addw	sp,#4
1506  001b               L651:
1507                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1509  001b c65344        	ld	a,21316
1510  001e 1406          	and	a,(OFST+2,sp)
1511  0020 6b01          	ld	(OFST-3,sp),a
1512                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1514  0022 c65343        	ld	a,21315
1515  0025 1406          	and	a,(OFST+2,sp)
1516  0027 6b02          	ld	(OFST-2,sp),a
1517                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1519  0029 0d01          	tnz	(OFST-3,sp)
1520  002b 270b          	jreq	L345
1522  002d 0d02          	tnz	(OFST-2,sp)
1523  002f 2707          	jreq	L345
1524                     ; 375     bitstatus = (ITStatus)SET;
1526  0031 ae0001        	ldw	x,#1
1527  0034 1f03          	ldw	(OFST-1,sp),x
1529  0036 2003          	jra	L545
1530  0038               L345:
1531                     ; 379     bitstatus = (ITStatus)RESET;
1533  0038 5f            	clrw	x
1534  0039 1f03          	ldw	(OFST-1,sp),x
1535  003b               L545:
1536                     ; 381   return ((ITStatus)bitstatus);
1538  003b 1e03          	ldw	x,(OFST-1,sp)
1541  003d 5b06          	addw	sp,#6
1542  003f 81            	ret
1579                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1579                     ; 392 {
1580                     .text:	section	.text,new
1581  0000               _TIM4_ClearITPendingBit:
1583  0000 89            	pushw	x
1584       00000000      OFST:	set	0
1587                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1589  0001 a30001        	cpw	x,#1
1590  0004 2603          	jrne	L261
1591  0006 4f            	clr	a
1592  0007 2010          	jra	L461
1593  0009               L261:
1594  0009 ae018a        	ldw	x,#394
1595  000c 89            	pushw	x
1596  000d ae0000        	ldw	x,#0
1597  0010 89            	pushw	x
1598  0011 ae0000        	ldw	x,#L56
1599  0014 cd0000        	call	_assert_failed
1601  0017 5b04          	addw	sp,#4
1602  0019               L461:
1603                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1605  0019 7b02          	ld	a,(OFST+2,sp)
1606  001b 43            	cpl	a
1607  001c c75344        	ld	21316,a
1608                     ; 398 }
1611  001f 85            	popw	x
1612  0020 81            	ret
1625                     	xdef	_TIM4_ClearITPendingBit
1626                     	xdef	_TIM4_GetITStatus
1627                     	xdef	_TIM4_ClearFlag
1628                     	xdef	_TIM4_GetFlagStatus
1629                     	xdef	_TIM4_GetPrescaler
1630                     	xdef	_TIM4_GetCounter
1631                     	xdef	_TIM4_SetAutoreload
1632                     	xdef	_TIM4_SetCounter
1633                     	xdef	_TIM4_GenerateEvent
1634                     	xdef	_TIM4_ARRPreloadConfig
1635                     	xdef	_TIM4_PrescalerConfig
1636                     	xdef	_TIM4_SelectOnePulseMode
1637                     	xdef	_TIM4_UpdateRequestConfig
1638                     	xdef	_TIM4_UpdateDisableConfig
1639                     	xdef	_TIM4_ITConfig
1640                     	xdef	_TIM4_Cmd
1641                     	xdef	_TIM4_TimeBaseInit
1642                     	xdef	_TIM4_DeInit
1643                     	xref	_assert_failed
1644                     .const:	section	.text
1645  0000               L56:
1646  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
1647  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
1648  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
1649  0036 6d342e6300    	dc.b	"m4.c",0
1669                     	end

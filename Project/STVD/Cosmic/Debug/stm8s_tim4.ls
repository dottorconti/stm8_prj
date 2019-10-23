   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 49 void TIM4_DeInit(void)
  50                     ; 50 {
  52                     .text:	section	.text,new
  53  0000               _TIM4_DeInit:
  57                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  59  0000 725f5340      	clr	21312
  60                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  62  0004 725f5343      	clr	21315
  63                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  65  0008 725f5346      	clr	21318
  66                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  68  000c 725f5347      	clr	21319
  69                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  71  0010 35ff5348      	mov	21320,#255
  72                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  74  0014 725f5344      	clr	21316
  75                     ; 57 }
  78  0018 81            	ret	
 185                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 185                     ; 66 {
 186                     .text:	section	.text,new
 187  0000               _TIM4_TimeBaseInit:
 189  0000 89            	pushw	x
 190       00000000      OFST:	set	0
 193                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 195  0001 5d            	tnzw	x
 196  0002 2731          	jreq	L41
 197  0004 a30001        	cpw	x,#1
 198  0007 272c          	jreq	L41
 199  0009 a30002        	cpw	x,#2
 200  000c 2727          	jreq	L41
 201  000e a30003        	cpw	x,#3
 202  0011 2722          	jreq	L41
 203  0013 a30004        	cpw	x,#4
 204  0016 271d          	jreq	L41
 205  0018 a30005        	cpw	x,#5
 206  001b 2718          	jreq	L41
 207  001d a30006        	cpw	x,#6
 208  0020 2713          	jreq	L41
 209  0022 a30007        	cpw	x,#7
 210  0025 270e          	jreq	L41
 211  0027 ae0044        	ldw	x,#68
 212  002a 89            	pushw	x
 213  002b 5f            	clrw	x
 214  002c 89            	pushw	x
 215  002d ae0000        	ldw	x,#L76
 216  0030 cd0000        	call	_assert_failed
 218  0033 5b04          	addw	sp,#4
 219  0035               L41:
 220                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 222  0035 7b02          	ld	a,(OFST+2,sp)
 223  0037 c75347        	ld	21319,a
 224                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 226  003a 7b05          	ld	a,(OFST+5,sp)
 227  003c c75348        	ld	21320,a
 228                     ; 73 }
 231  003f 85            	popw	x
 232  0040 81            	ret	
 288                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 288                     ; 82 {
 289                     .text:	section	.text,new
 290  0000               _TIM4_Cmd:
 292  0000 89            	pushw	x
 293       00000000      OFST:	set	0
 296                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 298  0001 5d            	tnzw	x
 299  0002 2711          	jreq	L62
 300  0004 5a            	decw	x
 301  0005 270e          	jreq	L62
 302  0007 ae0054        	ldw	x,#84
 303  000a 89            	pushw	x
 304  000b 5f            	clrw	x
 305  000c 89            	pushw	x
 306  000d ae0000        	ldw	x,#L76
 307  0010 cd0000        	call	_assert_failed
 309  0013 5b04          	addw	sp,#4
 310  0015               L62:
 311                     ; 87   if (NewState != DISABLE)
 313  0015 1e01          	ldw	x,(OFST+1,sp)
 314  0017 2706          	jreq	L711
 315                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 317  0019 72105340      	bset	21312,#0
 319  001d 2004          	jra	L121
 320  001f               L711:
 321                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 323  001f 72115340      	bres	21312,#0
 324  0023               L121:
 325                     ; 95 }
 328  0023 85            	popw	x
 329  0024 81            	ret	
 388                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 388                     ; 108 {
 389                     .text:	section	.text,new
 390  0000               _TIM4_ITConfig:
 392  0000 89            	pushw	x
 393       00000000      OFST:	set	0
 396                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 398  0001 5a            	decw	x
 399  0002 2705          	jreq	L63
 400  0004 ae006e        	ldw	x,#110
 401  0007 ad22          	call	LC001
 402  0009               L63:
 403                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 405  0009 1e05          	ldw	x,(OFST+5,sp)
 406  000b 2708          	jreq	L64
 407  000d 5a            	decw	x
 408  000e 2705          	jreq	L64
 409  0010 ae006f        	ldw	x,#111
 410  0013 ad16          	call	LC001
 411  0015               L64:
 412                     ; 113   if (NewState != DISABLE)
 414  0015 1e05          	ldw	x,(OFST+5,sp)
 415  0017 2707          	jreq	L351
 416                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 418  0019 c65343        	ld	a,21315
 419  001c 1a02          	or	a,(OFST+2,sp)
 421  001e 2006          	jra	L551
 422  0020               L351:
 423                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 425  0020 7b02          	ld	a,(OFST+2,sp)
 426  0022 43            	cpl	a
 427  0023 c45343        	and	a,21315
 428  0026               L551:
 429  0026 c75343        	ld	21315,a
 430                     ; 123 }
 433  0029 85            	popw	x
 434  002a 81            	ret	
 435  002b               LC001:
 436  002b 89            	pushw	x
 437  002c 5f            	clrw	x
 438  002d 89            	pushw	x
 439  002e ae0000        	ldw	x,#L76
 440  0031 cd0000        	call	_assert_failed
 442  0034 5b04          	addw	sp,#4
 443  0036 81            	ret	
 480                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 480                     ; 132 {
 481                     .text:	section	.text,new
 482  0000               _TIM4_UpdateDisableConfig:
 484  0000 89            	pushw	x
 485       00000000      OFST:	set	0
 488                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 490  0001 5d            	tnzw	x
 491  0002 2711          	jreq	L06
 492  0004 5a            	decw	x
 493  0005 270e          	jreq	L06
 494  0007 ae0086        	ldw	x,#134
 495  000a 89            	pushw	x
 496  000b 5f            	clrw	x
 497  000c 89            	pushw	x
 498  000d ae0000        	ldw	x,#L76
 499  0010 cd0000        	call	_assert_failed
 501  0013 5b04          	addw	sp,#4
 502  0015               L06:
 503                     ; 137   if (NewState != DISABLE)
 505  0015 1e01          	ldw	x,(OFST+1,sp)
 506  0017 2706          	jreq	L571
 507                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 509  0019 72125340      	bset	21312,#1
 511  001d 2004          	jra	L771
 512  001f               L571:
 513                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 515  001f 72135340      	bres	21312,#1
 516  0023               L771:
 517                     ; 145 }
 520  0023 85            	popw	x
 521  0024 81            	ret	
 580                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 580                     ; 156 {
 581                     .text:	section	.text,new
 582  0000               _TIM4_UpdateRequestConfig:
 584  0000 89            	pushw	x
 585       00000000      OFST:	set	0
 588                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 590  0001 5d            	tnzw	x
 591  0002 2711          	jreq	L27
 592  0004 5a            	decw	x
 593  0005 270e          	jreq	L27
 594  0007 ae009e        	ldw	x,#158
 595  000a 89            	pushw	x
 596  000b 5f            	clrw	x
 597  000c 89            	pushw	x
 598  000d ae0000        	ldw	x,#L76
 599  0010 cd0000        	call	_assert_failed
 601  0013 5b04          	addw	sp,#4
 602  0015               L27:
 603                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 605  0015 1e01          	ldw	x,(OFST+1,sp)
 606  0017 2706          	jreq	L722
 607                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 609  0019 72145340      	bset	21312,#2
 611  001d 2004          	jra	L132
 612  001f               L722:
 613                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 615  001f 72155340      	bres	21312,#2
 616  0023               L132:
 617                     ; 169 }
 620  0023 85            	popw	x
 621  0024 81            	ret	
 679                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 679                     ; 180 {
 680                     .text:	section	.text,new
 681  0000               _TIM4_SelectOnePulseMode:
 683  0000 89            	pushw	x
 684       00000000      OFST:	set	0
 687                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 689  0001 a30001        	cpw	x,#1
 690  0004 2711          	jreq	L401
 691  0006 5d            	tnzw	x
 692  0007 270e          	jreq	L401
 693  0009 ae00b6        	ldw	x,#182
 694  000c 89            	pushw	x
 695  000d 5f            	clrw	x
 696  000e 89            	pushw	x
 697  000f ae0000        	ldw	x,#L76
 698  0012 cd0000        	call	_assert_failed
 700  0015 5b04          	addw	sp,#4
 701  0017               L401:
 702                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 704  0017 1e01          	ldw	x,(OFST+1,sp)
 705  0019 2706          	jreq	L162
 706                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 708  001b 72165340      	bset	21312,#3
 710  001f 2004          	jra	L362
 711  0021               L162:
 712                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 714  0021 72175340      	bres	21312,#3
 715  0025               L362:
 716                     ; 193 }
 719  0025 85            	popw	x
 720  0026 81            	ret	
 789                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 789                     ; 216 {
 790                     .text:	section	.text,new
 791  0000               _TIM4_PrescalerConfig:
 793  0000 89            	pushw	x
 794       00000000      OFST:	set	0
 797                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 799  0001 1e05          	ldw	x,(OFST+5,sp)
 800  0003 2708          	jreq	L611
 801  0005 5a            	decw	x
 802  0006 2705          	jreq	L611
 803  0008 ae00da        	ldw	x,#218
 804  000b ad38          	call	LC002
 805  000d               L611:
 806                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 808  000d 1e01          	ldw	x,(OFST+1,sp)
 809  000f 2728          	jreq	L621
 810  0011 a30001        	cpw	x,#1
 811  0014 2723          	jreq	L621
 812  0016 a30002        	cpw	x,#2
 813  0019 271e          	jreq	L621
 814  001b a30003        	cpw	x,#3
 815  001e 2719          	jreq	L621
 816  0020 a30004        	cpw	x,#4
 817  0023 2714          	jreq	L621
 818  0025 a30005        	cpw	x,#5
 819  0028 270f          	jreq	L621
 820  002a a30006        	cpw	x,#6
 821  002d 270a          	jreq	L621
 822  002f a30007        	cpw	x,#7
 823  0032 2705          	jreq	L621
 824  0034 ae00db        	ldw	x,#219
 825  0037 ad0c          	call	LC002
 826  0039               L621:
 827                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 829  0039 7b02          	ld	a,(OFST+2,sp)
 830  003b c75347        	ld	21319,a
 831                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 833  003e 7b06          	ld	a,(OFST+6,sp)
 834  0040 c75345        	ld	21317,a
 835                     ; 226 }
 838  0043 85            	popw	x
 839  0044 81            	ret	
 840  0045               LC002:
 841  0045 89            	pushw	x
 842  0046 5f            	clrw	x
 843  0047 89            	pushw	x
 844  0048 ae0000        	ldw	x,#L76
 845  004b cd0000        	call	_assert_failed
 847  004e 5b04          	addw	sp,#4
 848  0050 81            	ret	
 885                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 885                     ; 235 {
 886                     .text:	section	.text,new
 887  0000               _TIM4_ARRPreloadConfig:
 889  0000 89            	pushw	x
 890       00000000      OFST:	set	0
 893                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 895  0001 5d            	tnzw	x
 896  0002 2711          	jreq	L041
 897  0004 5a            	decw	x
 898  0005 270e          	jreq	L041
 899  0007 ae00ed        	ldw	x,#237
 900  000a 89            	pushw	x
 901  000b 5f            	clrw	x
 902  000c 89            	pushw	x
 903  000d ae0000        	ldw	x,#L76
 904  0010 cd0000        	call	_assert_failed
 906  0013 5b04          	addw	sp,#4
 907  0015               L041:
 908                     ; 240   if (NewState != DISABLE)
 910  0015 1e01          	ldw	x,(OFST+1,sp)
 911  0017 2706          	jreq	L533
 912                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 914  0019 721e5340      	bset	21312,#7
 916  001d 2004          	jra	L733
 917  001f               L533:
 918                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 920  001f 721f5340      	bres	21312,#7
 921  0023               L733:
 922                     ; 248 }
 925  0023 85            	popw	x
 926  0024 81            	ret	
 976                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 976                     ; 258 {
 977                     .text:	section	.text,new
 978  0000               _TIM4_GenerateEvent:
 980  0000 89            	pushw	x
 981       00000000      OFST:	set	0
 984                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 986  0001 5a            	decw	x
 987  0002 270e          	jreq	L051
 988  0004 ae0104        	ldw	x,#260
 989  0007 89            	pushw	x
 990  0008 5f            	clrw	x
 991  0009 89            	pushw	x
 992  000a ae0000        	ldw	x,#L76
 993  000d cd0000        	call	_assert_failed
 995  0010 5b04          	addw	sp,#4
 996  0012               L051:
 997                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
 999  0012 7b02          	ld	a,(OFST+2,sp)
1000  0014 c75345        	ld	21317,a
1001                     ; 264 }
1004  0017 85            	popw	x
1005  0018 81            	ret	
1039                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1039                     ; 273 {
1040                     .text:	section	.text,new
1041  0000               _TIM4_SetCounter:
1045                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1047  0000 c75346        	ld	21318,a
1048                     ; 276 }
1051  0003 81            	ret	
1085                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1085                     ; 285 {
1086                     .text:	section	.text,new
1087  0000               _TIM4_SetAutoreload:
1091                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1093  0000 c75348        	ld	21320,a
1094                     ; 288 }
1097  0003 81            	ret	
1120                     ; 295 uint8_t TIM4_GetCounter(void)
1120                     ; 296 {
1121                     .text:	section	.text,new
1122  0000               _TIM4_GetCounter:
1126                     ; 298   return (uint8_t)(TIM4->CNTR);
1128  0000 c65346        	ld	a,21318
1131  0003 81            	ret	
1155                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1155                     ; 307 {
1156                     .text:	section	.text,new
1157  0000               _TIM4_GetPrescaler:
1161                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1163  0000 c65347        	ld	a,21319
1164  0003 5f            	clrw	x
1165  0004 97            	ld	xl,a
1168  0005 81            	ret	
1248                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1248                     ; 320 {
1249                     .text:	section	.text,new
1250  0000               _TIM4_GetFlagStatus:
1252  0000 89            	pushw	x
1253  0001 89            	pushw	x
1254       00000002      OFST:	set	2
1257                     ; 321   FlagStatus bitstatus = RESET;
1259                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1261  0002 5a            	decw	x
1262  0003 270e          	jreq	L071
1263  0005 ae0144        	ldw	x,#324
1264  0008 89            	pushw	x
1265  0009 5f            	clrw	x
1266  000a 89            	pushw	x
1267  000b ae0000        	ldw	x,#L76
1268  000e cd0000        	call	_assert_failed
1270  0011 5b04          	addw	sp,#4
1271  0013               L071:
1272                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1274  0013 c65344        	ld	a,21316
1275  0016 1504          	bcp	a,(OFST+2,sp)
1276  0018 2705          	jreq	L105
1277                     ; 328     bitstatus = SET;
1279  001a ae0001        	ldw	x,#1
1281  001d 2001          	jra	L305
1282  001f               L105:
1283                     ; 332     bitstatus = RESET;
1285  001f 5f            	clrw	x
1286  0020               L305:
1287                     ; 334   return ((FlagStatus)bitstatus);
1291  0020 5b04          	addw	sp,#4
1292  0022 81            	ret	
1328                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1328                     ; 345 {
1329                     .text:	section	.text,new
1330  0000               _TIM4_ClearFlag:
1332  0000 89            	pushw	x
1333       00000000      OFST:	set	0
1336                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1338  0001 5a            	decw	x
1339  0002 270e          	jreq	L002
1340  0004 ae015b        	ldw	x,#347
1341  0007 89            	pushw	x
1342  0008 5f            	clrw	x
1343  0009 89            	pushw	x
1344  000a ae0000        	ldw	x,#L76
1345  000d cd0000        	call	_assert_failed
1347  0010 5b04          	addw	sp,#4
1348  0012               L002:
1349                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1351  0012 7b02          	ld	a,(OFST+2,sp)
1352  0014 43            	cpl	a
1353  0015 c75344        	ld	21316,a
1354                     ; 351 }
1357  0018 85            	popw	x
1358  0019 81            	ret	
1423                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1423                     ; 361 {
1424                     .text:	section	.text,new
1425  0000               _TIM4_GetITStatus:
1427  0000 89            	pushw	x
1428  0001 5204          	subw	sp,#4
1429       00000004      OFST:	set	4
1432                     ; 362   ITStatus bitstatus = RESET;
1434                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1438                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1440  0003 5a            	decw	x
1441  0004 270e          	jreq	L012
1442  0006 ae016f        	ldw	x,#367
1443  0009 89            	pushw	x
1444  000a 5f            	clrw	x
1445  000b 89            	pushw	x
1446  000c ae0000        	ldw	x,#L76
1447  000f cd0000        	call	_assert_failed
1449  0012 5b04          	addw	sp,#4
1450  0014               L012:
1451                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1453  0014 c65344        	ld	a,21316
1454  0017 1406          	and	a,(OFST+2,sp)
1455  0019 6b01          	ld	(OFST-3,sp),a
1456                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1458  001b c65343        	ld	a,21315
1459  001e 1406          	and	a,(OFST+2,sp)
1460  0020 6b02          	ld	(OFST-2,sp),a
1461                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1463  0022 7b01          	ld	a,(OFST-3,sp)
1464  0024 2709          	jreq	L555
1466  0026 7b02          	ld	a,(OFST-2,sp)
1467  0028 2705          	jreq	L555
1468                     ; 375     bitstatus = (ITStatus)SET;
1470  002a ae0001        	ldw	x,#1
1472  002d 2001          	jra	L755
1473  002f               L555:
1474                     ; 379     bitstatus = (ITStatus)RESET;
1476  002f 5f            	clrw	x
1477  0030               L755:
1478                     ; 381   return ((ITStatus)bitstatus);
1482  0030 5b06          	addw	sp,#6
1483  0032 81            	ret	
1520                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1520                     ; 392 {
1521                     .text:	section	.text,new
1522  0000               _TIM4_ClearITPendingBit:
1524  0000 89            	pushw	x
1525       00000000      OFST:	set	0
1528                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1530  0001 5a            	decw	x
1531  0002 270e          	jreq	L022
1532  0004 ae018a        	ldw	x,#394
1533  0007 89            	pushw	x
1534  0008 5f            	clrw	x
1535  0009 89            	pushw	x
1536  000a ae0000        	ldw	x,#L76
1537  000d cd0000        	call	_assert_failed
1539  0010 5b04          	addw	sp,#4
1540  0012               L022:
1541                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1543  0012 7b02          	ld	a,(OFST+2,sp)
1544  0014 43            	cpl	a
1545  0015 c75344        	ld	21316,a
1546                     ; 398 }
1549  0018 85            	popw	x
1550  0019 81            	ret	
1563                     	xdef	_TIM4_ClearITPendingBit
1564                     	xdef	_TIM4_GetITStatus
1565                     	xdef	_TIM4_ClearFlag
1566                     	xdef	_TIM4_GetFlagStatus
1567                     	xdef	_TIM4_GetPrescaler
1568                     	xdef	_TIM4_GetCounter
1569                     	xdef	_TIM4_SetAutoreload
1570                     	xdef	_TIM4_SetCounter
1571                     	xdef	_TIM4_GenerateEvent
1572                     	xdef	_TIM4_ARRPreloadConfig
1573                     	xdef	_TIM4_PrescalerConfig
1574                     	xdef	_TIM4_SelectOnePulseMode
1575                     	xdef	_TIM4_UpdateRequestConfig
1576                     	xdef	_TIM4_UpdateDisableConfig
1577                     	xdef	_TIM4_ITConfig
1578                     	xdef	_TIM4_Cmd
1579                     	xdef	_TIM4_TimeBaseInit
1580                     	xdef	_TIM4_DeInit
1581                     	xref	_assert_failed
1582                     .const:	section	.text
1583  0000               L76:
1584  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
1585  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
1586  0024 72697665725c  	dc.b	"river\src\stm8s_ti"
1587  0036 6d342e6300    	dc.b	"m4.c",0
1607                     	end

   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
 112                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 112                     ; 54 {
 114                     .text:	section	.text,new
 115  0000               _GPIO_DeInit:
 119                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 121  0000 7f            	clr	(x)
 122                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 124  0001 6f02          	clr	(2,x)
 125                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 127  0003 6f03          	clr	(3,x)
 128                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 130  0005 6f04          	clr	(4,x)
 131                     ; 59 }
 134  0007 81            	ret
 375                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 375                     ; 72 {
 376                     .text:	section	.text,new
 377  0000               _GPIO_Init:
 379  0000 89            	pushw	x
 380       00000000      OFST:	set	0
 383                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 385  0001 1e07          	ldw	x,(OFST+7,sp)
 386  0003 274d          	jreq	L21
 387  0005 1e07          	ldw	x,(OFST+7,sp)
 388  0007 a30040        	cpw	x,#64
 389  000a 2746          	jreq	L21
 390  000c 1e07          	ldw	x,(OFST+7,sp)
 391  000e a30020        	cpw	x,#32
 392  0011 273f          	jreq	L21
 393  0013 1e07          	ldw	x,(OFST+7,sp)
 394  0015 a30060        	cpw	x,#96
 395  0018 2738          	jreq	L21
 396  001a 1e07          	ldw	x,(OFST+7,sp)
 397  001c a300a0        	cpw	x,#160
 398  001f 2731          	jreq	L21
 399  0021 1e07          	ldw	x,(OFST+7,sp)
 400  0023 a300e0        	cpw	x,#224
 401  0026 272a          	jreq	L21
 402  0028 1e07          	ldw	x,(OFST+7,sp)
 403  002a a30080        	cpw	x,#128
 404  002d 2723          	jreq	L21
 405  002f 1e07          	ldw	x,(OFST+7,sp)
 406  0031 a300c0        	cpw	x,#192
 407  0034 271c          	jreq	L21
 408  0036 1e07          	ldw	x,(OFST+7,sp)
 409  0038 a300b0        	cpw	x,#176
 410  003b 2715          	jreq	L21
 411  003d 1e07          	ldw	x,(OFST+7,sp)
 412  003f a300f0        	cpw	x,#240
 413  0042 270e          	jreq	L21
 414  0044 1e07          	ldw	x,(OFST+7,sp)
 415  0046 a30090        	cpw	x,#144
 416  0049 2707          	jreq	L21
 417  004b 1e07          	ldw	x,(OFST+7,sp)
 418  004d a300d0        	cpw	x,#208
 419  0050 2603          	jrne	L01
 420  0052               L21:
 421  0052 4f            	clr	a
 422  0053 2010          	jra	L41
 423  0055               L01:
 424  0055 ae004d        	ldw	x,#77
 425  0058 89            	pushw	x
 426  0059 ae0000        	ldw	x,#0
 427  005c 89            	pushw	x
 428  005d ae0000        	ldw	x,#L771
 429  0060 cd0000        	call	_assert_failed
 431  0063 5b04          	addw	sp,#4
 432  0065               L41:
 433                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 435  0065 1e05          	ldw	x,(OFST+5,sp)
 436  0067 2703          	jreq	L61
 437  0069 4f            	clr	a
 438  006a 2010          	jra	L02
 439  006c               L61:
 440  006c ae004e        	ldw	x,#78
 441  006f 89            	pushw	x
 442  0070 ae0000        	ldw	x,#0
 443  0073 89            	pushw	x
 444  0074 ae0000        	ldw	x,#L771
 445  0077 cd0000        	call	_assert_failed
 447  007a 5b04          	addw	sp,#4
 448  007c               L02:
 449                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 451  007c 1e01          	ldw	x,(OFST+1,sp)
 452  007e 7b06          	ld	a,(OFST+6,sp)
 453  0080 43            	cpl	a
 454  0081 e404          	and	a,(4,x)
 455  0083 e704          	ld	(4,x),a
 456                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 458  0085 7b08          	ld	a,(OFST+8,sp)
 459  0087 a580          	bcp	a,#128
 460  0089 271f          	jreq	L102
 461                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 463  008b 7b08          	ld	a,(OFST+8,sp)
 464  008d a510          	bcp	a,#16
 465  008f 2708          	jreq	L302
 466                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 468  0091 1e01          	ldw	x,(OFST+1,sp)
 469  0093 f6            	ld	a,(x)
 470  0094 1a06          	or	a,(OFST+6,sp)
 471  0096 f7            	ld	(x),a
 473  0097 2007          	jra	L502
 474  0099               L302:
 475                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 477  0099 1e01          	ldw	x,(OFST+1,sp)
 478  009b 7b06          	ld	a,(OFST+6,sp)
 479  009d 43            	cpl	a
 480  009e f4            	and	a,(x)
 481  009f f7            	ld	(x),a
 482  00a0               L502:
 483                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 485  00a0 1e01          	ldw	x,(OFST+1,sp)
 486  00a2 e602          	ld	a,(2,x)
 487  00a4 1a06          	or	a,(OFST+6,sp)
 488  00a6 e702          	ld	(2,x),a
 490  00a8 2009          	jra	L702
 491  00aa               L102:
 492                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 494  00aa 1e01          	ldw	x,(OFST+1,sp)
 495  00ac 7b06          	ld	a,(OFST+6,sp)
 496  00ae 43            	cpl	a
 497  00af e402          	and	a,(2,x)
 498  00b1 e702          	ld	(2,x),a
 499  00b3               L702:
 500                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 502  00b3 7b08          	ld	a,(OFST+8,sp)
 503  00b5 a540          	bcp	a,#64
 504  00b7 270a          	jreq	L112
 505                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 507  00b9 1e01          	ldw	x,(OFST+1,sp)
 508  00bb e603          	ld	a,(3,x)
 509  00bd 1a06          	or	a,(OFST+6,sp)
 510  00bf e703          	ld	(3,x),a
 512  00c1 2009          	jra	L312
 513  00c3               L112:
 514                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 516  00c3 1e01          	ldw	x,(OFST+1,sp)
 517  00c5 7b06          	ld	a,(OFST+6,sp)
 518  00c7 43            	cpl	a
 519  00c8 e403          	and	a,(3,x)
 520  00ca e703          	ld	(3,x),a
 521  00cc               L312:
 522                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 524  00cc 7b08          	ld	a,(OFST+8,sp)
 525  00ce a520          	bcp	a,#32
 526  00d0 270a          	jreq	L512
 527                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 529  00d2 1e01          	ldw	x,(OFST+1,sp)
 530  00d4 e604          	ld	a,(4,x)
 531  00d6 1a06          	or	a,(OFST+6,sp)
 532  00d8 e704          	ld	(4,x),a
 534  00da 2009          	jra	L712
 535  00dc               L512:
 536                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 538  00dc 1e01          	ldw	x,(OFST+1,sp)
 539  00de 7b06          	ld	a,(OFST+6,sp)
 540  00e0 43            	cpl	a
 541  00e1 e404          	and	a,(4,x)
 542  00e3 e704          	ld	(4,x),a
 543  00e5               L712:
 544                     ; 131 }
 547  00e5 85            	popw	x
 548  00e6 81            	ret
 592                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 592                     ; 142 {
 593                     .text:	section	.text,new
 594  0000               _GPIO_Write:
 596  0000 89            	pushw	x
 597       00000000      OFST:	set	0
 600                     ; 143   GPIOx->ODR = PortVal;
 602  0001 7b05          	ld	a,(OFST+5,sp)
 603  0003 1e01          	ldw	x,(OFST+1,sp)
 604  0005 f7            	ld	(x),a
 605                     ; 144 }
 608  0006 85            	popw	x
 609  0007 81            	ret
 656                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 656                     ; 155 {
 657                     .text:	section	.text,new
 658  0000               _GPIO_WriteHigh:
 660  0000 89            	pushw	x
 661       00000000      OFST:	set	0
 664                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 666  0001 f6            	ld	a,(x)
 667  0002 1a06          	or	a,(OFST+6,sp)
 668  0004 f7            	ld	(x),a
 669                     ; 157 }
 672  0005 85            	popw	x
 673  0006 81            	ret
 720                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 720                     ; 168 {
 721                     .text:	section	.text,new
 722  0000               _GPIO_WriteLow:
 724  0000 89            	pushw	x
 725       00000000      OFST:	set	0
 728                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 730  0001 7b06          	ld	a,(OFST+6,sp)
 731  0003 43            	cpl	a
 732  0004 f4            	and	a,(x)
 733  0005 f7            	ld	(x),a
 734                     ; 170 }
 737  0006 85            	popw	x
 738  0007 81            	ret
 785                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 785                     ; 181 {
 786                     .text:	section	.text,new
 787  0000               _GPIO_WriteReverse:
 789  0000 89            	pushw	x
 790       00000000      OFST:	set	0
 793                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 795  0001 f6            	ld	a,(x)
 796  0002 1806          	xor	a,	(OFST+6,sp)
 797  0004 f7            	ld	(x),a
 798                     ; 183 }
 801  0005 85            	popw	x
 802  0006 81            	ret
 840                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 840                     ; 192 {
 841                     .text:	section	.text,new
 842  0000               _GPIO_ReadOutputData:
 846                     ; 193   return ((uint8_t)GPIOx->ODR);
 848  0000 f6            	ld	a,(x)
 851  0001 81            	ret
 888                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 888                     ; 203 {
 889                     .text:	section	.text,new
 890  0000               _GPIO_ReadInputData:
 894                     ; 204   return ((uint8_t)GPIOx->IDR);
 896  0000 e601          	ld	a,(1,x)
 899  0002 81            	ret
 967                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 967                     ; 214 {
 968                     .text:	section	.text,new
 969  0000               _GPIO_ReadInputPin:
 971  0000 89            	pushw	x
 972  0001 89            	pushw	x
 973       00000002      OFST:	set	2
 976                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 978  0002 7b08          	ld	a,(OFST+6,sp)
 979  0004 5f            	clrw	x
 980  0005 97            	ld	xl,a
 981  0006 1f01          	ldw	(OFST-1,sp),x
 982  0008 1e03          	ldw	x,(OFST+1,sp)
 983  000a e601          	ld	a,(1,x)
 984  000c 5f            	clrw	x
 985  000d 97            	ld	xl,a
 986  000e 01            	rrwa	x,a
 987  000f 1402          	and	a,(OFST+0,sp)
 988  0011 01            	rrwa	x,a
 989  0012 1401          	and	a,(OFST-1,sp)
 990  0014 01            	rrwa	x,a
 993  0015 5b04          	addw	sp,#4
 994  0017 81            	ret
1073                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1073                     ; 226 {
1074                     .text:	section	.text,new
1075  0000               _GPIO_ExternalPullUpConfig:
1077  0000 89            	pushw	x
1078       00000000      OFST:	set	0
1081                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1083  0001 1e05          	ldw	x,(OFST+5,sp)
1084  0003 2703          	jreq	L24
1085  0005 4f            	clr	a
1086  0006 2010          	jra	L44
1087  0008               L24:
1088  0008 ae00e4        	ldw	x,#228
1089  000b 89            	pushw	x
1090  000c ae0000        	ldw	x,#0
1091  000f 89            	pushw	x
1092  0010 ae0000        	ldw	x,#L771
1093  0013 cd0000        	call	_assert_failed
1095  0016 5b04          	addw	sp,#4
1096  0018               L44:
1097                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1099  0018 1e07          	ldw	x,(OFST+7,sp)
1100  001a 2707          	jreq	L05
1101  001c 1e07          	ldw	x,(OFST+7,sp)
1102  001e a30001        	cpw	x,#1
1103  0021 2603          	jrne	L64
1104  0023               L05:
1105  0023 4f            	clr	a
1106  0024 2010          	jra	L25
1107  0026               L64:
1108  0026 ae00e5        	ldw	x,#229
1109  0029 89            	pushw	x
1110  002a ae0000        	ldw	x,#0
1111  002d 89            	pushw	x
1112  002e ae0000        	ldw	x,#L771
1113  0031 cd0000        	call	_assert_failed
1115  0034 5b04          	addw	sp,#4
1116  0036               L25:
1117                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1119  0036 1e07          	ldw	x,(OFST+7,sp)
1120  0038 270a          	jreq	L374
1121                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1123  003a 1e01          	ldw	x,(OFST+1,sp)
1124  003c e603          	ld	a,(3,x)
1125  003e 1a06          	or	a,(OFST+6,sp)
1126  0040 e703          	ld	(3,x),a
1128  0042 2009          	jra	L574
1129  0044               L374:
1130                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1132  0044 1e01          	ldw	x,(OFST+1,sp)
1133  0046 7b06          	ld	a,(OFST+6,sp)
1134  0048 43            	cpl	a
1135  0049 e403          	and	a,(3,x)
1136  004b e703          	ld	(3,x),a
1137  004d               L574:
1138                     ; 238 }
1141  004d 85            	popw	x
1142  004e 81            	ret
1155                     	xdef	_GPIO_ExternalPullUpConfig
1156                     	xdef	_GPIO_ReadInputPin
1157                     	xdef	_GPIO_ReadOutputData
1158                     	xdef	_GPIO_ReadInputData
1159                     	xdef	_GPIO_WriteReverse
1160                     	xdef	_GPIO_WriteLow
1161                     	xdef	_GPIO_WriteHigh
1162                     	xdef	_GPIO_Write
1163                     	xdef	_GPIO_Init
1164                     	xdef	_GPIO_DeInit
1165                     	xref	_assert_failed
1166                     .const:	section	.text
1167  0000               L771:
1168  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
1169  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
1170  0024 72697665725c  	dc.b	"river\src\stm8s_gp"
1171  0036 696f2e6300    	dc.b	"io.c",0
1191                     	end

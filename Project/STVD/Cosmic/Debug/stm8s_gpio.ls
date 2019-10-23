   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
 116                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 116                     ; 54 {
 118                     .text:	section	.text,new
 119  0000               _GPIO_DeInit:
 123                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 125  0000 7f            	clr	(x)
 126                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 128  0001 6f02          	clr	(2,x)
 129                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 131  0003 6f03          	clr	(3,x)
 132                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 134  0005 6f04          	clr	(4,x)
 135                     ; 59 }
 138  0007 81            	ret	
 379                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 379                     ; 72 {
 380                     .text:	section	.text,new
 381  0000               _GPIO_Init:
 383  0000 89            	pushw	x
 384       00000000      OFST:	set	0
 387                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 389  0001 1e07          	ldw	x,(OFST+7,sp)
 390  0003 273c          	jreq	L41
 391  0005 a30040        	cpw	x,#64
 392  0008 2737          	jreq	L41
 393  000a a30020        	cpw	x,#32
 394  000d 2732          	jreq	L41
 395  000f a30060        	cpw	x,#96
 396  0012 272d          	jreq	L41
 397  0014 a300a0        	cpw	x,#160
 398  0017 2728          	jreq	L41
 399  0019 a300e0        	cpw	x,#224
 400  001c 2723          	jreq	L41
 401  001e a30080        	cpw	x,#128
 402  0021 271e          	jreq	L41
 403  0023 a300c0        	cpw	x,#192
 404  0026 2719          	jreq	L41
 405  0028 a300b0        	cpw	x,#176
 406  002b 2714          	jreq	L41
 407  002d a300f0        	cpw	x,#240
 408  0030 270f          	jreq	L41
 409  0032 a30090        	cpw	x,#144
 410  0035 270a          	jreq	L41
 411  0037 a300d0        	cpw	x,#208
 412  003a 2705          	jreq	L41
 413  003c ae004d        	ldw	x,#77
 414  003f ad5d          	call	LC001
 415  0041               L41:
 416                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 418  0041 1e05          	ldw	x,(OFST+5,sp)
 419  0043 2605          	jrne	L22
 420  0045 ae004e        	ldw	x,#78
 421  0048 ad54          	call	LC001
 422  004a               L22:
 423                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 425  004a 1e01          	ldw	x,(OFST+1,sp)
 426  004c 7b06          	ld	a,(OFST+6,sp)
 427  004e 43            	cpl	a
 428  004f e404          	and	a,(4,x)
 429  0051 e704          	ld	(4,x),a
 430                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 432  0053 7b08          	ld	a,(OFST+8,sp)
 433  0055 2a14          	jrpl	L102
 434                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 436  0057 a510          	bcp	a,#16
 437  0059 2705          	jreq	L302
 438                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 440  005b f6            	ld	a,(x)
 441  005c 1a06          	or	a,(OFST+6,sp)
 443  005e 2004          	jra	L502
 444  0060               L302:
 445                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 447  0060 7b06          	ld	a,(OFST+6,sp)
 448  0062 43            	cpl	a
 449  0063 f4            	and	a,(x)
 450  0064               L502:
 451  0064 f7            	ld	(x),a
 452                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 454  0065 e602          	ld	a,(2,x)
 455  0067 1a06          	or	a,(OFST+6,sp)
 457  0069 2005          	jra	L702
 458  006b               L102:
 459                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 461  006b 7b06          	ld	a,(OFST+6,sp)
 462  006d 43            	cpl	a
 463  006e e402          	and	a,(2,x)
 464  0070               L702:
 465  0070 e702          	ld	(2,x),a
 466                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 468  0072 7b08          	ld	a,(OFST+8,sp)
 469  0074 a540          	bcp	a,#64
 470  0076 2706          	jreq	L112
 471                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 473  0078 e603          	ld	a,(3,x)
 474  007a 1a06          	or	a,(OFST+6,sp)
 476  007c 2005          	jra	L312
 477  007e               L112:
 478                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 480  007e 7b06          	ld	a,(OFST+6,sp)
 481  0080 43            	cpl	a
 482  0081 e403          	and	a,(3,x)
 483  0083               L312:
 484  0083 e703          	ld	(3,x),a
 485                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 487  0085 7b08          	ld	a,(OFST+8,sp)
 488  0087 a520          	bcp	a,#32
 489  0089 2708          	jreq	L512
 490                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 492  008b 1e01          	ldw	x,(OFST+1,sp)
 493  008d e604          	ld	a,(4,x)
 494  008f 1a06          	or	a,(OFST+6,sp)
 496  0091 2007          	jra	L712
 497  0093               L512:
 498                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 500  0093 1e01          	ldw	x,(OFST+1,sp)
 501  0095 7b06          	ld	a,(OFST+6,sp)
 502  0097 43            	cpl	a
 503  0098 e404          	and	a,(4,x)
 504  009a               L712:
 505  009a e704          	ld	(4,x),a
 506                     ; 131 }
 509  009c 85            	popw	x
 510  009d 81            	ret	
 511  009e               LC001:
 512  009e 89            	pushw	x
 513  009f 5f            	clrw	x
 514  00a0 89            	pushw	x
 515  00a1 ae0000        	ldw	x,#L771
 516  00a4 cd0000        	call	_assert_failed
 518  00a7 5b04          	addw	sp,#4
 519  00a9 81            	ret	
 565                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 565                     ; 142 {
 566                     .text:	section	.text,new
 567  0000               _GPIO_Write:
 569  0000 89            	pushw	x
 570       00000000      OFST:	set	0
 573                     ; 143   GPIOx->ODR = PortVal;
 575  0001 1e01          	ldw	x,(OFST+1,sp)
 576  0003 7b05          	ld	a,(OFST+5,sp)
 577  0005 f7            	ld	(x),a
 578                     ; 144 }
 581  0006 85            	popw	x
 582  0007 81            	ret	
 629                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 629                     ; 155 {
 630                     .text:	section	.text,new
 631  0000               _GPIO_WriteHigh:
 633  0000 89            	pushw	x
 634       00000000      OFST:	set	0
 637                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 639  0001 f6            	ld	a,(x)
 640  0002 1a06          	or	a,(OFST+6,sp)
 641  0004 f7            	ld	(x),a
 642                     ; 157 }
 645  0005 85            	popw	x
 646  0006 81            	ret	
 693                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 693                     ; 168 {
 694                     .text:	section	.text,new
 695  0000               _GPIO_WriteLow:
 697  0000 89            	pushw	x
 698       00000000      OFST:	set	0
 701                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 703  0001 7b06          	ld	a,(OFST+6,sp)
 704  0003 43            	cpl	a
 705  0004 f4            	and	a,(x)
 706  0005 f7            	ld	(x),a
 707                     ; 170 }
 710  0006 85            	popw	x
 711  0007 81            	ret	
 758                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 758                     ; 181 {
 759                     .text:	section	.text,new
 760  0000               _GPIO_WriteReverse:
 762  0000 89            	pushw	x
 763       00000000      OFST:	set	0
 766                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 768  0001 f6            	ld	a,(x)
 769  0002 1806          	xor	a,(OFST+6,sp)
 770  0004 f7            	ld	(x),a
 771                     ; 183 }
 774  0005 85            	popw	x
 775  0006 81            	ret	
 813                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 813                     ; 192 {
 814                     .text:	section	.text,new
 815  0000               _GPIO_ReadOutputData:
 819                     ; 193   return ((uint8_t)GPIOx->ODR);
 821  0000 f6            	ld	a,(x)
 824  0001 81            	ret	
 861                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 861                     ; 203 {
 862                     .text:	section	.text,new
 863  0000               _GPIO_ReadInputData:
 867                     ; 204   return ((uint8_t)GPIOx->IDR);
 869  0000 e601          	ld	a,(1,x)
 872  0002 81            	ret	
 940                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 940                     ; 214 {
 941                     .text:	section	.text,new
 942  0000               _GPIO_ReadInputPin:
 944  0000 89            	pushw	x
 945  0001 89            	pushw	x
 946       00000002      OFST:	set	2
 949                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 951  0002 7b08          	ld	a,(OFST+6,sp)
 952  0004 5f            	clrw	x
 953  0005 97            	ld	xl,a
 954  0006 1f01          	ldw	(OFST-1,sp),x
 955  0008 1e03          	ldw	x,(OFST+1,sp)
 956  000a e601          	ld	a,(1,x)
 957  000c 5f            	clrw	x
 958  000d 97            	ld	xl,a
 959  000e 01            	rrwa	x,a
 960  000f 1402          	and	a,(OFST+0,sp)
 961  0011 01            	rrwa	x,a
 962  0012 1401          	and	a,(OFST-1,sp)
 963  0014 01            	rrwa	x,a
 966  0015 5b04          	addw	sp,#4
 967  0017 81            	ret	
1046                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1046                     ; 226 {
1047                     .text:	section	.text,new
1048  0000               _GPIO_ExternalPullUpConfig:
1050  0000 89            	pushw	x
1051       00000000      OFST:	set	0
1054                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1056  0001 1e05          	ldw	x,(OFST+5,sp)
1057  0003 2605          	jrne	L05
1058  0005 ae00e4        	ldw	x,#228
1059  0008 ad23          	call	LC002
1060  000a               L05:
1061                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1063  000a 1e07          	ldw	x,(OFST+7,sp)
1064  000c 2708          	jreq	L06
1065  000e 5a            	decw	x
1066  000f 2705          	jreq	L06
1067  0011 ae00e5        	ldw	x,#229
1068  0014 ad17          	call	LC002
1069  0016               L06:
1070                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1072  0016 1e07          	ldw	x,(OFST+7,sp)
1073  0018 2708          	jreq	L574
1074                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1076  001a 1e01          	ldw	x,(OFST+1,sp)
1077  001c e603          	ld	a,(3,x)
1078  001e 1a06          	or	a,(OFST+6,sp)
1080  0020 2007          	jra	L774
1081  0022               L574:
1082                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1084  0022 1e01          	ldw	x,(OFST+1,sp)
1085  0024 7b06          	ld	a,(OFST+6,sp)
1086  0026 43            	cpl	a
1087  0027 e403          	and	a,(3,x)
1088  0029               L774:
1089  0029 e703          	ld	(3,x),a
1090                     ; 238 }
1093  002b 85            	popw	x
1094  002c 81            	ret	
1095  002d               LC002:
1096  002d 89            	pushw	x
1097  002e 5f            	clrw	x
1098  002f 89            	pushw	x
1099  0030 ae0000        	ldw	x,#L771
1100  0033 cd0000        	call	_assert_failed
1102  0036 5b04          	addw	sp,#4
1103  0038 81            	ret	
1116                     	xdef	_GPIO_ExternalPullUpConfig
1117                     	xdef	_GPIO_ReadInputPin
1118                     	xdef	_GPIO_ReadOutputData
1119                     	xdef	_GPIO_ReadInputData
1120                     	xdef	_GPIO_WriteReverse
1121                     	xdef	_GPIO_WriteLow
1122                     	xdef	_GPIO_WriteHigh
1123                     	xdef	_GPIO_Write
1124                     	xdef	_GPIO_Init
1125                     	xdef	_GPIO_DeInit
1126                     	xref	_assert_failed
1127                     .const:	section	.text
1128  0000               L771:
1129  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
1130  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
1131  0024 72697665725c  	dc.b	"river\src\stm8s_gp"
1132  0036 696f2e6300    	dc.b	"io.c",0
1152                     	end

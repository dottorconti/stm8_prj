   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 53 void EXTI_DeInit(void)
  50                     ; 54 {
  52                     .text:	section	.text,new
  53  0000               _EXTI_DeInit:
  57                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  59  0000 725f50a0      	clr	20640
  60                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  62  0004 725f50a1      	clr	20641
  63                     ; 57 }
  66  0008 81            	ret	
 192                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 192                     ; 71 {
 193                     .text:	section	.text,new
 194  0000               _EXTI_SetExtIntSensitivity:
 196  0000 89            	pushw	x
 197       00000000      OFST:	set	0
 200                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 202  0001 5d            	tnzw	x
 203  0002 271a          	jreq	L41
 204  0004 a30001        	cpw	x,#1
 205  0007 2715          	jreq	L41
 206  0009 a30002        	cpw	x,#2
 207  000c 2710          	jreq	L41
 208  000e a30003        	cpw	x,#3
 209  0011 270b          	jreq	L41
 210  0013 a30004        	cpw	x,#4
 211  0016 2706          	jreq	L41
 212  0018 ae0049        	ldw	x,#73
 213  001b cd009d        	call	LC004
 214  001e               L41:
 215                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 217  001e 1e05          	ldw	x,(OFST+5,sp)
 218  0020 2714          	jreq	L42
 219  0022 a30001        	cpw	x,#1
 220  0025 270f          	jreq	L42
 221  0027 a30002        	cpw	x,#2
 222  002a 270a          	jreq	L42
 223  002c a30003        	cpw	x,#3
 224  002f 2705          	jreq	L42
 225  0031 ae004a        	ldw	x,#74
 226  0034 ad67          	call	LC004
 227  0036               L42:
 228                     ; 77   switch (Port)
 230  0036 1e01          	ldw	x,(OFST+1,sp)
 232                     ; 99   default:
 232                     ; 100     break;
 233  0038 270e          	jreq	L12
 234  003a 5a            	decw	x
 235  003b 271a          	jreq	L32
 236  003d 5a            	decw	x
 237  003e 2725          	jreq	L52
 238  0040 5a            	decw	x
 239  0041 2731          	jreq	L72
 240  0043 5a            	decw	x
 241  0044 2745          	jreq	L13
 242  0046 2053          	jra	L511
 243  0048               L12:
 244                     ; 79   case EXTI_PORT_GPIOA:
 244                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 246  0048 c650a0        	ld	a,20640
 247  004b a4fc          	and	a,#252
 248  004d c750a0        	ld	20640,a
 249                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 251  0050 c650a0        	ld	a,20640
 252  0053 1a06          	or	a,(OFST+6,sp)
 253                     ; 82     break;
 255  0055 202f          	jp	LC001
 256  0057               L32:
 257                     ; 83   case EXTI_PORT_GPIOB:
 257                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 259  0057 c650a0        	ld	a,20640
 260  005a a4f3          	and	a,#243
 261  005c c750a0        	ld	20640,a
 262                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 264  005f 7b06          	ld	a,(OFST+6,sp)
 265  0061 48            	sll	a
 266  0062 48            	sll	a
 267                     ; 86     break;
 269  0063 201e          	jp	LC002
 270  0065               L52:
 271                     ; 87   case EXTI_PORT_GPIOC:
 271                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 273  0065 c650a0        	ld	a,20640
 274  0068 a4cf          	and	a,#207
 275  006a c750a0        	ld	20640,a
 276                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 278  006d 7b06          	ld	a,(OFST+6,sp)
 279  006f 97            	ld	xl,a
 280  0070 a610          	ld	a,#16
 281                     ; 90     break;
 283  0072 200d          	jp	LC003
 284  0074               L72:
 285                     ; 91   case EXTI_PORT_GPIOD:
 285                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 287  0074 c650a0        	ld	a,20640
 288  0077 a43f          	and	a,#63
 289  0079 c750a0        	ld	20640,a
 290                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 292  007c 7b06          	ld	a,(OFST+6,sp)
 293  007e 97            	ld	xl,a
 294  007f a640          	ld	a,#64
 295  0081               LC003:
 296  0081 42            	mul	x,a
 297  0082 9f            	ld	a,xl
 298  0083               LC002:
 299  0083 ca50a0        	or	a,20640
 300  0086               LC001:
 301  0086 c750a0        	ld	20640,a
 302                     ; 94     break;
 304  0089 2010          	jra	L511
 305  008b               L13:
 306                     ; 95   case EXTI_PORT_GPIOE:
 306                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 308  008b c650a1        	ld	a,20641
 309  008e a4fc          	and	a,#252
 310  0090 c750a1        	ld	20641,a
 311                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 313  0093 c650a1        	ld	a,20641
 314  0096 1a06          	or	a,(OFST+6,sp)
 315  0098 c750a1        	ld	20641,a
 316                     ; 98     break;
 318                     ; 99   default:
 318                     ; 100     break;
 320  009b               L511:
 321                     ; 102 }
 324  009b 85            	popw	x
 325  009c 81            	ret	
 326  009d               LC004:
 327  009d 89            	pushw	x
 328  009e 5f            	clrw	x
 329  009f 89            	pushw	x
 330  00a0 ae0000        	ldw	x,#L111
 331  00a3 cd0000        	call	_assert_failed
 333  00a6 5b04          	addw	sp,#4
 334  00a8 81            	ret	
 393                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 393                     ; 112 {
 394                     .text:	section	.text,new
 395  0000               _EXTI_SetTLISensitivity:
 397  0000 89            	pushw	x
 398       00000000      OFST:	set	0
 401                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 403  0001 5d            	tnzw	x
 404  0002 2713          	jreq	L63
 405  0004 a30004        	cpw	x,#4
 406  0007 270e          	jreq	L63
 407  0009 ae0072        	ldw	x,#114
 408  000c 89            	pushw	x
 409  000d 5f            	clrw	x
 410  000e 89            	pushw	x
 411  000f ae0000        	ldw	x,#L111
 412  0012 cd0000        	call	_assert_failed
 414  0015 5b04          	addw	sp,#4
 415  0017               L63:
 416                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 418  0017 721550a1      	bres	20641,#2
 419                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 421  001b c650a1        	ld	a,20641
 422  001e 1a02          	or	a,(OFST+2,sp)
 423  0020 c750a1        	ld	20641,a
 424                     ; 119 }
 427  0023 85            	popw	x
 428  0024 81            	ret	
 475                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 475                     ; 127 {
 476                     .text:	section	.text,new
 477  0000               _EXTI_GetExtIntSensitivity:
 479  0000 89            	pushw	x
 480  0001 88            	push	a
 481       00000001      OFST:	set	1
 484                     ; 128   uint8_t value = 0;
 486  0002 0f01          	clr	(OFST+0,sp)
 487                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 489  0004 5d            	tnzw	x
 490  0005 2722          	jreq	L05
 491  0007 a30001        	cpw	x,#1
 492  000a 271d          	jreq	L05
 493  000c a30002        	cpw	x,#2
 494  000f 2718          	jreq	L05
 495  0011 a30003        	cpw	x,#3
 496  0014 2713          	jreq	L05
 497  0016 a30004        	cpw	x,#4
 498  0019 270e          	jreq	L05
 499  001b ae0083        	ldw	x,#131
 500  001e 89            	pushw	x
 501  001f 5f            	clrw	x
 502  0020 89            	pushw	x
 503  0021 ae0000        	ldw	x,#L111
 504  0024 cd0000        	call	_assert_failed
 506  0027 5b04          	addw	sp,#4
 507  0029               L05:
 508                     ; 133   switch (Port)
 510  0029 1e02          	ldw	x,(OFST+1,sp)
 512                     ; 150   default:
 512                     ; 151     break;
 513  002b 2710          	jreq	L541
 514  002d 5a            	decw	x
 515  002e 2712          	jreq	L741
 516  0030 5a            	decw	x
 517  0031 2718          	jreq	L151
 518  0033 5a            	decw	x
 519  0034 271b          	jreq	L351
 520  0036 5a            	decw	x
 521  0037 2722          	jreq	L551
 522  0039 7b01          	ld	a,(OFST+0,sp)
 523  003b 2023          	jra	LC005
 524  003d               L541:
 525                     ; 135   case EXTI_PORT_GPIOA:
 525                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 527  003d c650a0        	ld	a,20640
 528                     ; 137     break;
 530  0040 201c          	jp	LC006
 531  0042               L741:
 532                     ; 138   case EXTI_PORT_GPIOB:
 532                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 534  0042 c650a0        	ld	a,20640
 535  0045 a40c          	and	a,#12
 536  0047 44            	srl	a
 537  0048 44            	srl	a
 538                     ; 140     break;
 540  0049 2015          	jp	LC005
 541  004b               L151:
 542                     ; 141   case EXTI_PORT_GPIOC:
 542                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 544  004b c650a0        	ld	a,20640
 545  004e 4e            	swap	a
 546                     ; 143     break;
 548  004f 200d          	jp	LC006
 549  0051               L351:
 550                     ; 144   case EXTI_PORT_GPIOD:
 550                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 552  0051 c650a0        	ld	a,20640
 553  0054 4e            	swap	a
 554  0055 a40c          	and	a,#12
 555  0057 44            	srl	a
 556  0058 44            	srl	a
 557                     ; 146     break;
 559  0059 2003          	jp	LC006
 560  005b               L551:
 561                     ; 147   case EXTI_PORT_GPIOE:
 561                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 563  005b c650a1        	ld	a,20641
 564  005e               LC006:
 565  005e a403          	and	a,#3
 566  0060               LC005:
 567                     ; 149     break;
 569                     ; 150   default:
 569                     ; 151     break;
 571                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 573  0060 5f            	clrw	x
 574  0061 97            	ld	xl,a
 577  0062 5b03          	addw	sp,#3
 578  0064 81            	ret	
 614                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 614                     ; 163 {
 615                     .text:	section	.text,new
 616  0000               _EXTI_GetTLISensitivity:
 618       00000001      OFST:	set	1
 621                     ; 164   uint8_t value = 0;
 623                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 625  0000 c650a1        	ld	a,20641
 626  0003 a404          	and	a,#4
 627                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 629  0005 5f            	clrw	x
 630  0006 97            	ld	xl,a
 633  0007 81            	ret	
 646                     	xdef	_EXTI_GetTLISensitivity
 647                     	xdef	_EXTI_GetExtIntSensitivity
 648                     	xdef	_EXTI_SetTLISensitivity
 649                     	xdef	_EXTI_SetExtIntSensitivity
 650                     	xdef	_EXTI_DeInit
 651                     	xref	_assert_failed
 652                     .const:	section	.text
 653  0000               L111:
 654  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 655  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 656  0024 72697665725c  	dc.b	"river\src\stm8s_ex"
 657  0036 74692e6300    	dc.b	"ti.c",0
 677                     	end

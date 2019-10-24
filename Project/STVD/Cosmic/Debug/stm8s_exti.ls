   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  46                     ; 53 void EXTI_DeInit(void)
  46                     ; 54 {
  48                     .text:	section	.text,new
  49  0000               _EXTI_DeInit:
  53                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  55  0000 725f50a0      	clr	20640
  56                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  58  0004 725f50a1      	clr	20641
  59                     ; 57 }
  62  0008 81            	ret
 188                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 188                     ; 71 {
 189                     .text:	section	.text,new
 190  0000               _EXTI_SetExtIntSensitivity:
 192  0000 89            	pushw	x
 193       00000000      OFST:	set	0
 196                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 198  0001 a30000        	cpw	x,#0
 199  0004 2714          	jreq	L21
 200  0006 a30001        	cpw	x,#1
 201  0009 270f          	jreq	L21
 202  000b a30002        	cpw	x,#2
 203  000e 270a          	jreq	L21
 204  0010 a30003        	cpw	x,#3
 205  0013 2705          	jreq	L21
 206  0015 a30004        	cpw	x,#4
 207  0018 2603          	jrne	L01
 208  001a               L21:
 209  001a 4f            	clr	a
 210  001b 2010          	jra	L41
 211  001d               L01:
 212  001d ae0049        	ldw	x,#73
 213  0020 89            	pushw	x
 214  0021 ae0000        	ldw	x,#0
 215  0024 89            	pushw	x
 216  0025 ae0000        	ldw	x,#L111
 217  0028 cd0000        	call	_assert_failed
 219  002b 5b04          	addw	sp,#4
 220  002d               L41:
 221                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 223  002d 1e05          	ldw	x,(OFST+5,sp)
 224  002f 2715          	jreq	L02
 225  0031 1e05          	ldw	x,(OFST+5,sp)
 226  0033 a30001        	cpw	x,#1
 227  0036 270e          	jreq	L02
 228  0038 1e05          	ldw	x,(OFST+5,sp)
 229  003a a30002        	cpw	x,#2
 230  003d 2707          	jreq	L02
 231  003f 1e05          	ldw	x,(OFST+5,sp)
 232  0041 a30003        	cpw	x,#3
 233  0044 2603          	jrne	L61
 234  0046               L02:
 235  0046 4f            	clr	a
 236  0047 2010          	jra	L22
 237  0049               L61:
 238  0049 ae004a        	ldw	x,#74
 239  004c 89            	pushw	x
 240  004d ae0000        	ldw	x,#0
 241  0050 89            	pushw	x
 242  0051 ae0000        	ldw	x,#L111
 243  0054 cd0000        	call	_assert_failed
 245  0057 5b04          	addw	sp,#4
 246  0059               L22:
 247                     ; 77   switch (Port)
 249  0059 1e01          	ldw	x,(OFST+1,sp)
 251                     ; 99   default:
 251                     ; 100     break;
 252  005b 5d            	tnzw	x
 253  005c 270e          	jreq	L12
 254  005e 5a            	decw	x
 255  005f 271d          	jreq	L32
 256  0061 5a            	decw	x
 257  0062 272e          	jreq	L52
 258  0064 5a            	decw	x
 259  0065 2742          	jreq	L72
 260  0067 5a            	decw	x
 261  0068 2756          	jreq	L13
 262  006a 2064          	jra	L511
 263  006c               L12:
 264                     ; 79   case EXTI_PORT_GPIOA:
 264                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 266  006c c650a0        	ld	a,20640
 267  006f a4fc          	and	a,#252
 268  0071 c750a0        	ld	20640,a
 269                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 271  0074 c650a0        	ld	a,20640
 272  0077 1a06          	or	a,(OFST+6,sp)
 273  0079 c750a0        	ld	20640,a
 274                     ; 82     break;
 276  007c 2052          	jra	L511
 277  007e               L32:
 278                     ; 83   case EXTI_PORT_GPIOB:
 278                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 280  007e c650a0        	ld	a,20640
 281  0081 a4f3          	and	a,#243
 282  0083 c750a0        	ld	20640,a
 283                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 285  0086 7b06          	ld	a,(OFST+6,sp)
 286  0088 48            	sll	a
 287  0089 48            	sll	a
 288  008a ca50a0        	or	a,20640
 289  008d c750a0        	ld	20640,a
 290                     ; 86     break;
 292  0090 203e          	jra	L511
 293  0092               L52:
 294                     ; 87   case EXTI_PORT_GPIOC:
 294                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 296  0092 c650a0        	ld	a,20640
 297  0095 a4cf          	and	a,#207
 298  0097 c750a0        	ld	20640,a
 299                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 301  009a 7b06          	ld	a,(OFST+6,sp)
 302  009c 97            	ld	xl,a
 303  009d a610          	ld	a,#16
 304  009f 42            	mul	x,a
 305  00a0 9f            	ld	a,xl
 306  00a1 ca50a0        	or	a,20640
 307  00a4 c750a0        	ld	20640,a
 308                     ; 90     break;
 310  00a7 2027          	jra	L511
 311  00a9               L72:
 312                     ; 91   case EXTI_PORT_GPIOD:
 312                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 314  00a9 c650a0        	ld	a,20640
 315  00ac a43f          	and	a,#63
 316  00ae c750a0        	ld	20640,a
 317                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 319  00b1 7b06          	ld	a,(OFST+6,sp)
 320  00b3 97            	ld	xl,a
 321  00b4 a640          	ld	a,#64
 322  00b6 42            	mul	x,a
 323  00b7 9f            	ld	a,xl
 324  00b8 ca50a0        	or	a,20640
 325  00bb c750a0        	ld	20640,a
 326                     ; 94     break;
 328  00be 2010          	jra	L511
 329  00c0               L13:
 330                     ; 95   case EXTI_PORT_GPIOE:
 330                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 332  00c0 c650a1        	ld	a,20641
 333  00c3 a4fc          	and	a,#252
 334  00c5 c750a1        	ld	20641,a
 335                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 337  00c8 c650a1        	ld	a,20641
 338  00cb 1a06          	or	a,(OFST+6,sp)
 339  00cd c750a1        	ld	20641,a
 340                     ; 98     break;
 342  00d0               L33:
 343                     ; 99   default:
 343                     ; 100     break;
 345  00d0               L511:
 346                     ; 102 }
 349  00d0 85            	popw	x
 350  00d1 81            	ret
 409                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 409                     ; 112 {
 410                     .text:	section	.text,new
 411  0000               _EXTI_SetTLISensitivity:
 413  0000 89            	pushw	x
 414       00000000      OFST:	set	0
 417                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 419  0001 a30000        	cpw	x,#0
 420  0004 2705          	jreq	L03
 421  0006 a30004        	cpw	x,#4
 422  0009 2603          	jrne	L62
 423  000b               L03:
 424  000b 4f            	clr	a
 425  000c 2010          	jra	L23
 426  000e               L62:
 427  000e ae0072        	ldw	x,#114
 428  0011 89            	pushw	x
 429  0012 ae0000        	ldw	x,#0
 430  0015 89            	pushw	x
 431  0016 ae0000        	ldw	x,#L111
 432  0019 cd0000        	call	_assert_failed
 434  001c 5b04          	addw	sp,#4
 435  001e               L23:
 436                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 438  001e 721550a1      	bres	20641,#2
 439                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 441  0022 c650a1        	ld	a,20641
 442  0025 1a02          	or	a,(OFST+2,sp)
 443  0027 c750a1        	ld	20641,a
 444                     ; 119 }
 447  002a 85            	popw	x
 448  002b 81            	ret
 493                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 493                     ; 127 {
 494                     .text:	section	.text,new
 495  0000               _EXTI_GetExtIntSensitivity:
 497  0000 89            	pushw	x
 498  0001 88            	push	a
 499       00000001      OFST:	set	1
 502                     ; 128   uint8_t value = 0;
 504  0002 0f01          	clr	(OFST+0,sp)
 505                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 507  0004 a30000        	cpw	x,#0
 508  0007 2714          	jreq	L04
 509  0009 a30001        	cpw	x,#1
 510  000c 270f          	jreq	L04
 511  000e a30002        	cpw	x,#2
 512  0011 270a          	jreq	L04
 513  0013 a30003        	cpw	x,#3
 514  0016 2705          	jreq	L04
 515  0018 a30004        	cpw	x,#4
 516  001b 2603          	jrne	L63
 517  001d               L04:
 518  001d 4f            	clr	a
 519  001e 2010          	jra	L24
 520  0020               L63:
 521  0020 ae0083        	ldw	x,#131
 522  0023 89            	pushw	x
 523  0024 ae0000        	ldw	x,#0
 524  0027 89            	pushw	x
 525  0028 ae0000        	ldw	x,#L111
 526  002b cd0000        	call	_assert_failed
 528  002e 5b04          	addw	sp,#4
 529  0030               L24:
 530                     ; 133   switch (Port)
 532  0030 1e02          	ldw	x,(OFST+1,sp)
 534                     ; 150   default:
 534                     ; 151     break;
 535  0032 5d            	tnzw	x
 536  0033 270e          	jreq	L541
 537  0035 5a            	decw	x
 538  0036 2714          	jreq	L741
 539  0038 5a            	decw	x
 540  0039 271c          	jreq	L151
 541  003b 5a            	decw	x
 542  003c 2725          	jreq	L351
 543  003e 5a            	decw	x
 544  003f 2730          	jreq	L551
 545  0041 2035          	jra	L302
 546  0043               L541:
 547                     ; 135   case EXTI_PORT_GPIOA:
 547                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 549  0043 c650a0        	ld	a,20640
 550  0046 a403          	and	a,#3
 551  0048 6b01          	ld	(OFST+0,sp),a
 552                     ; 137     break;
 554  004a 202c          	jra	L302
 555  004c               L741:
 556                     ; 138   case EXTI_PORT_GPIOB:
 556                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 558  004c c650a0        	ld	a,20640
 559  004f a40c          	and	a,#12
 560  0051 44            	srl	a
 561  0052 44            	srl	a
 562  0053 6b01          	ld	(OFST+0,sp),a
 563                     ; 140     break;
 565  0055 2021          	jra	L302
 566  0057               L151:
 567                     ; 141   case EXTI_PORT_GPIOC:
 567                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 569  0057 c650a0        	ld	a,20640
 570  005a a430          	and	a,#48
 571  005c 4e            	swap	a
 572  005d a40f          	and	a,#15
 573  005f 6b01          	ld	(OFST+0,sp),a
 574                     ; 143     break;
 576  0061 2015          	jra	L302
 577  0063               L351:
 578                     ; 144   case EXTI_PORT_GPIOD:
 578                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 580  0063 c650a0        	ld	a,20640
 581  0066 a4c0          	and	a,#192
 582  0068 4e            	swap	a
 583  0069 44            	srl	a
 584  006a 44            	srl	a
 585  006b a403          	and	a,#3
 586  006d 6b01          	ld	(OFST+0,sp),a
 587                     ; 146     break;
 589  006f 2007          	jra	L302
 590  0071               L551:
 591                     ; 147   case EXTI_PORT_GPIOE:
 591                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 593  0071 c650a1        	ld	a,20641
 594  0074 a403          	and	a,#3
 595  0076 6b01          	ld	(OFST+0,sp),a
 596                     ; 149     break;
 598  0078               L751:
 599                     ; 150   default:
 599                     ; 151     break;
 601  0078               L302:
 602                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 604  0078 7b01          	ld	a,(OFST+0,sp)
 605  007a 5f            	clrw	x
 606  007b 97            	ld	xl,a
 609  007c 5b03          	addw	sp,#3
 610  007e 81            	ret
 644                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 644                     ; 163 {
 645                     .text:	section	.text,new
 646  0000               _EXTI_GetTLISensitivity:
 648  0000 88            	push	a
 649       00000001      OFST:	set	1
 652                     ; 164   uint8_t value = 0;
 654                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 656  0001 c650a1        	ld	a,20641
 657  0004 a404          	and	a,#4
 658  0006 6b01          	ld	(OFST+0,sp),a
 659                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 661  0008 7b01          	ld	a,(OFST+0,sp)
 662  000a 5f            	clrw	x
 663  000b 97            	ld	xl,a
 666  000c 84            	pop	a
 667  000d 81            	ret
 680                     	xdef	_EXTI_GetTLISensitivity
 681                     	xdef	_EXTI_GetExtIntSensitivity
 682                     	xdef	_EXTI_SetTLISensitivity
 683                     	xdef	_EXTI_SetExtIntSensitivity
 684                     	xdef	_EXTI_DeInit
 685                     	xref	_assert_failed
 686                     .const:	section	.text
 687  0000               L111:
 688  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 689  0012 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 690  0024 72697665725c  	dc.b	"river\src\stm8s_ex"
 691  0036 74692e6300    	dc.b	"ti.c",0
 711                     	end

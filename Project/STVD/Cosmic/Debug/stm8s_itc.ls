   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  46                     ; 50 uint8_t ITC_GetCPUCC(void)
  46                     ; 51 {
  48                     .text:	section	.text,new
  49  0000               _ITC_GetCPUCC:
  53                     ; 53   _asm("push cc");
  56  0000 8a            push cc
  58                     ; 54   _asm("pop a");
  61  0001 84            pop a
  63                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  66  0002 81            	ret
  89                     ; 80 void ITC_DeInit(void)
  89                     ; 81 {
  90                     .text:	section	.text,new
  91  0000               _ITC_DeInit:
  95                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  97  0000 35ff7f70      	mov	32624,#255
  98                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 100  0004 35ff7f71      	mov	32625,#255
 101                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 103  0008 35ff7f72      	mov	32626,#255
 104                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 106  000c 35ff7f73      	mov	32627,#255
 107                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 109  0010 35ff7f74      	mov	32628,#255
 110                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 112  0014 35ff7f75      	mov	32629,#255
 113                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 115  0018 35ff7f76      	mov	32630,#255
 116                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 118  001c 35ff7f77      	mov	32631,#255
 119                     ; 90 }
 122  0020 81            	ret
 147                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 147                     ; 98 {
 148                     .text:	section	.text,new
 149  0000               _ITC_GetSoftIntStatus:
 153                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 155  0000 cd0000        	call	_ITC_GetCPUCC
 157  0003 a428          	and	a,#40
 160  0005 81            	ret
 406                     .const:	section	.text
 407  0000               L62:
 408  0000 003c          	dc.w	L14
 409  0002 003c          	dc.w	L14
 410  0004 003c          	dc.w	L14
 411  0006 003c          	dc.w	L14
 412  0008 0045          	dc.w	L34
 413  000a 0045          	dc.w	L34
 414  000c 0045          	dc.w	L34
 415  000e 0045          	dc.w	L34
 416  0010 0079          	dc.w	L102
 417  0012 0079          	dc.w	L102
 418  0014 004e          	dc.w	L54
 419  0016 004e          	dc.w	L54
 420  0018 0057          	dc.w	L74
 421  001a 0057          	dc.w	L74
 422  001c 0057          	dc.w	L74
 423  001e 0057          	dc.w	L74
 424  0020 0060          	dc.w	L15
 425  0022 0060          	dc.w	L15
 426  0024 0060          	dc.w	L15
 427  0026 0060          	dc.w	L15
 428  0028 0079          	dc.w	L102
 429  002a 0079          	dc.w	L102
 430  002c 0069          	dc.w	L35
 431  002e 0069          	dc.w	L35
 432  0030 0072          	dc.w	L55
 433                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 433                     ; 108 {
 434                     .text:	section	.text,new
 435  0000               _ITC_GetSoftwarePriority:
 437  0000 89            	pushw	x
 438  0001 89            	pushw	x
 439       00000002      OFST:	set	2
 442                     ; 109   uint8_t Value = 0;
 444  0002 0f02          	clr	(OFST+0,sp)
 445                     ; 110   uint8_t Mask = 0;
 447                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 449  0004 9f            	ld	a,xl
 450  0005 a119          	cp	a,#25
 451  0007 2403          	jruge	L41
 452  0009 4f            	clr	a
 453  000a 2010          	jra	L61
 454  000c               L41:
 455  000c ae0071        	ldw	x,#113
 456  000f 89            	pushw	x
 457  0010 ae0000        	ldw	x,#0
 458  0013 89            	pushw	x
 459  0014 ae0064        	ldw	x,#L571
 460  0017 cd0000        	call	_assert_failed
 462  001a 5b04          	addw	sp,#4
 463  001c               L61:
 464                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 466  001c 7b04          	ld	a,(OFST+2,sp)
 467  001e a403          	and	a,#3
 468  0020 48            	sll	a
 469  0021 5f            	clrw	x
 470  0022 97            	ld	xl,a
 471  0023 a603          	ld	a,#3
 472  0025 5d            	tnzw	x
 473  0026 2704          	jreq	L02
 474  0028               L22:
 475  0028 48            	sll	a
 476  0029 5a            	decw	x
 477  002a 26fc          	jrne	L22
 478  002c               L02:
 479  002c 6b01          	ld	(OFST-1,sp),a
 480                     ; 118   switch (IrqNum)
 482  002e 1e03          	ldw	x,(OFST+1,sp)
 484                     ; 198   default:
 484                     ; 199     break;
 485  0030 a30019        	cpw	x,#25
 486  0033 2405          	jruge	L42
 487  0035 58            	sllw	x
 488  0036 de0000        	ldw	x,(L62,x)
 489  0039 fc            	jp	(x)
 490  003a               L42:
 491  003a 203d          	jra	L102
 492  003c               L14:
 493                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 493                     ; 121   case ITC_IRQ_AWU:
 493                     ; 122   case ITC_IRQ_CLK:
 493                     ; 123   case ITC_IRQ_PORTA:
 493                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 495  003c c67f70        	ld	a,32624
 496  003f 1401          	and	a,(OFST-1,sp)
 497  0041 6b02          	ld	(OFST+0,sp),a
 498                     ; 125     break;
 500  0043 2034          	jra	L102
 501  0045               L34:
 502                     ; 127   case ITC_IRQ_PORTB:
 502                     ; 128   case ITC_IRQ_PORTC:
 502                     ; 129   case ITC_IRQ_PORTD:
 502                     ; 130   case ITC_IRQ_PORTE:
 502                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 504  0045 c67f71        	ld	a,32625
 505  0048 1401          	and	a,(OFST-1,sp)
 506  004a 6b02          	ld	(OFST+0,sp),a
 507                     ; 132     break;
 509  004c 202b          	jra	L102
 510  004e               L54:
 511                     ; 141   case ITC_IRQ_SPI:
 511                     ; 142   case ITC_IRQ_TIM1_OVF:
 511                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 513  004e c67f72        	ld	a,32626
 514  0051 1401          	and	a,(OFST-1,sp)
 515  0053 6b02          	ld	(OFST+0,sp),a
 516                     ; 144     break;
 518  0055 2022          	jra	L102
 519  0057               L74:
 520                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 520                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 520                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 520                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 520                     ; 150 #else
 520                     ; 151   case ITC_IRQ_TIM2_OVF:
 520                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 520                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 520                     ; 154   case ITC_IRQ_TIM3_OVF:
 520                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 522  0057 c67f73        	ld	a,32627
 523  005a 1401          	and	a,(OFST-1,sp)
 524  005c 6b02          	ld	(OFST+0,sp),a
 525                     ; 156     break;
 527  005e 2019          	jra	L102
 528  0060               L15:
 529                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 529                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 529                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 529                     ; 161   case ITC_IRQ_UART1_TX:
 529                     ; 162   case ITC_IRQ_UART1_RX:
 529                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 529                     ; 164 #if defined(STM8AF622x)
 529                     ; 165   case ITC_IRQ_UART4_TX:
 529                     ; 166   case ITC_IRQ_UART4_RX:
 529                     ; 167 #endif /*STM8AF622x */
 529                     ; 168   case ITC_IRQ_I2C:
 529                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 531  0060 c67f74        	ld	a,32628
 532  0063 1401          	and	a,(OFST-1,sp)
 533  0065 6b02          	ld	(OFST+0,sp),a
 534                     ; 170     break;
 536  0067 2010          	jra	L102
 537  0069               L35:
 538                     ; 184   case ITC_IRQ_ADC1:
 538                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 538                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 538                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 538                     ; 188 #else
 538                     ; 189   case ITC_IRQ_TIM4_OVF:
 538                     ; 190 #endif /*STM8S903 or STM8AF622x */
 538                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 540  0069 c67f75        	ld	a,32629
 541  006c 1401          	and	a,(OFST-1,sp)
 542  006e 6b02          	ld	(OFST+0,sp),a
 543                     ; 192     break;
 545  0070 2007          	jra	L102
 546  0072               L55:
 547                     ; 194   case ITC_IRQ_EEPROM_EEC:
 547                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 549  0072 c67f76        	ld	a,32630
 550  0075 1401          	and	a,(OFST-1,sp)
 551  0077 6b02          	ld	(OFST+0,sp),a
 552                     ; 196     break;
 554  0079               L75:
 555                     ; 198   default:
 555                     ; 199     break;
 557  0079               L102:
 558                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 560  0079 7b04          	ld	a,(OFST+2,sp)
 561  007b a403          	and	a,#3
 562  007d 48            	sll	a
 563  007e 5f            	clrw	x
 564  007f 97            	ld	xl,a
 565  0080 7b02          	ld	a,(OFST+0,sp)
 566  0082 5d            	tnzw	x
 567  0083 2704          	jreq	L03
 568  0085               L23:
 569  0085 44            	srl	a
 570  0086 5a            	decw	x
 571  0087 26fc          	jrne	L23
 572  0089               L03:
 573  0089 6b02          	ld	(OFST+0,sp),a
 574                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 576  008b 7b02          	ld	a,(OFST+0,sp)
 577  008d 5f            	clrw	x
 578  008e 97            	ld	xl,a
 581  008f 5b04          	addw	sp,#4
 582  0091 81            	ret
 644                     	switch	.const
 645  0032               L66:
 646  0032 0093          	dc.w	L302
 647  0034 0093          	dc.w	L302
 648  0036 0093          	dc.w	L302
 649  0038 0093          	dc.w	L302
 650  003a 00a5          	dc.w	L502
 651  003c 00a5          	dc.w	L502
 652  003e 00a5          	dc.w	L502
 653  0040 00a5          	dc.w	L502
 654  0042 010f          	dc.w	L352
 655  0044 010f          	dc.w	L352
 656  0046 00b7          	dc.w	L702
 657  0048 00b7          	dc.w	L702
 658  004a 00c9          	dc.w	L112
 659  004c 00c9          	dc.w	L112
 660  004e 00c9          	dc.w	L112
 661  0050 00c9          	dc.w	L112
 662  0052 00db          	dc.w	L312
 663  0054 00db          	dc.w	L312
 664  0056 00db          	dc.w	L312
 665  0058 00db          	dc.w	L312
 666  005a 010f          	dc.w	L352
 667  005c 010f          	dc.w	L352
 668  005e 00ed          	dc.w	L512
 669  0060 00ed          	dc.w	L512
 670  0062 00ff          	dc.w	L712
 671                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 671                     ; 221 {
 672                     .text:	section	.text,new
 673  0000               _ITC_SetSoftwarePriority:
 675  0000 89            	pushw	x
 676  0001 89            	pushw	x
 677       00000002      OFST:	set	2
 680                     ; 222   uint8_t Mask = 0;
 682                     ; 223   uint8_t NewPriority = 0;
 684                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 686  0002 9f            	ld	a,xl
 687  0003 a119          	cp	a,#25
 688  0005 2403          	jruge	L63
 689  0007 4f            	clr	a
 690  0008 2010          	jra	L04
 691  000a               L63:
 692  000a ae00e2        	ldw	x,#226
 693  000d 89            	pushw	x
 694  000e ae0000        	ldw	x,#0
 695  0011 89            	pushw	x
 696  0012 ae0064        	ldw	x,#L571
 697  0015 cd0000        	call	_assert_failed
 699  0018 5b04          	addw	sp,#4
 700  001a               L04:
 701                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 703  001a 1e07          	ldw	x,(OFST+5,sp)
 704  001c a30002        	cpw	x,#2
 705  001f 2712          	jreq	L44
 706  0021 1e07          	ldw	x,(OFST+5,sp)
 707  0023 a30001        	cpw	x,#1
 708  0026 270b          	jreq	L44
 709  0028 1e07          	ldw	x,(OFST+5,sp)
 710  002a 2707          	jreq	L44
 711  002c 1e07          	ldw	x,(OFST+5,sp)
 712  002e a30003        	cpw	x,#3
 713  0031 2603          	jrne	L24
 714  0033               L44:
 715  0033 4f            	clr	a
 716  0034 2010          	jra	L64
 717  0036               L24:
 718  0036 ae00e3        	ldw	x,#227
 719  0039 89            	pushw	x
 720  003a ae0000        	ldw	x,#0
 721  003d 89            	pushw	x
 722  003e ae0064        	ldw	x,#L571
 723  0041 cd0000        	call	_assert_failed
 725  0044 5b04          	addw	sp,#4
 726  0046               L64:
 727                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 729  0046 cd0000        	call	_ITC_GetSoftIntStatus
 731  0049 a128          	cp	a,#40
 732  004b 2603          	jrne	L05
 733  004d 4f            	clr	a
 734  004e 2010          	jra	L25
 735  0050               L05:
 736  0050 ae00e6        	ldw	x,#230
 737  0053 89            	pushw	x
 738  0054 ae0000        	ldw	x,#0
 739  0057 89            	pushw	x
 740  0058 ae0064        	ldw	x,#L571
 741  005b cd0000        	call	_assert_failed
 743  005e 5b04          	addw	sp,#4
 744  0060               L25:
 745                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 747  0060 7b04          	ld	a,(OFST+2,sp)
 748  0062 a403          	and	a,#3
 749  0064 48            	sll	a
 750  0065 5f            	clrw	x
 751  0066 97            	ld	xl,a
 752  0067 a603          	ld	a,#3
 753  0069 5d            	tnzw	x
 754  006a 2704          	jreq	L45
 755  006c               L65:
 756  006c 48            	sll	a
 757  006d 5a            	decw	x
 758  006e 26fc          	jrne	L65
 759  0070               L45:
 760  0070 43            	cpl	a
 761  0071 6b01          	ld	(OFST-1,sp),a
 762                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 764  0073 7b04          	ld	a,(OFST+2,sp)
 765  0075 a403          	and	a,#3
 766  0077 48            	sll	a
 767  0078 5f            	clrw	x
 768  0079 97            	ld	xl,a
 769  007a 7b08          	ld	a,(OFST+6,sp)
 770  007c 5d            	tnzw	x
 771  007d 2704          	jreq	L06
 772  007f               L26:
 773  007f 48            	sll	a
 774  0080 5a            	decw	x
 775  0081 26fc          	jrne	L26
 776  0083               L06:
 777  0083 6b02          	ld	(OFST+0,sp),a
 778                     ; 239   switch (IrqNum)
 780  0085 1e03          	ldw	x,(OFST+1,sp)
 782                     ; 329   default:
 782                     ; 330     break;
 783  0087 a30019        	cpw	x,#25
 784  008a 2405          	jruge	L46
 785  008c 58            	sllw	x
 786  008d de0032        	ldw	x,(L66,x)
 787  0090 fc            	jp	(x)
 788  0091               L46:
 789  0091 207c          	jra	L352
 790  0093               L302:
 791                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 791                     ; 242   case ITC_IRQ_AWU:
 791                     ; 243   case ITC_IRQ_CLK:
 791                     ; 244   case ITC_IRQ_PORTA:
 791                     ; 245     ITC->ISPR1 &= Mask;
 793  0093 c67f70        	ld	a,32624
 794  0096 1401          	and	a,(OFST-1,sp)
 795  0098 c77f70        	ld	32624,a
 796                     ; 246     ITC->ISPR1 |= NewPriority;
 798  009b c67f70        	ld	a,32624
 799  009e 1a02          	or	a,(OFST+0,sp)
 800  00a0 c77f70        	ld	32624,a
 801                     ; 247     break;
 803  00a3 206a          	jra	L352
 804  00a5               L502:
 805                     ; 249   case ITC_IRQ_PORTB:
 805                     ; 250   case ITC_IRQ_PORTC:
 805                     ; 251   case ITC_IRQ_PORTD:
 805                     ; 252   case ITC_IRQ_PORTE:
 805                     ; 253     ITC->ISPR2 &= Mask;
 807  00a5 c67f71        	ld	a,32625
 808  00a8 1401          	and	a,(OFST-1,sp)
 809  00aa c77f71        	ld	32625,a
 810                     ; 254     ITC->ISPR2 |= NewPriority;
 812  00ad c67f71        	ld	a,32625
 813  00b0 1a02          	or	a,(OFST+0,sp)
 814  00b2 c77f71        	ld	32625,a
 815                     ; 255     break;
 817  00b5 2058          	jra	L352
 818  00b7               L702:
 819                     ; 264   case ITC_IRQ_SPI:
 819                     ; 265   case ITC_IRQ_TIM1_OVF:
 819                     ; 266     ITC->ISPR3 &= Mask;
 821  00b7 c67f72        	ld	a,32626
 822  00ba 1401          	and	a,(OFST-1,sp)
 823  00bc c77f72        	ld	32626,a
 824                     ; 267     ITC->ISPR3 |= NewPriority;
 826  00bf c67f72        	ld	a,32626
 827  00c2 1a02          	or	a,(OFST+0,sp)
 828  00c4 c77f72        	ld	32626,a
 829                     ; 268     break;
 831  00c7 2046          	jra	L352
 832  00c9               L112:
 833                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 833                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 833                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 833                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 833                     ; 274 #else
 833                     ; 275   case ITC_IRQ_TIM2_OVF:
 833                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 833                     ; 277 #endif /*STM8S903 or STM8AF622x */
 833                     ; 278   case ITC_IRQ_TIM3_OVF:
 833                     ; 279     ITC->ISPR4 &= Mask;
 835  00c9 c67f73        	ld	a,32627
 836  00cc 1401          	and	a,(OFST-1,sp)
 837  00ce c77f73        	ld	32627,a
 838                     ; 280     ITC->ISPR4 |= NewPriority;
 840  00d1 c67f73        	ld	a,32627
 841  00d4 1a02          	or	a,(OFST+0,sp)
 842  00d6 c77f73        	ld	32627,a
 843                     ; 281     break;
 845  00d9 2034          	jra	L352
 846  00db               L312:
 847                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 847                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 847                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 847                     ; 286   case ITC_IRQ_UART1_TX:
 847                     ; 287   case ITC_IRQ_UART1_RX:
 847                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 847                     ; 289 #if defined(STM8AF622x)
 847                     ; 290   case ITC_IRQ_UART4_TX:
 847                     ; 291   case ITC_IRQ_UART4_RX:
 847                     ; 292 #endif /*STM8AF622x */
 847                     ; 293   case ITC_IRQ_I2C:
 847                     ; 294     ITC->ISPR5 &= Mask;
 849  00db c67f74        	ld	a,32628
 850  00de 1401          	and	a,(OFST-1,sp)
 851  00e0 c77f74        	ld	32628,a
 852                     ; 295     ITC->ISPR5 |= NewPriority;
 854  00e3 c67f74        	ld	a,32628
 855  00e6 1a02          	or	a,(OFST+0,sp)
 856  00e8 c77f74        	ld	32628,a
 857                     ; 296     break;
 859  00eb 2022          	jra	L352
 860  00ed               L512:
 861                     ; 312   case ITC_IRQ_ADC1:
 861                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 861                     ; 314     
 861                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 861                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 861                     ; 317 #else
 861                     ; 318   case ITC_IRQ_TIM4_OVF:
 861                     ; 319 #endif /* STM8S903 or STM8AF622x */
 861                     ; 320     ITC->ISPR6 &= Mask;
 863  00ed c67f75        	ld	a,32629
 864  00f0 1401          	and	a,(OFST-1,sp)
 865  00f2 c77f75        	ld	32629,a
 866                     ; 321     ITC->ISPR6 |= NewPriority;
 868  00f5 c67f75        	ld	a,32629
 869  00f8 1a02          	or	a,(OFST+0,sp)
 870  00fa c77f75        	ld	32629,a
 871                     ; 322     break;
 873  00fd 2010          	jra	L352
 874  00ff               L712:
 875                     ; 324   case ITC_IRQ_EEPROM_EEC:
 875                     ; 325     ITC->ISPR7 &= Mask;
 877  00ff c67f76        	ld	a,32630
 878  0102 1401          	and	a,(OFST-1,sp)
 879  0104 c77f76        	ld	32630,a
 880                     ; 326     ITC->ISPR7 |= NewPriority;
 882  0107 c67f76        	ld	a,32630
 883  010a 1a02          	or	a,(OFST+0,sp)
 884  010c c77f76        	ld	32630,a
 885                     ; 327     break;
 887  010f               L122:
 888                     ; 329   default:
 888                     ; 330     break;
 890  010f               L352:
 891                     ; 332 }
 894  010f 5b04          	addw	sp,#4
 895  0111 81            	ret
 908                     	xdef	_ITC_GetSoftwarePriority
 909                     	xdef	_ITC_SetSoftwarePriority
 910                     	xdef	_ITC_GetSoftIntStatus
 911                     	xdef	_ITC_DeInit
 912                     	xdef	_ITC_GetCPUCC
 913                     	xref	_assert_failed
 914                     	switch	.const
 915  0064               L571:
 916  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 917  0076 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 918  0088 72697665725c  	dc.b	"river\src\stm8s_it"
 919  009a 632e6300      	dc.b	"c.c",0
 939                     	end

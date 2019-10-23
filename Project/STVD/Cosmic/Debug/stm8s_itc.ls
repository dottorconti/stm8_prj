   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 50 uint8_t ITC_GetCPUCC(void)
  50                     ; 51 {
  52                     .text:	section	.text,new
  53  0000               _ITC_GetCPUCC:
  57                     ; 53   _asm("push cc");
  60  0000 8a            	push	cc
  62                     ; 54   _asm("pop a");
  65  0001 84            	pop	a
  67                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  70  0002 81            	ret	
  93                     ; 80 void ITC_DeInit(void)
  93                     ; 81 {
  94                     .text:	section	.text,new
  95  0000               _ITC_DeInit:
  99                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
 101  0000 35ff7f70      	mov	32624,#255
 102                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 104  0004 35ff7f71      	mov	32625,#255
 105                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 107  0008 35ff7f72      	mov	32626,#255
 108                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 110  000c 35ff7f73      	mov	32627,#255
 111                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 113  0010 35ff7f74      	mov	32628,#255
 114                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 116  0014 35ff7f75      	mov	32629,#255
 117                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 119  0018 35ff7f76      	mov	32630,#255
 120                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 122  001c 35ff7f77      	mov	32631,#255
 123                     ; 90 }
 126  0020 81            	ret	
 151                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 151                     ; 98 {
 152                     .text:	section	.text,new
 153  0000               _ITC_GetSoftIntStatus:
 157                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 159  0000 cd0000        	call	_ITC_GetCPUCC
 161  0003 a428          	and	a,#40
 164  0005 81            	ret	
 414                     .const:	section	.text
 415  0000               L23:
 416  0000 0035          	dc.w	L14
 417  0002 0035          	dc.w	L14
 418  0004 0035          	dc.w	L14
 419  0006 0035          	dc.w	L14
 420  0008 003a          	dc.w	L34
 421  000a 003a          	dc.w	L34
 422  000c 003a          	dc.w	L34
 423  000e 003a          	dc.w	L34
 424  0010 005a          	dc.w	L502
 425  0012 005a          	dc.w	L502
 426  0014 003f          	dc.w	L54
 427  0016 003f          	dc.w	L54
 428  0018 0044          	dc.w	L74
 429  001a 0044          	dc.w	L74
 430  001c 0044          	dc.w	L74
 431  001e 0044          	dc.w	L74
 432  0020 0049          	dc.w	L15
 433  0022 0049          	dc.w	L15
 434  0024 0049          	dc.w	L15
 435  0026 0049          	dc.w	L15
 436  0028 005a          	dc.w	L502
 437  002a 005a          	dc.w	L502
 438  002c 004e          	dc.w	L35
 439  002e 004e          	dc.w	L35
 440  0030 0053          	dc.w	L55
 441                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 441                     ; 108 {
 442                     .text:	section	.text,new
 443  0000               _ITC_GetSoftwarePriority:
 445  0000 89            	pushw	x
 446  0001 89            	pushw	x
 447       00000002      OFST:	set	2
 450                     ; 109   uint8_t Value = 0;
 452  0002 0f02          	clr	(OFST+0,sp)
 453                     ; 110   uint8_t Mask = 0;
 455                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 457  0004 9f            	ld	a,xl
 458  0005 a119          	cp	a,#25
 459  0007 250e          	jrult	L02
 460  0009 ae0071        	ldw	x,#113
 461  000c 89            	pushw	x
 462  000d 5f            	clrw	x
 463  000e 89            	pushw	x
 464  000f ae0064        	ldw	x,#L102
 465  0012 cd0000        	call	_assert_failed
 467  0015 5b04          	addw	sp,#4
 468  0017               L02:
 469                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 471  0017 7b04          	ld	a,(OFST+2,sp)
 472  0019 a403          	and	a,#3
 473  001b 48            	sll	a
 474  001c 5f            	clrw	x
 475  001d 97            	ld	xl,a
 476  001e a603          	ld	a,#3
 477  0020 5d            	tnzw	x
 478  0021 2704          	jreq	L42
 479  0023               L62:
 480  0023 48            	sll	a
 481  0024 5a            	decw	x
 482  0025 26fc          	jrne	L62
 483  0027               L42:
 484  0027 6b01          	ld	(OFST-1,sp),a
 485                     ; 118   switch (IrqNum)
 487  0029 1e03          	ldw	x,(OFST+1,sp)
 489                     ; 198   default:
 489                     ; 199     break;
 490  002b a30019        	cpw	x,#25
 491  002e 242a          	jruge	L502
 492  0030 58            	sllw	x
 493  0031 de0000        	ldw	x,(L23,x)
 494  0034 fc            	jp	(x)
 495  0035               L14:
 496                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 496                     ; 121   case ITC_IRQ_AWU:
 496                     ; 122   case ITC_IRQ_CLK:
 496                     ; 123   case ITC_IRQ_PORTA:
 496                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 498  0035 c67f70        	ld	a,32624
 499                     ; 125     break;
 501  0038 201c          	jp	LC001
 502  003a               L34:
 503                     ; 127   case ITC_IRQ_PORTB:
 503                     ; 128   case ITC_IRQ_PORTC:
 503                     ; 129   case ITC_IRQ_PORTD:
 503                     ; 130   case ITC_IRQ_PORTE:
 503                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 505  003a c67f71        	ld	a,32625
 506                     ; 132     break;
 508  003d 2017          	jp	LC001
 509  003f               L54:
 510                     ; 141   case ITC_IRQ_SPI:
 510                     ; 142   case ITC_IRQ_TIM1_OVF:
 510                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 512  003f c67f72        	ld	a,32626
 513                     ; 144     break;
 515  0042 2012          	jp	LC001
 516  0044               L74:
 517                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 517                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 517                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 517                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 517                     ; 150 #else
 517                     ; 151   case ITC_IRQ_TIM2_OVF:
 517                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 517                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 517                     ; 154   case ITC_IRQ_TIM3_OVF:
 517                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 519  0044 c67f73        	ld	a,32627
 520                     ; 156     break;
 522  0047 200d          	jp	LC001
 523  0049               L15:
 524                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 524                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 524                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 524                     ; 161   case ITC_IRQ_UART1_TX:
 524                     ; 162   case ITC_IRQ_UART1_RX:
 524                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 524                     ; 164 #if defined(STM8AF622x)
 524                     ; 165   case ITC_IRQ_UART4_TX:
 524                     ; 166   case ITC_IRQ_UART4_RX:
 524                     ; 167 #endif /*STM8AF622x */
 524                     ; 168   case ITC_IRQ_I2C:
 524                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 526  0049 c67f74        	ld	a,32628
 527                     ; 170     break;
 529  004c 2008          	jp	LC001
 530  004e               L35:
 531                     ; 184   case ITC_IRQ_ADC1:
 531                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 531                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 531                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 531                     ; 188 #else
 531                     ; 189   case ITC_IRQ_TIM4_OVF:
 531                     ; 190 #endif /*STM8S903 or STM8AF622x */
 531                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 533  004e c67f75        	ld	a,32629
 534                     ; 192     break;
 536  0051 2003          	jp	LC001
 537  0053               L55:
 538                     ; 194   case ITC_IRQ_EEPROM_EEC:
 538                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 540  0053 c67f76        	ld	a,32630
 541  0056               LC001:
 542  0056 1401          	and	a,(OFST-1,sp)
 543  0058 6b02          	ld	(OFST+0,sp),a
 544                     ; 196     break;
 546                     ; 198   default:
 546                     ; 199     break;
 548  005a               L502:
 549                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 551  005a 7b04          	ld	a,(OFST+2,sp)
 552  005c a403          	and	a,#3
 553  005e 48            	sll	a
 554  005f 5f            	clrw	x
 555  0060 97            	ld	xl,a
 556  0061 7b02          	ld	a,(OFST+0,sp)
 557  0063 5d            	tnzw	x
 558  0064 2704          	jreq	L43
 559  0066               L63:
 560  0066 44            	srl	a
 561  0067 5a            	decw	x
 562  0068 26fc          	jrne	L63
 563  006a               L43:
 564                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 566  006a 5f            	clrw	x
 567  006b 97            	ld	xl,a
 570  006c 5b04          	addw	sp,#4
 571  006e 81            	ret	
 637                     	switch	.const
 638  0032               L201:
 639  0032 0067          	dc.w	L702
 640  0034 0067          	dc.w	L702
 641  0036 0067          	dc.w	L702
 642  0038 0067          	dc.w	L702
 643  003a 0079          	dc.w	L112
 644  003c 0079          	dc.w	L112
 645  003e 0079          	dc.w	L112
 646  0040 0079          	dc.w	L112
 647  0042 00e3          	dc.w	L362
 648  0044 00e3          	dc.w	L362
 649  0046 008b          	dc.w	L312
 650  0048 008b          	dc.w	L312
 651  004a 009d          	dc.w	L512
 652  004c 009d          	dc.w	L512
 653  004e 009d          	dc.w	L512
 654  0050 009d          	dc.w	L512
 655  0052 00af          	dc.w	L712
 656  0054 00af          	dc.w	L712
 657  0056 00af          	dc.w	L712
 658  0058 00af          	dc.w	L712
 659  005a 00e3          	dc.w	L362
 660  005c 00e3          	dc.w	L362
 661  005e 00c1          	dc.w	L122
 662  0060 00c1          	dc.w	L122
 663  0062 00d3          	dc.w	L322
 664                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 664                     ; 221 {
 665                     .text:	section	.text,new
 666  0000               _ITC_SetSoftwarePriority:
 668  0000 89            	pushw	x
 669  0001 89            	pushw	x
 670       00000002      OFST:	set	2
 673                     ; 222   uint8_t Mask = 0;
 675                     ; 223   uint8_t NewPriority = 0;
 677                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 679  0002 9f            	ld	a,xl
 680  0003 a119          	cp	a,#25
 681  0005 2506          	jrult	L44
 682  0007 ae00e2        	ldw	x,#226
 683  000a cd00e6        	call	LC002
 684  000d               L44:
 685                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 687  000d 1e07          	ldw	x,(OFST+5,sp)
 688  000f a30002        	cpw	x,#2
 689  0012 2712          	jreq	L45
 690  0014 5a            	decw	x
 691  0015 270f          	jreq	L45
 692  0017 1e07          	ldw	x,(OFST+5,sp)
 693  0019 270b          	jreq	L45
 694  001b a30003        	cpw	x,#3
 695  001e 2706          	jreq	L45
 696  0020 ae00e3        	ldw	x,#227
 697  0023 cd00e6        	call	LC002
 698  0026               L45:
 699                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 701  0026 cd0000        	call	_ITC_GetSoftIntStatus
 703  0029 a128          	cp	a,#40
 704  002b 2706          	jreq	L46
 705  002d ae00e6        	ldw	x,#230
 706  0030 cd00e6        	call	LC002
 707  0033               L46:
 708                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 710  0033 7b04          	ld	a,(OFST+2,sp)
 711  0035 a403          	and	a,#3
 712  0037 48            	sll	a
 713  0038 5f            	clrw	x
 714  0039 97            	ld	xl,a
 715  003a a603          	ld	a,#3
 716  003c 5d            	tnzw	x
 717  003d 2704          	jreq	L07
 718  003f               L27:
 719  003f 48            	sll	a
 720  0040 5a            	decw	x
 721  0041 26fc          	jrne	L27
 722  0043               L07:
 723  0043 43            	cpl	a
 724  0044 6b01          	ld	(OFST-1,sp),a
 725                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 727  0046 7b04          	ld	a,(OFST+2,sp)
 728  0048 a403          	and	a,#3
 729  004a 48            	sll	a
 730  004b 5f            	clrw	x
 731  004c 97            	ld	xl,a
 732  004d 7b08          	ld	a,(OFST+6,sp)
 733  004f 5d            	tnzw	x
 734  0050 2704          	jreq	L47
 735  0052               L67:
 736  0052 48            	sll	a
 737  0053 5a            	decw	x
 738  0054 26fc          	jrne	L67
 739  0056               L47:
 740  0056 6b02          	ld	(OFST+0,sp),a
 741                     ; 239   switch (IrqNum)
 743  0058 1e03          	ldw	x,(OFST+1,sp)
 745                     ; 329   default:
 745                     ; 330     break;
 746  005a a30019        	cpw	x,#25
 747  005d 2503cc00e3    	jruge	L362
 748  0062 58            	sllw	x
 749  0063 de0032        	ldw	x,(L201,x)
 750  0066 fc            	jp	(x)
 751  0067               L702:
 752                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 752                     ; 242   case ITC_IRQ_AWU:
 752                     ; 243   case ITC_IRQ_CLK:
 752                     ; 244   case ITC_IRQ_PORTA:
 752                     ; 245     ITC->ISPR1 &= Mask;
 754  0067 c67f70        	ld	a,32624
 755  006a 1401          	and	a,(OFST-1,sp)
 756  006c c77f70        	ld	32624,a
 757                     ; 246     ITC->ISPR1 |= NewPriority;
 759  006f c67f70        	ld	a,32624
 760  0072 1a02          	or	a,(OFST+0,sp)
 761  0074 c77f70        	ld	32624,a
 762                     ; 247     break;
 764  0077 206a          	jra	L362
 765  0079               L112:
 766                     ; 249   case ITC_IRQ_PORTB:
 766                     ; 250   case ITC_IRQ_PORTC:
 766                     ; 251   case ITC_IRQ_PORTD:
 766                     ; 252   case ITC_IRQ_PORTE:
 766                     ; 253     ITC->ISPR2 &= Mask;
 768  0079 c67f71        	ld	a,32625
 769  007c 1401          	and	a,(OFST-1,sp)
 770  007e c77f71        	ld	32625,a
 771                     ; 254     ITC->ISPR2 |= NewPriority;
 773  0081 c67f71        	ld	a,32625
 774  0084 1a02          	or	a,(OFST+0,sp)
 775  0086 c77f71        	ld	32625,a
 776                     ; 255     break;
 778  0089 2058          	jra	L362
 779  008b               L312:
 780                     ; 264   case ITC_IRQ_SPI:
 780                     ; 265   case ITC_IRQ_TIM1_OVF:
 780                     ; 266     ITC->ISPR3 &= Mask;
 782  008b c67f72        	ld	a,32626
 783  008e 1401          	and	a,(OFST-1,sp)
 784  0090 c77f72        	ld	32626,a
 785                     ; 267     ITC->ISPR3 |= NewPriority;
 787  0093 c67f72        	ld	a,32626
 788  0096 1a02          	or	a,(OFST+0,sp)
 789  0098 c77f72        	ld	32626,a
 790                     ; 268     break;
 792  009b 2046          	jra	L362
 793  009d               L512:
 794                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 794                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 794                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 794                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 794                     ; 274 #else
 794                     ; 275   case ITC_IRQ_TIM2_OVF:
 794                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 794                     ; 277 #endif /*STM8S903 or STM8AF622x */
 794                     ; 278   case ITC_IRQ_TIM3_OVF:
 794                     ; 279     ITC->ISPR4 &= Mask;
 796  009d c67f73        	ld	a,32627
 797  00a0 1401          	and	a,(OFST-1,sp)
 798  00a2 c77f73        	ld	32627,a
 799                     ; 280     ITC->ISPR4 |= NewPriority;
 801  00a5 c67f73        	ld	a,32627
 802  00a8 1a02          	or	a,(OFST+0,sp)
 803  00aa c77f73        	ld	32627,a
 804                     ; 281     break;
 806  00ad 2034          	jra	L362
 807  00af               L712:
 808                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 808                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 808                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 808                     ; 286   case ITC_IRQ_UART1_TX:
 808                     ; 287   case ITC_IRQ_UART1_RX:
 808                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 808                     ; 289 #if defined(STM8AF622x)
 808                     ; 290   case ITC_IRQ_UART4_TX:
 808                     ; 291   case ITC_IRQ_UART4_RX:
 808                     ; 292 #endif /*STM8AF622x */
 808                     ; 293   case ITC_IRQ_I2C:
 808                     ; 294     ITC->ISPR5 &= Mask;
 810  00af c67f74        	ld	a,32628
 811  00b2 1401          	and	a,(OFST-1,sp)
 812  00b4 c77f74        	ld	32628,a
 813                     ; 295     ITC->ISPR5 |= NewPriority;
 815  00b7 c67f74        	ld	a,32628
 816  00ba 1a02          	or	a,(OFST+0,sp)
 817  00bc c77f74        	ld	32628,a
 818                     ; 296     break;
 820  00bf 2022          	jra	L362
 821  00c1               L122:
 822                     ; 312   case ITC_IRQ_ADC1:
 822                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 822                     ; 314     
 822                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 822                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 822                     ; 317 #else
 822                     ; 318   case ITC_IRQ_TIM4_OVF:
 822                     ; 319 #endif /* STM8S903 or STM8AF622x */
 822                     ; 320     ITC->ISPR6 &= Mask;
 824  00c1 c67f75        	ld	a,32629
 825  00c4 1401          	and	a,(OFST-1,sp)
 826  00c6 c77f75        	ld	32629,a
 827                     ; 321     ITC->ISPR6 |= NewPriority;
 829  00c9 c67f75        	ld	a,32629
 830  00cc 1a02          	or	a,(OFST+0,sp)
 831  00ce c77f75        	ld	32629,a
 832                     ; 322     break;
 834  00d1 2010          	jra	L362
 835  00d3               L322:
 836                     ; 324   case ITC_IRQ_EEPROM_EEC:
 836                     ; 325     ITC->ISPR7 &= Mask;
 838  00d3 c67f76        	ld	a,32630
 839  00d6 1401          	and	a,(OFST-1,sp)
 840  00d8 c77f76        	ld	32630,a
 841                     ; 326     ITC->ISPR7 |= NewPriority;
 843  00db c67f76        	ld	a,32630
 844  00de 1a02          	or	a,(OFST+0,sp)
 845  00e0 c77f76        	ld	32630,a
 846                     ; 327     break;
 848                     ; 329   default:
 848                     ; 330     break;
 850  00e3               L362:
 851                     ; 332 }
 854  00e3 5b04          	addw	sp,#4
 855  00e5 81            	ret	
 856  00e6               LC002:
 857  00e6 89            	pushw	x
 858  00e7 5f            	clrw	x
 859  00e8 89            	pushw	x
 860  00e9 ae0064        	ldw	x,#L102
 861  00ec cd0000        	call	_assert_failed
 863  00ef 5b04          	addw	sp,#4
 864  00f1 81            	ret	
 877                     	xdef	_ITC_GetSoftwarePriority
 878                     	xdef	_ITC_SetSoftwarePriority
 879                     	xdef	_ITC_GetSoftIntStatus
 880                     	xdef	_ITC_DeInit
 881                     	xdef	_ITC_GetCPUCC
 882                     	xref	_assert_failed
 883                     	switch	.const
 884  0064               L102:
 885  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 886  0076 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 887  0088 72697665725c  	dc.b	"river\src\stm8s_it"
 888  009a 632e6300      	dc.b	"c.c",0
 908                     	end

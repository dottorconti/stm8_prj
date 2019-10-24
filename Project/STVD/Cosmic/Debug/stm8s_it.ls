   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     	switch	.data
  19  0000               _RAW_Data:
  20  0000 0000          	dc.w	0
  21  0002 0000          	ds.b	2
  22  0004               _SndDipOld:
  23  0004 00            	dc.b	0
  24  0005               _count:
  25  0005 00            	dc.b	0
  26  0006               _counter50ms:
  27  0006 00            	dc.b	0
  28  0007               _counter500ms:
  29  0007 00            	dc.b	0
  59                     ; 75 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  59                     ; 76 {
  60                     .text:	section	.text,new
  61  0000               f_NonHandledInterrupt:
  65                     ; 80 }
  68  0000 80            	iret
  90                     ; 88 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  90                     ; 89 {
  91                     .text:	section	.text,new
  92  0000               f_TRAP_IRQHandler:
  96                     ; 93 }
  99  0000 80            	iret
 121                     ; 99 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 121                     ; 100 {
 122                     .text:	section	.text,new
 123  0000               f_TLI_IRQHandler:
 127                     ; 102 }
 130  0000 80            	iret
 152                     ; 109 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 152                     ; 110 {
 153                     .text:	section	.text,new
 154  0000               f_AWU_IRQHandler:
 158                     ; 114 }
 161  0000 80            	iret
 183                     ; 121 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 183                     ; 122 {
 184                     .text:	section	.text,new
 185  0000               f_CLK_IRQHandler:
 189                     ; 126 }
 192  0000 80            	iret
 215                     ; 133 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 215                     ; 134 {
 216                     .text:	section	.text,new
 217  0000               f_EXTI_PORTA_IRQHandler:
 221                     ; 138 }
 224  0000 80            	iret
 247                     ; 145 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 247                     ; 146 {
 248                     .text:	section	.text,new
 249  0000               f_EXTI_PORTB_IRQHandler:
 253                     ; 151 }
 256  0000 80            	iret
 279                     ; 158 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 279                     ; 159 {
 280                     .text:	section	.text,new
 281  0000               f_EXTI_PORTC_IRQHandler:
 285                     ; 163 }
 288  0000 80            	iret
 312                     ; 170 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 312                     ; 171 {
 313                     .text:	section	.text,new
 314  0000               f_EXTI_PORTD_IRQHandler:
 316  0000 8a            	push	cc
 317  0001 84            	pop	a
 318  0002 a4bf          	and	a,#191
 319  0004 88            	push	a
 320  0005 86            	pop	cc
 321  0006 3b0002        	push	c_x+2
 322  0009 be00          	ldw	x,c_x
 323  000b 89            	pushw	x
 324  000c 3b0002        	push	c_y+2
 325  000f be00          	ldw	x,c_y
 326  0011 89            	pushw	x
 329                     ; 173   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_4))
 331  0012 ae0010        	ldw	x,#16
 332  0015 89            	pushw	x
 333  0016 ae500f        	ldw	x,#20495
 334  0019 cd0000        	call	_GPIO_ReadInputPin
 336  001c 5b02          	addw	sp,#2
 337  001e a30000        	cpw	x,#0
 338                     ; 177   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_5))
 340  0021 ae0020        	ldw	x,#32
 341  0024 89            	pushw	x
 342  0025 ae500f        	ldw	x,#20495
 343  0028 cd0000        	call	_GPIO_ReadInputPin
 345  002b 5b02          	addw	sp,#2
 346  002d a30000        	cpw	x,#0
 347                     ; 180 }
 350  0030 85            	popw	x
 351  0031 bf00          	ldw	c_y,x
 352  0033 320002        	pop	c_y+2
 353  0036 85            	popw	x
 354  0037 bf00          	ldw	c_x,x
 355  0039 320002        	pop	c_x+2
 356  003c 80            	iret
 379                     ; 187 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 379                     ; 188 {
 380                     .text:	section	.text,new
 381  0000               f_EXTI_PORTE_IRQHandler:
 385                     ; 192 }
 388  0000 80            	iret
 410                     ; 238 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 410                     ; 239 {
 411                     .text:	section	.text,new
 412  0000               f_SPI_IRQHandler:
 416                     ; 243 }
 419  0000 80            	iret
 442                     ; 250 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 442                     ; 251 {
 443                     .text:	section	.text,new
 444  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 448                     ; 255 }
 451  0000 80            	iret
 474                     ; 262 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 474                     ; 263 {
 475                     .text:	section	.text,new
 476  0000               f_TIM1_CAP_COM_IRQHandler:
 480                     ; 267 }
 483  0000 80            	iret
 511                     ; 299  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 511                     ; 300 {
 512                     .text:	section	.text,new
 513  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 515  0000 8a            	push	cc
 516  0001 84            	pop	a
 517  0002 a4bf          	and	a,#191
 518  0004 88            	push	a
 519  0005 86            	pop	cc
 520  0006 3b0002        	push	c_x+2
 521  0009 be00          	ldw	x,c_x
 522  000b 89            	pushw	x
 523  000c 3b0002        	push	c_y+2
 524  000f be00          	ldw	x,c_y
 525  0011 89            	pushw	x
 528                     ; 307 	if( (S1_enable) || (S2_enable) )
 530  0012 725d0000      	tnz	_S1_enable
 531  0016 2606          	jrne	L771
 533  0018 725d0000      	tnz	_S2_enable
 534  001c 2719          	jreq	L571
 535  001e               L771:
 536                     ; 309 			soundStone(SndDip);
 538  001e c60000        	ld	a,_SndDip
 539  0021 cd0000        	call	_soundStone
 542  0024               L102:
 543                     ; 317 	TIM2_ClearITPendingBit(TIM2_FLAG_UPDATE);
 545  0024 ae0001        	ldw	x,#1
 546  0027 cd0000        	call	_TIM2_ClearITPendingBit
 548                     ; 318 }
 551  002a 85            	popw	x
 552  002b bf00          	ldw	c_y,x
 553  002d 320002        	pop	c_y+2
 554  0030 85            	popw	x
 555  0031 bf00          	ldw	c_x,x
 556  0033 320002        	pop	c_x+2
 557  0036 80            	iret
 558  0037               L571:
 559                     ; 313 			soundStone(50);
 561  0037 a632          	ld	a,#50
 562  0039 cd0000        	call	_soundStone
 564  003c 20e6          	jra	L102
 587                     ; 325  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 587                     ; 326 {
 588                     .text:	section	.text,new
 589  0000               f_TIM2_CAP_COM_IRQHandler:
 593                     ; 330 }
 596  0000 80            	iret
 619                     ; 367  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 619                     ; 368 {
 620                     .text:	section	.text,new
 621  0000               f_UART1_TX_IRQHandler:
 625                     ; 372 }
 628  0000 80            	iret
 651                     ; 379  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 651                     ; 380 {
 652                     .text:	section	.text,new
 653  0000               f_UART1_RX_IRQHandler:
 657                     ; 384 }
 660  0000 80            	iret
 682                     ; 392 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 682                     ; 393 {
 683                     .text:	section	.text,new
 684  0000               f_I2C_IRQHandler:
 688                     ; 397 }
 691  0000 80            	iret
 719                     ; 472  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 719                     ; 473 {
 720                     .text:	section	.text,new
 721  0000               f_ADC1_IRQHandler:
 723  0000 8a            	push	cc
 724  0001 84            	pop	a
 725  0002 a4bf          	and	a,#191
 726  0004 88            	push	a
 727  0005 86            	pop	cc
 728  0006 3b0002        	push	c_x+2
 729  0009 be00          	ldw	x,c_x
 730  000b 89            	pushw	x
 731  000c 3b0002        	push	c_y+2
 732  000f be00          	ldw	x,c_y
 733  0011 89            	pushw	x
 736                     ; 478 		if (ADC1_GetFlagStatus(ADC1_FLAG_EOC))
 738  0012 ae0080        	ldw	x,#128
 739  0015 cd0000        	call	_ADC1_GetFlagStatus
 741  0018 a30000        	cpw	x,#0
 742  001b 2728          	jreq	L752
 743                     ; 480 			switch (channel)
 745  001d c60000        	ld	a,_channel
 747                     ; 490 				break;					
 748  0020 a003          	sub	a,#3
 749  0022 2705          	jreq	L342
 750  0024 4a            	dec	a
 751  0025 270e          	jreq	L542
 752  0027 2016          	jra	L362
 753  0029               L342:
 754                     ; 482 				case AIN3:
 754                     ; 483 				RAW_Data[0] = ADC1_GetConversionValue();
 756  0029 cd0000        	call	_ADC1_GetConversionValue
 758  002c cf0000        	ldw	_RAW_Data,x
 759                     ; 484 				channel = AIN4;
 761  002f 35040000      	mov	_channel,#4
 762                     ; 485 				break;
 764  0033 200a          	jra	L362
 765  0035               L542:
 766                     ; 487 				case AIN4:
 766                     ; 488 				RAW_Data[1] = ADC1_GetConversionValue();
 768  0035 cd0000        	call	_ADC1_GetConversionValue
 770  0038 cf0002        	ldw	_RAW_Data+2,x
 771                     ; 489 				channel = AIN3;
 773  003b 35030000      	mov	_channel,#3
 774                     ; 490 				break;					
 776  003f               L362:
 777                     ; 492 			ADC1_ClearFlag(ADC1_FLAG_EOC);
 779  003f ae0080        	ldw	x,#128
 780  0042 cd0000        	call	_ADC1_ClearFlag
 782  0045               L752:
 783                     ; 494 		if (ADC1_GetFlagStatus(ADC1_FLAG_OVR))
 785  0045 ae0041        	ldw	x,#65
 786  0048 cd0000        	call	_ADC1_GetFlagStatus
 788  004b a30000        	cpw	x,#0
 789  004e 2706          	jreq	L562
 790                     ; 496 			ADC1_ClearFlag(ADC1_FLAG_OVR);
 792  0050 ae0041        	ldw	x,#65
 793  0053 cd0000        	call	_ADC1_ClearFlag
 795  0056               L562:
 796                     ; 498 		ADC1_ClearITPendingBit(ADC1_IT_EOC);
 798  0056 ae0080        	ldw	x,#128
 799  0059 cd0000        	call	_ADC1_ClearITPendingBit
 801                     ; 499     return;
 804  005c 85            	popw	x
 805  005d bf00          	ldw	c_y,x
 806  005f 320002        	pop	c_y+2
 807  0062 85            	popw	x
 808  0063 bf00          	ldw	c_x,x
 809  0065 320002        	pop	c_x+2
 810  0068 80            	iret
 841                     ; 521  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 841                     ; 522 {
 842                     .text:	section	.text,new
 843  0000               f_TIM4_UPD_OVF_IRQHandler:
 845  0000 8a            	push	cc
 846  0001 84            	pop	a
 847  0002 a4bf          	and	a,#191
 848  0004 88            	push	a
 849  0005 86            	pop	cc
 850  0006 3b0002        	push	c_x+2
 851  0009 be00          	ldw	x,c_x
 852  000b 89            	pushw	x
 853  000c 3b0002        	push	c_y+2
 854  000f be00          	ldw	x,c_y
 855  0011 89            	pushw	x
 858                     ; 526   timeout1msISR = 1;
 860  0012 ae0001        	ldw	x,#1
 861  0015 cf0000        	ldw	_timeout1msISR,x
 862                     ; 527 	counter10ms++;
 864  0018 725c0000      	inc	_counter10ms
 865                     ; 529 	if (counter10ms >= 9)
 867  001c c60000        	ld	a,_counter10ms
 868  001f a109          	cp	a,#9
 869  0021 250e          	jrult	L772
 870                     ; 531 		counter50ms++;
 872  0023 725c0006      	inc	_counter50ms
 873                     ; 532 		timeout10msISR = 1;
 875  0027 ae0001        	ldw	x,#1
 876  002a cf0000        	ldw	_timeout10msISR,x
 877                     ; 533 		counter10ms = 0;
 879  002d 725f0000      	clr	_counter10ms
 880  0031               L772:
 881                     ; 535 	if (counter50ms >= 4)
 883  0031 c60006        	ld	a,_counter50ms
 884  0034 a104          	cp	a,#4
 885  0036 250e          	jrult	L103
 886                     ; 537 		counter50ms=0;
 888  0038 725f0006      	clr	_counter50ms
 889                     ; 538 		timeout50msISR = 1;
 891  003c ae0001        	ldw	x,#1
 892  003f cf0000        	ldw	_timeout50msISR,x
 893                     ; 539 		counter500ms++;
 895  0042 725c0007      	inc	_counter500ms
 896  0046               L103:
 897                     ; 541 	if (counter500ms >= 9)
 899  0046 c60007        	ld	a,_counter500ms
 900  0049 a109          	cp	a,#9
 901  004b 250a          	jrult	L303
 902                     ; 543 		counter500ms=0;
 904  004d 725f0007      	clr	_counter500ms
 905                     ; 544 		timeout500msISR = 1;
 907  0051 ae0001        	ldw	x,#1
 908  0054 cf0000        	ldw	_timeout500msISR,x
 909  0057               L303:
 910                     ; 547 	TIM4_ClearITPendingBit(TIM4_FLAG_UPDATE);
 912  0057 ae0001        	ldw	x,#1
 913  005a cd0000        	call	_TIM4_ClearITPendingBit
 915                     ; 548 }
 918  005d 85            	popw	x
 919  005e bf00          	ldw	c_y,x
 920  0060 320002        	pop	c_y+2
 921  0063 85            	popw	x
 922  0064 bf00          	ldw	c_x,x
 923  0066 320002        	pop	c_x+2
 924  0069 80            	iret
 947                     ; 556 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 947                     ; 557 {
 948                     .text:	section	.text,new
 949  0000               f_EEPROM_EEC_IRQHandler:
 953                     ; 561 }
 956  0000 80            	iret
1022                     	xdef	_counter500ms
1023                     	xdef	_counter50ms
1024                     	switch	.bss
1025  0000               _BSnd:
1026  0000 00            	ds.b	1
1027                     	xdef	_BSnd
1028  0001               _ASnd:
1029  0001 00            	ds.b	1
1030                     	xdef	_ASnd
1031                     	xdef	_count
1032                     	xdef	_SndDipOld
1033                     	xdef	_RAW_Data
1034                     	xref	_soundStone
1035                     	xref	_counter10ms
1036                     	xref	_timeout500msISR
1037                     	xref	_timeout50msISR
1038                     	xref	_timeout10msISR
1039                     	xref	_timeout1msISR
1040                     	xdef	f_EEPROM_EEC_IRQHandler
1041                     	xdef	f_TIM4_UPD_OVF_IRQHandler
1042                     	xdef	f_ADC1_IRQHandler
1043                     	xdef	f_I2C_IRQHandler
1044                     	xdef	f_UART1_RX_IRQHandler
1045                     	xdef	f_UART1_TX_IRQHandler
1046                     	xdef	f_TIM2_CAP_COM_IRQHandler
1047                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1048                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
1049                     	xdef	f_TIM1_CAP_COM_IRQHandler
1050                     	xdef	f_SPI_IRQHandler
1051                     	xdef	f_EXTI_PORTE_IRQHandler
1052                     	xdef	f_EXTI_PORTD_IRQHandler
1053                     	xdef	f_EXTI_PORTC_IRQHandler
1054                     	xdef	f_EXTI_PORTB_IRQHandler
1055                     	xdef	f_EXTI_PORTA_IRQHandler
1056                     	xdef	f_CLK_IRQHandler
1057                     	xdef	f_AWU_IRQHandler
1058                     	xdef	f_TLI_IRQHandler
1059                     	xdef	f_TRAP_IRQHandler
1060                     	xdef	f_NonHandledInterrupt
1061                     	xref	_SndDip
1062                     	xref	_S2_enable
1063                     	xref	_S1_enable
1064                     	xref	_channel
1065                     	xref	_TIM4_ClearITPendingBit
1066                     	xref	_TIM2_ClearITPendingBit
1067                     	xref	_GPIO_ReadInputPin
1068                     	xref	_ADC1_ClearITPendingBit
1069                     	xref	_ADC1_ClearFlag
1070                     	xref	_ADC1_GetFlagStatus
1071                     	xref	_ADC1_GetConversionValue
1072                     	xref.b	c_x
1073                     	xref.b	c_y
1093                     	end

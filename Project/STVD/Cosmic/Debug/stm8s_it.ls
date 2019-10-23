   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     	bsct
  23  0000               _SndDipOld:
  24  0000 00            	dc.b	0
  25  0001               _count:
  26  0001 00            	dc.b	0
  27  0002               _counter50ms:
  28  0002 00            	dc.b	0
  29  0003               _counter500ms:
  30  0003 00            	dc.b	0
  60                     ; 64 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  60                     ; 65 {
  61                     .text:	section	.text,new
  62  0000               f_NonHandledInterrupt:
  66                     ; 69 }
  69  0000 80            	iret	
  91                     ; 77 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  91                     ; 78 {
  92                     .text:	section	.text,new
  93  0000               f_TRAP_IRQHandler:
  97                     ; 82 }
 100  0000 80            	iret	
 122                     ; 88 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 122                     ; 89 {
 123                     .text:	section	.text,new
 124  0000               f_TLI_IRQHandler:
 128                     ; 91 }
 131  0000 80            	iret	
 153                     ; 98 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 153                     ; 99 {
 154                     .text:	section	.text,new
 155  0000               f_AWU_IRQHandler:
 159                     ; 103 }
 162  0000 80            	iret	
 184                     ; 110 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 184                     ; 111 {
 185                     .text:	section	.text,new
 186  0000               f_CLK_IRQHandler:
 190                     ; 115 }
 193  0000 80            	iret	
 216                     ; 122 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 216                     ; 123 {
 217                     .text:	section	.text,new
 218  0000               f_EXTI_PORTA_IRQHandler:
 222                     ; 127 }
 225  0000 80            	iret	
 248                     ; 134 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 248                     ; 135 {
 249                     .text:	section	.text,new
 250  0000               f_EXTI_PORTB_IRQHandler:
 254                     ; 140 }
 257  0000 80            	iret	
 280                     ; 147 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 280                     ; 148 {
 281                     .text:	section	.text,new
 282  0000               f_EXTI_PORTC_IRQHandler:
 286                     ; 152 }
 289  0000 80            	iret	
 313                     ; 159 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 313                     ; 160 {
 314                     .text:	section	.text,new
 315  0000               f_EXTI_PORTD_IRQHandler:
 317  0000 8a            	push	cc
 318  0001 84            	pop	a
 319  0002 a4bf          	and	a,#191
 320  0004 88            	push	a
 321  0005 86            	pop	cc
 322  0006 3b0002        	push	c_x+2
 323  0009 be00          	ldw	x,c_x
 324  000b 89            	pushw	x
 325  000c 3b0002        	push	c_y+2
 326  000f be00          	ldw	x,c_y
 327  0011 89            	pushw	x
 330                     ; 162   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_4))
 332  0012 ae0010        	ldw	x,#16
 333  0015 89            	pushw	x
 334  0016 ae500f        	ldw	x,#20495
 335  0019 cd0000        	call	_GPIO_ReadInputPin
 337  001c 5b02          	addw	sp,#2
 338                     ; 166   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_5))
 340  001e ae0020        	ldw	x,#32
 341  0021 89            	pushw	x
 342  0022 ae500f        	ldw	x,#20495
 343  0025 cd0000        	call	_GPIO_ReadInputPin
 345  0028 5b02          	addw	sp,#2
 346                     ; 169 }
 349  002a 85            	popw	x
 350  002b bf00          	ldw	c_y,x
 351  002d 320002        	pop	c_y+2
 352  0030 85            	popw	x
 353  0031 bf00          	ldw	c_x,x
 354  0033 320002        	pop	c_x+2
 355  0036 80            	iret	
 378                     ; 176 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 378                     ; 177 {
 379                     .text:	section	.text,new
 380  0000               f_EXTI_PORTE_IRQHandler:
 384                     ; 181 }
 387  0000 80            	iret	
 409                     ; 227 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 409                     ; 228 {
 410                     .text:	section	.text,new
 411  0000               f_SPI_IRQHandler:
 415                     ; 232 }
 418  0000 80            	iret	
 441                     ; 239 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 441                     ; 240 {
 442                     .text:	section	.text,new
 443  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 447                     ; 244 }
 450  0000 80            	iret	
 473                     ; 251 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 473                     ; 252 {
 474                     .text:	section	.text,new
 475  0000               f_TIM1_CAP_COM_IRQHandler:
 479                     ; 256 }
 482  0000 80            	iret	
 508                     ; 288  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 508                     ; 289 {
 509                     .text:	section	.text,new
 510  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 512  0000 8a            	push	cc
 513  0001 84            	pop	a
 514  0002 a4bf          	and	a,#191
 515  0004 88            	push	a
 516  0005 86            	pop	cc
 517  0006 3b0002        	push	c_x+2
 518  0009 be00          	ldw	x,c_x
 519  000b 89            	pushw	x
 520  000c 3b0002        	push	c_y+2
 521  000f be00          	ldw	x,c_y
 522  0011 89            	pushw	x
 525                     ; 302 			soundStone(SndDip);
 527  0012 b600          	ld	a,_SndDip
 528  0014 cd0000        	call	_soundStone
 530                     ; 313 	TIM2_ClearITPendingBit(TIM2_FLAG_UPDATE);
 532  0017 ae0001        	ldw	x,#1
 533  001a cd0000        	call	_TIM2_ClearITPendingBit
 535                     ; 314 }
 538  001d 85            	popw	x
 539  001e bf00          	ldw	c_y,x
 540  0020 320002        	pop	c_y+2
 541  0023 85            	popw	x
 542  0024 bf00          	ldw	c_x,x
 543  0026 320002        	pop	c_x+2
 544  0029 80            	iret	
 567                     ; 321  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 567                     ; 322 {
 568                     .text:	section	.text,new
 569  0000               f_TIM2_CAP_COM_IRQHandler:
 573                     ; 326 }
 576  0000 80            	iret	
 599                     ; 363  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 599                     ; 364 {
 600                     .text:	section	.text,new
 601  0000               f_UART1_TX_IRQHandler:
 605                     ; 368 }
 608  0000 80            	iret	
 631                     ; 375  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 631                     ; 376 {
 632                     .text:	section	.text,new
 633  0000               f_UART1_RX_IRQHandler:
 637                     ; 380 }
 640  0000 80            	iret	
 662                     ; 388 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 662                     ; 389 {
 663                     .text:	section	.text,new
 664  0000               f_I2C_IRQHandler:
 668                     ; 393 }
 671  0000 80            	iret	
 698                     ; 468  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 698                     ; 469 {
 699                     .text:	section	.text,new
 700  0000               f_ADC1_IRQHandler:
 702  0000 8a            	push	cc
 703  0001 84            	pop	a
 704  0002 a4bf          	and	a,#191
 705  0004 88            	push	a
 706  0005 86            	pop	cc
 707  0006 3b0002        	push	c_x+2
 708  0009 be00          	ldw	x,c_x
 709  000b 89            	pushw	x
 710  000c 3b0002        	push	c_y+2
 711  000f be00          	ldw	x,c_y
 712  0011 89            	pushw	x
 715                     ; 474 		if (ADC1_GetFlagStatus(ADC1_FLAG_EOC))
 717  0012 ae0080        	ldw	x,#128
 718  0015 cd0000        	call	_ADC1_GetFlagStatus
 720  0018 5d            	tnzw	x
 721  0019 270b          	jreq	L542
 722                     ; 476 			RAW_Data = ADC1_GetConversionValue();
 724  001b cd0000        	call	_ADC1_GetConversionValue
 726  001e bf00          	ldw	_RAW_Data,x
 727                     ; 477 			ADC1_ClearFlag(ADC1_FLAG_EOC);
 729  0020 ae0080        	ldw	x,#128
 730  0023 cd0000        	call	_ADC1_ClearFlag
 732  0026               L542:
 733                     ; 479 		if (ADC1_GetFlagStatus(ADC1_FLAG_OVR))
 735  0026 ae0041        	ldw	x,#65
 736  0029 cd0000        	call	_ADC1_GetFlagStatus
 738  002c 5d            	tnzw	x
 739  002d 2706          	jreq	L742
 740                     ; 481 			ADC1_ClearFlag(ADC1_FLAG_OVR);
 742  002f ae0041        	ldw	x,#65
 743  0032 cd0000        	call	_ADC1_ClearFlag
 745  0035               L742:
 746                     ; 483 		ADC1_ClearITPendingBit(ADC1_IT_EOC);
 748  0035 ae0080        	ldw	x,#128
 749  0038 cd0000        	call	_ADC1_ClearITPendingBit
 751                     ; 484     return;
 754  003b 85            	popw	x
 755  003c bf00          	ldw	c_y,x
 756  003e 320002        	pop	c_y+2
 757  0041 85            	popw	x
 758  0042 bf00          	ldw	c_x,x
 759  0044 320002        	pop	c_x+2
 760  0047 80            	iret	
 791                     ; 506  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 791                     ; 507 {
 792                     .text:	section	.text,new
 793  0000               f_TIM4_UPD_OVF_IRQHandler:
 795  0000 8a            	push	cc
 796  0001 84            	pop	a
 797  0002 a4bf          	and	a,#191
 798  0004 88            	push	a
 799  0005 86            	pop	cc
 800  0006 3b0002        	push	c_x+2
 801  0009 be00          	ldw	x,c_x
 802  000b 89            	pushw	x
 803  000c 3b0002        	push	c_y+2
 804  000f be00          	ldw	x,c_y
 805  0011 89            	pushw	x
 808                     ; 511   timeout1msISR = 1;
 810  0012 ae0001        	ldw	x,#1
 811  0015 bf00          	ldw	_timeout1msISR,x
 812                     ; 512 	counter10ms++;
 814  0017 3c00          	inc	_counter10ms
 815                     ; 514 	if (counter10ms >= 9)
 817  0019 b600          	ld	a,_counter10ms
 818  001b a109          	cp	a,#9
 819  001d 2506          	jrult	L162
 820                     ; 516 		counter50ms++;
 822  001f 3c02          	inc	_counter50ms
 823                     ; 517 		timeout10msISR = 1;
 825  0021 bf00          	ldw	_timeout10msISR,x
 826                     ; 518 		counter10ms = 0;
 828  0023 3f00          	clr	_counter10ms
 829  0025               L162:
 830                     ; 520 	if (counter50ms >= 4)
 832  0025 b602          	ld	a,_counter50ms
 833  0027 a104          	cp	a,#4
 834  0029 2506          	jrult	L362
 835                     ; 522 		counter50ms=0;
 837  002b 3f02          	clr	_counter50ms
 838                     ; 523 		timeout50msISR = 1;
 840  002d bf00          	ldw	_timeout50msISR,x
 841                     ; 524 		counter500ms++;
 843  002f 3c03          	inc	_counter500ms
 844  0031               L362:
 845                     ; 526 	if (counter500ms >= 9)
 847  0031 b603          	ld	a,_counter500ms
 848  0033 a109          	cp	a,#9
 849  0035 2504          	jrult	L562
 850                     ; 528 		counter500ms=0;
 852  0037 3f03          	clr	_counter500ms
 853                     ; 529 		timeout500msISR = 1;
 855  0039 bf00          	ldw	_timeout500msISR,x
 856  003b               L562:
 857                     ; 532 	TIM4_ClearITPendingBit(TIM4_FLAG_UPDATE);
 859  003b cd0000        	call	_TIM4_ClearITPendingBit
 861                     ; 533 }
 864  003e 85            	popw	x
 865  003f bf00          	ldw	c_y,x
 866  0041 320002        	pop	c_y+2
 867  0044 85            	popw	x
 868  0045 bf00          	ldw	c_x,x
 869  0047 320002        	pop	c_x+2
 870  004a 80            	iret	
 893                     ; 541 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 893                     ; 542 {
 894                     .text:	section	.text,new
 895  0000               f_EEPROM_EEC_IRQHandler:
 899                     ; 546 }
 902  0000 80            	iret	
 970                     	xdef	_counter500ms
 971                     	xdef	_counter50ms
 972                     	switch	.ubsct
 973  0000               _BSnd:
 974  0000 00            	ds.b	1
 975                     	xdef	_BSnd
 976  0001               _ASnd:
 977  0001 00            	ds.b	1
 978                     	xdef	_ASnd
 979                     	xdef	_count
 980                     	xdef	_SndDipOld
 981                     	xref	_soundStone
 982                     	xref.b	_counter10ms
 983                     	xref.b	_timeout500msISR
 984                     	xref.b	_timeout50msISR
 985                     	xref.b	_timeout10msISR
 986                     	xref.b	_timeout1msISR
 987                     	xdef	f_EEPROM_EEC_IRQHandler
 988                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 989                     	xdef	f_ADC1_IRQHandler
 990                     	xdef	f_I2C_IRQHandler
 991                     	xdef	f_UART1_RX_IRQHandler
 992                     	xdef	f_UART1_TX_IRQHandler
 993                     	xdef	f_TIM2_CAP_COM_IRQHandler
 994                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 995                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 996                     	xdef	f_TIM1_CAP_COM_IRQHandler
 997                     	xdef	f_SPI_IRQHandler
 998                     	xdef	f_EXTI_PORTE_IRQHandler
 999                     	xdef	f_EXTI_PORTD_IRQHandler
1000                     	xdef	f_EXTI_PORTC_IRQHandler
1001                     	xdef	f_EXTI_PORTB_IRQHandler
1002                     	xdef	f_EXTI_PORTA_IRQHandler
1003                     	xdef	f_CLK_IRQHandler
1004                     	xdef	f_AWU_IRQHandler
1005                     	xdef	f_TLI_IRQHandler
1006                     	xdef	f_TRAP_IRQHandler
1007                     	xdef	f_NonHandledInterrupt
1008                     	xref.b	_RAW_Data
1009                     	xref.b	_SndDip
1010                     	xref	_TIM4_ClearITPendingBit
1011                     	xref	_TIM2_ClearITPendingBit
1012                     	xref	_GPIO_ReadInputPin
1013                     	xref	_ADC1_ClearITPendingBit
1014                     	xref	_ADC1_ClearFlag
1015                     	xref	_ADC1_GetFlagStatus
1016                     	xref	_ADC1_GetConversionValue
1017                     	xref.b	c_x
1018                     	xref.b	c_y
1038                     	end

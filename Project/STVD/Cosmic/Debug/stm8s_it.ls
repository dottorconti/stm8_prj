   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  18                     	switch	.data
  19  0000               _SndDipOld:
  20  0000 00            	dc.b	0
  21  0001               _count:
  22  0001 00            	dc.b	0
  23  0002               _counter50ms:
  24  0002 00            	dc.b	0
  25  0003               _counter500ms:
  26  0003 00            	dc.b	0
  56                     ; 72 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  56                     ; 73 {
  57                     .text:	section	.text,new
  58  0000               f_NonHandledInterrupt:
  62                     ; 77 }
  65  0000 80            	iret
  87                     ; 85 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  87                     ; 86 {
  88                     .text:	section	.text,new
  89  0000               f_TRAP_IRQHandler:
  93                     ; 90 }
  96  0000 80            	iret
 118                     ; 96 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 118                     ; 97 {
 119                     .text:	section	.text,new
 120  0000               f_TLI_IRQHandler:
 124                     ; 99 }
 127  0000 80            	iret
 149                     ; 106 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 149                     ; 107 {
 150                     .text:	section	.text,new
 151  0000               f_AWU_IRQHandler:
 155                     ; 111 }
 158  0000 80            	iret
 180                     ; 118 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 180                     ; 119 {
 181                     .text:	section	.text,new
 182  0000               f_CLK_IRQHandler:
 186                     ; 123 }
 189  0000 80            	iret
 212                     ; 130 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 212                     ; 131 {
 213                     .text:	section	.text,new
 214  0000               f_EXTI_PORTA_IRQHandler:
 218                     ; 135 }
 221  0000 80            	iret
 244                     ; 142 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 244                     ; 143 {
 245                     .text:	section	.text,new
 246  0000               f_EXTI_PORTB_IRQHandler:
 250                     ; 148 }
 253  0000 80            	iret
 276                     ; 155 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 276                     ; 156 {
 277                     .text:	section	.text,new
 278  0000               f_EXTI_PORTC_IRQHandler:
 282                     ; 160 }
 285  0000 80            	iret
 309                     ; 167 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 309                     ; 168 {
 310                     .text:	section	.text,new
 311  0000               f_EXTI_PORTD_IRQHandler:
 313  0000 8a            	push	cc
 314  0001 84            	pop	a
 315  0002 a4bf          	and	a,#191
 316  0004 88            	push	a
 317  0005 86            	pop	cc
 318  0006 3b0002        	push	c_x+2
 319  0009 be00          	ldw	x,c_x
 320  000b 89            	pushw	x
 321  000c 3b0002        	push	c_y+2
 322  000f be00          	ldw	x,c_y
 323  0011 89            	pushw	x
 326                     ; 170   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_4))
 328  0012 ae0010        	ldw	x,#16
 329  0015 89            	pushw	x
 330  0016 ae500f        	ldw	x,#20495
 331  0019 cd0000        	call	_GPIO_ReadInputPin
 333  001c 5b02          	addw	sp,#2
 334  001e a30000        	cpw	x,#0
 335                     ; 174   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_5))
 337  0021 ae0020        	ldw	x,#32
 338  0024 89            	pushw	x
 339  0025 ae500f        	ldw	x,#20495
 340  0028 cd0000        	call	_GPIO_ReadInputPin
 342  002b 5b02          	addw	sp,#2
 343  002d a30000        	cpw	x,#0
 344                     ; 177 }
 347  0030 85            	popw	x
 348  0031 bf00          	ldw	c_y,x
 349  0033 320002        	pop	c_y+2
 350  0036 85            	popw	x
 351  0037 bf00          	ldw	c_x,x
 352  0039 320002        	pop	c_x+2
 353  003c 80            	iret
 376                     ; 184 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 376                     ; 185 {
 377                     .text:	section	.text,new
 378  0000               f_EXTI_PORTE_IRQHandler:
 382                     ; 189 }
 385  0000 80            	iret
 407                     ; 235 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 407                     ; 236 {
 408                     .text:	section	.text,new
 409  0000               f_SPI_IRQHandler:
 413                     ; 240 }
 416  0000 80            	iret
 439                     ; 247 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 439                     ; 248 {
 440                     .text:	section	.text,new
 441  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 445                     ; 252 }
 448  0000 80            	iret
 471                     ; 259 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 471                     ; 260 {
 472                     .text:	section	.text,new
 473  0000               f_TIM1_CAP_COM_IRQHandler:
 477                     ; 264 }
 480  0000 80            	iret
 508                     ; 296  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 508                     ; 297 {
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
 525                     ; 304 	if( (S1_enable) || (S2_enable) )
 527  0012 725d0000      	tnz	_S1_enable
 528  0016 2606          	jrne	L771
 530  0018 725d0000      	tnz	_S2_enable
 531  001c 2719          	jreq	L571
 532  001e               L771:
 533                     ; 306 			soundStone(SndDip);
 535  001e c60000        	ld	a,_SndDip
 536  0021 cd0000        	call	_soundStone
 539  0024               L102:
 540                     ; 314 	TIM2_ClearITPendingBit(TIM2_FLAG_UPDATE);
 542  0024 ae0001        	ldw	x,#1
 543  0027 cd0000        	call	_TIM2_ClearITPendingBit
 545                     ; 315 }
 548  002a 85            	popw	x
 549  002b bf00          	ldw	c_y,x
 550  002d 320002        	pop	c_y+2
 551  0030 85            	popw	x
 552  0031 bf00          	ldw	c_x,x
 553  0033 320002        	pop	c_x+2
 554  0036 80            	iret
 555  0037               L571:
 556                     ; 310 			soundStone(50);
 558  0037 a632          	ld	a,#50
 559  0039 cd0000        	call	_soundStone
 561  003c 20e6          	jra	L102
 584                     ; 322  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 584                     ; 323 {
 585                     .text:	section	.text,new
 586  0000               f_TIM2_CAP_COM_IRQHandler:
 590                     ; 327 }
 593  0000 80            	iret
 616                     ; 364  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 616                     ; 365 {
 617                     .text:	section	.text,new
 618  0000               f_UART1_TX_IRQHandler:
 622                     ; 369 }
 625  0000 80            	iret
 648                     ; 376  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 648                     ; 377 {
 649                     .text:	section	.text,new
 650  0000               f_UART1_RX_IRQHandler:
 654                     ; 381 }
 657  0000 80            	iret
 679                     ; 389 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 679                     ; 390 {
 680                     .text:	section	.text,new
 681  0000               f_I2C_IRQHandler:
 685                     ; 394 }
 688  0000 80            	iret
 715                     ; 469  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 715                     ; 470 {
 716                     .text:	section	.text,new
 717  0000               f_ADC1_IRQHandler:
 719  0000 8a            	push	cc
 720  0001 84            	pop	a
 721  0002 a4bf          	and	a,#191
 722  0004 88            	push	a
 723  0005 86            	pop	cc
 724  0006 3b0002        	push	c_x+2
 725  0009 be00          	ldw	x,c_x
 726  000b 89            	pushw	x
 727  000c 3b0002        	push	c_y+2
 728  000f be00          	ldw	x,c_y
 729  0011 89            	pushw	x
 732                     ; 475 		if (ADC1_GetFlagStatus(ADC1_FLAG_EOC))
 734  0012 ae0080        	ldw	x,#128
 735  0015 cd0000        	call	_ADC1_GetFlagStatus
 737  0018 a30000        	cpw	x,#0
 738  001b 270c          	jreq	L352
 739                     ; 477 			RAW_Data = ADC1_GetConversionValue();
 741  001d cd0000        	call	_ADC1_GetConversionValue
 743  0020 cf0000        	ldw	_RAW_Data,x
 744                     ; 478 			ADC1_ClearFlag(ADC1_FLAG_EOC);
 746  0023 ae0080        	ldw	x,#128
 747  0026 cd0000        	call	_ADC1_ClearFlag
 749  0029               L352:
 750                     ; 480 		if (ADC1_GetFlagStatus(ADC1_FLAG_OVR))
 752  0029 ae0041        	ldw	x,#65
 753  002c cd0000        	call	_ADC1_GetFlagStatus
 755  002f a30000        	cpw	x,#0
 756  0032 2706          	jreq	L552
 757                     ; 482 			ADC1_ClearFlag(ADC1_FLAG_OVR);
 759  0034 ae0041        	ldw	x,#65
 760  0037 cd0000        	call	_ADC1_ClearFlag
 762  003a               L552:
 763                     ; 484 		ADC1_ClearITPendingBit(ADC1_IT_EOC);
 765  003a ae0080        	ldw	x,#128
 766  003d cd0000        	call	_ADC1_ClearITPendingBit
 768                     ; 485     return;
 771  0040 85            	popw	x
 772  0041 bf00          	ldw	c_y,x
 773  0043 320002        	pop	c_y+2
 774  0046 85            	popw	x
 775  0047 bf00          	ldw	c_x,x
 776  0049 320002        	pop	c_x+2
 777  004c 80            	iret
 808                     ; 507  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 808                     ; 508 {
 809                     .text:	section	.text,new
 810  0000               f_TIM4_UPD_OVF_IRQHandler:
 812  0000 8a            	push	cc
 813  0001 84            	pop	a
 814  0002 a4bf          	and	a,#191
 815  0004 88            	push	a
 816  0005 86            	pop	cc
 817  0006 3b0002        	push	c_x+2
 818  0009 be00          	ldw	x,c_x
 819  000b 89            	pushw	x
 820  000c 3b0002        	push	c_y+2
 821  000f be00          	ldw	x,c_y
 822  0011 89            	pushw	x
 825                     ; 512   timeout1msISR = 1;
 827  0012 ae0001        	ldw	x,#1
 828  0015 cf0000        	ldw	_timeout1msISR,x
 829                     ; 513 	counter10ms++;
 831  0018 725c0000      	inc	_counter10ms
 832                     ; 515 	if (counter10ms >= 9)
 834  001c c60000        	ld	a,_counter10ms
 835  001f a109          	cp	a,#9
 836  0021 250e          	jrult	L762
 837                     ; 517 		counter50ms++;
 839  0023 725c0002      	inc	_counter50ms
 840                     ; 518 		timeout10msISR = 1;
 842  0027 ae0001        	ldw	x,#1
 843  002a cf0000        	ldw	_timeout10msISR,x
 844                     ; 519 		counter10ms = 0;
 846  002d 725f0000      	clr	_counter10ms
 847  0031               L762:
 848                     ; 521 	if (counter50ms >= 4)
 850  0031 c60002        	ld	a,_counter50ms
 851  0034 a104          	cp	a,#4
 852  0036 250e          	jrult	L172
 853                     ; 523 		counter50ms=0;
 855  0038 725f0002      	clr	_counter50ms
 856                     ; 524 		timeout50msISR = 1;
 858  003c ae0001        	ldw	x,#1
 859  003f cf0000        	ldw	_timeout50msISR,x
 860                     ; 525 		counter500ms++;
 862  0042 725c0003      	inc	_counter500ms
 863  0046               L172:
 864                     ; 527 	if (counter500ms >= 9)
 866  0046 c60003        	ld	a,_counter500ms
 867  0049 a109          	cp	a,#9
 868  004b 250a          	jrult	L372
 869                     ; 529 		counter500ms=0;
 871  004d 725f0003      	clr	_counter500ms
 872                     ; 530 		timeout500msISR = 1;
 874  0051 ae0001        	ldw	x,#1
 875  0054 cf0000        	ldw	_timeout500msISR,x
 876  0057               L372:
 877                     ; 533 	TIM4_ClearITPendingBit(TIM4_FLAG_UPDATE);
 879  0057 ae0001        	ldw	x,#1
 880  005a cd0000        	call	_TIM4_ClearITPendingBit
 882                     ; 534 }
 885  005d 85            	popw	x
 886  005e bf00          	ldw	c_y,x
 887  0060 320002        	pop	c_y+2
 888  0063 85            	popw	x
 889  0064 bf00          	ldw	c_x,x
 890  0066 320002        	pop	c_x+2
 891  0069 80            	iret
 914                     ; 542 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 914                     ; 543 {
 915                     .text:	section	.text,new
 916  0000               f_EEPROM_EEC_IRQHandler:
 920                     ; 547 }
 923  0000 80            	iret
 979                     	xdef	_counter500ms
 980                     	xdef	_counter50ms
 981                     	switch	.bss
 982  0000               _BSnd:
 983  0000 00            	ds.b	1
 984                     	xdef	_BSnd
 985  0001               _ASnd:
 986  0001 00            	ds.b	1
 987                     	xdef	_ASnd
 988                     	xdef	_count
 989                     	xdef	_SndDipOld
 990                     	xref	_soundStone
 991                     	xref	_counter10ms
 992                     	xref	_timeout500msISR
 993                     	xref	_timeout50msISR
 994                     	xref	_timeout10msISR
 995                     	xref	_timeout1msISR
 996                     	xdef	f_EEPROM_EEC_IRQHandler
 997                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 998                     	xdef	f_ADC1_IRQHandler
 999                     	xdef	f_I2C_IRQHandler
1000                     	xdef	f_UART1_RX_IRQHandler
1001                     	xdef	f_UART1_TX_IRQHandler
1002                     	xdef	f_TIM2_CAP_COM_IRQHandler
1003                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1004                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
1005                     	xdef	f_TIM1_CAP_COM_IRQHandler
1006                     	xdef	f_SPI_IRQHandler
1007                     	xdef	f_EXTI_PORTE_IRQHandler
1008                     	xdef	f_EXTI_PORTD_IRQHandler
1009                     	xdef	f_EXTI_PORTC_IRQHandler
1010                     	xdef	f_EXTI_PORTB_IRQHandler
1011                     	xdef	f_EXTI_PORTA_IRQHandler
1012                     	xdef	f_CLK_IRQHandler
1013                     	xdef	f_AWU_IRQHandler
1014                     	xdef	f_TLI_IRQHandler
1015                     	xdef	f_TRAP_IRQHandler
1016                     	xdef	f_NonHandledInterrupt
1017                     	xref	_RAW_Data
1018                     	xref	_SndDip
1019                     	xref	_S2_enable
1020                     	xref	_S1_enable
1021                     	xref	_TIM4_ClearITPendingBit
1022                     	xref	_TIM2_ClearITPendingBit
1023                     	xref	_GPIO_ReadInputPin
1024                     	xref	_ADC1_ClearITPendingBit
1025                     	xref	_ADC1_ClearFlag
1026                     	xref	_ADC1_GetFlagStatus
1027                     	xref	_ADC1_GetConversionValue
1028                     	xref.b	c_x
1029                     	xref.b	c_y
1049                     	end

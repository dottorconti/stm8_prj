   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     	switch	.data
  18  0000               _SndDipOld:
  19  0000 00            	dc.b	0
  20  0001               _count:
  21  0001 00            	dc.b	0
  22  0002               _counter50ms:
  23  0002 00            	dc.b	0
  24  0003               _counter500ms:
  25  0003 00            	dc.b	0
  26                     ; 72 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  26                     ; 73 {
  27                     .text:	section	.text,new
  28  0000               f_NonHandledInterrupt:
  30                     ; 77 }
  31  0000 80            	iret
  32                     ; 85 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  32                     ; 86 {
  33                     .text:	section	.text,new
  34  0000               f_TRAP_IRQHandler:
  36                     ; 90 }
  37  0000 80            	iret
  38                     ; 96 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  38                     ; 97 {
  39                     .text:	section	.text,new
  40  0000               f_TLI_IRQHandler:
  42                     ; 99 }
  43  0000 80            	iret
  44                     ; 106 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
  44                     ; 107 {
  45                     .text:	section	.text,new
  46  0000               f_AWU_IRQHandler:
  48                     ; 111 }
  49  0000 80            	iret
  50                     ; 118 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
  50                     ; 119 {
  51                     .text:	section	.text,new
  52  0000               f_CLK_IRQHandler:
  54                     ; 123 }
  55  0000 80            	iret
  56                     ; 130 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
  56                     ; 131 {
  57                     .text:	section	.text,new
  58  0000               f_EXTI_PORTA_IRQHandler:
  60                     ; 135 }
  61  0000 80            	iret
  62                     ; 142 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
  62                     ; 143 {
  63                     .text:	section	.text,new
  64  0000               f_EXTI_PORTB_IRQHandler:
  66                     ; 148 }
  67  0000 80            	iret
  68                     ; 155 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
  68                     ; 156 {
  69                     .text:	section	.text,new
  70  0000               f_EXTI_PORTC_IRQHandler:
  72                     ; 160 }
  73  0000 80            	iret
  74                     ; 167 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
  74                     ; 168 {
  75                     .text:	section	.text,new
  76  0000               f_EXTI_PORTD_IRQHandler:
  77  0000 8a            	push	cc
  78  0001 84            	pop	a
  79  0002 a4bf          	and	a,#191
  80  0004 88            	push	a
  81  0005 86            	pop	cc
  82  0006 3b0002        	push	c_x+2
  83  0009 be00          	ldw	x,c_x
  84  000b 89            	pushw	x
  85  000c 3b0002        	push	c_y+2
  86  000f be00          	ldw	x,c_y
  87  0011 89            	pushw	x
  89                     ; 170   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_4))
  90  0012 ae0010        	ldw	x,#16
  91  0015 89            	pushw	x
  92  0016 ae500f        	ldw	x,#20495
  93  0019 cd0000        	call	_GPIO_ReadInputPin
  95  001c 5b02          	addw	sp,#2
  96  001e a30000        	cpw	x,#0
  97                     ; 174   if (!GPIO_ReadInputPin(GPIOD, GPIO_PIN_5))
  98  0021 ae0020        	ldw	x,#32
  99  0024 89            	pushw	x
 100  0025 ae500f        	ldw	x,#20495
 101  0028 cd0000        	call	_GPIO_ReadInputPin
 103  002b 5b02          	addw	sp,#2
 104  002d a30000        	cpw	x,#0
 105                     ; 177 }
 106  0030 85            	popw	x
 107  0031 bf00          	ldw	c_y,x
 108  0033 320002        	pop	c_y+2
 109  0036 85            	popw	x
 110  0037 bf00          	ldw	c_x,x
 111  0039 320002        	pop	c_x+2
 112  003c 80            	iret
 113                     ; 184 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 113                     ; 185 {
 114                     .text:	section	.text,new
 115  0000               f_EXTI_PORTE_IRQHandler:
 117                     ; 189 }
 118  0000 80            	iret
 119                     ; 235 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 119                     ; 236 {
 120                     .text:	section	.text,new
 121  0000               f_SPI_IRQHandler:
 123                     ; 240 }
 124  0000 80            	iret
 125                     ; 247 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 125                     ; 248 {
 126                     .text:	section	.text,new
 127  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 129                     ; 252 }
 130  0000 80            	iret
 131                     ; 259 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 131                     ; 260 {
 132                     .text:	section	.text,new
 133  0000               f_TIM1_CAP_COM_IRQHandler:
 135                     ; 264 }
 136  0000 80            	iret
 137                     ; 296  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 137                     ; 297 {
 138                     .text:	section	.text,new
 139  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 140  0000 8a            	push	cc
 141  0001 84            	pop	a
 142  0002 a4bf          	and	a,#191
 143  0004 88            	push	a
 144  0005 86            	pop	cc
 145  0006 3b0002        	push	c_x+2
 146  0009 be00          	ldw	x,c_x
 147  000b 89            	pushw	x
 148  000c 3b0002        	push	c_y+2
 149  000f be00          	ldw	x,c_y
 150  0011 89            	pushw	x
 152                     ; 304 	if( (S1_enable) || (S2_enable) )
 153  0012 725d0000      	tnz	_S1_enable
 154  0016 2606          	jrne	L11
 156  0018 725d0000      	tnz	_S2_enable
 157  001c 2719          	jreq	L7
 158  001e               L11:
 159                     ; 306 			soundStone(SndDip);
 160  001e c60000        	ld	a,_SndDip
 161  0021 cd0000        	call	_soundStone
 164  0024               L31:
 165                     ; 314 	TIM2_ClearITPendingBit(TIM2_FLAG_UPDATE);
 166  0024 ae0001        	ldw	x,#1
 167  0027 cd0000        	call	_TIM2_ClearITPendingBit
 169                     ; 315 }
 170  002a 85            	popw	x
 171  002b bf00          	ldw	c_y,x
 172  002d 320002        	pop	c_y+2
 173  0030 85            	popw	x
 174  0031 bf00          	ldw	c_x,x
 175  0033 320002        	pop	c_x+2
 176  0036 80            	iret
 177  0037               L7:
 178                     ; 310 			soundStone(10);
 179  0037 a60a          	ld	a,#10
 180  0039 cd0000        	call	_soundStone
 182  003c 20e6          	jra	L31
 183                     ; 322  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 183                     ; 323 {
 184                     .text:	section	.text,new
 185  0000               f_TIM2_CAP_COM_IRQHandler:
 187                     ; 327 }
 188  0000 80            	iret
 189                     ; 364  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 189                     ; 365 {
 190                     .text:	section	.text,new
 191  0000               f_UART1_TX_IRQHandler:
 193                     ; 369 }
 194  0000 80            	iret
 195                     ; 376  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 195                     ; 377 {
 196                     .text:	section	.text,new
 197  0000               f_UART1_RX_IRQHandler:
 199                     ; 381 }
 200  0000 80            	iret
 201                     ; 389 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 201                     ; 390 {
 202                     .text:	section	.text,new
 203  0000               f_I2C_IRQHandler:
 205                     ; 394 }
 206  0000 80            	iret
 207                     ; 469  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 207                     ; 470 {
 208                     .text:	section	.text,new
 209  0000               f_ADC1_IRQHandler:
 210  0000 8a            	push	cc
 211  0001 84            	pop	a
 212  0002 a4bf          	and	a,#191
 213  0004 88            	push	a
 214  0005 86            	pop	cc
 215  0006 3b0002        	push	c_x+2
 216  0009 be00          	ldw	x,c_x
 217  000b 89            	pushw	x
 218  000c 3b0002        	push	c_y+2
 219  000f be00          	ldw	x,c_y
 220  0011 89            	pushw	x
 222                     ; 475 		if (ADC1_GetFlagStatus(ADC1_FLAG_EOC))
 223  0012 ae0080        	ldw	x,#128
 224  0015 cd0000        	call	_ADC1_GetFlagStatus
 226  0018 a30000        	cpw	x,#0
 227  001b 270c          	jreq	L51
 228                     ; 477 			RAW_Data = ADC1_GetConversionValue();
 229  001d cd0000        	call	_ADC1_GetConversionValue
 231  0020 cf0000        	ldw	_RAW_Data,x
 232                     ; 478 			ADC1_ClearFlag(ADC1_FLAG_EOC);
 233  0023 ae0080        	ldw	x,#128
 234  0026 cd0000        	call	_ADC1_ClearFlag
 236  0029               L51:
 237                     ; 480 		if (ADC1_GetFlagStatus(ADC1_FLAG_OVR))
 238  0029 ae0041        	ldw	x,#65
 239  002c cd0000        	call	_ADC1_GetFlagStatus
 241  002f a30000        	cpw	x,#0
 242  0032 2706          	jreq	L71
 243                     ; 482 			ADC1_ClearFlag(ADC1_FLAG_OVR);
 244  0034 ae0041        	ldw	x,#65
 245  0037 cd0000        	call	_ADC1_ClearFlag
 247  003a               L71:
 248                     ; 484 		ADC1_ClearITPendingBit(ADC1_IT_EOC);
 249  003a ae0080        	ldw	x,#128
 250  003d cd0000        	call	_ADC1_ClearITPendingBit
 252                     ; 485     return;
 253  0040 85            	popw	x
 254  0041 bf00          	ldw	c_y,x
 255  0043 320002        	pop	c_y+2
 256  0046 85            	popw	x
 257  0047 bf00          	ldw	c_x,x
 258  0049 320002        	pop	c_x+2
 259  004c 80            	iret
 260                     ; 507  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 260                     ; 508 {
 261                     .text:	section	.text,new
 262  0000               f_TIM4_UPD_OVF_IRQHandler:
 263  0000 8a            	push	cc
 264  0001 84            	pop	a
 265  0002 a4bf          	and	a,#191
 266  0004 88            	push	a
 267  0005 86            	pop	cc
 268  0006 3b0002        	push	c_x+2
 269  0009 be00          	ldw	x,c_x
 270  000b 89            	pushw	x
 271  000c 3b0002        	push	c_y+2
 272  000f be00          	ldw	x,c_y
 273  0011 89            	pushw	x
 275                     ; 512   timeout1msISR = 1;
 276  0012 ae0001        	ldw	x,#1
 277  0015 cf0000        	ldw	_timeout1msISR,x
 278                     ; 513 	counter10ms++;
 279  0018 725c0000      	inc	_counter10ms
 280                     ; 515 	if (counter10ms >= 9)
 281  001c c60000        	ld	a,_counter10ms
 282  001f a109          	cp	a,#9
 283  0021 250e          	jrult	L12
 284                     ; 517 		counter50ms++;
 285  0023 725c0002      	inc	_counter50ms
 286                     ; 518 		timeout10msISR = 1;
 287  0027 ae0001        	ldw	x,#1
 288  002a cf0000        	ldw	_timeout10msISR,x
 289                     ; 519 		counter10ms = 0;
 290  002d 725f0000      	clr	_counter10ms
 291  0031               L12:
 292                     ; 521 	if (counter50ms >= 4)
 293  0031 c60002        	ld	a,_counter50ms
 294  0034 a104          	cp	a,#4
 295  0036 250e          	jrult	L32
 296                     ; 523 		counter50ms=0;
 297  0038 725f0002      	clr	_counter50ms
 298                     ; 524 		timeout50msISR = 1;
 299  003c ae0001        	ldw	x,#1
 300  003f cf0000        	ldw	_timeout50msISR,x
 301                     ; 525 		counter500ms++;
 302  0042 725c0003      	inc	_counter500ms
 303  0046               L32:
 304                     ; 527 	if (counter500ms >= 9)
 305  0046 c60003        	ld	a,_counter500ms
 306  0049 a109          	cp	a,#9
 307  004b 250a          	jrult	L52
 308                     ; 529 		counter500ms=0;
 309  004d 725f0003      	clr	_counter500ms
 310                     ; 530 		timeout500msISR = 1;
 311  0051 ae0001        	ldw	x,#1
 312  0054 cf0000        	ldw	_timeout500msISR,x
 313  0057               L52:
 314                     ; 533 	TIM4_ClearITPendingBit(TIM4_FLAG_UPDATE);
 315  0057 ae0001        	ldw	x,#1
 316  005a cd0000        	call	_TIM4_ClearITPendingBit
 318                     ; 534 }
 319  005d 85            	popw	x
 320  005e bf00          	ldw	c_y,x
 321  0060 320002        	pop	c_y+2
 322  0063 85            	popw	x
 323  0064 bf00          	ldw	c_x,x
 324  0066 320002        	pop	c_x+2
 325  0069 80            	iret
 326                     ; 542 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 326                     ; 543 {
 327                     .text:	section	.text,new
 328  0000               f_EEPROM_EEC_IRQHandler:
 330                     ; 547 }
 331  0000 80            	iret
 332                     	xdef	_counter500ms
 333                     	xdef	_counter50ms
 334                     	switch	.bss
 335  0000               _BSnd:
 336  0000 00            	ds.b	1
 337                     	xdef	_BSnd
 338  0001               _ASnd:
 339  0001 00            	ds.b	1
 340                     	xdef	_ASnd
 341                     	xdef	_count
 342                     	xdef	_SndDipOld
 343                     	xref	_soundStone
 344                     	xref	_counter10ms
 345                     	xref	_timeout500msISR
 346                     	xref	_timeout50msISR
 347                     	xref	_timeout10msISR
 348                     	xref	_timeout1msISR
 349                     	xdef	f_EEPROM_EEC_IRQHandler
 350                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 351                     	xdef	f_ADC1_IRQHandler
 352                     	xdef	f_I2C_IRQHandler
 353                     	xdef	f_UART1_RX_IRQHandler
 354                     	xdef	f_UART1_TX_IRQHandler
 355                     	xdef	f_TIM2_CAP_COM_IRQHandler
 356                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 357                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 358                     	xdef	f_TIM1_CAP_COM_IRQHandler
 359                     	xdef	f_SPI_IRQHandler
 360                     	xdef	f_EXTI_PORTE_IRQHandler
 361                     	xdef	f_EXTI_PORTD_IRQHandler
 362                     	xdef	f_EXTI_PORTC_IRQHandler
 363                     	xdef	f_EXTI_PORTB_IRQHandler
 364                     	xdef	f_EXTI_PORTA_IRQHandler
 365                     	xdef	f_CLK_IRQHandler
 366                     	xdef	f_AWU_IRQHandler
 367                     	xdef	f_TLI_IRQHandler
 368                     	xdef	f_TRAP_IRQHandler
 369                     	xdef	f_NonHandledInterrupt
 370                     	xref	_RAW_Data
 371                     	xref	_SndDip
 372                     	xref	_S2_enable
 373                     	xref	_S1_enable
 374                     	xref	_TIM4_ClearITPendingBit
 375                     	xref	_TIM2_ClearITPendingBit
 376                     	xref	_GPIO_ReadInputPin
 377                     	xref	_ADC1_ClearITPendingBit
 378                     	xref	_ADC1_ClearFlag
 379                     	xref	_ADC1_GetFlagStatus
 380                     	xref	_ADC1_GetConversionValue
 381                     	xref.b	c_x
 382                     	xref.b	c_y
 383                     	end

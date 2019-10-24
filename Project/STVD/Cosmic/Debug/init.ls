   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  56                     ; 17 void clock_setup(void) 
  56                     ; 18 {
  58                     .text:	section	.text,new
  59  0000               _clock_setup:
  63                     ; 19 	CLK_DeInit();
  65  0000 cd0000        	call	_CLK_DeInit
  67                     ; 20 	CLK_HSECmd(DISABLE);
  69  0003 5f            	clrw	x
  70  0004 cd0000        	call	_CLK_HSECmd
  72                     ; 21 	CLK_LSICmd(DISABLE);
  74  0007 5f            	clrw	x
  75  0008 cd0000        	call	_CLK_LSICmd
  77                     ; 22 	CLK_HSICmd(ENABLE);
  79  000b ae0001        	ldw	x,#1
  80  000e cd0000        	call	_CLK_HSICmd
  83  0011               L32:
  84                     ; 23 	while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
  86  0011 ae0102        	ldw	x,#258
  87  0014 cd0000        	call	_CLK_GetFlagStatus
  89  0017 a30000        	cpw	x,#0
  90  001a 27f5          	jreq	L32
  91                     ; 24 	CLK_ClockSwitchCmd(ENABLE);
  93  001c ae0001        	ldw	x,#1
  94  001f cd0000        	call	_CLK_ClockSwitchCmd
  96                     ; 25 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  98  0022 5f            	clrw	x
  99  0023 cd0000        	call	_CLK_HSIPrescalerConfig
 101                     ; 26 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 103  0026 ae0080        	ldw	x,#128
 104  0029 cd0000        	call	_CLK_SYSCLKConfig
 106                     ; 27 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
 106                     ; 28 	DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
 108  002c ae0001        	ldw	x,#1
 109  002f 89            	pushw	x
 110  0030 5f            	clrw	x
 111  0031 89            	pushw	x
 112  0032 ae00e1        	ldw	x,#225
 113  0035 89            	pushw	x
 114  0036 ae0001        	ldw	x,#1
 115  0039 cd0000        	call	_CLK_ClockSwitchConfig
 117  003c 5b06          	addw	sp,#6
 118                     ; 29 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
 120  003e 5f            	clrw	x
 121  003f 89            	pushw	x
 122  0040 ae0001        	ldw	x,#1
 123  0043 cd0000        	call	_CLK_PeripheralClockConfig
 125  0046 85            	popw	x
 126                     ; 30 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
 128  0047 5f            	clrw	x
 129  0048 89            	pushw	x
 130  0049 5f            	clrw	x
 131  004a cd0000        	call	_CLK_PeripheralClockConfig
 133  004d 85            	popw	x
 134                     ; 31 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, ENABLE);
 136  004e ae0001        	ldw	x,#1
 137  0051 89            	pushw	x
 138  0052 ae0013        	ldw	x,#19
 139  0055 cd0000        	call	_CLK_PeripheralClockConfig
 141  0058 85            	popw	x
 142                     ; 32 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
 144  0059 5f            	clrw	x
 145  005a 89            	pushw	x
 146  005b ae0012        	ldw	x,#18
 147  005e cd0000        	call	_CLK_PeripheralClockConfig
 149  0061 85            	popw	x
 150                     ; 33 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
 152  0062 5f            	clrw	x
 153  0063 89            	pushw	x
 154  0064 ae0003        	ldw	x,#3
 155  0067 cd0000        	call	_CLK_PeripheralClockConfig
 157  006a 85            	popw	x
 158                     ; 34 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
 160  006b ae0001        	ldw	x,#1
 161  006e 89            	pushw	x
 162  006f ae0007        	ldw	x,#7
 163  0072 cd0000        	call	_CLK_PeripheralClockConfig
 165  0075 85            	popw	x
 166                     ; 35 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
 168  0076 ae0001        	ldw	x,#1
 169  0079 89            	pushw	x
 170  007a ae0005        	ldw	x,#5
 171  007d cd0000        	call	_CLK_PeripheralClockConfig
 173  0080 85            	popw	x
 174                     ; 36 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
 176  0081 ae0001        	ldw	x,#1
 177  0084 89            	pushw	x
 178  0085 ae0004        	ldw	x,#4
 179  0088 cd0000        	call	_CLK_PeripheralClockConfig
 181  008b 85            	popw	x
 182                     ; 37 }
 185  008c 81            	ret
 210                     ; 39 void GPIO_setup(void) 
 210                     ; 40 {
 211                     .text:	section	.text,new
 212  0000               _GPIO_setup:
 216                     ; 41 	GPIO_DeInit(GPIOA);
 218  0000 ae5000        	ldw	x,#20480
 219  0003 cd0000        	call	_GPIO_DeInit
 221                     ; 42 	GPIO_DeInit(GPIOB);
 223  0006 ae5005        	ldw	x,#20485
 224  0009 cd0000        	call	_GPIO_DeInit
 226                     ; 43 	GPIO_DeInit(GPIOC);
 228  000c ae500a        	ldw	x,#20490
 229  000f cd0000        	call	_GPIO_DeInit
 231                     ; 44 	GPIO_DeInit(GPIOD);
 233  0012 ae500f        	ldw	x,#20495
 234  0015 cd0000        	call	_GPIO_DeInit
 236                     ; 57 	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT); 	// not used 
 238  0018 5f            	clrw	x
 239  0019 89            	pushw	x
 240  001a ae0002        	ldw	x,#2
 241  001d 89            	pushw	x
 242  001e ae5000        	ldw	x,#20480
 243  0021 cd0000        	call	_GPIO_Init
 245  0024 5b04          	addw	sp,#4
 246                     ; 58 	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT); 			// not used
 248  0026 5f            	clrw	x
 249  0027 89            	pushw	x
 250  0028 ae0004        	ldw	x,#4
 251  002b 89            	pushw	x
 252  002c ae5000        	ldw	x,#20480
 253  002f cd0000        	call	_GPIO_Init
 255  0032 5b04          	addw	sp,#4
 256                     ; 59 	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);	// not used
 258  0034 5f            	clrw	x
 259  0035 89            	pushw	x
 260  0036 ae0008        	ldw	x,#8
 261  0039 89            	pushw	x
 262  003a ae5000        	ldw	x,#20480
 263  003d cd0000        	call	_GPIO_Init
 265  0040 5b04          	addw	sp,#4
 266                     ; 61 	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);				// in_a
 268  0042 5f            	clrw	x
 269  0043 89            	pushw	x
 270  0044 ae0010        	ldw	x,#16
 271  0047 89            	pushw	x
 272  0048 ae5005        	ldw	x,#20485
 273  004b cd0000        	call	_GPIO_Init
 275  004e 5b04          	addw	sp,#4
 276                     ; 62 	GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);				// in_b
 278  0050 5f            	clrw	x
 279  0051 89            	pushw	x
 280  0052 ae0020        	ldw	x,#32
 281  0055 89            	pushw	x
 282  0056 ae5005        	ldw	x,#20485
 283  0059 cd0000        	call	_GPIO_Init
 285  005c 5b04          	addw	sp,#4
 286                     ; 64 	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);				// in_flash
 288  005e 5f            	clrw	x
 289  005f 89            	pushw	x
 290  0060 ae0008        	ldw	x,#8
 291  0063 89            	pushw	x
 292  0064 ae500a        	ldw	x,#20490
 293  0067 cd0000        	call	_GPIO_Init
 295  006a 5b04          	addw	sp,#4
 296                     ; 65 	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);			// not used
 298  006c 5f            	clrw	x
 299  006d 89            	pushw	x
 300  006e ae0010        	ldw	x,#16
 301  0071 89            	pushw	x
 302  0072 ae500a        	ldw	x,#20490
 303  0075 cd0000        	call	_GPIO_Init
 305  0078 5b04          	addw	sp,#4
 306                     ; 66 	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);		// sw2_3
 308  007a 5f            	clrw	x
 309  007b 89            	pushw	x
 310  007c ae0020        	ldw	x,#32
 311  007f 89            	pushw	x
 312  0080 ae500a        	ldw	x,#20490
 313  0083 cd0000        	call	_GPIO_Init
 315  0086 5b04          	addw	sp,#4
 316                     ; 67 	GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);		// sw2_2
 318  0088 5f            	clrw	x
 319  0089 89            	pushw	x
 320  008a ae0040        	ldw	x,#64
 321  008d 89            	pushw	x
 322  008e ae500a        	ldw	x,#20490
 323  0091 cd0000        	call	_GPIO_Init
 325  0094 5b04          	addw	sp,#4
 326                     ; 68 	GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_FL_NO_IT);				// sw2_1
 328  0096 5f            	clrw	x
 329  0097 89            	pushw	x
 330  0098 ae0080        	ldw	x,#128
 331  009b 89            	pushw	x
 332  009c ae500a        	ldw	x,#20490
 333  009f cd0000        	call	_GPIO_Init
 335  00a2 5b04          	addw	sp,#4
 336                     ; 69 	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);// pwm sound out (TIM1_CH4)
 338  00a4 ae00c0        	ldw	x,#192
 339  00a7 89            	pushw	x
 340  00a8 ae0010        	ldw	x,#16
 341  00ab 89            	pushw	x
 342  00ac ae500a        	ldw	x,#20490
 343  00af cd0000        	call	_GPIO_Init
 345  00b2 5b04          	addw	sp,#4
 346                     ; 71 	GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);		// not used
 348  00b4 5f            	clrw	x
 349  00b5 89            	pushw	x
 350  00b6 ae0002        	ldw	x,#2
 351  00b9 89            	pushw	x
 352  00ba ae500f        	ldw	x,#20495
 353  00bd cd0000        	call	_GPIO_Init
 355  00c0 5b04          	addw	sp,#4
 356                     ; 72 	GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT);		// not used
 358  00c2 5f            	clrw	x
 359  00c3 89            	pushw	x
 360  00c4 ae0004        	ldw	x,#4
 361  00c7 89            	pushw	x
 362  00c8 ae500f        	ldw	x,#20495
 363  00cb cd0000        	call	_GPIO_Init
 365  00ce 5b04          	addw	sp,#4
 366                     ; 73 	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);    // out flash
 368  00d0 5f            	clrw	x
 369  00d1 89            	pushw	x
 370  00d2 ae0008        	ldw	x,#8
 371  00d5 89            	pushw	x
 372  00d6 ae500f        	ldw	x,#20495
 373  00d9 cd0000        	call	_GPIO_Init
 375  00dc 5b04          	addw	sp,#4
 376                     ; 74 	GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);  	// sw1_3
 378  00de 5f            	clrw	x
 379  00df 89            	pushw	x
 380  00e0 ae0010        	ldw	x,#16
 381  00e3 89            	pushw	x
 382  00e4 ae500f        	ldw	x,#20495
 383  00e7 cd0000        	call	_GPIO_Init
 385  00ea 5b04          	addw	sp,#4
 386                     ; 75 	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT); 		// sw1_2
 388  00ec 5f            	clrw	x
 389  00ed 89            	pushw	x
 390  00ee ae0020        	ldw	x,#32
 391  00f1 89            	pushw	x
 392  00f2 ae500f        	ldw	x,#20495
 393  00f5 cd0000        	call	_GPIO_Init
 395  00f8 5b04          	addw	sp,#4
 396                     ; 76 	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);		// sw1_1
 398  00fa 5f            	clrw	x
 399  00fb 89            	pushw	x
 400  00fc ae0040        	ldw	x,#64
 401  00ff 89            	pushw	x
 402  0100 ae500f        	ldw	x,#20495
 403  0103 cd0000        	call	_GPIO_Init
 405  0106 5b04          	addw	sp,#4
 406                     ; 77 }
 409  0108 81            	ret
 440                     ; 79 void TIM1_setup(void)
 440                     ; 80 {
 441                     .text:	section	.text,new
 442  0000               _TIM1_setup:
 446                     ; 81 	TIM1_DeInit();
 448  0000 cd0000        	call	_TIM1_DeInit
 450                     ; 82 	TIM1_TimeBaseInit(TIM1_ICPSC_DIV2,TIM1_COUNTERMODE_UP,8000,0);
 452  0003 4b00          	push	#0
 453  0005 ae1f40        	ldw	x,#8000
 454  0008 89            	pushw	x
 455  0009 5f            	clrw	x
 456  000a 89            	pushw	x
 457  000b ae0004        	ldw	x,#4
 458  000e cd0000        	call	_TIM1_TimeBaseInit
 460  0011 5b05          	addw	sp,#5
 461                     ; 96 	TIM1_SelectOCxM(TIM1_CHANNEL_4, TIM1_OCMODE_PWM2); // OUT2
 463  0013 ae0070        	ldw	x,#112
 464  0016 89            	pushw	x
 465  0017 ae0003        	ldw	x,#3
 466  001a cd0000        	call	_TIM1_SelectOCxM
 468  001d 85            	popw	x
 469                     ; 97 	TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE,0, TIM1_OCPOLARITY_LOW, TIM1_OCIDLESTATE_SET);
 471  001e ae0055        	ldw	x,#85
 472  0021 89            	pushw	x
 473  0022 ae0022        	ldw	x,#34
 474  0025 89            	pushw	x
 475  0026 5f            	clrw	x
 476  0027 89            	pushw	x
 477  0028 ae0011        	ldw	x,#17
 478  002b 89            	pushw	x
 479  002c ae0070        	ldw	x,#112
 480  002f cd0000        	call	_TIM1_OC4Init
 482  0032 5b08          	addw	sp,#8
 483                     ; 98 	TIM1_OC4PreloadConfig(ENABLE);
 485  0034 ae0001        	ldw	x,#1
 486  0037 cd0000        	call	_TIM1_OC4PreloadConfig
 488                     ; 101 	TIM1_ARRPreloadConfig(ENABLE);
 490  003a ae0001        	ldw	x,#1
 491  003d cd0000        	call	_TIM1_ARRPreloadConfig
 493                     ; 102 	TIM1_Cmd(ENABLE);
 495  0040 ae0001        	ldw	x,#1
 496  0043 cd0000        	call	_TIM1_Cmd
 498                     ; 103 	TIM1_CtrlPWMOutputs(ENABLE);
 500  0046 ae0001        	ldw	x,#1
 501  0049 cd0000        	call	_TIM1_CtrlPWMOutputs
 503                     ; 104 }
 506  004c 81            	ret
 534                     ; 106 void TIM2_setup(void)
 534                     ; 107 {
 535                     .text:	section	.text,new
 536  0000               _TIM2_setup:
 540                     ; 108 	TIM2_DeInit();
 542  0000 cd0000        	call	_TIM2_DeInit
 544                     ; 109 	TIM2_SetCounter(0x00);
 546  0003 5f            	clrw	x
 547  0004 cd0000        	call	_TIM2_SetCounter
 549                     ; 110 	TIM2_TimeBaseInit(TIM2_PRESCALER_256, 625);	// 10ms
 551  0007 ae0271        	ldw	x,#625
 552  000a 89            	pushw	x
 553  000b ae0008        	ldw	x,#8
 554  000e cd0000        	call	_TIM2_TimeBaseInit
 556  0011 85            	popw	x
 557                     ; 111 	TIM2_ITConfig(TIM2_IT_UPDATE,ENABLE);
 559  0012 ae0001        	ldw	x,#1
 560  0015 89            	pushw	x
 561  0016 ae0001        	ldw	x,#1
 562  0019 cd0000        	call	_TIM2_ITConfig
 564  001c 85            	popw	x
 565                     ; 112 	TIM2_Cmd(ENABLE);
 567  001d ae0001        	ldw	x,#1
 568  0020 cd0000        	call	_TIM2_Cmd
 570                     ; 113 }
 573  0023 81            	ret
 604                     ; 115 void TIM4_setup(void)
 604                     ; 116 {
 605                     .text:	section	.text,new
 606  0000               _TIM4_setup:
 610                     ; 117 	TIM4_DeInit();
 612  0000 cd0000        	call	_TIM4_DeInit
 614                     ; 118 	TIM4_SetCounter(0x00);
 616  0003 4f            	clr	a
 617  0004 cd0000        	call	_TIM4_SetCounter
 619                     ; 119 	TIM4_ClearFlag(TIM4_IT_UPDATE);
 621  0007 ae0001        	ldw	x,#1
 622  000a cd0000        	call	_TIM4_ClearFlag
 624                     ; 120 	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
 626  000d ae0001        	ldw	x,#1
 627  0010 cd0000        	call	_TIM4_ClearITPendingBit
 629                     ; 121 	TIM4_PrescalerConfig(TIM4_PRESCALER_128, TIM4_PSCRELOADMODE_UPDATE);
 631  0013 5f            	clrw	x
 632  0014 89            	pushw	x
 633  0015 ae0007        	ldw	x,#7
 634  0018 cd0000        	call	_TIM4_PrescalerConfig
 636  001b 85            	popw	x
 637                     ; 122 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 639  001c 4b7d          	push	#125
 640  001e ae0007        	ldw	x,#7
 641  0021 cd0000        	call	_TIM4_TimeBaseInit
 643  0024 84            	pop	a
 644                     ; 123 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 646  0025 ae0001        	ldw	x,#1
 647  0028 89            	pushw	x
 648  0029 ae0001        	ldw	x,#1
 649  002c cd0000        	call	_TIM4_ITConfig
 651  002f 85            	popw	x
 652                     ; 124 	TIM4_Cmd(ENABLE);
 654  0030 ae0001        	ldw	x,#1
 655  0033 cd0000        	call	_TIM4_Cmd
 657                     ; 125 }
 660  0036 81            	ret
 684                     ; 127 void init_u_Port(void)
 684                     ; 128 {
 685                     .text:	section	.text,new
 686  0000               _init_u_Port:
 690                     ; 129 	GPIO_WriteLow(GPIOA, GPIO_PIN_3);	
 692  0000 ae0008        	ldw	x,#8
 693  0003 89            	pushw	x
 694  0004 ae5000        	ldw	x,#20480
 695  0007 cd0000        	call	_GPIO_WriteLow
 697  000a 85            	popw	x
 698                     ; 130 }
 701  000b 81            	ret
 738                     ; 132 void setAlternateBit(void)
 738                     ; 133 {
 739                     .text:	section	.text,new
 740  0000               _setAlternateBit:
 742  0000 89            	pushw	x
 743       00000002      OFST:	set	2
 746                     ; 134 		uint16_t stored_data = FLASH_ReadOptionByte(OPTION_BYTE_AFR);
 748  0001 ae4803        	ldw	x,#18435
 749  0004 cd0000        	call	_FLASH_ReadOptionByte
 751  0007 1f01          	ldw	(OFST-1,sp),x
 752                     ; 136 		if( ( FLASH_OPTIONBYTE_ERROR == stored_data ) ||
 752                     ; 137 			( AFR0 != (uint8_t)( stored_data>>8 ) ) )
 754  0009 1e01          	ldw	x,(OFST-1,sp)
 755  000b a35555        	cpw	x,#21845
 756  000e 2706          	jreq	L511
 758  0010 7b01          	ld	a,(OFST-1,sp)
 759  0012 a101          	cp	a,#1
 760  0014 2721          	jreq	L311
 761  0016               L511:
 762                     ; 139 				FLASH_Unlock(FLASH_MEMTYPE_DATA);
 764  0016 ae00f7        	ldw	x,#247
 765  0019 cd0000        	call	_FLASH_Unlock
 767                     ; 140 				FLASH_EraseOptionByte(OPTION_BYTE_AFR);
 769  001c ae4803        	ldw	x,#18435
 770  001f cd0000        	call	_FLASH_EraseOptionByte
 772                     ; 141 				FLASH_ProgramOptionByte(OPTION_BYTE_AFR, AFR0);
 774  0022 4b01          	push	#1
 775  0024 ae4803        	ldw	x,#18435
 776  0027 cd0000        	call	_FLASH_ProgramOptionByte
 778  002a 84            	pop	a
 779                     ; 142 				FLASH_Lock(FLASH_MEMTYPE_DATA);
 781  002b ae00f7        	ldw	x,#247
 782  002e cd0000        	call	_FLASH_Lock
 784                     ; 145 				IWDG->KR = IWDG_KEY_ENABLE;
 786  0031 35cc50e0      	mov	20704,#204
 787  0035               L711:
 788                     ; 146 				while(1);
 790  0035 20fe          	jra	L711
 791  0037               L311:
 792                     ; 148 }
 795  0037 85            	popw	x
 796  0038 81            	ret
 831                     ; 150 void ADC_setup(uint8_t ch_sel)
 831                     ; 151 {
 832                     .text:	section	.text,new
 833  0000               _ADC_setup:
 835  0000 88            	push	a
 836       00000000      OFST:	set	0
 839                     ; 152 	ADC1_DeInit();	
 841  0001 cd0000        	call	_ADC1_DeInit
 843                     ; 154 	ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
 843                     ; 155 						ch_sel,
 843                     ; 156 						ADC1_PRESSEL_FCPU_D4,
 843                     ; 157 						ADC1_EXTTRIG_GPIO,
 843                     ; 158 						DISABLE,
 843                     ; 159 						ADC1_ALIGN_RIGHT,
 843                     ; 160 						ch_sel,
 843                     ; 161 						DISABLE);
 845  0004 5f            	clrw	x
 846  0005 89            	pushw	x
 847  0006 7b03          	ld	a,(OFST+3,sp)
 848  0008 5f            	clrw	x
 849  0009 97            	ld	xl,a
 850  000a 89            	pushw	x
 851  000b ae0008        	ldw	x,#8
 852  000e 89            	pushw	x
 853  000f 5f            	clrw	x
 854  0010 89            	pushw	x
 855  0011 ae0010        	ldw	x,#16
 856  0014 89            	pushw	x
 857  0015 ae0020        	ldw	x,#32
 858  0018 89            	pushw	x
 859  0019 7b0d          	ld	a,(OFST+13,sp)
 860  001b 5f            	clrw	x
 861  001c 97            	ld	xl,a
 862  001d 89            	pushw	x
 863  001e 5f            	clrw	x
 864  001f cd0000        	call	_ADC1_Init
 866  0022 5b0e          	addw	sp,#14
 867                     ; 163 	ADC1_ITConfig(ADC1_IT_EOCIE, ENABLE);
 869  0024 ae0001        	ldw	x,#1
 870  0027 89            	pushw	x
 871  0028 ae0020        	ldw	x,#32
 872  002b cd0000        	call	_ADC1_ITConfig
 874  002e 85            	popw	x
 875                     ; 164 }
 878  002f 84            	pop	a
 879  0030 81            	ret
 908                     ; 166 void Read_Protect_Flash(void)
 908                     ; 167 {
 909                     .text:	section	.text,new
 910  0000               _Read_Protect_Flash:
 914                     ; 168     FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
 916  0000 5f            	clrw	x
 917  0001 cd0000        	call	_FLASH_SetProgrammingTime
 920  0004 201b          	jra	L151
 921  0006               L741:
 922                     ; 171         FLASH_Unlock(FLASH_MEMTYPE_DATA);
 924  0006 ae00f7        	ldw	x,#247
 925  0009 cd0000        	call	_FLASH_Unlock
 927                     ; 173         FLASH_EraseOptionByte(0x4800);
 929  000c ae4800        	ldw	x,#18432
 930  000f cd0000        	call	_FLASH_EraseOptionByte
 932                     ; 174         FLASH_ProgramOptionByte(0x4800, 0xAA);
 934  0012 4baa          	push	#170
 935  0014 ae4800        	ldw	x,#18432
 936  0017 cd0000        	call	_FLASH_ProgramOptionByte
 938  001a 84            	pop	a
 939                     ; 176         FLASH_Lock(FLASH_MEMTYPE_DATA);
 941  001b ae00f7        	ldw	x,#247
 942  001e cd0000        	call	_FLASH_Lock
 944  0021               L151:
 945                     ; 169     while(FLASH_ReadOptionByte(0x4800) != 0xAA)
 947  0021 ae4800        	ldw	x,#18432
 948  0024 cd0000        	call	_FLASH_ReadOptionByte
 950  0027 a300aa        	cpw	x,#170
 951  002a 26da          	jrne	L741
 952                     ; 178 }
 955  002c 81            	ret
 990                     ; 189 void assert_failed(uint8_t* file, uint32_t line)
 990                     ; 190 { 
 991                     .text:	section	.text,new
 992  0000               _assert_failed:
 996  0000               L371:
 997  0000 20fe          	jra	L371
1010                     	xdef	_Read_Protect_Flash
1011                     	xdef	_setAlternateBit
1012                     	xdef	_init_u_Port
1013                     	xdef	_ADC_setup
1014                     	xdef	_GPIO_setup
1015                     	xdef	_clock_setup
1016                     	xdef	_TIM4_setup
1017                     	xdef	_TIM2_setup
1018                     	xdef	_TIM1_setup
1019                     	xdef	_assert_failed
1020                     	xref	_TIM4_ClearITPendingBit
1021                     	xref	_TIM4_ClearFlag
1022                     	xref	_TIM4_SetCounter
1023                     	xref	_TIM4_PrescalerConfig
1024                     	xref	_TIM4_ITConfig
1025                     	xref	_TIM4_Cmd
1026                     	xref	_TIM4_TimeBaseInit
1027                     	xref	_TIM4_DeInit
1028                     	xref	_TIM2_SetCounter
1029                     	xref	_TIM2_ITConfig
1030                     	xref	_TIM2_Cmd
1031                     	xref	_TIM2_TimeBaseInit
1032                     	xref	_TIM2_DeInit
1033                     	xref	_TIM1_SelectOCxM
1034                     	xref	_TIM1_OC4PreloadConfig
1035                     	xref	_TIM1_ARRPreloadConfig
1036                     	xref	_TIM1_CtrlPWMOutputs
1037                     	xref	_TIM1_Cmd
1038                     	xref	_TIM1_OC4Init
1039                     	xref	_TIM1_TimeBaseInit
1040                     	xref	_TIM1_DeInit
1041                     	xref	_GPIO_WriteLow
1042                     	xref	_GPIO_Init
1043                     	xref	_GPIO_DeInit
1044                     	xref	_FLASH_SetProgrammingTime
1045                     	xref	_FLASH_EraseOptionByte
1046                     	xref	_FLASH_ProgramOptionByte
1047                     	xref	_FLASH_ReadOptionByte
1048                     	xref	_FLASH_Lock
1049                     	xref	_FLASH_Unlock
1050                     	xref	_CLK_GetFlagStatus
1051                     	xref	_CLK_SYSCLKConfig
1052                     	xref	_CLK_HSIPrescalerConfig
1053                     	xref	_CLK_ClockSwitchConfig
1054                     	xref	_CLK_PeripheralClockConfig
1055                     	xref	_CLK_ClockSwitchCmd
1056                     	xref	_CLK_LSICmd
1057                     	xref	_CLK_HSICmd
1058                     	xref	_CLK_HSECmd
1059                     	xref	_CLK_DeInit
1060                     	xref	_ADC1_ITConfig
1061                     	xref	_ADC1_Init
1062                     	xref	_ADC1_DeInit
1081                     	end

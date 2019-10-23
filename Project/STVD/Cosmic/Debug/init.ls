   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  60                     ; 12 void clock_setup(void) 
  60                     ; 13 {
  62                     .text:	section	.text,new
  63  0000               _clock_setup:
  67                     ; 14 	CLK_DeInit();
  69  0000 cd0000        	call	_CLK_DeInit
  71                     ; 15 	CLK_HSECmd(DISABLE);
  73  0003 5f            	clrw	x
  74  0004 cd0000        	call	_CLK_HSECmd
  76                     ; 16 	CLK_LSICmd(DISABLE);
  78  0007 5f            	clrw	x
  79  0008 cd0000        	call	_CLK_LSICmd
  81                     ; 17 	CLK_HSICmd(ENABLE);
  83  000b ae0001        	ldw	x,#1
  84  000e cd0000        	call	_CLK_HSICmd
  87  0011               L32:
  88                     ; 18 	while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
  90  0011 ae0102        	ldw	x,#258
  91  0014 cd0000        	call	_CLK_GetFlagStatus
  93  0017 5d            	tnzw	x
  94  0018 27f7          	jreq	L32
  95                     ; 19 	CLK_ClockSwitchCmd(ENABLE);
  97  001a ae0001        	ldw	x,#1
  98  001d cd0000        	call	_CLK_ClockSwitchCmd
 100                     ; 20 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);	//     /1
 102  0020 5f            	clrw	x
 103  0021 cd0000        	call	_CLK_HSIPrescalerConfig
 105                     ; 21 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);	//         /1
 107  0024 ae0080        	ldw	x,#128
 108  0027 cd0000        	call	_CLK_SYSCLKConfig
 110                     ; 22 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
 110                     ; 23 	DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
 112  002a ae0001        	ldw	x,#1
 113  002d 89            	pushw	x
 114  002e 5f            	clrw	x
 115  002f 89            	pushw	x
 116  0030 ae00e1        	ldw	x,#225
 117  0033 89            	pushw	x
 118  0034 ae0001        	ldw	x,#1
 119  0037 cd0000        	call	_CLK_ClockSwitchConfig
 121  003a 5b06          	addw	sp,#6
 122                     ; 24 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
 124  003c 5f            	clrw	x
 125  003d 89            	pushw	x
 126  003e 5c            	incw	x
 127  003f cd0000        	call	_CLK_PeripheralClockConfig
 129  0042 85            	popw	x
 130                     ; 25 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
 132  0043 5f            	clrw	x
 133  0044 89            	pushw	x
 134  0045 cd0000        	call	_CLK_PeripheralClockConfig
 136  0048 85            	popw	x
 137                     ; 26 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
 139  0049 5f            	clrw	x
 140  004a 89            	pushw	x
 141  004b ae0013        	ldw	x,#19
 142  004e cd0000        	call	_CLK_PeripheralClockConfig
 144  0051 85            	popw	x
 145                     ; 27 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
 147  0052 5f            	clrw	x
 148  0053 89            	pushw	x
 149  0054 ae0012        	ldw	x,#18
 150  0057 cd0000        	call	_CLK_PeripheralClockConfig
 152  005a 85            	popw	x
 153                     ; 28 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
 155  005b 5f            	clrw	x
 156  005c 89            	pushw	x
 157  005d ae0003        	ldw	x,#3
 158  0060 cd0000        	call	_CLK_PeripheralClockConfig
 160  0063 85            	popw	x
 161                     ; 29 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
 163  0064 ae0001        	ldw	x,#1
 164  0067 89            	pushw	x
 165  0068 ae0007        	ldw	x,#7
 166  006b cd0000        	call	_CLK_PeripheralClockConfig
 168  006e 85            	popw	x
 169                     ; 30 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
 171  006f ae0001        	ldw	x,#1
 172  0072 89            	pushw	x
 173  0073 ae0005        	ldw	x,#5
 174  0076 cd0000        	call	_CLK_PeripheralClockConfig
 176  0079 85            	popw	x
 177                     ; 31 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
 179  007a ae0001        	ldw	x,#1
 180  007d 89            	pushw	x
 181  007e ae0004        	ldw	x,#4
 182  0081 cd0000        	call	_CLK_PeripheralClockConfig
 184  0084 85            	popw	x
 185                     ; 32 }
 188  0085 81            	ret	
 213                     ; 41 void GPIO_setup(void) 
 213                     ; 42 {
 214                     .text:	section	.text,new
 215  0000               _GPIO_setup:
 219                     ; 44 	GPIO_DeInit(GPIOB);
 221  0000 ae5005        	ldw	x,#20485
 222  0003 cd0000        	call	_GPIO_DeInit
 224                     ; 45 	GPIO_DeInit(GPIOC);
 226  0006 ae500a        	ldw	x,#20490
 227  0009 cd0000        	call	_GPIO_DeInit
 229                     ; 46 	GPIO_DeInit(GPIOD);
 231  000c ae500f        	ldw	x,#20495
 232  000f cd0000        	call	_GPIO_DeInit
 234                     ; 75 	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);			// sound out
 236  0012 ae00c0        	ldw	x,#192
 237  0015 89            	pushw	x
 238  0016 ae0010        	ldw	x,#16
 239  0019 89            	pushw	x
 240  001a ae500a        	ldw	x,#20490
 241  001d cd0000        	call	_GPIO_Init
 243  0020 5b04          	addw	sp,#4
 244                     ; 77 	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);			// dip1
 246  0022 5f            	clrw	x
 247  0023 89            	pushw	x
 248  0024 ae0010        	ldw	x,#16
 249  0027 89            	pushw	x
 250  0028 ae5005        	ldw	x,#20485
 251  002b cd0000        	call	_GPIO_Init
 253  002e 5b04          	addw	sp,#4
 254                     ; 78 	GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);			// dip2
 256  0030 5f            	clrw	x
 257  0031 89            	pushw	x
 258  0032 ae0020        	ldw	x,#32
 259  0035 89            	pushw	x
 260  0036 ae5005        	ldw	x,#20485
 261  0039 cd0000        	call	_GPIO_Init
 263  003c 5b04          	addw	sp,#4
 264                     ; 79 	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);			// en
 266  003e 5f            	clrw	x
 267  003f 89            	pushw	x
 268  0040 ae0040        	ldw	x,#64
 269  0043 89            	pushw	x
 270  0044 ae500f        	ldw	x,#20495
 271  0047 cd0000        	call	_GPIO_Init
 273  004a 5b04          	addw	sp,#4
 274                     ; 80 }
 277  004c 81            	ret	
 308                     ; 82 void TIM1_setup(void)
 308                     ; 83 {
 309                     .text:	section	.text,new
 310  0000               _TIM1_setup:
 314                     ; 84 	TIM1_DeInit();
 316  0000 cd0000        	call	_TIM1_DeInit
 318                     ; 85 	TIM1_TimeBaseInit(TIM1_ICPSC_DIV2,TIM1_COUNTERMODE_UP,8000,0);
 320  0003 4b00          	push	#0
 321  0005 ae1f40        	ldw	x,#8000
 322  0008 89            	pushw	x
 323  0009 5f            	clrw	x
 324  000a 89            	pushw	x
 325  000b ae0004        	ldw	x,#4
 326  000e cd0000        	call	_TIM1_TimeBaseInit
 328  0011 5b05          	addw	sp,#5
 329                     ; 100 	TIM1_SelectOCxM(TIM1_CHANNEL_4, TIM1_OCMODE_PWM2); //GREEN OUT2
 331  0013 ae0070        	ldw	x,#112
 332  0016 89            	pushw	x
 333  0017 ae0003        	ldw	x,#3
 334  001a cd0000        	call	_TIM1_SelectOCxM
 336  001d 85            	popw	x
 337                     ; 101 	TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE,0, TIM1_OCPOLARITY_LOW, TIM1_OCIDLESTATE_SET);
 339  001e ae0055        	ldw	x,#85
 340  0021 89            	pushw	x
 341  0022 ae0022        	ldw	x,#34
 342  0025 89            	pushw	x
 343  0026 5f            	clrw	x
 344  0027 89            	pushw	x
 345  0028 ae0011        	ldw	x,#17
 346  002b 89            	pushw	x
 347  002c ae0070        	ldw	x,#112
 348  002f cd0000        	call	_TIM1_OC4Init
 350  0032 5b08          	addw	sp,#8
 351                     ; 102 	TIM1_OC4PreloadConfig(ENABLE);
 353  0034 ae0001        	ldw	x,#1
 354  0037 cd0000        	call	_TIM1_OC4PreloadConfig
 356                     ; 105 	TIM1_ARRPreloadConfig(ENABLE);
 358  003a ae0001        	ldw	x,#1
 359  003d cd0000        	call	_TIM1_ARRPreloadConfig
 361                     ; 106 	TIM1_Cmd(ENABLE);
 363  0040 ae0001        	ldw	x,#1
 364  0043 cd0000        	call	_TIM1_Cmd
 366                     ; 107 	TIM1_CtrlPWMOutputs(ENABLE);
 368  0046 ae0001        	ldw	x,#1
 370                     ; 108 }
 373  0049 cc0000        	jp	_TIM1_CtrlPWMOutputs
 401                     ; 110 void TIM2_setup(void)
 401                     ; 111 {
 402                     .text:	section	.text,new
 403  0000               _TIM2_setup:
 407                     ; 112 	TIM2_DeInit();
 409  0000 cd0000        	call	_TIM2_DeInit
 411                     ; 113 	TIM2_SetCounter(0x00);
 413  0003 5f            	clrw	x
 414  0004 cd0000        	call	_TIM2_SetCounter
 416                     ; 114 	TIM2_TimeBaseInit(TIM2_PRESCALER_256, 625);// 625 Chiamata ogni 10ms - 1250 Chiamata ogni 20ms
 418  0007 ae0271        	ldw	x,#625
 419  000a 89            	pushw	x
 420  000b ae0008        	ldw	x,#8
 421  000e cd0000        	call	_TIM2_TimeBaseInit
 423  0011 85            	popw	x
 424                     ; 115 	TIM2_ITConfig(TIM2_IT_UPDATE,ENABLE);
 426  0012 ae0001        	ldw	x,#1
 427  0015 89            	pushw	x
 428  0016 cd0000        	call	_TIM2_ITConfig
 430  0019 85            	popw	x
 431                     ; 116 	TIM2_Cmd(ENABLE);
 433  001a ae0001        	ldw	x,#1
 435                     ; 117 }
 438  001d cc0000        	jp	_TIM2_Cmd
 469                     ; 119 void TIM4_setup(void)
 469                     ; 120 {
 470                     .text:	section	.text,new
 471  0000               _TIM4_setup:
 475                     ; 121 	TIM4_DeInit();
 477  0000 cd0000        	call	_TIM4_DeInit
 479                     ; 122 	TIM4_SetCounter(0x00);
 481  0003 4f            	clr	a
 482  0004 cd0000        	call	_TIM4_SetCounter
 484                     ; 123 	TIM4_ClearFlag(TIM4_IT_UPDATE);
 486  0007 ae0001        	ldw	x,#1
 487  000a cd0000        	call	_TIM4_ClearFlag
 489                     ; 124 	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
 491  000d ae0001        	ldw	x,#1
 492  0010 cd0000        	call	_TIM4_ClearITPendingBit
 494                     ; 125 	TIM4_PrescalerConfig(TIM4_PRESCALER_128, TIM4_PSCRELOADMODE_UPDATE);
 496  0013 5f            	clrw	x
 497  0014 89            	pushw	x
 498  0015 ae0007        	ldw	x,#7
 499  0018 cd0000        	call	_TIM4_PrescalerConfig
 501  001b 85            	popw	x
 502                     ; 126 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 504  001c 4b7d          	push	#125
 505  001e ae0007        	ldw	x,#7
 506  0021 cd0000        	call	_TIM4_TimeBaseInit
 508  0024 ae0001        	ldw	x,#1
 509  0027 84            	pop	a
 510                     ; 127 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 512  0028 89            	pushw	x
 513  0029 cd0000        	call	_TIM4_ITConfig
 515  002c 85            	popw	x
 516                     ; 128 	TIM4_Cmd(ENABLE);
 518  002d ae0001        	ldw	x,#1
 520                     ; 129 }
 523  0030 cc0000        	jp	_TIM4_Cmd
 548                     ; 131 void init_u_Port(void)
 548                     ; 132 {
 549                     .text:	section	.text,new
 550  0000               _init_u_Port:
 554                     ; 133 	GPIO_WriteLow(GPIOB, GPIO_PIN_4);//OK
 556  0000 ae0010        	ldw	x,#16
 557  0003 ad2c          	call	LC001
 558  0005 ad2a          	call	LC001
 559  0007 89            	pushw	x
 560  0008 ae500a        	ldw	x,#20490
 561  000b cd0000        	call	_GPIO_WriteHigh
 563  000e 85            	popw	x
 564                     ; 136 	GPIO_WriteLow(GPIOD, GPIO_PIN_2); //OK
 566  000f ae0004        	ldw	x,#4
 567  0012 89            	pushw	x
 568  0013 ae500f        	ldw	x,#20495
 569  0016 cd0000        	call	_GPIO_WriteLow
 571  0019 85            	popw	x
 572                     ; 137 	GPIO_WriteLow(GPIOD, GPIO_PIN_6);//OK
 574  001a ae0040        	ldw	x,#64
 575  001d 89            	pushw	x
 576  001e ae500f        	ldw	x,#20495
 577  0021 cd0000        	call	_GPIO_WriteLow
 579  0024 85            	popw	x
 580                     ; 138 	GPIO_WriteLow(GPIOA, GPIO_PIN_2);	
 582  0025 ae0004        	ldw	x,#4
 583  0028 89            	pushw	x
 584  0029 ae5000        	ldw	x,#20480
 585  002c cd0000        	call	_GPIO_WriteLow
 587  002f 85            	popw	x
 588                     ; 139 }
 591  0030 81            	ret	
 592  0031               LC001:
 593  0031 89            	pushw	x
 594  0032 ae5005        	ldw	x,#20485
 595  0035 cd0000        	call	_GPIO_WriteLow
 597  0038 85            	popw	x
 598                     ; 135 	GPIO_WriteHigh(GPIOC, GPIO_PIN_5);//OK
 600  0039 ae0020        	ldw	x,#32
 601  003c 81            	ret	
 640                     ; 141 void setAlternateBit(void)
 640                     ; 142 {
 641                     .text:	section	.text,new
 642  0000               _setAlternateBit:
 644  0000 89            	pushw	x
 645       00000002      OFST:	set	2
 648                     ; 144 		uint16_t stored_data = FLASH_ReadOptionByte(OPTION_BYTE_AFR );
 650  0001 ae4803        	ldw	x,#18435
 651  0004 cd0000        	call	_FLASH_ReadOptionByte
 653  0007 1f01          	ldw	(OFST-1,sp),x
 654                     ; 146 		if( ( FLASH_OPTIONBYTE_ERROR == stored_data ) ||
 654                     ; 147 			( AFR0 != (uint8_t)( stored_data>>8 ) ) )
 656  0009 a35555        	cpw	x,#21845
 657  000c 2705          	jreq	L711
 659  000e 7b01          	ld	a,(OFST-1,sp)
 660  0010 4a            	dec	a
 661  0011 2721          	jreq	L511
 662  0013               L711:
 663                     ; 149 				FLASH_Unlock(FLASH_MEMTYPE_DATA);
 665  0013 ae00f7        	ldw	x,#247
 666  0016 cd0000        	call	_FLASH_Unlock
 668                     ; 150 				FLASH_EraseOptionByte(OPTION_BYTE_AFR);
 670  0019 ae4803        	ldw	x,#18435
 671  001c cd0000        	call	_FLASH_EraseOptionByte
 673                     ; 151 				FLASH_ProgramOptionByte(OPTION_BYTE_AFR, AFR0);
 675  001f 4b01          	push	#1
 676  0021 ae4803        	ldw	x,#18435
 677  0024 cd0000        	call	_FLASH_ProgramOptionByte
 679  0027 ae00f7        	ldw	x,#247
 680  002a 84            	pop	a
 681                     ; 152 				FLASH_Lock(FLASH_MEMTYPE_DATA);
 683  002b cd0000        	call	_FLASH_Lock
 685                     ; 155 				IWDG->KR = IWDG_KEY_ENABLE;
 687  002e 35cc50e0      	mov	20704,#204
 688  0032               L121:
 689                     ; 156 				while(1);
 691  0032 20fe          	jra	L121
 692  0034               L511:
 693                     ; 158 }
 696  0034 85            	popw	x
 697  0035 81            	ret	
 740                     ; 160 uint16_t readADC1(uint16_t channel) 
 740                     ; 161 {
 741                     .text:	section	.text,new
 742  0000               _readADC1:
 744  0000 89            	pushw	x
 745  0001 89            	pushw	x
 746       00000002      OFST:	set	2
 749                     ; 162      uint16_t val=0;
 751  0002 5f            	clrw	x
 752  0003 1f01          	ldw	(OFST-1,sp),x
 753                     ; 164      ADC1->CSR |= ((0x0F)&channel); // select channel
 755  0005 7b04          	ld	a,(OFST+2,sp)
 756  0007 a40f          	and	a,#15
 757  0009 ca5400        	or	a,21504
 758  000c c75400        	ld	21504,a
 759                     ; 165      ADC1->CR2 |= (1<<3); // Right Aligned Data
 761  000f 72165402      	bset	21506,#3
 762                     ; 166      ADC1->CR1 |= (1<<0); // ADC ON 
 764  0013 72105401      	bset	21505,#0
 765                     ; 167      ADC1->CR1 |= (1<<0); // ADC Start Conversion
 767  0017 72105401      	bset	21505,#0
 769  001b               L151:
 770                     ; 168      while(((ADC1->CSR)&(1<<7))== 0); // Wait till EOC
 772  001b 720f5400fb    	btjf	21504,#7,L151
 773                     ; 169      val |= (uint16_t)ADC1->DRL;
 775  0020 c65405        	ld	a,21509
 776  0023 5f            	clrw	x
 777  0024 97            	ld	xl,a
 778  0025 01            	rrwa	x,a
 779  0026 1a02          	or	a,(OFST+0,sp)
 780  0028 01            	rrwa	x,a
 781  0029 1a01          	or	a,(OFST-1,sp)
 782  002b 01            	rrwa	x,a
 783  002c 1f01          	ldw	(OFST-1,sp),x
 784                     ; 170      val |= (uint16_t)ADC1->DRH<<8;
 786  002e 5f            	clrw	x
 787  002f c65404        	ld	a,21508
 788  0032 97            	ld	xl,a
 789  0033 7b02          	ld	a,(OFST+0,sp)
 790  0035 01            	rrwa	x,a
 791  0036 1a01          	or	a,(OFST-1,sp)
 792  0038 01            	rrwa	x,a
 793  0039 1f01          	ldw	(OFST-1,sp),x
 794                     ; 171      ADC1->CR1 &= ~(1<<0); // ADC Stop Conversion
 796  003b 72115401      	bres	21505,#0
 797                     ; 172      val &= 0x03ff;
 799  003f 7b01          	ld	a,(OFST-1,sp)
 800  0041 a403          	and	a,#3
 801  0043 6b01          	ld	(OFST-1,sp),a
 802                     ; 173      return (val);
 804  0045 1e01          	ldw	x,(OFST-1,sp)
 807  0047 5b04          	addw	sp,#4
 808  0049 81            	ret	
 845                     ; 176 void ADC_setup(uint8_t ch_sel)
 845                     ; 177 {
 846                     .text:	section	.text,new
 847  0000               _ADC_setup:
 849  0000 88            	push	a
 850       00000000      OFST:	set	0
 853                     ; 178 	ADC1_DeInit();	
 855  0001 cd0000        	call	_ADC1_DeInit
 857                     ; 180 	ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
 857                     ; 181 						ch_sel,
 857                     ; 182 						ADC1_PRESSEL_FCPU_D4,
 857                     ; 183 						ADC1_EXTTRIG_GPIO,
 857                     ; 184 						DISABLE,
 857                     ; 185 						ADC1_ALIGN_RIGHT,
 857                     ; 186 						ch_sel,
 857                     ; 187 						DISABLE);
 859  0004 5f            	clrw	x
 860  0005 89            	pushw	x
 861  0006 7b03          	ld	a,(OFST+3,sp)
 862  0008 97            	ld	xl,a
 863  0009 89            	pushw	x
 864  000a ae0008        	ldw	x,#8
 865  000d 89            	pushw	x
 866  000e 5f            	clrw	x
 867  000f 89            	pushw	x
 868  0010 ae0010        	ldw	x,#16
 869  0013 89            	pushw	x
 870  0014 58            	sllw	x
 871  0015 89            	pushw	x
 872  0016 7b0d          	ld	a,(OFST+13,sp)
 873  0018 5f            	clrw	x
 874  0019 97            	ld	xl,a
 875  001a 89            	pushw	x
 876  001b 5f            	clrw	x
 877  001c cd0000        	call	_ADC1_Init
 879  001f 5b0e          	addw	sp,#14
 880                     ; 189 	ADC1_ITConfig(ADC1_IT_EOCIE, ENABLE);
 882  0021 ae0001        	ldw	x,#1
 883  0024 89            	pushw	x
 884  0025 ae0020        	ldw	x,#32
 885  0028 cd0000        	call	_ADC1_ITConfig
 887  002b 85            	popw	x
 888                     ; 206 }
 891  002c 84            	pop	a
 892  002d 81            	ret	
 921                     ; 208 void Read_Protect_Flash(void)
 921                     ; 209 {
 922                     .text:	section	.text,new
 923  0000               _Read_Protect_Flash:
 927                     ; 210     FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
 929  0000 5f            	clrw	x
 930  0001 cd0000        	call	_FLASH_SetProgrammingTime
 933  0004 201b          	jra	L502
 934  0006               L302:
 935                     ; 213         FLASH_Unlock(FLASH_MEMTYPE_DATA);
 937  0006 ae00f7        	ldw	x,#247
 938  0009 cd0000        	call	_FLASH_Unlock
 940                     ; 215         FLASH_EraseOptionByte(0x4800);
 942  000c ae4800        	ldw	x,#18432
 943  000f cd0000        	call	_FLASH_EraseOptionByte
 945                     ; 216         FLASH_ProgramOptionByte(0x4800, 0xAA);
 947  0012 4baa          	push	#170
 948  0014 ae4800        	ldw	x,#18432
 949  0017 cd0000        	call	_FLASH_ProgramOptionByte
 951  001a ae00f7        	ldw	x,#247
 952  001d 84            	pop	a
 953                     ; 218         FLASH_Lock(FLASH_MEMTYPE_DATA);
 955  001e cd0000        	call	_FLASH_Lock
 957  0021               L502:
 958                     ; 211     while(FLASH_ReadOptionByte(0x4800) != 0xAA)
 960  0021 ae4800        	ldw	x,#18432
 961  0024 cd0000        	call	_FLASH_ReadOptionByte
 963  0027 a300aa        	cpw	x,#170
 964  002a 26da          	jrne	L302
 965                     ; 220 }
 968  002c 81            	ret	
1003                     ; 231 void assert_failed(uint8_t* file, uint32_t line)
1003                     ; 232 { 
1004                     .text:	section	.text,new
1005  0000               _assert_failed:
1009  0000               L722:
1010  0000 20fe          	jra	L722
1023                     	xdef	_ADC_setup
1024                     	xdef	_readADC1
1025                     	xdef	_Read_Protect_Flash
1026                     	xdef	_setAlternateBit
1027                     	xdef	_init_u_Port
1028                     	xdef	_GPIO_setup
1029                     	xdef	_clock_setup
1030                     	xdef	_TIM4_setup
1031                     	xdef	_TIM2_setup
1032                     	xdef	_TIM1_setup
1033                     	xdef	_assert_failed
1034                     	xref	_TIM4_ClearITPendingBit
1035                     	xref	_TIM4_ClearFlag
1036                     	xref	_TIM4_SetCounter
1037                     	xref	_TIM4_PrescalerConfig
1038                     	xref	_TIM4_ITConfig
1039                     	xref	_TIM4_Cmd
1040                     	xref	_TIM4_TimeBaseInit
1041                     	xref	_TIM4_DeInit
1042                     	xref	_TIM2_SetCounter
1043                     	xref	_TIM2_ITConfig
1044                     	xref	_TIM2_Cmd
1045                     	xref	_TIM2_TimeBaseInit
1046                     	xref	_TIM2_DeInit
1047                     	xref	_TIM1_SelectOCxM
1048                     	xref	_TIM1_OC4PreloadConfig
1049                     	xref	_TIM1_ARRPreloadConfig
1050                     	xref	_TIM1_CtrlPWMOutputs
1051                     	xref	_TIM1_Cmd
1052                     	xref	_TIM1_OC4Init
1053                     	xref	_TIM1_TimeBaseInit
1054                     	xref	_TIM1_DeInit
1055                     	xref	_GPIO_WriteLow
1056                     	xref	_GPIO_WriteHigh
1057                     	xref	_GPIO_Init
1058                     	xref	_GPIO_DeInit
1059                     	xref	_FLASH_SetProgrammingTime
1060                     	xref	_FLASH_EraseOptionByte
1061                     	xref	_FLASH_ProgramOptionByte
1062                     	xref	_FLASH_ReadOptionByte
1063                     	xref	_FLASH_Lock
1064                     	xref	_FLASH_Unlock
1065                     	xref	_CLK_GetFlagStatus
1066                     	xref	_CLK_SYSCLKConfig
1067                     	xref	_CLK_HSIPrescalerConfig
1068                     	xref	_CLK_ClockSwitchConfig
1069                     	xref	_CLK_PeripheralClockConfig
1070                     	xref	_CLK_ClockSwitchCmd
1071                     	xref	_CLK_LSICmd
1072                     	xref	_CLK_HSICmd
1073                     	xref	_CLK_HSECmd
1074                     	xref	_CLK_DeInit
1075                     	xref	_ADC1_ITConfig
1076                     	xref	_ADC1_Init
1077                     	xref	_ADC1_DeInit
1096                     	end

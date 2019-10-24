   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 17 void clock_setup(void) 
  17                     ; 18 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _clock_setup:
  22                     ; 19 	CLK_DeInit();
  23  0000 cd0000        	call	_CLK_DeInit
  25                     ; 20 	CLK_HSECmd(DISABLE);
  26  0003 5f            	clrw	x
  27  0004 cd0000        	call	_CLK_HSECmd
  29                     ; 21 	CLK_LSICmd(DISABLE);
  30  0007 5f            	clrw	x
  31  0008 cd0000        	call	_CLK_LSICmd
  33                     ; 22 	CLK_HSICmd(ENABLE);
  34  000b ae0001        	ldw	x,#1
  35  000e cd0000        	call	_CLK_HSICmd
  38  0011               L5:
  39                     ; 23 	while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
  40  0011 ae0102        	ldw	x,#258
  41  0014 cd0000        	call	_CLK_GetFlagStatus
  43  0017 a30000        	cpw	x,#0
  44  001a 27f5          	jreq	L5
  45                     ; 24 	CLK_ClockSwitchCmd(ENABLE);
  46  001c ae0001        	ldw	x,#1
  47  001f cd0000        	call	_CLK_ClockSwitchCmd
  49                     ; 25 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);	
  50  0022 5f            	clrw	x
  51  0023 cd0000        	call	_CLK_HSIPrescalerConfig
  53                     ; 26 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
  54  0026 ae0080        	ldw	x,#128
  55  0029 cd0000        	call	_CLK_SYSCLKConfig
  57                     ; 27 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
  57                     ; 28 	DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
  58  002c ae0001        	ldw	x,#1
  59  002f 89            	pushw	x
  60  0030 5f            	clrw	x
  61  0031 89            	pushw	x
  62  0032 ae00e1        	ldw	x,#225
  63  0035 89            	pushw	x
  64  0036 ae0001        	ldw	x,#1
  65  0039 cd0000        	call	_CLK_ClockSwitchConfig
  67  003c 5b06          	addw	sp,#6
  68                     ; 29 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
  69  003e 5f            	clrw	x
  70  003f 89            	pushw	x
  71  0040 ae0001        	ldw	x,#1
  72  0043 cd0000        	call	_CLK_PeripheralClockConfig
  74  0046 85            	popw	x
  75                     ; 30 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
  76  0047 5f            	clrw	x
  77  0048 89            	pushw	x
  78  0049 5f            	clrw	x
  79  004a cd0000        	call	_CLK_PeripheralClockConfig
  81  004d 85            	popw	x
  82                     ; 31 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
  83  004e 5f            	clrw	x
  84  004f 89            	pushw	x
  85  0050 ae0013        	ldw	x,#19
  86  0053 cd0000        	call	_CLK_PeripheralClockConfig
  88  0056 85            	popw	x
  89                     ; 32 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
  90  0057 5f            	clrw	x
  91  0058 89            	pushw	x
  92  0059 ae0012        	ldw	x,#18
  93  005c cd0000        	call	_CLK_PeripheralClockConfig
  95  005f 85            	popw	x
  96                     ; 33 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
  97  0060 5f            	clrw	x
  98  0061 89            	pushw	x
  99  0062 ae0003        	ldw	x,#3
 100  0065 cd0000        	call	_CLK_PeripheralClockConfig
 102  0068 85            	popw	x
 103                     ; 34 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
 104  0069 ae0001        	ldw	x,#1
 105  006c 89            	pushw	x
 106  006d ae0007        	ldw	x,#7
 107  0070 cd0000        	call	_CLK_PeripheralClockConfig
 109  0073 85            	popw	x
 110                     ; 35 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
 111  0074 ae0001        	ldw	x,#1
 112  0077 89            	pushw	x
 113  0078 ae0005        	ldw	x,#5
 114  007b cd0000        	call	_CLK_PeripheralClockConfig
 116  007e 85            	popw	x
 117                     ; 36 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
 118  007f ae0001        	ldw	x,#1
 119  0082 89            	pushw	x
 120  0083 ae0004        	ldw	x,#4
 121  0086 cd0000        	call	_CLK_PeripheralClockConfig
 123  0089 85            	popw	x
 124                     ; 37 }
 125  008a 81            	ret
 127                     ; 39 void GPIO_setup(void) 
 127                     ; 40 {
 128                     .text:	section	.text,new
 129  0000               _GPIO_setup:
 131                     ; 41 	GPIO_DeInit(GPIOA);
 132  0000 ae5000        	ldw	x,#20480
 133  0003 cd0000        	call	_GPIO_DeInit
 135                     ; 42 	GPIO_DeInit(GPIOB);
 136  0006 ae5005        	ldw	x,#20485
 137  0009 cd0000        	call	_GPIO_DeInit
 139                     ; 43 	GPIO_DeInit(GPIOC);
 140  000c ae500a        	ldw	x,#20490
 141  000f cd0000        	call	_GPIO_DeInit
 143                     ; 44 	GPIO_DeInit(GPIOD);
 144  0012 ae500f        	ldw	x,#20495
 145  0015 cd0000        	call	_GPIO_DeInit
 147                     ; 57 	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT); 	// not used 
 148  0018 5f            	clrw	x
 149  0019 89            	pushw	x
 150  001a ae0002        	ldw	x,#2
 151  001d 89            	pushw	x
 152  001e ae5000        	ldw	x,#20480
 153  0021 cd0000        	call	_GPIO_Init
 155  0024 5b04          	addw	sp,#4
 156                     ; 58 	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT); 			// not used
 157  0026 5f            	clrw	x
 158  0027 89            	pushw	x
 159  0028 ae0004        	ldw	x,#4
 160  002b 89            	pushw	x
 161  002c ae5000        	ldw	x,#20480
 162  002f cd0000        	call	_GPIO_Init
 164  0032 5b04          	addw	sp,#4
 165                     ; 59 	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);	// not used
 166  0034 5f            	clrw	x
 167  0035 89            	pushw	x
 168  0036 ae0008        	ldw	x,#8
 169  0039 89            	pushw	x
 170  003a ae5000        	ldw	x,#20480
 171  003d cd0000        	call	_GPIO_Init
 173  0040 5b04          	addw	sp,#4
 174                     ; 61 	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);				// in_a
 175  0042 5f            	clrw	x
 176  0043 89            	pushw	x
 177  0044 ae0010        	ldw	x,#16
 178  0047 89            	pushw	x
 179  0048 ae5005        	ldw	x,#20485
 180  004b cd0000        	call	_GPIO_Init
 182  004e 5b04          	addw	sp,#4
 183                     ; 62 	GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);				// in_b
 184  0050 5f            	clrw	x
 185  0051 89            	pushw	x
 186  0052 ae0020        	ldw	x,#32
 187  0055 89            	pushw	x
 188  0056 ae5005        	ldw	x,#20485
 189  0059 cd0000        	call	_GPIO_Init
 191  005c 5b04          	addw	sp,#4
 192                     ; 64 	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);				// in_flash
 193  005e 5f            	clrw	x
 194  005f 89            	pushw	x
 195  0060 ae0008        	ldw	x,#8
 196  0063 89            	pushw	x
 197  0064 ae500a        	ldw	x,#20490
 198  0067 cd0000        	call	_GPIO_Init
 200  006a 5b04          	addw	sp,#4
 201                     ; 65 	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);			// not used
 202  006c 5f            	clrw	x
 203  006d 89            	pushw	x
 204  006e ae0010        	ldw	x,#16
 205  0071 89            	pushw	x
 206  0072 ae500a        	ldw	x,#20490
 207  0075 cd0000        	call	_GPIO_Init
 209  0078 5b04          	addw	sp,#4
 210                     ; 66 	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);		// sw2_3
 211  007a 5f            	clrw	x
 212  007b 89            	pushw	x
 213  007c ae0020        	ldw	x,#32
 214  007f 89            	pushw	x
 215  0080 ae500a        	ldw	x,#20490
 216  0083 cd0000        	call	_GPIO_Init
 218  0086 5b04          	addw	sp,#4
 219                     ; 67 	GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);		// sw2_2
 220  0088 5f            	clrw	x
 221  0089 89            	pushw	x
 222  008a ae0040        	ldw	x,#64
 223  008d 89            	pushw	x
 224  008e ae500a        	ldw	x,#20490
 225  0091 cd0000        	call	_GPIO_Init
 227  0094 5b04          	addw	sp,#4
 228                     ; 68 	GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_FL_NO_IT);				// sw2_1
 229  0096 5f            	clrw	x
 230  0097 89            	pushw	x
 231  0098 ae0080        	ldw	x,#128
 232  009b 89            	pushw	x
 233  009c ae500a        	ldw	x,#20490
 234  009f cd0000        	call	_GPIO_Init
 236  00a2 5b04          	addw	sp,#4
 237                     ; 69 	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);// pwm sound out (TIM1_CH4)
 238  00a4 ae00c0        	ldw	x,#192
 239  00a7 89            	pushw	x
 240  00a8 ae0010        	ldw	x,#16
 241  00ab 89            	pushw	x
 242  00ac ae500a        	ldw	x,#20490
 243  00af cd0000        	call	_GPIO_Init
 245  00b2 5b04          	addw	sp,#4
 246                     ; 71 	GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);		// not used
 247  00b4 5f            	clrw	x
 248  00b5 89            	pushw	x
 249  00b6 ae0002        	ldw	x,#2
 250  00b9 89            	pushw	x
 251  00ba ae500f        	ldw	x,#20495
 252  00bd cd0000        	call	_GPIO_Init
 254  00c0 5b04          	addw	sp,#4
 255                     ; 72 	GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT);		// not used
 256  00c2 5f            	clrw	x
 257  00c3 89            	pushw	x
 258  00c4 ae0004        	ldw	x,#4
 259  00c7 89            	pushw	x
 260  00c8 ae500f        	ldw	x,#20495
 261  00cb cd0000        	call	_GPIO_Init
 263  00ce 5b04          	addw	sp,#4
 264                     ; 73 	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_SLOW);    // out flash
 265  00d0 ae00c0        	ldw	x,#192
 266  00d3 89            	pushw	x
 267  00d4 ae0008        	ldw	x,#8
 268  00d7 89            	pushw	x
 269  00d8 ae500f        	ldw	x,#20495
 270  00db cd0000        	call	_GPIO_Init
 272  00de 5b04          	addw	sp,#4
 273                     ; 74 	GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);  	// sw1_3
 274  00e0 5f            	clrw	x
 275  00e1 89            	pushw	x
 276  00e2 ae0010        	ldw	x,#16
 277  00e5 89            	pushw	x
 278  00e6 ae500f        	ldw	x,#20495
 279  00e9 cd0000        	call	_GPIO_Init
 281  00ec 5b04          	addw	sp,#4
 282                     ; 75 	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT); 		// sw1_2
 283  00ee 5f            	clrw	x
 284  00ef 89            	pushw	x
 285  00f0 ae0020        	ldw	x,#32
 286  00f3 89            	pushw	x
 287  00f4 ae500f        	ldw	x,#20495
 288  00f7 cd0000        	call	_GPIO_Init
 290  00fa 5b04          	addw	sp,#4
 291                     ; 76 	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);		// sw1_1
 292  00fc 5f            	clrw	x
 293  00fd 89            	pushw	x
 294  00fe ae0040        	ldw	x,#64
 295  0101 89            	pushw	x
 296  0102 ae500f        	ldw	x,#20495
 297  0105 cd0000        	call	_GPIO_Init
 299  0108 5b04          	addw	sp,#4
 300                     ; 77 }
 301  010a 81            	ret
 303                     ; 79 void TIM1_setup(void)
 303                     ; 80 {
 304                     .text:	section	.text,new
 305  0000               _TIM1_setup:
 307                     ; 81 	TIM1_DeInit();
 308  0000 cd0000        	call	_TIM1_DeInit
 310                     ; 82 	TIM1_TimeBaseInit(TIM1_ICPSC_DIV2,TIM1_COUNTERMODE_UP,8000,0);
 311  0003 4b00          	push	#0
 312  0005 ae1f40        	ldw	x,#8000
 313  0008 89            	pushw	x
 314  0009 5f            	clrw	x
 315  000a 89            	pushw	x
 316  000b ae0004        	ldw	x,#4
 317  000e cd0000        	call	_TIM1_TimeBaseInit
 319  0011 5b05          	addw	sp,#5
 320                     ; 97 	TIM1_SelectOCxM(TIM1_CHANNEL_4, TIM1_OCMODE_PWM2); // OUT2
 321  0013 ae0070        	ldw	x,#112
 322  0016 89            	pushw	x
 323  0017 ae0003        	ldw	x,#3
 324  001a cd0000        	call	_TIM1_SelectOCxM
 326  001d 85            	popw	x
 327                     ; 98 	TIM1_OC4Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE,0, TIM1_OCPOLARITY_LOW, TIM1_OCIDLESTATE_SET);
 328  001e ae0055        	ldw	x,#85
 329  0021 89            	pushw	x
 330  0022 ae0022        	ldw	x,#34
 331  0025 89            	pushw	x
 332  0026 5f            	clrw	x
 333  0027 89            	pushw	x
 334  0028 ae0011        	ldw	x,#17
 335  002b 89            	pushw	x
 336  002c ae0070        	ldw	x,#112
 337  002f cd0000        	call	_TIM1_OC4Init
 339  0032 5b08          	addw	sp,#8
 340                     ; 99 	TIM1_OC4PreloadConfig(ENABLE);
 341  0034 ae0001        	ldw	x,#1
 342  0037 cd0000        	call	_TIM1_OC4PreloadConfig
 344                     ; 102 	TIM1_ARRPreloadConfig(ENABLE);
 345  003a ae0001        	ldw	x,#1
 346  003d cd0000        	call	_TIM1_ARRPreloadConfig
 348                     ; 103 	TIM1_Cmd(ENABLE);
 349  0040 ae0001        	ldw	x,#1
 350  0043 cd0000        	call	_TIM1_Cmd
 352                     ; 104 	TIM1_CtrlPWMOutputs(ENABLE);
 353  0046 ae0001        	ldw	x,#1
 354  0049 cd0000        	call	_TIM1_CtrlPWMOutputs
 356                     ; 105 }
 357  004c 81            	ret
 359                     ; 107 void TIM2_setup(void)
 359                     ; 108 {
 360                     .text:	section	.text,new
 361  0000               _TIM2_setup:
 363                     ; 109 	TIM2_DeInit();
 364  0000 cd0000        	call	_TIM2_DeInit
 366                     ; 110 	TIM2_SetCounter(0x00);
 367  0003 5f            	clrw	x
 368  0004 cd0000        	call	_TIM2_SetCounter
 370                     ; 111 	TIM2_TimeBaseInit(TIM2_PRESCALER_256, 625);	// 10ms
 371  0007 ae0271        	ldw	x,#625
 372  000a 89            	pushw	x
 373  000b ae0008        	ldw	x,#8
 374  000e cd0000        	call	_TIM2_TimeBaseInit
 376  0011 85            	popw	x
 377                     ; 112 	TIM2_ITConfig(TIM2_IT_UPDATE,ENABLE);
 378  0012 ae0001        	ldw	x,#1
 379  0015 89            	pushw	x
 380  0016 ae0001        	ldw	x,#1
 381  0019 cd0000        	call	_TIM2_ITConfig
 383  001c 85            	popw	x
 384                     ; 113 	TIM2_Cmd(ENABLE);
 385  001d ae0001        	ldw	x,#1
 386  0020 cd0000        	call	_TIM2_Cmd
 388                     ; 114 }
 389  0023 81            	ret
 391                     ; 116 void TIM4_setup(void)
 391                     ; 117 {
 392                     .text:	section	.text,new
 393  0000               _TIM4_setup:
 395                     ; 118 	TIM4_DeInit();
 396  0000 cd0000        	call	_TIM4_DeInit
 398                     ; 119 	TIM4_SetCounter(0x00);
 399  0003 4f            	clr	a
 400  0004 cd0000        	call	_TIM4_SetCounter
 402                     ; 120 	TIM4_ClearFlag(TIM4_IT_UPDATE);
 403  0007 ae0001        	ldw	x,#1
 404  000a cd0000        	call	_TIM4_ClearFlag
 406                     ; 121 	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
 407  000d ae0001        	ldw	x,#1
 408  0010 cd0000        	call	_TIM4_ClearITPendingBit
 410                     ; 122 	TIM4_PrescalerConfig(TIM4_PRESCALER_128, TIM4_PSCRELOADMODE_UPDATE);
 411  0013 5f            	clrw	x
 412  0014 89            	pushw	x
 413  0015 ae0007        	ldw	x,#7
 414  0018 cd0000        	call	_TIM4_PrescalerConfig
 416  001b 85            	popw	x
 417                     ; 123 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 418  001c 4b7d          	push	#125
 419  001e ae0007        	ldw	x,#7
 420  0021 cd0000        	call	_TIM4_TimeBaseInit
 422  0024 84            	pop	a
 423                     ; 124 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 424  0025 ae0001        	ldw	x,#1
 425  0028 89            	pushw	x
 426  0029 ae0001        	ldw	x,#1
 427  002c cd0000        	call	_TIM4_ITConfig
 429  002f 85            	popw	x
 430                     ; 125 	TIM4_Cmd(ENABLE);
 431  0030 ae0001        	ldw	x,#1
 432  0033 cd0000        	call	_TIM4_Cmd
 434                     ; 126 }
 435  0036 81            	ret
 437                     ; 128 void init_u_Port(void)
 437                     ; 129 {
 438                     .text:	section	.text,new
 439  0000               _init_u_Port:
 441                     ; 130 	GPIO_WriteLow(GPIOA, GPIO_PIN_3);	
 442  0000 ae0008        	ldw	x,#8
 443  0003 89            	pushw	x
 444  0004 ae5000        	ldw	x,#20480
 445  0007 cd0000        	call	_GPIO_WriteLow
 447  000a 85            	popw	x
 448                     ; 131 }
 449  000b 81            	ret
 451                     ; 133 void setAlternateBit(void)
 451                     ; 134 {
 452                     .text:	section	.text,new
 453  0000               _setAlternateBit:
 454  0000 89            	pushw	x
 455       00000002      OFST:	set	2
 457                     ; 136 		uint16_t stored_data = FLASH_ReadOptionByte(OPTION_BYTE_AFR);
 458  0001 ae4803        	ldw	x,#18435
 459  0004 cd0000        	call	_FLASH_ReadOptionByte
 461  0007 1f01          	ldw	(OFST-1,sp),x
 462                     ; 138 		if( ( FLASH_OPTIONBYTE_ERROR == stored_data ) ||
 462                     ; 139 			( AFR0 != (uint8_t)( stored_data>>8 ) ) )
 463  0009 1e01          	ldw	x,(OFST-1,sp)
 464  000b a35555        	cpw	x,#21845
 465  000e 2706          	jreq	L31
 467  0010 7b01          	ld	a,(OFST-1,sp)
 468  0012 a101          	cp	a,#1
 469  0014 2721          	jreq	L11
 470  0016               L31:
 471                     ; 141 				FLASH_Unlock(FLASH_MEMTYPE_DATA);
 472  0016 ae00f7        	ldw	x,#247
 473  0019 cd0000        	call	_FLASH_Unlock
 475                     ; 142 				FLASH_EraseOptionByte(OPTION_BYTE_AFR);
 476  001c ae4803        	ldw	x,#18435
 477  001f cd0000        	call	_FLASH_EraseOptionByte
 479                     ; 143 				FLASH_ProgramOptionByte(OPTION_BYTE_AFR, AFR0);
 480  0022 4b01          	push	#1
 481  0024 ae4803        	ldw	x,#18435
 482  0027 cd0000        	call	_FLASH_ProgramOptionByte
 484  002a 84            	pop	a
 485                     ; 144 				FLASH_Lock(FLASH_MEMTYPE_DATA);
 486  002b ae00f7        	ldw	x,#247
 487  002e cd0000        	call	_FLASH_Lock
 489                     ; 147 				IWDG->KR = IWDG_KEY_ENABLE;
 490  0031 35cc50e0      	mov	20704,#204
 491  0035               L51:
 492                     ; 148 				while(1);
 493  0035 20fe          	jra	L51
 494  0037               L11:
 495                     ; 150 }
 496  0037 85            	popw	x
 497  0038 81            	ret
 499                     ; 152 uint16_t readADC1(uint16_t channel) 
 499                     ; 153 {
 500                     .text:	section	.text,new
 501  0000               _readADC1:
 502  0000 89            	pushw	x
 503  0001 89            	pushw	x
 504       00000002      OFST:	set	2
 506                     ; 154      uint16_t val=0;
 507  0002 5f            	clrw	x
 508  0003 1f01          	ldw	(OFST-1,sp),x
 509                     ; 156      ADC1->CSR |= ((0x0F)&channel); // select channel
 510  0005 7b04          	ld	a,(OFST+2,sp)
 511  0007 a40f          	and	a,#15
 512  0009 ca5400        	or	a,21504
 513  000c c75400        	ld	21504,a
 514                     ; 157      ADC1->CR2 |= (1<<3); // Right Aligned Data
 515  000f 72165402      	bset	21506,#3
 516                     ; 158      ADC1->CR1 |= (1<<0); // ADC ON 
 517  0013 72105401      	bset	21505,#0
 518                     ; 159      ADC1->CR1 |= (1<<0); // ADC Start Conversion
 519  0017 72105401      	bset	21505,#0
 521  001b               L32:
 522                     ; 160      while(((ADC1->CSR)&(1<<7))== 0); // Wait till EOC
 523  001b c65400        	ld	a,21504
 524  001e a580          	bcp	a,#128
 525  0020 27f9          	jreq	L32
 526                     ; 161      val |= (uint16_t)ADC1->DRL;
 527  0022 c65405        	ld	a,21509
 528  0025 5f            	clrw	x
 529  0026 97            	ld	xl,a
 530  0027 01            	rrwa	x,a
 531  0028 1a02          	or	a,(OFST+0,sp)
 532  002a 01            	rrwa	x,a
 533  002b 1a01          	or	a,(OFST-1,sp)
 534  002d 01            	rrwa	x,a
 535  002e 1f01          	ldw	(OFST-1,sp),x
 536                     ; 162      val |= (uint16_t)ADC1->DRH<<8;
 537  0030 c65404        	ld	a,21508
 538  0033 5f            	clrw	x
 539  0034 97            	ld	xl,a
 540  0035 4f            	clr	a
 541  0036 02            	rlwa	x,a
 542  0037 01            	rrwa	x,a
 543  0038 1a02          	or	a,(OFST+0,sp)
 544  003a 01            	rrwa	x,a
 545  003b 1a01          	or	a,(OFST-1,sp)
 546  003d 01            	rrwa	x,a
 547  003e 1f01          	ldw	(OFST-1,sp),x
 548                     ; 163      ADC1->CR1 &= ~(1<<0); // ADC Stop Conversion
 549  0040 72115401      	bres	21505,#0
 550                     ; 164      val &= 0x03ff;
 551  0044 7b01          	ld	a,(OFST-1,sp)
 552  0046 a403          	and	a,#3
 553  0048 6b01          	ld	(OFST-1,sp),a
 554                     ; 165      return (val);
 555  004a 1e01          	ldw	x,(OFST-1,sp)
 557  004c 5b04          	addw	sp,#4
 558  004e 81            	ret
 560                     ; 168 void ADC_setup(uint8_t ch_sel)
 560                     ; 169 {
 561                     .text:	section	.text,new
 562  0000               _ADC_setup:
 563  0000 88            	push	a
 564       00000000      OFST:	set	0
 566                     ; 170 	ADC1_DeInit();	
 567  0001 cd0000        	call	_ADC1_DeInit
 569                     ; 172 	ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
 569                     ; 173 						ch_sel,
 569                     ; 174 						ADC1_PRESSEL_FCPU_D4,
 569                     ; 175 						ADC1_EXTTRIG_GPIO,
 569                     ; 176 						DISABLE,
 569                     ; 177 						ADC1_ALIGN_RIGHT,
 569                     ; 178 						ch_sel,
 569                     ; 179 						DISABLE);
 570  0004 5f            	clrw	x
 571  0005 89            	pushw	x
 572  0006 7b03          	ld	a,(OFST+3,sp)
 573  0008 5f            	clrw	x
 574  0009 97            	ld	xl,a
 575  000a 89            	pushw	x
 576  000b ae0008        	ldw	x,#8
 577  000e 89            	pushw	x
 578  000f 5f            	clrw	x
 579  0010 89            	pushw	x
 580  0011 ae0010        	ldw	x,#16
 581  0014 89            	pushw	x
 582  0015 ae0020        	ldw	x,#32
 583  0018 89            	pushw	x
 584  0019 7b0d          	ld	a,(OFST+13,sp)
 585  001b 5f            	clrw	x
 586  001c 97            	ld	xl,a
 587  001d 89            	pushw	x
 588  001e 5f            	clrw	x
 589  001f cd0000        	call	_ADC1_Init
 591  0022 5b0e          	addw	sp,#14
 592                     ; 181 	ADC1_ITConfig(ADC1_IT_EOCIE, ENABLE);
 593  0024 ae0001        	ldw	x,#1
 594  0027 89            	pushw	x
 595  0028 ae0020        	ldw	x,#32
 596  002b cd0000        	call	_ADC1_ITConfig
 598  002e 85            	popw	x
 599                     ; 198 }
 600  002f 84            	pop	a
 601  0030 81            	ret
 603                     ; 200 void Read_Protect_Flash(void)
 603                     ; 201 {
 604                     .text:	section	.text,new
 605  0000               _Read_Protect_Flash:
 607                     ; 202     FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
 608  0000 5f            	clrw	x
 609  0001 cd0000        	call	_FLASH_SetProgrammingTime
 612  0004 201b          	jra	L13
 613  0006               L72:
 614                     ; 205         FLASH_Unlock(FLASH_MEMTYPE_DATA);
 615  0006 ae00f7        	ldw	x,#247
 616  0009 cd0000        	call	_FLASH_Unlock
 618                     ; 207         FLASH_EraseOptionByte(0x4800);
 619  000c ae4800        	ldw	x,#18432
 620  000f cd0000        	call	_FLASH_EraseOptionByte
 622                     ; 208         FLASH_ProgramOptionByte(0x4800, 0xAA);
 623  0012 4baa          	push	#170
 624  0014 ae4800        	ldw	x,#18432
 625  0017 cd0000        	call	_FLASH_ProgramOptionByte
 627  001a 84            	pop	a
 628                     ; 210         FLASH_Lock(FLASH_MEMTYPE_DATA);
 629  001b ae00f7        	ldw	x,#247
 630  001e cd0000        	call	_FLASH_Lock
 632  0021               L13:
 633                     ; 203     while(FLASH_ReadOptionByte(0x4800) != 0xAA)
 634  0021 ae4800        	ldw	x,#18432
 635  0024 cd0000        	call	_FLASH_ReadOptionByte
 637  0027 a300aa        	cpw	x,#170
 638  002a 26da          	jrne	L72
 639                     ; 212 }
 640  002c 81            	ret
 642                     ; 223 void assert_failed(uint8_t* file, uint32_t line)
 642                     ; 224 { 
 643                     .text:	section	.text,new
 644  0000               _assert_failed:
 646  0000               L53:
 647  0000 20fe          	jra	L53
 649                     	xdef	_ADC_setup
 650                     	xdef	_readADC1
 651                     	xdef	_Read_Protect_Flash
 652                     	xdef	_setAlternateBit
 653                     	xdef	_init_u_Port
 654                     	xdef	_GPIO_setup
 655                     	xdef	_clock_setup
 656                     	xdef	_TIM4_setup
 657                     	xdef	_TIM2_setup
 658                     	xdef	_TIM1_setup
 659                     	xdef	_assert_failed
 660                     	xref	_TIM4_ClearITPendingBit
 661                     	xref	_TIM4_ClearFlag
 662                     	xref	_TIM4_SetCounter
 663                     	xref	_TIM4_PrescalerConfig
 664                     	xref	_TIM4_ITConfig
 665                     	xref	_TIM4_Cmd
 666                     	xref	_TIM4_TimeBaseInit
 667                     	xref	_TIM4_DeInit
 668                     	xref	_TIM2_SetCounter
 669                     	xref	_TIM2_ITConfig
 670                     	xref	_TIM2_Cmd
 671                     	xref	_TIM2_TimeBaseInit
 672                     	xref	_TIM2_DeInit
 673                     	xref	_TIM1_SelectOCxM
 674                     	xref	_TIM1_OC4PreloadConfig
 675                     	xref	_TIM1_ARRPreloadConfig
 676                     	xref	_TIM1_CtrlPWMOutputs
 677                     	xref	_TIM1_Cmd
 678                     	xref	_TIM1_OC4Init
 679                     	xref	_TIM1_TimeBaseInit
 680                     	xref	_TIM1_DeInit
 681                     	xref	_GPIO_WriteLow
 682                     	xref	_GPIO_Init
 683                     	xref	_GPIO_DeInit
 684                     	xref	_FLASH_SetProgrammingTime
 685                     	xref	_FLASH_EraseOptionByte
 686                     	xref	_FLASH_ProgramOptionByte
 687                     	xref	_FLASH_ReadOptionByte
 688                     	xref	_FLASH_Lock
 689                     	xref	_FLASH_Unlock
 690                     	xref	_CLK_GetFlagStatus
 691                     	xref	_CLK_SYSCLKConfig
 692                     	xref	_CLK_HSIPrescalerConfig
 693                     	xref	_CLK_ClockSwitchConfig
 694                     	xref	_CLK_PeripheralClockConfig
 695                     	xref	_CLK_ClockSwitchCmd
 696                     	xref	_CLK_LSICmd
 697                     	xref	_CLK_HSICmd
 698                     	xref	_CLK_HSECmd
 699                     	xref	_CLK_DeInit
 700                     	xref	_ADC1_ITConfig
 701                     	xref	_ADC1_Init
 702                     	xref	_ADC1_DeInit
 703                     	end

   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
  17                     ; 50 uint8_t ITC_GetCPUCC(void)
  17                     ; 51 {
  18                     	scross	off
  19                     .text:	section	.text,new
  20  0000               _ITC_GetCPUCC:
  22                     ; 53   _asm("push cc");
  24  0000 8a            push cc
  26                     ; 54   _asm("pop a");
  28  0001 84            pop a
  30                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  31  0002 81            	ret
  33                     ; 80 void ITC_DeInit(void)
  33                     ; 81 {
  34                     .text:	section	.text,new
  35  0000               _ITC_DeInit:
  37                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  38  0000 35ff7f70      	mov	32624,#255
  39                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  40  0004 35ff7f71      	mov	32625,#255
  41                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
  42  0008 35ff7f72      	mov	32626,#255
  43                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
  44  000c 35ff7f73      	mov	32627,#255
  45                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
  46  0010 35ff7f74      	mov	32628,#255
  47                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
  48  0014 35ff7f75      	mov	32629,#255
  49                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
  50  0018 35ff7f76      	mov	32630,#255
  51                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
  52  001c 35ff7f77      	mov	32631,#255
  53                     ; 90 }
  54  0020 81            	ret
  56                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
  56                     ; 98 {
  57                     .text:	section	.text,new
  58  0000               _ITC_GetSoftIntStatus:
  60                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
  61  0000 cd0000        	call	_ITC_GetCPUCC
  63  0003 a428          	and	a,#40
  65  0005 81            	ret
  67                     .const:	section	.text
  68  0000               L42:
  69  0000 003c          	dc.w	L3
  70  0002 003c          	dc.w	L3
  71  0004 003c          	dc.w	L3
  72  0006 003c          	dc.w	L3
  73  0008 0045          	dc.w	L5
  74  000a 0045          	dc.w	L5
  75  000c 0045          	dc.w	L5
  76  000e 0045          	dc.w	L5
  77  0010 0079          	dc.w	L72
  78  0012 0079          	dc.w	L72
  79  0014 004e          	dc.w	L7
  80  0016 004e          	dc.w	L7
  81  0018 0057          	dc.w	L11
  82  001a 0057          	dc.w	L11
  83  001c 0057          	dc.w	L11
  84  001e 0057          	dc.w	L11
  85  0020 0060          	dc.w	L31
  86  0022 0060          	dc.w	L31
  87  0024 0060          	dc.w	L31
  88  0026 0060          	dc.w	L31
  89  0028 0079          	dc.w	L72
  90  002a 0079          	dc.w	L72
  91  002c 0069          	dc.w	L51
  92  002e 0069          	dc.w	L51
  93  0030 0072          	dc.w	L71
  94                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
  94                     ; 108 {
  95                     .text:	section	.text,new
  96  0000               _ITC_GetSoftwarePriority:
  97  0000 89            	pushw	x
  98  0001 89            	pushw	x
  99       00000002      OFST:	set	2
 101                     ; 109   uint8_t Value = 0;
 102  0002 0f02          	clr	(OFST+0,sp)
 103                     ; 110   uint8_t Mask = 0;
 104                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 105  0004 9f            	ld	a,xl
 106  0005 a119          	cp	a,#25
 107  0007 2403          	jruge	L21
 108  0009 4f            	clr	a
 109  000a 2010          	jra	L41
 110  000c               L21:
 111  000c ae0071        	ldw	x,#113
 112  000f 89            	pushw	x
 113  0010 ae0000        	ldw	x,#0
 114  0013 89            	pushw	x
 115  0014 ae0064        	ldw	x,#L32
 116  0017 cd0000        	call	_assert_failed
 118  001a 5b04          	addw	sp,#4
 119  001c               L41:
 120                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 121  001c 7b04          	ld	a,(OFST+2,sp)
 122  001e a403          	and	a,#3
 123  0020 48            	sll	a
 124  0021 5f            	clrw	x
 125  0022 97            	ld	xl,a
 126  0023 a603          	ld	a,#3
 127  0025 5d            	tnzw	x
 128  0026 2704          	jreq	L61
 129  0028               L02:
 130  0028 48            	sll	a
 131  0029 5a            	decw	x
 132  002a 26fc          	jrne	L02
 133  002c               L61:
 134  002c 6b01          	ld	(OFST-1,sp),a
 135                     ; 118   switch (IrqNum)
 136  002e 1e03          	ldw	x,(OFST+1,sp)
 138                     ; 198   default:
 138                     ; 199     break;
 139  0030 a30019        	cpw	x,#25
 140  0033 2405          	jruge	L22
 141  0035 58            	sllw	x
 142  0036 de0000        	ldw	x,(L42,x)
 143  0039 fc            	jp	(x)
 144  003a               L22:
 145  003a 203d          	jra	L72
 146  003c               L3:
 147                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 147                     ; 121   case ITC_IRQ_AWU:
 147                     ; 122   case ITC_IRQ_CLK:
 147                     ; 123   case ITC_IRQ_PORTA:
 147                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 148  003c c67f70        	ld	a,32624
 149  003f 1401          	and	a,(OFST-1,sp)
 150  0041 6b02          	ld	(OFST+0,sp),a
 151                     ; 125     break;
 152  0043 2034          	jra	L72
 153  0045               L5:
 154                     ; 127   case ITC_IRQ_PORTB:
 154                     ; 128   case ITC_IRQ_PORTC:
 154                     ; 129   case ITC_IRQ_PORTD:
 154                     ; 130   case ITC_IRQ_PORTE:
 154                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 155  0045 c67f71        	ld	a,32625
 156  0048 1401          	and	a,(OFST-1,sp)
 157  004a 6b02          	ld	(OFST+0,sp),a
 158                     ; 132     break;
 159  004c 202b          	jra	L72
 160  004e               L7:
 161                     ; 141   case ITC_IRQ_SPI:
 161                     ; 142   case ITC_IRQ_TIM1_OVF:
 161                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 162  004e c67f72        	ld	a,32626
 163  0051 1401          	and	a,(OFST-1,sp)
 164  0053 6b02          	ld	(OFST+0,sp),a
 165                     ; 144     break;
 166  0055 2022          	jra	L72
 167  0057               L11:
 168                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 168                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 168                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 168                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 168                     ; 150 #else
 168                     ; 151   case ITC_IRQ_TIM2_OVF:
 168                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 168                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 168                     ; 154   case ITC_IRQ_TIM3_OVF:
 168                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 169  0057 c67f73        	ld	a,32627
 170  005a 1401          	and	a,(OFST-1,sp)
 171  005c 6b02          	ld	(OFST+0,sp),a
 172                     ; 156     break;
 173  005e 2019          	jra	L72
 174  0060               L31:
 175                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 175                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 175                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 175                     ; 161   case ITC_IRQ_UART1_TX:
 175                     ; 162   case ITC_IRQ_UART1_RX:
 175                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 175                     ; 164 #if defined(STM8AF622x)
 175                     ; 165   case ITC_IRQ_UART4_TX:
 175                     ; 166   case ITC_IRQ_UART4_RX:
 175                     ; 167 #endif /*STM8AF622x */
 175                     ; 168   case ITC_IRQ_I2C:
 175                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 176  0060 c67f74        	ld	a,32628
 177  0063 1401          	and	a,(OFST-1,sp)
 178  0065 6b02          	ld	(OFST+0,sp),a
 179                     ; 170     break;
 180  0067 2010          	jra	L72
 181  0069               L51:
 182                     ; 184   case ITC_IRQ_ADC1:
 182                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 182                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 182                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 182                     ; 188 #else
 182                     ; 189   case ITC_IRQ_TIM4_OVF:
 182                     ; 190 #endif /*STM8S903 or STM8AF622x */
 182                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 183  0069 c67f75        	ld	a,32629
 184  006c 1401          	and	a,(OFST-1,sp)
 185  006e 6b02          	ld	(OFST+0,sp),a
 186                     ; 192     break;
 187  0070 2007          	jra	L72
 188  0072               L71:
 189                     ; 194   case ITC_IRQ_EEPROM_EEC:
 189                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 190  0072 c67f76        	ld	a,32630
 191  0075 1401          	and	a,(OFST-1,sp)
 192  0077 6b02          	ld	(OFST+0,sp),a
 193                     ; 196     break;
 194  0079               L12:
 195                     ; 198   default:
 195                     ; 199     break;
 196  0079               L72:
 197                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 198  0079 7b04          	ld	a,(OFST+2,sp)
 199  007b a403          	and	a,#3
 200  007d 48            	sll	a
 201  007e 5f            	clrw	x
 202  007f 97            	ld	xl,a
 203  0080 7b02          	ld	a,(OFST+0,sp)
 204  0082 5d            	tnzw	x
 205  0083 2704          	jreq	L62
 206  0085               L03:
 207  0085 44            	srl	a
 208  0086 5a            	decw	x
 209  0087 26fc          	jrne	L03
 210  0089               L62:
 211  0089 6b02          	ld	(OFST+0,sp),a
 212                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 213  008b 7b02          	ld	a,(OFST+0,sp)
 214  008d 5f            	clrw	x
 215  008e 97            	ld	xl,a
 217  008f 5b04          	addw	sp,#4
 218  0091 81            	ret
 220                     	switch	.const
 221  0032               L46:
 222  0032 0093          	dc.w	L13
 223  0034 0093          	dc.w	L13
 224  0036 0093          	dc.w	L13
 225  0038 0093          	dc.w	L13
 226  003a 00a5          	dc.w	L33
 227  003c 00a5          	dc.w	L33
 228  003e 00a5          	dc.w	L33
 229  0040 00a5          	dc.w	L33
 230  0042 010f          	dc.w	L35
 231  0044 010f          	dc.w	L35
 232  0046 00b7          	dc.w	L53
 233  0048 00b7          	dc.w	L53
 234  004a 00c9          	dc.w	L73
 235  004c 00c9          	dc.w	L73
 236  004e 00c9          	dc.w	L73
 237  0050 00c9          	dc.w	L73
 238  0052 00db          	dc.w	L14
 239  0054 00db          	dc.w	L14
 240  0056 00db          	dc.w	L14
 241  0058 00db          	dc.w	L14
 242  005a 010f          	dc.w	L35
 243  005c 010f          	dc.w	L35
 244  005e 00ed          	dc.w	L34
 245  0060 00ed          	dc.w	L34
 246  0062 00ff          	dc.w	L54
 247                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 247                     ; 221 {
 248                     .text:	section	.text,new
 249  0000               _ITC_SetSoftwarePriority:
 250  0000 89            	pushw	x
 251  0001 89            	pushw	x
 252       00000002      OFST:	set	2
 254                     ; 222   uint8_t Mask = 0;
 255                     ; 223   uint8_t NewPriority = 0;
 256                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 257  0002 9f            	ld	a,xl
 258  0003 a119          	cp	a,#25
 259  0005 2403          	jruge	L43
 260  0007 4f            	clr	a
 261  0008 2010          	jra	L63
 262  000a               L43:
 263  000a ae00e2        	ldw	x,#226
 264  000d 89            	pushw	x
 265  000e ae0000        	ldw	x,#0
 266  0011 89            	pushw	x
 267  0012 ae0064        	ldw	x,#L32
 268  0015 cd0000        	call	_assert_failed
 270  0018 5b04          	addw	sp,#4
 271  001a               L63:
 272                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 273  001a 1e07          	ldw	x,(OFST+5,sp)
 274  001c a30002        	cpw	x,#2
 275  001f 2712          	jreq	L24
 276  0021 1e07          	ldw	x,(OFST+5,sp)
 277  0023 a30001        	cpw	x,#1
 278  0026 270b          	jreq	L24
 279  0028 1e07          	ldw	x,(OFST+5,sp)
 280  002a 2707          	jreq	L24
 281  002c 1e07          	ldw	x,(OFST+5,sp)
 282  002e a30003        	cpw	x,#3
 283  0031 2603          	jrne	L04
 284  0033               L24:
 285  0033 4f            	clr	a
 286  0034 2010          	jra	L44
 287  0036               L04:
 288  0036 ae00e3        	ldw	x,#227
 289  0039 89            	pushw	x
 290  003a ae0000        	ldw	x,#0
 291  003d 89            	pushw	x
 292  003e ae0064        	ldw	x,#L32
 293  0041 cd0000        	call	_assert_failed
 295  0044 5b04          	addw	sp,#4
 296  0046               L44:
 297                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 298  0046 cd0000        	call	_ITC_GetSoftIntStatus
 300  0049 a128          	cp	a,#40
 301  004b 2603          	jrne	L64
 302  004d 4f            	clr	a
 303  004e 2010          	jra	L05
 304  0050               L64:
 305  0050 ae00e6        	ldw	x,#230
 306  0053 89            	pushw	x
 307  0054 ae0000        	ldw	x,#0
 308  0057 89            	pushw	x
 309  0058 ae0064        	ldw	x,#L32
 310  005b cd0000        	call	_assert_failed
 312  005e 5b04          	addw	sp,#4
 313  0060               L05:
 314                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 315  0060 7b04          	ld	a,(OFST+2,sp)
 316  0062 a403          	and	a,#3
 317  0064 48            	sll	a
 318  0065 5f            	clrw	x
 319  0066 97            	ld	xl,a
 320  0067 a603          	ld	a,#3
 321  0069 5d            	tnzw	x
 322  006a 2704          	jreq	L25
 323  006c               L45:
 324  006c 48            	sll	a
 325  006d 5a            	decw	x
 326  006e 26fc          	jrne	L45
 327  0070               L25:
 328  0070 43            	cpl	a
 329  0071 6b01          	ld	(OFST-1,sp),a
 330                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 331  0073 7b04          	ld	a,(OFST+2,sp)
 332  0075 a403          	and	a,#3
 333  0077 48            	sll	a
 334  0078 5f            	clrw	x
 335  0079 97            	ld	xl,a
 336  007a 7b08          	ld	a,(OFST+6,sp)
 337  007c 5d            	tnzw	x
 338  007d 2704          	jreq	L65
 339  007f               L06:
 340  007f 48            	sll	a
 341  0080 5a            	decw	x
 342  0081 26fc          	jrne	L06
 343  0083               L65:
 344  0083 6b02          	ld	(OFST+0,sp),a
 345                     ; 239   switch (IrqNum)
 346  0085 1e03          	ldw	x,(OFST+1,sp)
 348                     ; 329   default:
 348                     ; 330     break;
 349  0087 a30019        	cpw	x,#25
 350  008a 2405          	jruge	L26
 351  008c 58            	sllw	x
 352  008d de0032        	ldw	x,(L46,x)
 353  0090 fc            	jp	(x)
 354  0091               L26:
 355  0091 207c          	jra	L35
 356  0093               L13:
 357                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 357                     ; 242   case ITC_IRQ_AWU:
 357                     ; 243   case ITC_IRQ_CLK:
 357                     ; 244   case ITC_IRQ_PORTA:
 357                     ; 245     ITC->ISPR1 &= Mask;
 358  0093 c67f70        	ld	a,32624
 359  0096 1401          	and	a,(OFST-1,sp)
 360  0098 c77f70        	ld	32624,a
 361                     ; 246     ITC->ISPR1 |= NewPriority;
 362  009b c67f70        	ld	a,32624
 363  009e 1a02          	or	a,(OFST+0,sp)
 364  00a0 c77f70        	ld	32624,a
 365                     ; 247     break;
 366  00a3 206a          	jra	L35
 367  00a5               L33:
 368                     ; 249   case ITC_IRQ_PORTB:
 368                     ; 250   case ITC_IRQ_PORTC:
 368                     ; 251   case ITC_IRQ_PORTD:
 368                     ; 252   case ITC_IRQ_PORTE:
 368                     ; 253     ITC->ISPR2 &= Mask;
 369  00a5 c67f71        	ld	a,32625
 370  00a8 1401          	and	a,(OFST-1,sp)
 371  00aa c77f71        	ld	32625,a
 372                     ; 254     ITC->ISPR2 |= NewPriority;
 373  00ad c67f71        	ld	a,32625
 374  00b0 1a02          	or	a,(OFST+0,sp)
 375  00b2 c77f71        	ld	32625,a
 376                     ; 255     break;
 377  00b5 2058          	jra	L35
 378  00b7               L53:
 379                     ; 264   case ITC_IRQ_SPI:
 379                     ; 265   case ITC_IRQ_TIM1_OVF:
 379                     ; 266     ITC->ISPR3 &= Mask;
 380  00b7 c67f72        	ld	a,32626
 381  00ba 1401          	and	a,(OFST-1,sp)
 382  00bc c77f72        	ld	32626,a
 383                     ; 267     ITC->ISPR3 |= NewPriority;
 384  00bf c67f72        	ld	a,32626
 385  00c2 1a02          	or	a,(OFST+0,sp)
 386  00c4 c77f72        	ld	32626,a
 387                     ; 268     break;
 388  00c7 2046          	jra	L35
 389  00c9               L73:
 390                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 390                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 390                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 390                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 390                     ; 274 #else
 390                     ; 275   case ITC_IRQ_TIM2_OVF:
 390                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 390                     ; 277 #endif /*STM8S903 or STM8AF622x */
 390                     ; 278   case ITC_IRQ_TIM3_OVF:
 390                     ; 279     ITC->ISPR4 &= Mask;
 391  00c9 c67f73        	ld	a,32627
 392  00cc 1401          	and	a,(OFST-1,sp)
 393  00ce c77f73        	ld	32627,a
 394                     ; 280     ITC->ISPR4 |= NewPriority;
 395  00d1 c67f73        	ld	a,32627
 396  00d4 1a02          	or	a,(OFST+0,sp)
 397  00d6 c77f73        	ld	32627,a
 398                     ; 281     break;
 399  00d9 2034          	jra	L35
 400  00db               L14:
 401                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 401                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 401                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 401                     ; 286   case ITC_IRQ_UART1_TX:
 401                     ; 287   case ITC_IRQ_UART1_RX:
 401                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 401                     ; 289 #if defined(STM8AF622x)
 401                     ; 290   case ITC_IRQ_UART4_TX:
 401                     ; 291   case ITC_IRQ_UART4_RX:
 401                     ; 292 #endif /*STM8AF622x */
 401                     ; 293   case ITC_IRQ_I2C:
 401                     ; 294     ITC->ISPR5 &= Mask;
 402  00db c67f74        	ld	a,32628
 403  00de 1401          	and	a,(OFST-1,sp)
 404  00e0 c77f74        	ld	32628,a
 405                     ; 295     ITC->ISPR5 |= NewPriority;
 406  00e3 c67f74        	ld	a,32628
 407  00e6 1a02          	or	a,(OFST+0,sp)
 408  00e8 c77f74        	ld	32628,a
 409                     ; 296     break;
 410  00eb 2022          	jra	L35
 411  00ed               L34:
 412                     ; 312   case ITC_IRQ_ADC1:
 412                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 412                     ; 314     
 412                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 412                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 412                     ; 317 #else
 412                     ; 318   case ITC_IRQ_TIM4_OVF:
 412                     ; 319 #endif /* STM8S903 or STM8AF622x */
 412                     ; 320     ITC->ISPR6 &= Mask;
 413  00ed c67f75        	ld	a,32629
 414  00f0 1401          	and	a,(OFST-1,sp)
 415  00f2 c77f75        	ld	32629,a
 416                     ; 321     ITC->ISPR6 |= NewPriority;
 417  00f5 c67f75        	ld	a,32629
 418  00f8 1a02          	or	a,(OFST+0,sp)
 419  00fa c77f75        	ld	32629,a
 420                     ; 322     break;
 421  00fd 2010          	jra	L35
 422  00ff               L54:
 423                     ; 324   case ITC_IRQ_EEPROM_EEC:
 423                     ; 325     ITC->ISPR7 &= Mask;
 424  00ff c67f76        	ld	a,32630
 425  0102 1401          	and	a,(OFST-1,sp)
 426  0104 c77f76        	ld	32630,a
 427                     ; 326     ITC->ISPR7 |= NewPriority;
 428  0107 c67f76        	ld	a,32630
 429  010a 1a02          	or	a,(OFST+0,sp)
 430  010c c77f76        	ld	32630,a
 431                     ; 327     break;
 432  010f               L74:
 433                     ; 329   default:
 433                     ; 330     break;
 434  010f               L35:
 435                     ; 332 }
 436  010f 5b04          	addw	sp,#4
 437  0111 81            	ret
 439                     	xdef	_ITC_GetSoftwarePriority
 440                     	xdef	_ITC_SetSoftwarePriority
 441                     	xdef	_ITC_GetSoftIntStatus
 442                     	xdef	_ITC_DeInit
 443                     	xdef	_ITC_GetCPUCC
 444                     	xref	_assert_failed
 445                     	switch	.const
 446  0064               L32:
 447  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\libraries"
 448  0076 5c73746d3873  	dc.b	"\stm8s_stdperiph_d"
 449  0088 72697665725c  	dc.b	"river\src\stm8s_it"
 450  009a 632e6300      	dc.b	"c.c",0
 451                     	end
